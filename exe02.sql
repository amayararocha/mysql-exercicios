CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY, -- informando a primary key junto do id 
    nome VARCHAR (100),
    descricao TEXT,
    preco DECIMAL (10,2),
    quantidadeemestoque INT,
    categoria VARCHAR (50)
);

INSERT INTO tb_produtos (nome, descricao, preco, quantidadeemestoque, categoria) VALUES
('iPhone 13', 'Smartphone da Apple com 128GB de armazenamento', 6999.00, 20, 'Eletrônicos'),
('Galaxy S21', 'Smartphone da Samsung com 128GB de armazenamento', 4999.00, 15, 'Eletrônicos'),
('Notebook Dell Inspiron', 'Notebook Dell com Intel Core i5 e 8GB de RAM', 3499.00, 10, 'Eletrônicos'),
('Camiseta Polo', 'Camiseta polo de algodão, tamanho M', 79.90, 50, 'Roupas'),
('Calça Jeans', 'Calça jeans masculina, tamanho 40', 119.90, 30, 'Roupas'),
('Tênis Nike Revolution 5', 'Tênis para corrida, tamanho 42', 299.90, 25, 'Calçados'),
('Mochila Samsonite', 'Mochila para notebook até 15.6 polegadas', 249.90, 20, 'Acessórios'),
('Fone de Ouvido JBL', 'Fone de ouvido Bluetooth JBL', 199.90, 30, 'Eletrônicos');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 85 WHERE id = 4;