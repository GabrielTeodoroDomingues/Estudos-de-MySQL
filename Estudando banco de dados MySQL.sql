create database olámundo;

use olámundo;
/*Criando colunas com informações*/
create table alunos (
	/*O comando auto_increment adiciona automaticamente o dado...*/
    id int primary key auto_increment,
   /*No final, colocamos o número de digitos e o tipo de digitos utilizados na informação.*/
	nome varchar(256),
    ra int unique not null
);

insert into alunos ( nome, ra)
values ('Caio', 5);
/*Aqui colocamos o comando select para analisar a lista.*/
select * from alunos;

/*Drop table alunos; Este comondo apaga tabelas...*/
drop table alunos;
/*Border radius*/
/*Alterando um dado da minha lista*/
/*set = coloca a informação where = linha da informação que eu desejo alterar.*/
update alunos set nome= 'Rafa' where nome= 'Marcos';
/*Aqui, estou deletando uma linho só.*/
delete from alunos where id=4;

select * from alunos where nome like '%m%';