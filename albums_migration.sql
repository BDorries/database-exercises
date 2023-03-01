USE ymir_billie;
DROP TABLE IF EXISTS albums;

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT(4) NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(100),
    PRIMARY KEY (id)
);

SHOW TABLES;