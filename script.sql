DROP TABLE IF EXISTS imdb_ratings;
DROP TABLE IF EXISTS imdb_movies;
DROP TABLE IF EXISTS imdb_movies_b;


CREATE TABLE imdb_movies (
	imdb_title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	year_mv VARCHAR,
	avg_vote DECIMAL,
	GENRE_1 VARCHAR,
	GENRE_2 VARCHAR,
	GENRE_3 VARCHAR,
	COUNTRY_1 VARCHAR,
	COUNTRY_2 VARCHAR,
	COUNTRY_3 VARCHAR,
	COUNTRY_4 VARCHAR,
	COUNTRY_5 VARCHAR,
	CONSTRAINT pk_title_id PRIMARY KEY (imdb_title_id)
)
;

CREATE TABLE imdb_movies_b (
	imdb_title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL,
	year_mv VARCHAR,
	avg_vote DECIMAL,
	GENRE_1 VARCHAR,
	GENRE_2 VARCHAR,
	GENRE_3 VARCHAR,
	COUNTRY_1 VARCHAR,
	COUNTRY_2 VARCHAR,
	COUNTRY_3 VARCHAR,
	COUNTRY_4 VARCHAR,
	COUNTRY_5 VARCHAR,
	CONSTRAINT pk_title_id_b PRIMARY KEY (imdb_title_id)
)
;

CREATE TABLE imdb_ratings (
	imdb_title_id VARCHAR NOT NULL,
	avg_vote DECIMAL,
	CONSTRAINT fk_imdb_title_id 
		FOREIGN KEY (imdb_title_id)
			REFERENCES imdb_movies(imdb_title_id)
)
;
