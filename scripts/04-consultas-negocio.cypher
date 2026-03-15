// 1. Quais usuários assistiram a filmes e quais notas deram
MATCH (u:User)-[w:WATCHED]->(m:Movie)
RETURN u.name AS Usuario, m.title AS Filme, w.rating AS Nota, w.watchedAt AS Data
ORDER BY Usuario;

// 2. Quais usuários assistiram a séries e quais notas deram
MATCH (u:User)-[w:WATCHED]->(s:Series)
RETURN u.name AS Usuario, s.title AS Serie, w.rating AS Nota, w.watchedAt AS Data
ORDER BY Usuario;

// 3. Quais filmes pertencem ao gênero Ficcao Cientifica
MATCH (m:Movie)-[:IN_GENRE]->(g:Genre {name: 'Ficcao Cientifica'})
RETURN m.title AS Filme, m.year AS Ano
ORDER BY Ano;

// 4. Quais séries pertencem ao gênero Suspense
MATCH (s:Series)-[:IN_GENRE]->(g:Genre {name: 'Suspense'})
RETURN s.title AS Serie, s.seasons AS Temporadas
ORDER BY Serie;

// 5. Em quais filmes cada ator participou
MATCH (a:Actor)-[:ACTED_IN]->(m:Movie)
RETURN a.name AS Ator, collect(m.title) AS Filmes
ORDER BY Ator;

// 6. Em quais séries cada ator participou
MATCH (a:Actor)-[:ACTED_IN]->(s:Series)
RETURN a.name AS Ator, collect(s.title) AS Series
ORDER BY Ator;

// 7. Quantos conteúdos cada diretor dirigiu
MATCH (d:Director)-[:DIRECTED]->(c)
RETURN d.name AS Diretor, count(c) AS TotalConteudos
ORDER BY TotalConteudos DESC, Diretor;

// 8. Conteúdos com nota média dos usuários
MATCH (:User)-[w:WATCHED]->(c)
RETURN labels(c)[0] AS Tipo, c.title AS Conteudo, round(avg(w.rating),2) AS MediaNotas
ORDER BY MediaNotas DESC, Conteudo;

// 9. Usuários que deram nota 5
MATCH (u:User)-[w:WATCHED]->(c)
WHERE w.rating = 5
RETURN u.name AS Usuario, c.title AS Conteudo, labels(c)[0] AS Tipo
ORDER BY Usuario;

// 10. Visualização geral do schema
CALL db.schema.visualization();