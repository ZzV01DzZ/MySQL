create database db_rh;

use db_rh;

create table empresa(
cpf bigint not null,
nome varchar (255) not null,
setor varchar(255),
funcao varchar(255),
salario decimal(7, 2) not null,
primary key (cpf)

);

insert into empresa(cpf, nome, setor, funcao, salario) value (70657961086, "Flávio Augusto", "RH", "Auxiliar Admistrativo", 800.00);
insert into empresa(cpf, nome, setor, funcao, salario) value (18874053053, "Gustavo Avos", "Contabilidade", "Gerente", 5000.00);
insert into empresa(cpf, nome, setor, funcao, salario) value (74184191045, "Yasmin Gerotto", "Financeiro", "Assistente Admistrativo", 3000.00);
insert into empresa(cpf, nome, setor, funcao, salario) value (19002884001, "Samanta Alves", "Compras", "Diretor", 1500.00);
insert into empresa(cpf, nome, setor, funcao, salario) value (06413464097, "Guilherme de Sousa", "Logistica", "Estagiário", 1000.00);

select * from empresa where salario > 2000;
select * from empresa where salario < 2000;

update empresa set salario = 10000.00 where cpf= 70657961086;

/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade./*