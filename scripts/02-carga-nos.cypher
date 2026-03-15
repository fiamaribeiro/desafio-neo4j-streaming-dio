MERGE (u1:User {userId: 1}) SET u1.name = 'Ana', u1.country = 'Brasil';
MERGE (u2:User {userId: 2}) SET u2.name = 'Bruno', u2.country = 'Brasil';
MERGE (u3:User {userId: 3}) SET u3.name = 'Carla', u3.country = 'Portugal';
MERGE (u4:User {userId: 4}) SET u4.name = 'Diego', u4.country = 'Argentina';
MERGE (u5:User {userId: 5}) SET u5.name = 'Elisa', u5.country = 'Brasil';
MERGE (u6:User {userId: 6}) SET u6.name = 'Felipe', u6.country = 'Chile';
MERGE (u7:User {userId: 7}) SET u7.name = 'Gabriela', u7.country = 'Brasil';
MERGE (u8:User {userId: 8}) SET u8.name = 'Henrique', u8.country = 'Mexico';
MERGE (u9:User {userId: 9}) SET u9.name = 'Igor', u9.country = 'Brasil';
MERGE (u10:User {userId: 10}) SET u10.name = 'Julia', u10.country = 'Colombia';

MERGE (m1:Movie {movieId: 1}) SET m1.title = 'Inception', m1.year = 2010;
MERGE (m2:Movie {movieId: 2}) SET m2.title = 'Interstellar', m2.year = 2014;
MERGE (m3:Movie {movieId: 3}) SET m3.title = 'The Matrix', m3.year = 1999;
MERGE (m4:Movie {movieId: 4}) SET m4.title = 'John Wick', m4.year = 2014;
MERGE (m5:Movie {movieId: 5}) SET m5.title = 'Titanic', m5.year = 1997;

MERGE (s1:Series {seriesId: 1}) SET s1.title = 'Dark', s1.seasons = 3;
MERGE (s2:Series {seriesId: 2}) SET s2.title = 'Breaking Bad', s2.seasons = 5;
MERGE (s3:Series {seriesId: 3}) SET s3.title = 'Stranger Things', s3.seasons = 4;
MERGE (s4:Series {seriesId: 4}) SET s4.title = 'The Witcher', s4.seasons = 3;
MERGE (s5:Series {seriesId: 5}) SET s5.title = 'Black Mirror', s5.seasons = 6;

MERGE (g1:Genre {genreId: 1}) SET g1.name = 'Ficcao Cientifica';
MERGE (g2:Genre {genreId: 2}) SET g2.name = 'Drama';
MERGE (g3:Genre {genreId: 3}) SET g3.name = 'Acao';
MERGE (g4:Genre {genreId: 4}) SET g4.name = 'Suspense';

MERGE (a1:Actor {actorId: 1}) SET a1.name = 'Leonardo DiCaprio';
MERGE (a2:Actor {actorId: 2}) SET a2.name = 'Keanu Reeves';
MERGE (a3:Actor {actorId: 3}) SET a3.name = 'Bryan Cranston';
MERGE (a4:Actor {actorId: 4}) SET a4.name = 'Millie Bobby Brown';
MERGE (a5:Actor {actorId: 5}) SET a5.name = 'Henry Cavill';

MERGE (d1:Director {directorId: 1}) SET d1.name = 'Christopher Nolan';
MERGE (d2:Director {directorId: 2}) SET d2.name = 'Lana Wachowski';
MERGE (d3:Director {directorId: 3}) SET d3.name = 'Chad Stahelski';
MERGE (d4:Director {directorId: 4}) SET d4.name = 'James Cameron';
MERGE (d5:Director {directorId: 5}) SET d5.name = 'Vince Gilligan';