CREATE CONSTRAINT user_id_unique IF NOT EXISTS
FOR (u:User)
REQUIRE u.userId IS UNIQUE;

CREATE CONSTRAINT movie_id_unique IF NOT EXISTS
FOR (m:Movie)
REQUIRE m.movieId IS UNIQUE;

CREATE CONSTRAINT series_id_unique IF NOT EXISTS
FOR (s:Series)
REQUIRE s.seriesId IS UNIQUE;

CREATE CONSTRAINT genre_id_unique IF NOT EXISTS
FOR (g:Genre)
REQUIRE g.genreId IS UNIQUE;

CREATE CONSTRAINT actor_id_unique IF NOT EXISTS
FOR (a:Actor)
REQUIRE a.actorId IS UNIQUE;

CREATE CONSTRAINT director_id_unique IF NOT EXISTS
FOR (d:Director)
REQUIRE d.directorId IS UNIQUE;