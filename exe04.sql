CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
id INT AUTO_INCREMENT,
nomedaclasse VARCHAR (255),
descricao TEXT, -- text para textos longos.
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
id INT AUTO_INCREMENT,
nomepersonagem VARCHAR(255), 
nivel INT, 
classeid INT, 
pontosvida INT, 
PRIMARY KEY(id),
FOREIGN KEY (classeid) REFERENCES tb_classes(id)
); 

SELECT * FROM tb_personagens;

SELECT * FROM tb_classes;

INSERT INTO tb_classes (nomedaclasse, descricao) 
VALUES 
('Guerreiro', 'Classe focada em combate corpo a corpo e defesa.'),
('Mago', 'Classe especializada em magia e feitiços.'),
('Arqueiro', 'Classe especializada em ataques à distância.'),
('Paladino', 'Classe híbrida com habilidades de combate e magia.'),
('Ladino', 'Classe ágil e furtiva, especializada em esquiva e ataques rápidos.');

INSERT INTO tb_personagens (nomepersonagem, nivel, classeid, pontosvida) 
VALUES 
('Diluc', 90, 1, 25000),
('Barbara', 80, 2, 1500),
('Amber', 70, 3, 1000),
('Zhongli', 90, 1, 26000),
('Mona', 85, 2, 23000),
('Fischl', 75, 3, 21000),
('Eula', 90, 1, 25500),
('Klee', 80, 2, 22500);

SELECT * FROM tb_personagens WHERE pontosvida > 2000;

SELECT * FROM tb_personagens WHERE nivel >= 70 AND nivel <= 80;

SELECT * FROM tb_personagens WHERE nomepersonagem LIKE '%C%';

-- SELECT USANDO INNER JOIN (duas formas de fazer)
SELECT tb_personagens.nomepersonagem, tb_personagens.nivel, tb_personagens.pontosvida, tb_classes.nomedaclasse
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT nomepersonagem, nivel, pontosvida, nomedaclasse
FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

-- SELECT COM INNER JOIN SELECIONANDO APENAS A CLASSE ARQUEIROS
SELECT nomepersonagem, nivel, pontosvida, nomedaclasse
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classeid = tb_classes.id
WHERE nomedaclasse = 'Arqueiro';

