create database db_generation_game_online;

use db_generation_game_online;

create table  tb_classe(
	id_classe int not null auto_increment,
	nome varchar(30),
	defesa int not null,
	ataque int not null,
	primary key (id_classe)
);

insert into tb_classe(nome, defesa, ataque) values ("Arqueiro", 300, 3500);
insert into tb_classe(nome, defesa, ataque) values ("Cavaleiro", 4000, 500);
insert into tb_classe(nome, defesa, ataque) values ("Bárbaro", 600, 4000);
insert into tb_classe(nome, defesa, ataque) values ("Mago", 3000,2500);
insert into tb_classe(nome, defesa, ataque) values ("Acrobata", 1500, 2800);

create table tb_personagem (
	id_char int auto_increment,
	nivel int not null,
	nome varchar(30),
	equipamento varchar(30),
	pericia varchar(200),
	fk_classe int not null,
    primary key (id_char),
    foreign key (fk_classe) references tb_classe(id_classe)
);

insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (10, "Hank", "Arco", "Weaponry", 1);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (7, "Eric", "Escudo ", "Animal Handling", 2);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (8, "Diana", "Bastão ", "Acrobatics", 5);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (8, "Presto", "Chapéu mágico", "Occultist", 4);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (9, "Sheila", "Manto da Invisibilidade", "Thief", 5);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (9, "Bobby",  "Tacape", " Iron Nerves", 3);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (99, "Mestre dos Magos", "Amuleto ", "Occultist", 4);
insert into tb_personagem (nivel, nome, equipamento, pericia, fk_classe) values (50, "Vingador ", "Cavalo alado", "Animal Handling", 4);

select tb_personagem.nome as "Player", tb_classe.ataque as "Ataque"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.ataque > 2000;

select tb_personagem.nome as "Player", tb_classe.defesa as "Defesa"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.defesa between 1000 and 2000;

select nome from tb_personagem where nome like "%c%";

select tb_personagem.nome as "Nome", tb_classe.nome as "Classe"
from tb_personagem join tb_classe
on tb_classe.id_classe = tb_personagem.fk_classe
where tb_classe.id_classe = 4; 





