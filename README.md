# Desafio DIO - Modelagem de Banco de Dados em Grafos com Neo4j

## Descrição do Projeto
Este projeto foi desenvolvido como parte do desafio prático da DIO utilizando Neo4j para modelagem de banco de dados em grafos.

O objetivo foi construir um grafo para representar um serviço de streaming, relacionando usuários, filmes, séries, gêneros, atores e diretores, além de registrar os conteúdos assistidos e as avaliações dadas pelos usuários.

## Contexto do Problema
Plataformas de streaming possuem muitos relacionamentos entre entidades, como:
- usuários assistindo conteúdos
- filmes e séries pertencendo a gêneros
- atores participando de conteúdos
- diretores dirigindo filmes e séries

Esse tipo de cenário é muito bem representado por bancos de dados em grafos, pois as conexões entre os dados são parte central do problema.

## Justificativa do Uso de Grafos
A escolha do Neo4j foi feita porque o modelo em grafos permite representar de forma intuitiva as conexões entre usuários e conteúdos.

Em vez de focar apenas em tabelas e junções, o banco em grafo permite visualizar e consultar diretamente as relações entre:
- User
- Movie
- Series
- Genre
- Actor
- Director

Isso facilita análises como:
- quais conteúdos um usuário assistiu
- quais filmes pertencem a um gênero
- quais atores participaram de determinado conteúdo
- quais diretores possuem mais conteúdos cadastrados

## Modelo do Grafo

### Nós
- `User {userId, name, country}`
- `Movie {movieId, title, year}`
- `Series {seriesId, title, seasons}`
- `Genre {genreId, name}`
- `Actor {actorId, name}`
- `Director {directorId, name}`

### Relacionamentos
- `(User)-[:WATCHED {rating, watchedAt}]->(Movie)`
- `(User)-[:WATCHED {rating, watchedAt}]->(Series)`
- `(Actor)-[:ACTED_IN]->(Movie)`
- `(Actor)-[:ACTED_IN]->(Series)`
- `(Director)-[:DIRECTED]->(Movie)`
- `(Director)-[:DIRECTED]->(Series)`
- `(Movie)-[:IN_GENRE]->(Genre)`
- `(Series)-[:IN_GENRE]->(Genre)`

### Imagem do modelo
![Graph Model](images/graph-model.png)

## Estrutura do Repositório
- `dataset/`: arquivos CSV utilizados como base de dados
- `scripts/`: scripts Cypher de criação e consulta
- `images/`: imagens do modelo e prints das consultas
- `README.md`: documentação principal do projeto

## Dataset
O projeto utiliza arquivos CSV contendo:
- usuários
- filmes
- séries
- gêneros
- atores
- diretores
- relacionamentos entre os dados

Esses arquivos foram organizados para representar um pequeno cenário de streaming com dados suficientes para demonstrar a modelagem e as consultas de negócio.

## Scripts
### `01-constraints.cypher`
Cria restrições de unicidade para os identificadores principais dos nós.

### `02-carga-nos.cypher`
Realiza a criação dos nós principais do grafo.

### `03-carga-relacionamentos.cypher`
Cria os relacionamentos entre usuários, conteúdos, gêneros, atores e diretores.

### `04-consultas-negocio.cypher`
Contém consultas que demonstram o funcionamento prático do modelo.

## Consultas de Negócio
Algumas perguntas que o grafo consegue responder:

### 1. Quais usuários assistiram a filmes?
![Users and Movies](images/query-users-movies.png)

### 2. Quais filmes pertencem ao gênero Ficção Científica?
![Sci-Fi Movies](images/query-sci-fi-movies.png)

### 3. Quais diretores possuem mais conteúdos dirigidos?
![Directors Total Contents](images/query-directors-total-contents.png)

### 4. Qual a média de avaliação dos conteúdos?
![Average Rating](images/query-average-rating.png)

### 5. Visualização geral do grafo populado
![Graph Visualization](images/graph-visualization.png)

## Como Executar
1. Criar uma instância no Neo4j Aura ou utilizar Neo4j Desktop.
2. Executar o script `01-constraints.cypher`.
3. Executar o script `02-carga-nos.cypher`.
4. Executar o script `03-carga-relacionamentos.cypher`.
5. Executar o script `04-consultas-negocio.cypher`.
6. Validar os resultados no Neo4j Browser.

## Dificuldades Encontradas
Durante o desenvolvimento, algumas dificuldades foram encontradas:
- entendimento inicial da modelagem em grafos
- definição correta dos relacionamentos entre entidades
- ajuste do ambiente Neo4j Aura para inserção dos dados
- cuidado com padronização dos nomes de propriedades e relacionamentos

## Soluções Aplicadas
As dificuldades foram resolvidas por meio de:
- criação prévia do modelo conceitual no Arrows.app
- uso de constraints para evitar duplicidade
- organização dos dados em arquivos CSV
- adaptação da carga para execução direta em Cypher no Neo4j Aura

## Conclusão
Este projeto permitiu aplicar, na prática, conceitos importantes de banco de dados em grafos com Neo4j, como modelagem de entidades, criação de relacionamentos, uso de Cypher e construção de consultas de negócio.

Além do aspecto técnico, o desafio também reforçou a importância de documentar bem um projeto para portfólio, tornando o repositório mais claro, profissional e útil para futuras entrevistas técnicas.
