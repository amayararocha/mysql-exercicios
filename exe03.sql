CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100),
datanascimento DATE,
serie VARCHAR(50),
email VARCHAR(100),
notas DECIMAL (3,1)
);

INSERT INTO tb_estudantes (nome, datanascimento, serie, email, notas) VALUES
('João Silva', '2008-05-20', '6º ano', 'joaozinho@escola.com.br', 8.5),
('Maria Oliveira', '2007-08-15', '7º ano', 'mariazinhaoli@escola.com.br', 9.0),
('Carlos Santos', '2006-09-30', '8º ano', 'carlao@escola.com.br', 8.8),
('Ana Pereira', '2005-02-20', '9º ano', 'ana.pereira@escola.com.br', 6.2),
('Pedro Costa', '2004-11-10', '1º ano do Ensino Médio', 'pedrocosta01@escola.com.br', 3.7),
('Lucas Souza', '2003-06-05', '2º ano do Ensino Médio', 'lucasgato123@escola.com.br', 5.9),
('Julia Teixeira', '2002-07-25', '3º ano do Ensino Médio', 'julia_htinha@escola.com.br', 9.1),
('Gabriela Rocha', '2001-12-12', '3º ano do Ensino Médio', 'gabzinha@escola.com.br', 9.3);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE notas > 7.0;

SELECT * FROM tb_estudantes WHERE notas < 7.0;

UPDATE tb_estudantes SET email = "aninhaprincesa@escola.com.br" WHERE id = 4; 