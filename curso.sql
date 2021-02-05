create database curso;
use  curso;

create table disciplina(
ID int primary key not null auto_increment,
nome varchar(30),
carga_horaria int
);

show tables ; 
drop table pontuacao;
desc disciplinas;
desc alunos;
desc pontuacão;
desc prova;
alter table alunos add id_disc int;
alter table alunos add foreign key (id_disc) references disciplina(id);



select * from alunos;

alter table alunos modify turma varchar(20);

desc alunos;

update alunos set turma ='Técnico redes' where matricula=1;
update alunos set turma ='Design Gráfico' where matricula=2;
update alunos set turma ='Técnico em administração' where matricula=3;
update alunos set turma ='Técnico em enfermagem' where matricula=4;
update alunos set nome ='Vitória' where matricula=1;

insert into alunos (matricula,nome,turma) values ('1','Alexandre Vitorino','Técnico em informática');
insert into alunos (matricula,nome,turma) values ('2','Wagner Santos','Técnico em redes');
insert into alunos (matricula,nome,turma) values ('3','Hosana Silviano','Técnico Administração');
insert into alunos (matricula,nome,turma) values ('4','Juliana Cardoso','Design Gráfico');
insert into alunos (matricula,nome,turma) values ('5','Vitoria','Enfermagem');


#IMPORTANTE 
select alunos.nome, alunos.turma, disciplina.nome from alunos join disciplina on alunos.matricula=disciplina.id;

