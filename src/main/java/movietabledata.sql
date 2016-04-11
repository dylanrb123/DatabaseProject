INSERT INTO MOVIE (id, name, length, release_date, mpaa_rating, summary, trailer_url, poster_url)
VALUES (1, 'The Avengers', 8580000, '2012-05-04', 'PG_13',
	'Earths mightiest heroes must come together and learn to fight as a team if they are to stop the mischievous Loki and his alien army from enslaving humanity.',
	'https://www.youtube.com/watch?v=kq84NymZYJE',
	'http://ia.media-imdb.com/images/M/MV5BMTk2NTI1MTU4N15BMl5BanBnXkFtZTcwODg0OTY0Nw@@._V1_SX640_SY720_.jpg');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Action', 1, NULL);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Adventure', 1, NULL);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Sci-Fi', 1, NULL);



INSERT INTO MOVIE (id, name, length, release_date, mpaa_rating, summary, trailer_url, poster_url)
VALUES (2, 'Hot Rod', 5280000, '2007-08-03', 'PG_13',
	'Self-proclaimed stuntman Rod Kimble is preparing for the jump of his life - to clear fifteen buses to raise money for his abusive stepfather Franks life-saving heart operation.',
	'https://www.youtube.com/watch?v=DhdrA9qz79o',
	'http://ia.media-imdb.com/images/M/MV5BNjYwNjA3OTY0Nl5BMl5BanBnXkFtZTcwNDMyNDUzMw@@._V1_UX182_CR0,0,182,268_AL_.jpg');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Comedy', 2, NULL);



INSERT INTO MOVIE (id, name, length, release_date, mpaa_rating, summary, trailer_url, poster_url)
VALUES (3, 'The Shawshank Redemption', 8520000, '1994-10-14', 'R',
	'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',
	'https://www.youtube.com/watch?v=6hB3S9bIaco',
	'http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Crime', 3, NULL);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Drama', 3, NULL);



INSERT INTO MOVIE (id, name, length, release_date, mpaa_rating, summary, trailer_url, poster_url)
VALUES (4, 'Mean Girls', 5820000, '2004-30-04', 'PG_13',
	'Cady Heron is a hit with The Plastics, the A-list girl clique at her new school, until she makes the mistake of falling for Aaron Samuels, the ex-boyfriend of alpha Plastic Regina George.',
	'https://www.youtube.com/watch?v=KAOmTMCtGkI',
	'http://ia.media-imdb.com/images/M/MV5BMjE1MDQ4MjI1OV5BMl5BanBnXkFtZTcwNzcwODAzMw@@._V1_UY268_CR3,0,182,268_AL_.jpg');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Comedy', 4, NULL);