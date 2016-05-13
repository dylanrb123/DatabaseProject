INSERT INTO Person (id, name, DOB, biography)
VALUES (1, 'Brad Pitt', '1963-12-18',
            'William Bradley "Brad" Pitt is an American actor and producer. He has received a Golden Globe Award, a Screen Actors Guild Award, and three Academy Award nominations in acting categories, and received three further Academy Award nominations, winning one, as producer under his own company Plan B Entertainment.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (1, 1, (SELECT id FROM Movie WHERE name = 'World War Z'), 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (2, 1, (SELECT id FROM Movie WHERE name = 'Moneyball'), 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (3, 1, (SELECT id FROM Movie WHERE name = 'Fight Club'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (1, 1, 'Sexiest Man Alive', 1995, 'PEOPLE Magazine');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (2, 1, 'Sexiest Man Alive', 2000, 'PEOPLE Magazine');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (3, 0, 'Best Actor', 2014, 'Saturn Awards');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (4, 1, 'Best Actor', 2011, 'Denver Film Critics Society');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (1, 2, (SELECT id FROM Movie WHERE name = 'Moneyball'), 1);

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (2, 2, (SELECT id FROM Movie WHERE name = 'World War Z'), 1);

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (3, 3, (SELECT id FROM Movie WHERE name = 'World War Z'), 1);

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (4, 4, (SELECT id FROM Movie WHERE name = 'Moneyball'), 1);









INSERT INTO Person (id, name, DOB, biography)
VALUES (2, 'Andy Samberg', '1978-08-18',
            'Andy Samberg is an American actor and comedian. He is a member of the comedy group The Lonely Island and was a cast member on Saturday Night Live (2005–2012), where he and his fellow group members have been credited with popularizing the SNL Digital Shorts.');

INSERT INTO Person (id, name, DOB, biography)
VALUES (3, 'Akiva Schaffer', '1977-12-01',
            'Akiva D. "Kiv" Schaffer is an American comedy writer, songwriter, actor, and film director. He is a member of the comedy group The Lonely Island.');


INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (4, (SELECT id FROM Person WHERE name = 'Andy Samberg'), (SELECT id FROM Movie WHERE name = 'Hot Rod'), 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (5, (SELECT id FROM Person WHERE name = 'Akiva Schaffer'), (SELECT id FROM Movie WHERE name = 'Hot Rod'), 'Director');

INSERT INTO Person (id, name, DOB, biography)
VALUES (4, 'Robert Downey Jr.', '1965-04-04',
            'Robert John Downey Jr. is an American actor. His career has included critical and popular success in his youth, followed by a period of substance abuse and legal troubles, and a resurgence of commercial success in middle age.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (6, 4, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');







INSERT INTO Person (id, name, DOB, biography)
VALUES (5, 'Chris Evans', '1981-06-13',
            'Christopher Robert Evans is an American actor. Evans is best known for his superhero roles as the Marvel Comics characters Captain America in the Marvel Cinematic Universe and the Human Torch in Fantastic Four.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (7, 5, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (5, 0, 'Favorite Movie Superhero', 2013, 'People''s Choice Award');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (5, 5, (SELECT id FROM Movie WHERE name = 'The Avengers'), 5);





INSERT INTO Person (id, name, DOB, biography)
VALUES (6, 'Scarlett Johansson', '1984-11-22',
            'Scarlett Johansson is an American actress, model, and singer. She made her film debut in North. Johansson subsequently starred in Manny & Lo in 1996, and garnered further acclaim and prominence with roles in The Horse Whisperer and Ghost World.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (8, 6, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');





INSERT INTO Person (id, name, DOB, biography)
VALUES (7, 'Chris Hemsworth', '1983-08-11',
            'Chris Hemsworth is an Australian actor. He is best known for his roles as Kim Hyde in the Australian TV series Home and Away and as Thor in the Marvel Cinematic Universe films Thor, The Avengers, Thor: The Dark World and Avengers: Age of Ultron.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (9, 7, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (6, 0, 'Favorite Male Buttkicker', 2013, 'Kid''s Choice Award');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (6, 6, (SELECT id FROM Movie WHERE name = 'The Avengers'), 7);

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (7, 1, 'Favorite Action Movie Star', 2013, 'People''s Choice Award');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (7, 7, (SELECT id FROM Movie WHERE name = 'The Avengers'), 7);




INSERT INTO Person (id, name, DOB, biography)
VALUES (8, 'Joss Whedon', '1964-06-23',
            'Joseph Hill "Joss" Whedon is an American screenwriter, film and television director, film and television producer, comic book author, and composer.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (10, 8, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Director');





INSERT INTO Person (id, name, DOB, biography)
VALUES (9, 'Morgan Freeman', '1937-06-01',
            'Morgan Freeman is an American actor and narrator. He is known for his distinctively smooth, deep voice. He got his break as part of the cast of the 1970s children''s program The Electric Company. Morgan Freeman is ranked as the 3rd highest box office star with over $4.316 billion total box office gross, an average of $74.4 million per film.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (11, 9, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (8, 0, 'Best Actor', 1994, 'Academy Awards');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (8, 8, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 9);

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (9, 0, 'Best Performance', 1994, 'Golden Globe Award');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (9, 9, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 9);





INSERT INTO Person (id, name, DOB, biography)
VALUES (10, 'Tom Robbins', '1958-10-16',
            'Timothy Francis "Tim" Robbins is an American actor, screenwriter, director, producer, activist and musician. He is well known for his portrayal of Andy Dufresne in the prison drama film The Shawshank Redemption.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (12, 10, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (1000, 0, 'Outstanding Performance', 1995, 'Screen Actors Guild Awards');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (1000, 1000, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 10);





INSERT INTO Person (id, name, DOB, biography)
VALUES (11, 'Frank Darabont', '1959-01-28',
            'Frank Arpad Darabont is a Hungarian-American film director, screenwriter and producer who has been nominated for three Academy Awards and a Golden Globe Award. In his early career he was primarily a screenwriter for horror films such as A Nightmare on Elm Street 3: Dream Warriors, The Blob and The Fly II. As a director he is known for his film adaptations of Stephen King novels such as The Shawshank Redemption, The Green Mile, and The Mist.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (13, 11, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Director');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (10, 0, 'Best Adapted Screenplay', 1994, 'Academy Awards');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (10, 10, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 11);

INSERT INTO Person (id, name, DOB, biography)
VALUES (100, 'Daniel Radcliffe', '1989-07-23',
        'Daniel Jacob Radcliffe is an English actor who rose to prominence as the title character in the Harry Potter film series.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (100, 100, 116, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (101, 100, 117, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (102, 100, 118, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (103, 100, 119, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (104, 100, 120, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (105, 100, 121, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (106, 100, 122, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (107, 100, 123, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (101, 'Emma Watson', '1990-04-15',
        'Emma Charlotte Duerre Watson is a British actress, model, and activist. Born in Paris and brought up in Oxfordshire, Watson attended the Dragon School as a child and trained as an actress at the Oxford branch of Stagecoach Theatre Arts.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (108, 101, 116, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (109, 101, 117, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (110, 101, 118, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (111, 101, 119, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (112, 101, 120, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (113, 101, 121, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (114, 101, 122, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (115, 101, 123, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (102, 'Rupert Grint', '1988-08-24',
        'Rupert Alexander Lloyd Grint is an English actor who rose to prominence playing Ron Weasley, one of the three main characters in the Harry Potter film series.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (116, 102, 116, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (117, 102, 117, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (118, 102, 118, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (119, 102, 119, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (120, 102, 120, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (121, 102, 121, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (122, 102, 122, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (123, 102, 123, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (103, 'Alan Rickman', '1946-02-21',
        'Alan Sidney Patrick Rickman was an English actor and director known for playing a variety of roles on stage and screen.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (124, 103, 116, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (125, 103, 117, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (126, 103, 118, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (127, 103, 119, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (128, 103, 120, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (129, 103, 121, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (130, 103, 122, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (131, 103, 123, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (104, 'Emily Browning', '1988-12-07',
        'Emily Jane Browning is an Australian actress and singer.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (132, 104, 100, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (105, 'Jennifer Aniston', '1969-02-11',
        'Jennifer Joanna Aniston is an American actress, producer, and businesswoman. She is the daughter of actor John Aniston and actress Nancy Dow.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (133, 105, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (106, 'Bradley Cooper', '1975-01-05',
        'Bradley Charles Cooper is an American actor and producer. He has been nominated for four Academy Awards, three for acting and one for producing, and one Tony Award. He was named the "Sexiest Man Alive" by People magazine in 2011.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (134, 106, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (107, 'Scarlett Johansson', '1984-11-22',
        'Scarlett Johansson is an American actress, model, and singer. She made her film debut in North. Johansson subsequently starred in Manny & Lo in 1996, and garnered further acclaim and prominence with roles in The Horse Whisperer and Ghost World.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (135, 107, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (108, 'Ginnifer Goodwin', '1978-05-22',
        'Ginnifer Goodwin, born Jennifer Michelle Goodwin, is an American television and film actress.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (136, 108, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (109, 'Jennifer Connelly', '1970-12-12',
        'Jennifer Lynn Connelly is an American film actress who began her career as a child model. She appeared in magazine, newspaper and television advertising, before she made her debut role in the 1984 crime film Once Upon a Time in America.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (137, 109, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (110, 'Drew Barrymore', '1975-02-22',
        'Drew Blythe Barrymore is an American actress, author, director, model and producer. She is a descendant of the Barrymore family of well-known American stage and cinema actors, and is a granddaughter of actor John Barrymore.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (138, 110, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (111, 'Ben Affleck', '1972-08-15',
        'Benjamin Geza Affleck-Boldt, better known as Ben Affleck, is an American actor and filmmaker. He began his career as a child actor, starring in the PBS educational series The Voyage of the Mimi.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (139, 111, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (112, 'Justin Long', '1978-06-02',
        'Justin Jacob Long is an American actor. He is known for roles in such films as Jeepers Creepers, Dodgeball, Accepted, Alvin and the Chipmunks, Live Free or Die Hard, Alpha and Omega and Comet.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (140, 112, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (113, 'Kevin Connolly', '1974-03-05',
        'Kevin Connolly is an American actor and director. He is best known for his role as Eric Murphy in the HBO series Entourage, and his role as the eldest son Ryan Malloy in the 1990s television sitcom Unhappily Ever After.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (141, 113, 104, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (114, 'Rachel McAdams', '1978-11-17',
        'Rachel Anne McAdams is a Canadian actress.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (142, 114, 106, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (115, 'Ryan Gosling', '1980-11-12',
        'Ryan Thomas Gosling is a Canadian actor, musician, and producer.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (143, 115, 106, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (116, 'Alexa Vega', '1988-08-27',
        'Alexa Ellesse PenaVega is an American actress and singer. She is known for her role as Carmen Cortez in the Spy Kids film series and Shilo Wallace in the film Repo! The Genetic Opera.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (144, 116, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (145, 116, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (146, 116, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (117, 'Daryl Sabara', '1992-07-14',
        'Daryl Christopher Sabara is an American actor. He is perhaps best known for playing Juni Cortez in the Spy Kids film series.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (147, 117, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (148, 117, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (149, 117, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (118, 'Antonio Banderas', '1960-08-10',
        'José Antonio Domínguez Banderas, known professionally as Antonio Banderas, is a Spanish actor, director, and producer.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (150, 118, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (151, 118, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (152, 118, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (119, 'Carla Gugino', '1971-08-29',
        'Carla Gugino is an American actress. She is known for her roles as Ingrid Cortez in the Spy Kids trilogy, Sally Jupiter in Watchmen, Dr. Vera Gorski in Sucker Punch, and as the lead characters of the television series Karen Sisco and Threshold.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (153, 119, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (154, 119, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (155, 119, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (120, 'Danny Trejo', '1944-05-16',
        'Danny Trejo is an American actor who has appeared in numerous Hollywood films, often as hypermasculine characters, villains and anti-heroes. His films include Heat, Con Air, and Desperado, the latter with frequent collaborator Robert Rodriguez.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (156, 120, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (157, 120, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (158, 120, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (121, 'Alan Cumming', '1965-01-27',
        'Alan Cumming is a Scottish character actor, author, and activist who has appeared in numerous films, television shows and plays.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (159, 121, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (160, 121, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (161, 121, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (122, 'Cheech Marin', '1946-07-13',
        'Richard Anthony "Cheech" Marin is an American comedian, actor, voice actor and writer who gained recognition as part of the comedy act Cheech & Chong during the 1970s and early 1980s with Tommy Chong, and as Don Johnson''s partner, Insp.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (162, 122, 141, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (163, 122, 142, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (164, 122, 143, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (123, 'Neve Campbell', '1973-10-03',
        'Neve Adrianne Campbell is a Canadian actress. She is best known for her role as Sidney Prescott in the horror film series Scream.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (165, 123, 124, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (166, 123, 125, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (167, 123, 126, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (168, 123, 127, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (124, 'Courteney Cox', '1964-06-05',
        'Courteney Bass Cox (born June 15, 1964[1][2]) is an American actress, producer and director. She is best identified for her roles as Monica Geller on the NBC sitcom Friends, Gale Weathers in the horror series Scream, and as Jules Cobb in the ABC/TBS sitcom Cougar Town, for which she earned her first Golden Globe nomination.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (169, 124, 124, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (170, 124, 125, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (171, 124, 126, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (172, 124, 127, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (125, 'David Arquette', '1971-09-08',
        'David Arquette is an American actor, film director, producer, screenwriter, fashion designer and former professional wrestler.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (173, 125, 124, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (174, 125, 125, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (175, 125, 126, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (176, 125, 127, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (126, 'Vanessa Hudgens', '1988-12-14',
        'Vanessa Anne Hudgens is an American actress and singer. Hudgens rose to prominence playing Gabriella Montez in the High School Musical series. Hudgens has also appeared in various films and television series for the Disney Channel.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (177, 126, 145, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (178, 126, 146, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (179, 126, 147, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (127, 'Zac Efron', '1987-10-18',
        'Zachary David Alexander "Zac" Efron is an American actor, singer, and producer. He began acting professionally in the early 2000s, and rose to prominence for his leading role in the High School Musical franchise.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (180, 127, 145, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (181, 127, 146, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (182, 127, 147, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (128, 'Ashely Tisdale', '1985-07-02',
        'Ashley Michelle Tisdale is an American actress, singer, and producer. During her childhood, she appeared in more than 100 TV advertisements and had roles in theatre and television shows.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (183, 128, 145, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (184, 128, 146, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (185, 128, 147, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (129, 'Lucas Grabeel', '1984-11-23',
        'Lucas Stephen Grabeel is an American actor, singer, songwriter, dancer, director and producer.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (186, 129, 145, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (187, 129, 146, 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (188, 129, 147, 'Actor');

INSERT INTO Person (id, name, DOB, biography)
VALUES (12, 'Benedict Cumberbatch', '1976-07-19',
            'Benedict Timothy Carlton Cumberbatch CBE is an English actor and film producer who has performed in film, television, theatre and radio.');

INSERT INTO show_doer (id, person_id, show_id, role)
VALUES (12, 12, (SELECT id FROM Show WHERE name = 'Sherlock'), 'Actor');






INSERT INTO Person (id, name, DOB, biography)
VALUES (13, 'Martin Freeman', '1971-09-08',
            'Martin John Christopher Freeman is an English actor, best known for portraying Tim Canterbury in the original UK version of sitcom mockumentary The Office, Dr. John Watson in the British crime drama Sherlock, Bilbo Baggins in Peter Jackson''s The Hobbit film trilogy, and Lester Nygaard in the dark comedy-crime drama TV series Fargo.');

INSERT INTO show_doer (id, person_id, show_id, role)
VALUES (13, 13, (SELECT id FROM Show WHERE name = 'Sherlock'), 'Actor');





INSERT INTO Person (id, name, DOB, biography)
VALUES (14, 'Paul McGuigan', '1963-09-19',
            'Paul McGuigan was born on September 19, 1963 in Bellshill, Scotland. He is a director and producer, known for Lucky Number Slevin (2006), Push (2009) and Wicker Park (2004).');

INSERT INTO show_doer (id, person_id, show_id, role)
VALUES (14, 14, (SELECT id FROM Show WHERE name = 'Sherlock'), 'Director');





INSERT INTO Person (id, name, DOB, biography)
VALUES (15, 'Rachel Talalay', '1958-08-16',
            'Rachel Talalay is an American film and television director and producer. She is also a University of British Columbia film professor.');

INSERT INTO show_doer (id, person_id, show_id, role)
VALUES (15, 15, (SELECT id FROM Show WHERE name = 'Sherlock'), 'Director');