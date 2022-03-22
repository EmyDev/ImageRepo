create database geography;
use geography;

CREATE TABLE img (
    img_title VARCHAR(50),
    img_url VARCHAR(3000),
    img_desc TEXT,
    text_url VARCHAR(3000)
);

INSERT INTO img (img_title, img_url, img_desc,text_url ) VALUES 
('Ferae','https://upload.wikimedia.org/wikipedia/commons/5/50/Ferae.png','A mirorder of placental mammals that groups together clades Pan-Carnivora and Pholidotamorpha','https://en.wikipedia.org/wiki/Ferae'),
('Euarchontoglires','https://upload.wikimedia.org/wikipedia/commons/a/a3/Euarchontoglires_1.jpg','A clade and a superorder of mammals, the living members of which belong to one of the five following groups: rodents, lagomorphs, treeshrews, colugos and primates','https://en.wikipedia.org/wiki/Euarchontoglires' ),
('Boreoeutheria','https://upload.wikimedia.org/wikipedia/commons/0/0c/Laurasiatheria.jpg','A magnorder of placental mammals that groups together superorders Euarchontoglires and Laurasiatheria','https://en.wikipedia.org/wiki/Boreoeutheria');
