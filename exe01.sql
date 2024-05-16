-- criando base de dados
CREATE DATABASE db_rh;

-- usando base de dados
USE db_rh;

-- criando a tabela
-- coloquei todos como not null já que é um banco de dados de RH 
-- e ter todos os dados dos colaboradores é importante.
CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255) NOT NULL,
datainicio DATE NOT NULL, 
cargo VARCHAR (255) NOT NULL, 
email VARCHAR (255) NOT NULL,
salario DECIMAL (10,2) NOT NULL,
PRIMARY KEY (id)
);

-- inserindo dados na tabela
INSERT INTO tb_colaboradores (id, nome, datainicio, cargo, email, salario) VALUES
(1, 'João Silva', '2024-01-01', 'Gerente de RH', 'joao.silva@empresa.com.br', 7000.00),
(2, 'Maria Oliveira', '2023-06-15', 'Analista de RH', 'maria.oliveira@empresa.com.br', 5000.00),
(3, 'Carlos Santos', '2023-09-30', 'Assistente de RH', 'carlos.santos@empresa.com.br', 1500.00),
(4, 'Ana Pereira', '2024-02-20', 'Coordenadora de RH', 'ana.pereira@empresa.com.br', 6000.00),
(5, 'Pedro Costa', '2023-11-10', 'Especialista em RH', 'pedro.costa@empresa.com.br', 5500.00);

-- exibe a tabela
SELECT * FROM tb_colaboradores;

-- SELECT que retorna todos os colaboradores com o salario > que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- SELECT que retorna todos os colaboradores com salario < que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- atualiza registro na tabela
-- Carlos recebeu aumento :) 
UPDATE tb_colaboradores SET salario = 2000 WHERE id = 3;

