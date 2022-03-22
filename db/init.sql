create database geography;
use geography;

CREATE TABLE img (
    img_title VARCHAR(50),
    img_url VARCHAR(3000),
    img_desc TEXT
);

INSERT INTO img (img_title, img_url, img_desc) VALUES 
('Ferae','https://en.wikipedia.org/wiki/Ferae#/media/File:Ferae.png','A mirorder'),
('Euarchontoglires','https://en.wikipedia.org/wiki/Euarchontoglires#/media/File:Euarchontoglires_1.jpg','A clade' ),
('Boreoeutheria','https://en.wikipedia.org/wiki/Boreoeutheria#/media/File:Laurasiatheria.jpg','A magnorder');
