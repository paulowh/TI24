CREATE TABLE tb_filmes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	classificacao_indicativa INT,
	valor_ingresso DECIMAL(10, 2),
	descricao VARCHAR(255),
	poster VARCHAR(255)
);

CREATE TABLE tb_generos (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	cor VARCHAR(6)
);

CREATE TABLE tb_artistas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL
);

CREATE TABLE tb_filme_genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	filme_id INT,
	genero_id INT,
	FOREIGN KEY (filme_id) REFERENCES tb_filmes (id),
	FOREIGN KEY (genero_id) REFERENCES tb_generos (id)
);

CREATE TABLE tb_filme_artista (
	id INT PRIMARY KEY AUTO_INCREMENT,
	filme_id INT,
	artista_id INT,
	FOREIGN KEY (filme_id) REFERENCES tb_filmes (id),
	FOREIGN KEY (artista_id) REFERENCES tb_artistas (id)
);

CREATE TABLE tb_pessoa (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	ano_nascimento YEAR(4),
	cpf VARCHAR(11),
	telefone_1 VARCHAR(11),
	telefone_2 VARCHAR(11),
	logradouro VARCHAR(150),
	n_casa INT(5),
	bairro VARCHAR(100),
	cidade VARCHAR(100)
);

CREATE TABLE tb_usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	usuario VARCHAR(100),
	senha VARCHAR(100),
	id_pessoa INT NOT NULL,
	FOREIGN KEY (id_pessoa) REFERENCES tb_pessoa(id)
);