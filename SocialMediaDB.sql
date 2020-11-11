CREATE DATABASE IF NOT EXISTS social_media;

USE social_media;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
id int(11) NOT NULL auto_increment,
username varchar(20) NOT NULL,
first_name varchar(20) NOT NULL,
last_name varchar(20) NOT NULL,
email varchar(30) NOT NULL,
password varchar(20) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE posts (
id int(11) NOT NULL auto_increment,
user_id int(11) NOT NULL,
post varchar(255) NOT NULL,
post_date datetime DEFAULT current_timestamp,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE comments (
id int(11) NOT NULL auto_increment,
user_id int(11) NOT NULL,
post_id int(11) NOT NULL,
comment varchar(255) NOT NULL,
comment_date datetime DEFAULT current_timestamp,
PRIMARY KEY (id),
FOREIGN KEY (user_id) REFERENCES users(id),
FOREIGN KEY (post_id) REFERENCES posts(id)
);