CREATE DATABASE db_recursoshumanos;

USE db_recursoshumanos;

CREATE TABLE tb_colaboradores(
id bigint auto_increment,
    nome varchar(255) not null,
    cpf varchar(255) not null,
    cargo varchar(255) not null,
    endereco varchar(255) not null,
    salario decimal not null,
    primary key(id)
    );
    
    SELECT* FROM tb_colaboradores;
    
    INSERT INTO tb_colaboradores(nome, cpf, cargo, endereco, salario)
    values ("Carolina Araujo", "123.456.789-00", "Desenvolvedor Sênior", "Rua Amoreira 123",  7000.00);
    INSERT INTO tb_colaboradores(nome, cpf, cargo, endereco, salario)
    values ("Raissa Araujo", "567.891.125-44", "Gerente de Produto", "Rua Bananeira 456",  8000.00);
    INSERT INTO tb_colaboradores(nome, cpf, cargo, endereco, salario)
    values ("Ramona Araujo", "821.956.457-22", "Gerente de Projetos", "Rua Cajueiro 151",  7000.00);
    INSERT INTO tb_colaboradores(nome, cpf, cargo, endereco, salario)
    values ("Mariana Pereira", "001.456.569-12", "Recepcionista", "Rua Damasco 125",  1500.00);
    INSERT INTO tb_colaboradores(nome, cpf, cargo, endereco, salario)
    values ("Renata Silva", "987.654.123-33", "Desenvolvedora Jr", "Rua Amora 123",  1900.00);
    
   SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
   
   SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
   
   UPDATE tb_colaboradores SET salario = 2500.00 WHERE id = 5;
