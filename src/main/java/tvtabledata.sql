INSERT INTO Show (id, name, start_year, end_year, rating, summary)
VALUES (1, 'Rick and Morty', 2013, 2016, 'TV-14', 'An animated series that follows the exploits of a super scientist and his not so bright grandson.');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Animation', NULL, 1);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Adventure', NULL, 1);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Comedy', NULL, 1);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Sci-Fi', NULL, 1);









INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (1, 1, '2013-12-02', '2014-04-14', 'http://ia.media-imdb.com/images/M/MV5BMTQxNDEwNTE0Nl5BMl5BanBnXkFtZTgwMzQ1MTg3MDE@._V1_SX640_SY720_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (1, 1);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (2, 2, '2015-07-26', '2015-10-04', 'http://ia.media-imdb.com/images/M/MV5BMTQxNDEwNTE0Nl5BMl5BanBnXkFtZTgwMzQ1MTg3MDE@._V1_SX640_SY720_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (1, 2);








INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (1, 'Pilot', 1, '00:22:00', '2013-12-02', 'A sociopathic scientist drags his innocent grandson on dangerous inter-dimensional adventures.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 1);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (2, 'Lawnmower Dog', 2, '00:22:00', '2013-12-09', 'Rick helps Jerry out with the dog, broh. Don''t even trip about this episode, because they also incept Goldenfold. (Guest starring Rob Paulsen and Jess Harnell)');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 2);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (3, 'Anatomy Park', 3, '00:22:00', '2013-12-16', 'It''s Christmas. Rick shrinks Morty, injecting him into a homeless man to save Anatomy Park. Jerry tries to have a Christmas free of electronic devices, but regrets his decision when his parents introduce him to their new friend.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 3);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (4, 'A Rickle in Time', 1, '00:23:00', '2015-07-26', 'Having restarted time, Rick, Morty and Summer are in a quantum-uncertain state of existence. An argument leads to the creation of two alternate timelines, which need to be stitched back together fast if they are to escape quantum collapse.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 4);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (5, 'Mortynight Run', 2, '00:23:00', '2015-08-02', 'Rick and Morty try to save a gas life form while Jerry resides in a daycare made for Jerrys.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 5);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (6, 'Auto Erotic Assimilation', 3, '00:23:00', '2015-08-09', 'Rick gets emotional. Beth and Jerry get into a fight.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 6);