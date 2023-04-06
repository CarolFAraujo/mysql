CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint auto_increment,
    aluno varchar(255) not null,
    sala int,
    materia varchar(255) not null,
    professor varchar(255) not null,
    nota decimal not null,
    primary key(id)
    );
    
    
    SELECT* FROM tb_estudantes;
    
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Anderson", 2, "Literatura", "Pedro",  5.5); -- 1
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Bárbara", 3, "Literatura", "Pedro",  7.05); -- 2
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Camila", 5, "Matemática", "Rose",  6.00); -- 3
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Denis", 2, "Inglês", "Sabrina",  7.00); -- 4
   INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Eduardo", 7, "História", "Teófilo",  8.00); -- 5
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Fernanda", 3, "Inglês", "Sabrina",  9.00); -- 6
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Gaia", 7, "Química", "Heloísa",  9.00); -- 7
    INSERT INTO tb_estudantes(aluno, sala, materia, professor, nota)
    values ("Helio", 5, "História", "Teófilo",  5.00); -- 8
    
    SELECT * FROM tb_estudantes WHERE nota > 7.0;
   
   SELECT * FROM tb_estudantes WHERE nota < 7.0;
   
   UPDATE tb_estudantes SET nota = 7.00 WHERE id = 1;