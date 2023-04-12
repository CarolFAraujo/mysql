CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criar a tabela tb_classes com 2 atributos

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
categoria varchar(100) NOT NULL,
nivel int not null,
PRIMARY KEY (id)
);


INSERT INTO tb_classes (categoria, nivel)
VALUES ("Cavaleiro", 40);

INSERT INTO tb_classes (categoria, nivel)
VALUES ("Ranger", 40);

INSERT INTO tb_classes (categoria, nivel)
VALUES ("Elementalista", 40);

INSERT INTO tb_classes (categoria, nivel)
VALUES ("Ladrão", 40);

INSERT INTO tb_classes (categoria, nivel)
VALUES ("Necromante", 40);

INSERT INTO tb_classes (categoria, nivel)
VALUES ("Templário ", 30);

SELECT * FROM tb_classes;

-- criar tabela personagens com 4 atributos

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome_personagem varchar(100) NOT NULL,
poder_ataque int not null,
poder_defesa int not null,
arma varchar(100) NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);


INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Oriseus", 2000, 2000, "espada", 1); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Sherisya", 3000, 2000, "arco e flecha", 2); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Tirillia", 3000, 2000, "magias de fogo", 3); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Creope", 1000, 900, "adagas", 4); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Coexpesia", 3000, 3000, "magias de luz", 5); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Chriomnedora", 2000, 800, "magias de sangue", 5); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Velfhus", 1000, 900, "machado", 1); 

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, arma, classe_id)
VALUES ("Dandi", 900, 800, "lança", 6); 

SELECT * FROM tb_personagens;

-- SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000 
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- SELECT classe específica
SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.id = 5;

