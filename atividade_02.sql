CREATE DATABASE db_ecommercegames;

USE db_ecommercegames;

CREATE TABLE tb_listadejogos(
id bigint auto_increment,
    nome_jogo varchar(255) not null,
    desenvolvedor varchar(255) not null,
    classificacao int,
    estilo varchar(255) not null,
    preco decimal not null,
    primary key(id)
    );
    
    SELECT* FROM tb_listadejogos;
    
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("The Last of Us, Parte I", "Naughty Dog", 17, "Ação-Aventura",  200.00); -- 1
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("The Last of Us, Parte II, Remake", "Naughty Dog", 18, "Ação-Aventura",  500.00);  -- 2
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("God of War - Ragnarok", "Santa Monica Studio", 17, "Ação-Aventura",  600.00); -- 3
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("Red Dead Redemption II", "Rockstar Games", 18, "Ação-Aventura",  400.00); -- 4
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("Horizon - Zero Dawn", "Guerrilla Games", 14, "Ação pós-apocalíptico",  200.00); -- 5
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("Assassin's Creed - Valhalla", "Ubisoft", 18, "Ação",  700.00); -- 6
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("Grand Theft Auto V", "Rockstar Games", 18, "Ação-Aventura",  300.00); -- 7
    INSERT INTO tb_listadejogos(nome_jogo, desenvolvedor, classificacao, estilo, preco)
    values ("Cyberpunk 2077", "CD Projekt", 18, "Ação",  150.00); -- 8
    
    
    SELECT * FROM tb_listadejogos WHERE preco > 500.00;
   
   SELECT * FROM tb_listadejogos WHERE preco < 500.00;
   
   UPDATE tb_listadejogos SET preco = 200.00 WHERE id = 8;
    