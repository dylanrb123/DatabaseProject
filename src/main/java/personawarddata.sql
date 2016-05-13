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
VALUES (1, (SELECT id FROM Person WHERE name = 'Andy Samberg'), (SELECT id FROM Movie WHERE name = 'Hot Rod'), 'Actor');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (1, (SELECT id FROM Person WHERE name = 'Akiva Schaffer'), (SELECT id FROM Movie WHERE name = 'Hot Rod'), 'Director');







INSERT INTO Person (id, name, DOB, biography)
VALUES (4, 'Robert Downey Jr.', '1965-04-04',
            'Robert John Downey Jr. is an American actor. His career has included critical and popular success in his youth, followed by a period of substance abuse and legal troubles, and a resurgence of commercial success in middle age.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (4, 4, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');







INSERT INTO Person (id, name, DOB, biography)
VALUES (5, 'Chris Evans', '1981-06-13',
            'Christopher Robert Evans is an American actor. Evans is best known for his superhero roles as the Marvel Comics characters Captain America in the Marvel Cinematic Universe and the Human Torch in Fantastic Four.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (5, 5, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (5, 0, 'Favorite Movie Superhero', 2013, 'People''s Choice Award');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (5, 5, (SELECT id FROM Movie WHERE name = 'The Avengers'), 5);





INSERT INTO Person (id, name, DOB, biography)
VALUES (6, 'Scarlett Johansson', '1984-11-22',
            'Scarlett Johansson is an American actress, model, and singer. She made her film debut in North. Johansson subsequently starred in Manny & Lo in 1996, and garnered further acclaim and prominence with roles in The Horse Whisperer and Ghost World.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (6, 6, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');





INSERT INTO Person (id, name, DOB, biography)
VALUES (7, 'Chris Hemsworth', '1983-08-11',
            'Chris Hemsworth is an Australian actor. He is best known for his roles as Kim Hyde in the Australian TV series Home and Away and as Thor in the Marvel Cinematic Universe films Thor, The Avengers, Thor: The Dark World and Avengers: Age of Ultron.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (7, 7, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Actor');

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
VALUES (8, 8, (SELECT id FROM Movie WHERE name = 'The Avengers'), 'Director');





INSERT INTO Person (id, name, DOB, biography)
VALUES (9, 'Morgan Freeman', '1937-06-01',
            'Morgan Freeman is an American actor and narrator. He is known for his distinctively smooth, deep voice. He got his break as part of the cast of the 1970s children''s program The Electric Company. Morgan Freeman is ranked as the 3rd highest box office star with over $4.316 billion total box office gross, an average of $74.4 million per film.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (9, 9, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Actor');

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
VALUES (10, 10, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Actor');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (9, 0, 'Outstanding Performance', 1995, 'Screen Actors Guild Awards');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (9, 9, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 10);





INSERT INTO Person (id, name, DOB, biography)
VALUES (11, 'Frank Darabont', '1959-01-28',
            'Frank Arpad Darabont is a Hungarian-American film director, screenwriter and producer who has been nominated for three Academy Awards and a Golden Globe Award. In his early career he was primarily a screenwriter for horror films such as A Nightmare on Elm Street 3: Dream Warriors, The Blob and The Fly II. As a director he is known for his film adaptations of Stephen King novels such as The Shawshank Redemption, The Green Mile, and The Mist.');

INSERT INTO movie_doer (id, person_id, movie_id, role)
VALUES (11, 11, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 'Director');

INSERT INTO Award (id, isWinner, name, year, category)
VALUES (10, 0, 'Best Adapted Screenplay', 1994, 'Academy Awards');

INSERT INTO award_movie_person (id, award_id, movie_id, person_id)
VALUES (10, 10, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'), 11);