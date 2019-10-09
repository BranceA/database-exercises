USE codeup_test_db;

DROP DATABASE IF EXISTS albums;

CREATE TABLE quotes (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR (50) NOT NULL,
    release_date DATE NOT NULL,
    sales FLOAT UNSIGNED NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);