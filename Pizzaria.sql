create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
	id_cat int not null auto_increment,
    Tamanho varchar(45) not null,
    Massa varchar(45) not null,
    Borda_Recheada enum('Sim', 'Não'),
    primary key (id_cat)
);

insert into tb_categoria(tamanho, massa, borda_recheada) value ("Grande", "Fina", 'Sim');
insert into tb_categoria(tamanho, massa, borda_recheada) value ("Média", "Crocante", 'Não');
insert into tb_categoria(tamanho, massa, borda_recheada) value ("Pequena", "Estadunidense", 'Não');
insert into tb_categoria(tamanho, massa, borda_recheada) value ("Grande", "Crocante", 'Sim');
insert into tb_categoria(tamanho, massa, borda_recheada) value ("Média", "Estadunidense", 'Não');


create table tb_pizza(
	id_pizza int not null auto_increment,
    Sabor varchar(45) not null,
    Valor dec (10,2) not null,
	Azeitona enum ('Sim', 'Não'),
    Sabor_Borda varchar(45) not null,
    primary key (id_pizza),
    fk_cat int not null,
    foreign key (fk_cat) references tb_categoria(id_cat)
);


insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Frango com catupiry", 49.99, 'Sim', "Catupiry", 4);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Calabresa", 25.99, 'Sim', "Cheddar",2);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Mussarela", 24.99, 'Sim', "Catupiry",2);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Portuguesa", 39.99, 'Sim', "mussarela",1);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Napolitana", 59.99, 'Sim', "Cheddar",5);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Marguerita", 55.50, 'Sim', "Catupiry", 3);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Brigadeiro", 49.99, 'Não', "Chocolate Branco",1);
insert into tb_pizza(Sabor, Valor, Azeitona, Sabor_Borda,fk_cat) value ("Romeu e Julieta", 69.99, 'Não', "Goiabada",4);

select * from tb_pizza where Valor > 45;

select Sabor, Valor from tb_pizza where valor between 29 and 60;

select * from tb_pizza where Sabor like "%c%";

select * from tb_pizza
inner join tb_categoria 
on tb_categoria.id_cat = tb_pizza.fk_cat;

select * from tb_pizza left join tb_categoria
on tb_categoria.id_cat = tb_pizza.fk_cat
where tb_categoria.Borda_Recheada = 'Não'; 



