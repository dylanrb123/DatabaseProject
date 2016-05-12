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