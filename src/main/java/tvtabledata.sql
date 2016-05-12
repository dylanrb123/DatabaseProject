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
VALUES (4, 'M. Night Shaym-Aliens!', 4, '00:22:00', '2014-01-13', 'Rick and Morty try to get to the bottom of a mystery in this M. Night Shamyaloin style twistaroony of an episode! (Guest Starring David Cross)');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 4);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (5, 'Meeseeks and Destroy', 5, '00:22:00', '2014-01-20', 'Rick provides the family with a solution to their problems, freeing him up to go on an adventure led by Morty.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 5);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (6, 'Rick Potion #9', 6, '00:22:00', '2014-01-27', 'Rick provides Morty with a love potion to get Jessica.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 6);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (7, 'Raising Gazorpazorp', 7, '00:22:00', '2014-03-10', 'Morty becomes a father to an alien baby, while Rick and Summer get trapped in a dangerous dimension.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 7);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (8, 'Rixty Minutes', 8, '00:22:00', '2014-03-17', 'Rick hooks up the family''s TV with interdimensional cable, allowing them to watch infinite TV from across the multiverse.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 8);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (9, 'Something Ricked This Way Comes', 9, '00:22:00', '2014-03-24', 'Summer gets a job at a pawn shop owned by the devil. Jerry helps Morty with his science fair project.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 9);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (10, 'Close Rick-counters of the Rick Kind', 10, '00:22:00', '2014-04-07', 'Rick has a run in with some old associates, resulting in a fallout with Morty. You got any chips, broh?');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 10);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (11, 'Ricksy Business', 11, '00:22:00', '2014-04-14', 'Beth and Jerry head for an iceberg of a date leaving Rick in charge. Morty doesn''t get to go on any more adventures if the house isn''t in the same condition when they get back.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (1, 11);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (12, 'A Rickle in Time', 1, '00:23:00', '2015-07-26', 'Having restarted time, Rick, Morty and Summer are in a quantum-uncertain state of existence. An argument leads to the creation of two alternate timelines, which need to be stitched back together fast if they are to escape quantum collapse.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 12);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (13, 'Mortynight Run', 2, '00:23:00', '2015-08-02', 'Rick and Morty try to save a gas life form while Jerry resides in a daycare made for Jerrys.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 13);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (14, 'Auto Erotic Assimilation', 3, '00:23:00', '2015-08-09', 'Rick gets emotional. Beth and Jerry get into a fight.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 14);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (15, 'Total Rickall', 4, '00:23:00', '2015-08-16', 'The Smith house is locked down after parasites threaten to take over the world by multiplying through flashbacks.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 15);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (16, 'Get Schwifty', 5, '00:23:00', '2015-08-23', 'Rick and morty must aid Earth after a giant head disrupts the planet, demanding to see a hit song performed.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 16);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (17, 'The Ricks Must Be Crazy', 6, '00:23:00', '2015-08-30', 'Rick is having trouble with his car and they have to fix it by traveling to the microverse.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 17);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (18, 'Big Trouble in Little Sanchez', 7, '00:23:00', '2015-09-13', 'Rick joins in on some hijinks by transferring his consciousness into teenage "Tiny Rick". Beth and Jerry sort out their relationship.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 18);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (19, 'Interdimensional Cable 2: Tempting Fate', 8, '00:23:00', '2015-09-20', 'Jerry is faced with the difficult decision of losing his manhood in order to save an alien leader from imminent death. Meanwhile, Rick, Morty and Summer explore the possibilities of interdimensional television.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 19);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (20, 'Look Who''s Purging Now', 9, '00:23:00', '2015-09-27', 'Rick and Morty arrive on an alien planet to fix their ship just as the day of the purge begins there, Jerry and Summer work on their father-daughter relationship, but his lack of employment keeps coming up.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 20);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (21, 'The Wedding Squanchers', 10, '00:23:00', '2015-10-04', 'Rick and his family are invited to a wedding.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (2, 21);








INSERT INTO Show (id, name, start_year, end_year, rating, summary)
VALUES (2, 'Daredevil', 2015, 2016, 'TV-MA', 'Matt Murdock, with his other senses superhumanly enhanced, fights crime as a blind Lawyer by day, and vigilante by night.');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Action', NULL, 2);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Crime', NULL, 2);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Drama', NULL, 2);



INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (3, 1, '2015-04-10', '2015-04-10', 'http://ia.media-imdb.com/images/M/MV5BMDM5NjVlYTEtMGQ4Yy00OTk2LWJmMzEtZDkxYjNkMjY5YTVjXkEyXkFqcGdeQXVyNjEyOTQ3ODU@._V1_UY268_CR43,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (2, 3);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (4, 2, '2016-03-18', '2016-03-18', 'http://ia.media-imdb.com/images/M/MV5BMDM5NjVlYTEtMGQ4Yy00OTk2LWJmMzEtZDkxYjNkMjY5YTVjXkEyXkFqcGdeQXVyNjEyOTQ3ODU@._V1_UY268_CR43,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (2, 4);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (22, 'Into the Ring', 1, '00:53:00', '2015-04-10', 'Matt Murdock and Foggy Nelson open their law firm, and take the case of a woman accused of murder who Matt believes is innocent.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 22);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (23, 'Cut Man', 2, '00:53:00', '2015-04-10', 'Murdock makes a near fatal error while trying to save a kidnapped boy, and finds an unlikely ally when he needs saving himself.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 23);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (24, 'Rabbit in a Snowstorm', 3, '00:53:00', '2015-04-10', 'Murdock and Foggy take on a mysterious wealthy client, but Murdock is convinced that there''s more to the case than just the facts.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 24);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (25, 'In the Blood', 4, '00:53:00', '2015-04-10', 'Two vicious Russian brothers working for Fisk strike back against Daredevil. Fisk moves to further consolidate his power in the criminal underworld.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 25);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (26, 'World on Fire', 5, '00:53:00', '2015-04-10', 'Daredevil finds himself trapped in the fallout of Fisk''s plan to take control of Hell''s Kitchen. Ben Urich digs closer to the truth.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 26);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (27, 'Condemned', 6, '00:53:00', '2015-04-10', 'Daredevil finds himself trapped in the fallout of Fisk''s plan to take control of Hell''s Kitchen. Ben Urich digs closer to the truth.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 27);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (28, 'Stick', 7, '00:53:00', '2015-04-10', 'An important figure from Murdock''s past reemerges seeking his help to battle a new enemy threatening Hell''s Kitchen.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 28);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (29, 'Shadows in the Glass', 8, '00:53:00', '2015-04-10', 'While Murdock, Foggy and Karen''s mission becomes clearer, Fisk''s world spins further out of control in his battle for Hell''s Kitchen.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 29);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (30, 'Speak of the Devil', 9, '00:53:00', '2015-04-10', 'When Fisk gains the upper hand, the goal to destroy him becomes even more difficult, while Daredevil faces his own demons.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 30);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (31, 'Nelson v. Murdock', 10, '00:53:00', '2015-04-10', 'After Foggy and Murdock''s relationship has taken a turn for the worst, a new enemy of Fisk has surfaced.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 31);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (32, 'The Path of the Righteous', 11, '00:53:00', '2015-04-10', 'Fisk and Murdock wrestle with the consequences of their chosen paths, while Ben and Karen get closer to Fisk''s true past.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 32);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (33, 'The Ones We Leave Behind', 12, '00:53:00', '2015-04-10', 'Fisk seeks revenge while Karen is haunted by recent events. Daredevil makes a startling discovery about Fisk''s financing.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 33);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (34, 'Daredevil', 13, '00:53:00', '2015-04-10', 'In the season finale, a boxed-in Fisk and a desperate Murdock, Foggy, and Karen are forced to play their end games.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (3, 34);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (35, 'Bang', 1, '00:53:00', '2016-03-18', 'In the void left by Fisk''s removal, a new threat to Hell''s Kitchen emerges. Murdock and Foggy take on a client with a questionable past.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 35);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (36, 'Dogs to a Gunfight', 2, '00:53:00', '2016-03-18', 'As Murdock recovers from an attack, Foggy and Karen fight to protect their new client from both the law and the Kitchen''s newest vigilante.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 36);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (37, 'New York''s Finest', 3, '00:53:00', '2016-03-18', 'Trapped face-to-face with the Punisher, Daredevil wrestles with the morality of vigilante justice. Meanwhile, Foggy and Karen work to save the firm.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 37);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (38, 'Penny and Dime', 4, '00:53:00', '2016-03-18', 'Karen uncovers shocking facts about the Punisher, who finds himself hunted by a powerful force in Hell''s Kitchen. Daredevil ponders his next moves.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 38);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (39, 'Kinbaku', 5, '00:53:00', '2016-03-18', 'A former lover arrives in Hell''s Kitchen and turns Murdock''s world upside down. Karen digs for the truth about the Punisher.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 39);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (40, 'Regrets Only', 6, '00:53:00', '2016-03-18', 'A lethal foe returns with a vengeance, Foggy and Murdock risk the firm to ensure justice, and Karen sees a different side of the Punisher.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 40);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (41, 'Semper Fidelis', 7, '00:53:00', '2016-03-18', 'Murdock and Foggy take on the DA in the trial of the century, but their client refuses to play along. Murdock struggles to balance his dual identities.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 41);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (42, 'Guilty as Sin', 8, '00:53:00', '2016-03-18', 'As the firm''s trial spins out of control, a figure from Murdock''s past returns to deliver shocking revelations about the future of Hell''s Kitchen.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 42);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (43, 'Seven Minutes in Heaven', 9, '00:53:00', '2016-03-18', 'Castle gets an offer he can''t refuse. Foggy and Murdock question the future of their firm, but Karen won''t give up so easily.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 43);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (44, 'The Man in the Box', 10, '00:53:00', '2016-03-18', 'Murdock and Foggy get caught in the crossfire of the Punisher''s revenge. Karen and Murdock dig for the truth in very different ways.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 44);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (45, '.380', 11, '00:53:00', '2016-03-18', 'Karen starts working with Frank to bring the mysterious Blacksmith down. Claire quits her job as the hospital''s administration are trying to keep her silent. Matt visits Madame Gao to get information on Blacksmith.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 45);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (46, 'The Dark at the End of the Tunnel', 12, '00:53:00', '2016-03-18', 'Daredevil goes underground to save an old friend. Karen follows a dangerous lead. The law firm of Nelson and Murdock may have reached its final chapter.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 46);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (47, 'A Cold Day in Hell''s Kitchen', 13, '00:53:00', '2016-03-18', 'In the season finale, Daredevil is backed into the ultimate showdown for his own life - and the future of Hell''s Kitchen.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (4, 47);








INSERT INTO Show (id, name, start_year, end_year, rating, summary)
VALUES (3, 'Sherlock', 2010, 2016, 'TV-14', 'A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Mystery', NULL, 3);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Crime', NULL, 3);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Drama', NULL, 3);



INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (5, 1, '2010-10-24', '2010-11-07', 'http://ia.media-imdb.com/images/M/MV5BNTA2MTE1NDI5OV5BMl5BanBnXkFtZTcwNzM2MzU3Nw@@._V1_UY268_CR17,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (3, 5);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (6, 2, '2012-05-06', '2012-05-20', 'http://ia.media-imdb.com/images/M/MV5BNTA2MTE1NDI5OV5BMl5BanBnXkFtZTcwNzM2MzU3Nw@@._V1_UY268_CR17,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (3, 6);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (7, 3, '2014-01-19', '2014-02-02', 'http://ia.media-imdb.com/images/M/MV5BNTA2MTE1NDI5OV5BMl5BanBnXkFtZTcwNzM2MzU3Nw@@._V1_UY268_CR17,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (3, 7);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (48, 'A Study in Pink', 1, '01:28:00', '2010-10-24', 'War vet Dr. John Watson returns to London in need of a place to stay. He meets Sherlock Holmes, a consulting detective, and the two soon find themselves digging into a string of serial "suicides."');
INSERT INTO season_episode (season_id, episode_id)
VALUES (5, 48);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (49, 'The Blind Banker', 2, '01:29:00', '2010-10-31', 'Mysterious symbols and murders are showing up all over London, leading Sherlock and John to a secret Chinese crime syndicate called Black Lotus.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (5, 49);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (50, 'The Great Game', 3, '01:29:00', '2010-11-07', 'Mycroft needs Sherlock''s help, but a remorseless criminal mastermind puts Sherlock on a distracting crime-solving spree via a series of hostage human bombs through which he speaks.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (5, 50);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (51, 'A Scandal in Belgravia', 1, '01:29:00', '2012-05-05', 'Sherlock must confiscate something of importance from a mysterious woman named Irene Adler.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (6, 51);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (52, 'The Hounds of Baskerville', 2, '01:28:00', '2012-05-13', 'Sherlock and John investigate the ghosts of a young man who has been seeing monstrous hounds out in the woods where his father died.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (6, 52);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (53, 'The Reichenbach Fall', 3, '01:28:00', '2012-05-20', 'Jim Moriarty hatches a mad scheme to turn the whole city against Sherlock.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (6, 53);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (54, 'The Empty Hearse', 1, '01:28:00', '2014-01-19', 'Mycroft calls Sherlock back to London to investigate an underground terrorist organization.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (7, 54);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (55, 'The Sign of Three', 2, '01:26:00', '2014-01-26', 'Sherlock tries to give the perfect best man speech at John''s wedding when he suddenly realizes a murder is about to take place.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (7, 55);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (56, 'His Last Vow', 3, '01:29:00', '2014-02-02', 'Sherlock goes up against the notorious blackmailer Charles Augustus Magnussen.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (7, 56);










INSERT INTO Show (id, name, start_year, end_year, rating, summary)
VALUES (4, 'Orange Is the New Black', 2013, 2016, 'TV-MA', 'The story of Piper Chapman, a woman in her thirties who is sentenced to fifteen months in prison after being convicted of a decade-old crime of transporting money to her drug-dealing girlfriend.');

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Comedy', NULL, 4);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Crime', NULL, 4);

INSERT INTO GENRE (name, movie_id, show_id)
VALUES ('Drama', NULL, 4);



INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (8, 1, '2013-07-11', '2013-07-11', 'http://ia.media-imdb.com/images/M/MV5BMjMzMjAxNDY5MV5BMl5BanBnXkFtZTgwMzAzNTQxODE@._V1_UX182_CR0,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (4, 8);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (9, 2, '2014-06-06', '2014-06-06', 'http://ia.media-imdb.com/images/M/MV5BMjMzMjAxNDY5MV5BMl5BanBnXkFtZTgwMzAzNTQxODE@._V1_UX182_CR0,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (4, 9);

INSERT INTO Season (id, number, start_date, end_date, poster_url)
VALUES (10, 3, '2015-06-11', '2015-06-11', 'http://ia.media-imdb.com/images/M/MV5BMjMzMjAxNDY5MV5BMl5BanBnXkFtZTgwMzAzNTQxODE@._V1_UX182_CR0,0,182,268_AL_.jpg');
INSERT INTO show_season (show_id, season_id)
VALUES (4, 10);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (57, 'I Wasn''t Ready', 1, '01:01:00', '2013-07-11', 'Piper Chapman is sent to jail as a result of her relationship with a drug smuggler.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 57);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (58, 'Tit Punch', 2, '01:01:00', '2013-07-11', 'After accidentally insulting the prison''s chef, the kitchen staff refuses to feed Piper.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 58);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (59, 'Lesbian Request Denied', 3, '01:01:00', '2013-07-11', 'Piper must deal with romantic advances from a fellow inmate known as Crazy Eyes.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 59);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (60, 'Imaginary Enemies', 4, '01:01:00', '2013-07-11', 'Piper gets to know her stern new roommate. The inmates prepare for a farewell party.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 60);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (61, 'The Chickening', 5, '01:01:00', '2013-07-11', 'While on the lawn one morning, Piper sees a chicken roosting nearby on the grass. When she tells other inmates about the odd sighting, Piper discovers that the chicken is actually a prison legend that several inmates have tried to catch for years. The complicated history between Aleida Diaz and her daughter Dayanara Diaz comes to light.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 61);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (62, 'WAC Pack', 6, '01:01:00', '2013-07-11', 'The inmates must campaign amongst their races for a coveted spot as a prisoners'' representative. Piper steers clear of the bizarre political process but might not have a choice but to get involved. Larry''s editor wants him to write an article about Piper''s incarceration.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 62);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (63, 'Blood Donut', 7, '01:01:00', '2013-07-11', 'Former high school track star Janae Watson returns from solitary confinement. Piper wants to reopen the outdoor track but Healy forces her to fulfill several potentially dangerous tasks before he will consider it. Alex''s teasing of a religious fanatic named Tiffany "Pennsatucky" Doggett sparks a rivalry.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 63);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (64, 'Moscow Mule', 8, '01:01:00', '2013-07-11', 'Officer Mendez begins harassing Red when she refuses to help him continue smuggling drugs into the prison. Larry publishes his article about Piper in the New York Times, which turns her into a person of interest for inmates and corrections officers alike. Piper''s best friend Polly has her baby at the same time that a baby is born to an inmate in Piper''s cell block.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 64);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (65, 'Fucksgiving', 9, '01:01:00', '2013-07-11', 'Piper is in high spirits when she makes peace with Alex and awaits a visit from Larry on Thanksgiving. However, Healy''s true colors come out when he throws Piper in solitary confinement for dancing with Alex. The frightening experience of solitary forces Piper to take a serious look at her life and come to several conclusions about the future.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 65);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (66, 'Bora Bora Bora', 10, '01:01:00', '2013-07-11', 'Pennsatucky flaunts her new healing hands that Jesus has supposedly given her. The prison brings in a group of teenage troublemakers so that the inmates can scare them straight. Tricia returns from detox to find she has lost her position on the kitchen staff and must still deal with Mendez breathing down her neck for her drug debts.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 66);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (67, 'Tall Men with Feelings', 11, '01:01:00', '2013-07-11', 'Grief looms over the prison as the inmates mourn a recent suicide. Dayanara, Nicky, and Red plot to end Mendez''s career by tricking him into revealing his indiscretions. Larry gives a radio interview about Piper''s experience in prison and his comments cause conflict with some of Piper''s closest allies.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 67);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (68, 'Fool Me Once', 12, '01:01:00', '2013-07-11', 'After discovering a series of sad truths, friendships change. Tiffany ''Pennsatucky'' Doggett is offended by Piper Chapman, and that lead to the dangerous roads. Larry finally meets Piper after the radio show to discuss their future.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 68);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (69, 'Can''t Fix Crazy', 13, '01:01:00', '2013-07-11', 'Alex makes a final decision about Piper and Larry finally decides what will happen to Piper after meeting Alex for the first time. Red''s plan to retrieve her kitchen goes awry. Piper is forced to stand up to another inmate.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (8, 69);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (70, 'Thirsty Bird', 1, '01:01:00', '2014-06-06', 'Piper is awakened in solitary and, without being given any information, is forced to board a bus and a plane to whereabouts unknown.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 70);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (71, 'Looks Blue, Tastes Red', 2, '01:01:00', '2014-06-06', 'A job fair is being held at the prison, which Taystee attends, Red must face being alone, and Pennsatucky leaves the SHU.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 71);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (72, 'Hugs Can Be Deceiving', 3, '01:01:00', '2014-06-06', 'Piper is challenged by her Soso experience; Morello gets her heart broken; a figure from Taystee''s past arrives to disturb the status quo.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 72);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (73, 'A Whole Other Hole', 4, '01:01:00', '2014-06-06', 'Morello takes a ride, the girls learn about the female body, Piper and Big Boo make a deal, Miss Rosa meets a boy, and Larry and Polly have a day together.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 73);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (74, 'Low Self Esteem City', 5, '01:01:00', '2014-06-06', 'A bathroom turf war sees deeper lines drawn in the sand as Gloria and Vee go head to head. Piper receives devastating news.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 74);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (75, 'You Also Have a Pizza', 6, '01:01:00', '2014-06-06', 'Love is in the air as the inmates prepare for a Valentine''s Day party; Red makes an intriguing new discovery. Larry asks Piper to be his prison mole.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 75);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (76, 'Comic Sans', 7, '01:01:00', '2014-06-06', 'Vee starts her inmate run business, Black Cindy is having issues , Bennett gets blackmailed, and Piper begins her newspaper club.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 76);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (77, 'Appropriately Sized Pots', 8, '01:01:00', '2014-06-06', 'Piper faces a new backlash over special privileges; Capulo feels pressure to toughen up, resulting in administrative changes.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 77);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (78, '40 OZ of Furlough', 9, '01:01:00', '2014-06-06', 'When Piper finally leaves the prison from her furlough agreement, she has issues with her family, and at the same time Pornstache is back and makes the prison a ''hellhole''');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 78);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (79, 'Little Mustachioed Shit', 10, '01:01:00', '2014-06-06', 'The prison guards finally crack down on the inmates to stop the smuggling issue. After Bennett framed Pornstache, problems arise. And a big secret between Piper and Polly is revealed.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 79);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (80, 'Take a Break from Your Values', 11, '01:01:00', '2014-06-06', 'Piper is shocked at an unexpected change in her status; Soso''s hunger strike attracts new support that takes on a religious fervour.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 80);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (81, 'It Was the Change', 12, '01:01:00', '2014-06-06', 'Tensions run high as a prison power outage forces several issues to come to light; Piper finds herself compromised and is forced to think on her feet.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 81);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (82, 'We Have Manners. We''re Polite.', 13, '01:01:00', '2014-06-06', 'Several futures hang in the balance as the inmates face and confront their worst nightmares; Life will never be the same again.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (9, 82);



INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (83, 'Mother''s Day', 1, '01:01:00', '2015-06-11', 'Caputo''s kinder, gentler new regime includes organizing a Mother''s Day fair for the inmates that brings up a LOT of mixed feelings about family.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 83);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (84, 'Bed Bugs and Beyond', 2, '01:01:00', '2015-06-11', 'Tempers flare when bed bugs invade, as Alex cracks, Red lashes out at Piper, Aleida interferes with Daya and Bennett, and Caputo gets bad news.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 84);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (85, 'Empathy Is a Boner Killer', 3, '01:01:00', '2015-06-11', 'Nicky''s stash situation gets complicated. Alex and Crazy Eyes try a new drama class. Red assists Healy with a personal matter.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 85);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (86, 'Finger in the Dyke', 4, '01:01:00', '2015-06-11', 'Big boo comes up with a scheme to make money. Daya, Taystee and Crazy Eyes confront reality. Caputo tries to make a good impression on some visitors.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 86);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (87, 'Fake It Till You Fake It Some More', 5, '01:01:00', '2015-06-11', 'Rumors fly among the inmates about a new, higher-paying job assignment, especially when they have to take a test for it.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 87);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (88, 'Ching Chong Chang', 6, '01:01:00', '2015-06-11', 'Regime change isn''t going over well the staff, but Red makes it work for her. Lorna finds a new way to meet men. Chang shows her private side.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 88);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (89, 'Tongue-Tied', 7, '01:01:00', '2015-06-11', 'Norma''s healing powers draw more believers. Piper creates a new business venture. Caputo breaks in new hires.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 89);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (90, 'Fear, and Other Smells', 8, '01:01:00', '2015-06-11', 'Piper gets creative in order to grow her new business. Crazy Eyes''s sci-fi sex story for drama class is a hit. Alex doesn''t trust a new inmate named Lolly.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 90);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (91, 'Where My Dreidel At', 9, '01:01:00', '2015-06-11', 'Too many inmates seem to be getting religion, so a rabbi comes to visit and Leanne tries to organize Norma''s followers.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 91);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (92, 'A Tittin'' and a Hairin''', 10, '01:01:00', '2015-06-11', 'Pennsatucky, Piper, Crazy Eyes, and Lorna get closer with their new admirers. Tensions between Sophia and Gloria, and Alex and Lolly escalate.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 92);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (93, 'We Can Be Heroes', 11, '01:01:00', '2015-06-11', 'Caputo and Piper confront labor issues. A miracle occurs in Norma''s group. Crazy Eyes''s erotica winds up in the hands of the staff.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 93);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (94, 'Don''t Make Me Come Back There', 12, '01:01:00', '2015-06-11', 'Daya goes into labor. Sophia suffers a hate crime. Stella helps Piper with a business snag. Taystee takes on a new role.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 94);

INSERT INTO Episode (id, name, number, length, air_date, description)
VALUES (95, 'Trust No Bitch', 13, '01:01:00', '2015-06-11', 'Miracles and conversions occur, but Piper and Caputo know that some situations can''t be dealt with through spiritual means.');
INSERT INTO season_episode (season_id, episode_id)
VALUES (10, 95);