create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    classificacao varchar(255),
    data_entrada_estoque date not null,
    entrega enum ('Sim', 'Não'),
    primary key (id)
    );
    
insert into tb_categoria(classificacao, data_entrada_estoque, entrega) values 
("Material Hidráulico",'2021-01-01', 'Não'),
("Material Elétrico",'2021-01-01', 'Não'),
("Pisos e Revestimentos",'2021-01-01', 'Sim'),
("Argamassas",'2021-01-01', 'Sim'),
("Tijolos", '2021-01-01', 'Sim');
    
create table tb_produto(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int, 
    peso  int,
    valor decimal(6,2) not null,
    fabricante varchar(255) not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, quantidade, peso, valor, fabricante, categoria_id) values 
("Cimento", null, 5000, 32.66, "Votoran", 4),
("Torneira para Banheiro", 99, null, 165.90, "Docol", 1),
("Areia", null, 3.89, 3000,"Pedrasil", 4),
("Tijolo Maciço Vermelho ", 2000, null, 1.80, "Spina Tijolos", 5),
("Piso laminado", 1500, null, 10.50,"Artens", 3),
("Fio Eletrico", 666, null, 11.99, "Kit-Flex", 2),
("Tomada", 500, null, 35.50, "Ilumi", 2),
("Cano Esgoto", 120, null, 85.90, "Fortlev", 1);

select * from tb_produto where valor > 50;

select * from tb_produto where valor between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria 
on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.id = 2;