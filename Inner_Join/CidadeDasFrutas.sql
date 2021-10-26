create database db_cidade_das_frutas;

use db_cidade_das_frutas;

drop table tb_categoria;
create table tb_categoria(
	id_cat int not null auto_increment,
    categoria varchar(45) not null,
	gondola int not null,
    organico enum('Sim', 'Não'),
	primary key (id_cat)
);
select * from tb_categoria;

insert into tb_categoria(categoria, gondola, organico) value ("Fruta", 1, 'Não');
insert into tb_categoria(categoria, gondola, organico) value ("Verdura", 3, 'Não');
insert into tb_categoria(categoria, gondola, organico) value ("Legumes", 5, 'Não');
insert into tb_categoria(categoria, gondola, organico) value ("Fruta", 2, 'Sim');
insert into tb_categoria(categoria, gondola, organico) value ("Verdura", 4, 'Sim');

create table tb_produto(
	id_produto int not null auto_increment,
    nome varchar(45) not null,
    estoque int, 
    estado enum('Fresco', 'Congelado', 'Xepa'),
    valor dec (10,2) not null,
    primary key (id_produto),
    fk_cat int not null,
	foreign key (fk_cat) references tb_categoria(id_cat)
);

insert into tb_produto(nome, estoque, estado, valor, fk_cat) values 
("Maçã", 500, 'Xepa', 4.99, 4),
 ("Laranja", 356, 'Fresco', 6.99,1 ),
("Banana", 888, 'Fresco', 0.99, 4),
("Alface", 52,  'Xepa', 2.99, 3),
("Cebola", 452, 'Xepa', 1.50, 3),
( "Morango", 99, 'Congelado', 7.99, 4),
("Couve", 23, 'Fresco', 3.99, 3),
("Cenoura", 210,'Xepa', 1.99, 2);

select * from tb_produto where estoque > 400;

select * from tb_produto where estoque between 400 and 600;

select * from tb_produto where nome like "%c%";

select * from tb_produto
inner join tb_categoria 
on tb_categoria.id_cat = tb_produto.fk_cat;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id_cat = tb_produto.fk_cat
where tb_categoria.id_cat = 3;
