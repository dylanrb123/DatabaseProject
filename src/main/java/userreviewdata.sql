INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (1, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'Wow!!!!',
'OMG this movie was the coolest thing ever!!!!!!!');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (1, 1, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (2, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'Holy cow',
				'Great movie.  The only thing that would''ve made this movie better would be BRAD PITT.');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (2, 2, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (3, 'G-Money ($$$) AKA Grant ''The Great''', 1, '2015-06-04', 'No Brad Pitt',
				'This movie sucked.  I want more Brad Pitt!');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (3, 3, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (4, 'G-Money ($$$) AKA Grant ''The Great''', 1, '2015-06-04', 'Sucked',
				'I have a fever... and the only cure... is more Brad Pitt');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (4, 4, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (5, 'G-Money ($$$) AKA Grant ''The Great''', 3, '2015-06-04', 'Average',
				'Wasn''t even that good');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (5, 5, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (6, 'G-Money ($$$) AKA Grant ''The Great''', 2, '2015-06-04', 'Sub par',
				'Brad Pitt didn''t star, so automatic 3 star deduction');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (6, 6, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (7, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'GREAT MOVIE',
				'BRAD PITT <33333333333333333333333333333333333');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (7, 7, (SELECT id FROM Movie WHERE name = 'World War Z'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (8, 'G-Money ($$$) AKA Grant ''The Great''', 4, '2015-06-04', 'more brad pitt',
				'we want more brad pitt');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (8, 8, (SELECT id FROM Movie WHERE name = 'World War Z'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (9, 'G-Money ($$$) AKA Grant ''The Great''', 4, '2015-06-04', 'even better than brad pitt',
				'Brad Pitt roxxxx, but Hot Rod and Andy Sambury are even better!!');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (9, 9, (SELECT id FROM Movie WHERE name = 'Hot Rod'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (10, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'Movie of the year!',
				'This is actually the #1 ever made.  Like seriously...');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (10, 10, (SELECT id FROM Movie WHERE name = 'Hot Rod'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (11, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'the perfect movie',
				'"Where do you get off?!?!??!"');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (11, 11, (SELECT id FROM Movie WHERE name = 'Hot Rod'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (12, 'G-Money ($$$) AKA Grant ''The Great''', 2, '2015-06-04', 'Pink Wednesdays',
				'"On Wednesdays, we wear pink"');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (12, 12, (SELECT id FROM Movie WHERE name = 'Mean Girls'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (13, 'G-Money ($$$) AKA Grant ''The Great''', 1, '2015-06-04', 'F*CK THAT',
				'Never watching this movie again...');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (13, 13, (SELECT id FROM Movie WHERE name = 'The Conjuring'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (14, 'G-Money ($$$) AKA Grant ''The Great''', 1, '2015-06-04', 'no way',
				'Never seeing the second one');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (14, 14, (SELECT id FROM Movie WHERE name = 'The Conjuring'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (15, 'G-Money ($$$) AKA Grant ''The Great''', 4, '2015-06-04', 'nicee',
				'can''t wait to see the second one');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (15, 15, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (16, 'G-Money ($$$) AKA Grant ''The Great''', 1, '2015-06-04', 'Thor is the man',
				'Chris Hemsworth is the man. what a hunk');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (16, 16, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (17, 'G-Money ($$$) AKA Grant ''The Great''', 3, '2015-06-04', 'ehhh',
				'was so-so. joss whedon is a decent director');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (17, 17, (SELECT id FROM Movie WHERE name = 'The Avengers'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (18, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'beautiful',
				'Such a great movie.  That ending was insane!!');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (18, 18, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (19, 'G-Money ($$$) AKA Grant ''The Great''', 4, '2015-06-04', 'Morgan Freeman',
				'Red was a fantastic character');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (19, 19, (SELECT id FROM Movie WHERE name = 'The Shawshank Redemption'));





INSERT INTO User_Review (id, username, star_rating, review_date, title, body)
VALUES (20, 'G-Money ($$$) AKA Grant ''The Great''', 5, '2015-06-04', 'MY FAVORITE MOVIE',
				'"Raspberry?  Psych--very cherry!!!!"');

INSERT INTO review_movie (id, review_id, movie_id)
VALUES (20, 20, (SELECT id FROM Movie WHERE name = 'Hot Rod'));




