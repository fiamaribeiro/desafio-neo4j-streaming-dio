MATCH (u:User {userId: 1}), (m:Movie {movieId: 1})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-03-10'}]->(m);

MATCH (u:User {userId: 1}), (s:Series {seriesId: 2})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-11'}]->(s);

MATCH (u:User {userId: 2}), (m:Movie {movieId: 3})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-03-10'}]->(m);

MATCH (u:User {userId: 2}), (s:Series {seriesId: 1})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-09'}]->(s);

MATCH (u:User {userId: 3}), (m:Movie {movieId: 2})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-03-08'}]->(m);

MATCH (u:User {userId: 3}), (s:Series {seriesId: 3})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-07'}]->(s);

MATCH (u:User {userId: 4}), (m:Movie {movieId: 4})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-06'}]->(m);

MATCH (u:User {userId: 4}), (s:Series {seriesId: 4})
MERGE (u)-[:WATCHED {rating: 3, watchedAt: '2026-03-05'}]->(s);

MATCH (u:User {userId: 5}), (m:Movie {movieId: 5})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-03-04'}]->(m);

MATCH (u:User {userId: 5}), (s:Series {seriesId: 5})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-03'}]->(s);

MATCH (u:User {userId: 6}), (m:Movie {movieId: 1})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-03-02'}]->(m);

MATCH (u:User {userId: 6}), (s:Series {seriesId: 2})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-03-01'}]->(s);

MATCH (u:User {userId: 7}), (m:Movie {movieId: 2})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-02-28'}]->(m);

MATCH (u:User {userId: 7}), (s:Series {seriesId: 3})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-02-27'}]->(s);

MATCH (u:User {userId: 8}), (m:Movie {movieId: 3})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-02-26'}]->(m);

MATCH (u:User {userId: 8}), (s:Series {seriesId: 4})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-02-25'}]->(s);

MATCH (u:User {userId: 9}), (m:Movie {movieId: 4})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-02-24'}]->(m);

MATCH (u:User {userId: 9}), (s:Series {seriesId: 1})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-02-23'}]->(s);

MATCH (u:User {userId: 10}), (m:Movie {movieId: 5})
MERGE (u)-[:WATCHED {rating: 4, watchedAt: '2026-02-22'}]->(m);

MATCH (u:User {userId: 10}), (s:Series {seriesId: 5})
MERGE (u)-[:WATCHED {rating: 5, watchedAt: '2026-02-21'}]->(s);