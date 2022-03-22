create database geography;
use geography;

CREATE TABLE img (
    img_title VARCHAR(50),
    img_url VARCHAR(3000),
    img_desc TEXT
);

INSERT INTO img (img_title, img_url, img_desc) VALUES 
('Ferae','https://upload.wikimedia.org/wikipedia/commons/5/50/Ferae.png','A mirorder'),
('Euarchontoglires','https://upload.wikimedia.org/wikipedia/commons/a/a3/Euarchontoglires_1.jpg','A clade' ),
('Boreoeutheria','https://upload.wikimedia.org/wikipedia/commons/0/0c/Laurasiatheria.jpg','A magnorder');
