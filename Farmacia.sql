create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
	id_cat int not null auto_increment,
    tipo varchar(45) not null,
    data_entrada_estoque date not null,
    receita enum ('Sim', 'Não'),
    primary key (id_cat)
);

insert into tb_categoria(tipo, data_entrada_estoque, receita) value ("Cosmético", '2021-01-01', 'Não');
insert into tb_categoria(tipo, data_entrada_estoque, receita) value("Analgésido", '2021-01-01', 'Não');
insert into tb_categoria(tipo, data_entrada_estoque, receita) value("Antibiótico", '2021-01-01', 'Sim');
insert into tb_categoria(tipo, data_entrada_estoque, receita) value("Suplemento", '2021-01-01', 'Não');
insert into tb_categoria(tipo, data_entrada_estoque, receita) value("Higiene Pessoal", '2021-01-01', 'Não');


create table tb_produto(
	id_produto int not null auto_increment,
    nome varchar(45) not null,
    marca varchar(45) not null,
    especialidade  varchar(45) not null,
    valor dec (10,2) not null,
    primary key (id_produto),
    fk_cat int not null,
	foreign key (fk_cat) references tb_categoria(id_cat)
);


insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Shampoo Elseve", "L'oreal", "Hidratação Profunda", 22.99, 5); 
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Sabonete", "Nivea", "Sabonete Facial", 14.99, 5);
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Dipirona", "Dorflex", "Alívio Dor Muscular", 10.99, 2);
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Amoxicilina", "Amoxil", "Combate Infecções", 37.50, 3);
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Batom", "Avon", "Vermelho forte", 22.99, 1);
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Esmalte", "Época", "Cremoso Dailus", 5.99,1);
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Whey Protein", "Waxy Whey", "melhor performace", 99.99, 4); 
insert into tb_produto(nome, marca, especialidade, valor, fk_cat) value ("Tetralysal", "Genérico", "Combate Acnes",  166.90, 3);

select * from tb_produto where Valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto
inner join tb_categoria 
on tb_categoria.id_cat = tb_produto.fk_cat;

select tb_produto.nome as "Produto", tb_categoria.tipo as "Categoria"
from tb_produto join tb_categoria
on tb_categoria.id_cat = tb_produto.fk_cat
where tb_categoria.id_cat = 1; 