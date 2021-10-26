create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
	id_cat int auto_increment,
	nivel varchar(45) not null,
    modelo  enum('Presencial', 'EAD', 'Híbrido'),
    
	primary key (id_cat)
);

insert into tb_categoria(nivel, modelo) values
("Graduação", "Presencial"),
("Tecnológico", "Presencial"),
("Tecnológico", "EAD"),
("Livres", "EAD"),
("Complementares", "Presencial");

create table tb_curso (
	id_curso int auto_increment,
    nome varchar(45) not null,
    cargaHoraria varchar(45) not null,
    instituicao varchar(45) not null,
    preco decimal(10,2) not null,
    categoria_id int,
	primary key (id_curso),
	foreign key (categoria_id) references tb_categoria (id_cat)
);

insert into tb_curso (nome, cargaHoraria, instituicao, preco, categoria_id) values 
("Design Gráfico", "2 anos", "UNINOVE", 470, 2),
("Java", "80 horas", "Alura", 430, 4),
("Programador Front-End", "348 horas", "Senai", 745.98, 3),
("Arquitetura e Urbanismo", "5 anos", "USJT", 1329, 1),
("Inteligência artificial", "2 anos", "fiap", 1510, 2),
("Medicina", "6 anos", "UNICID", 10493, 1),
("Programação de Games", "42 horas", "Unisanta", 299, 3),
("Marketing de Conteúdo Digital", "20 horas", "Belas Artes", 792, 5);

select * from tb_curso where preco > 500;

select * from tb_curso where preco between 1000 and 1500;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria
on tb_categoria.id_cat = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria
on tb_categoria.id_cat = tb_curso.categoria_id
where tb_categoria.id_cat = 3;
