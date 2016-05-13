CREATE TABLE Movie (
  id        int   AUTO_INCREMENT,
  name            varchar(500),
  length          int,
  release_date    date,
  mpaa_rating     varchar(5),
  summary         varchar(5000),
  trailer_url     varchar(200),
  poster_url      varchar(200),

  PRIMARY KEY (id));

CREATE TABLE Person (
  id      int AUTO_INCREMENT,
  name            varchar(50),
  DOB             date,
  biography       varchar(500),

  PRIMARY KEY (id));


CREATE TABLE Award (
  id       int AUTO_INCREMENT,
  isWinner        int,
  name            varchar(30),
  year            int,
  category        varchar(100),

  PRIMARY KEY (id));

CREATE TABLE Show (
  id        int AUTO_INCREMENT,
  name            varchar(50),
  start_year      int,
  end_year        int,
  rating          varchar(5), //PG-13, etc. --we doing a user rating, like 3.5/5?
  summary         varchar(5000),

  PRIMARY KEY (id));


CREATE TABLE Season (
  id              int AUTO_INCREMENT,
  number           int,
  start_date              date,
  end_date                date,
  poster_url              varchar(200),

  PRIMARY KEY (id));


CREATE TABLE Episode (
  id              int AUTO_INCREMENT,
  name            varchar(50),
  number          int,
  length          time,
  air_date        date,
  description     varchar(500),

  PRIMARY KEY (id));


CREATE TABLE User_Review (
  id              bigint AUTO_INCREMENT,
  username        varchar(3000),
  star_rating     int,
  review_date     date,
  title           varchar(50),
  body            varchar(500),

  PRIMARY KEY (id));

CREATE TABLE review_movie (
  id              int AUTO_INCREMENT,
  review_id       bigint,
  movie_id        int,

  PRIMARY KEY (id),
  FOREIGN KEY (review_id) REFERENCES User_Review,
  FOREIGN KEY (movie_id) REFERENCES Movie);

CREATE TABLE Genre (
  id              int AUTO_INCREMENT,
  name            varchar(50),
  movie_id        int,
  show_id         int,

  PRIMARY KEY (id),
  FOREIGN KEY (movie_id) REFERENCES Movie ON DELETE SET NULL,
  FOREIGN KEY (show_id) REFERENCES Show);

CREATE TABLE movie_doer(
  id             int AUTO_INCREMENT,
  person_id       int,
  movie_id        int,
  role            VARCHAR(20),

  PRIMARY KEY (id),
  FOREIGN KEY (person_id) REFERENCES Person,
  FOREIGN KEY (movie_id) REFERENCES Movie);

CREATE TABLE award_movie_person (
  id             int AUTO_INCREMENT,
  award_id        int,
  movie_id        int,
  person_id       int,

  PRIMARY KEY (id),
  FOREIGN KEY (award_id) REFERENCES Award,
  FOREIGN KEY (movie_id) REFERENCES Movie,
  FOREIGN KEY (person_id) REFERENCES Person);

CREATE TABLE award_show_person (
  id             int AUTO_INCREMENT,
  award_id        int,
  show_id         int,
  person_id       int,

  PRIMARY KEY (id),
  FOREIGN KEY (award_id) REFERENCES Award,
  FOREIGN KEY (show_id) REFERENCES Show,
  FOREIGN KEY (person_id) REFERENCES Person);

CREATE TABLE show_season (
  id             int AUTO_INCREMENT,
  show_id         int,
  season_id       int,

  PRIMARY KEY (id),
  FOREIGN KEY (show_id) REFERENCES Show,
  FOREIGN KEY (season_id) REFERENCES Season);

CREATE TABLE season_episode (
  id             int AUTO_INCREMENT,
  season_id       int,
  episode_id      int,

  PRIMARY KEY (id),
  FOREIGN KEY (season_id) REFERENCES Season,
  FOREIGN KEY (episode_id) REFERENCES Episode);

CREATE TABLE show_doer (
  id             int AUTO_INCREMENT,
  person_id       int,
  show_id         int,
  role            VARCHAR(20),

  PRIMARY KEY (id),
  FOREIGN KEY (person_id) REFERENCES Person,
  FOREIGN KEY (show_id) REFERENCES Show);

CREATE TABLE review_show (
  id             int AUTO_INCREMENT,
  review_id       bigint,
  show_id      int,

  PRIMARY KEY (id),
  FOREIGN KEY (review_id) REFERENCES User_Review,
  FOREIGN KEY (show_id) REFERENCES Show);
