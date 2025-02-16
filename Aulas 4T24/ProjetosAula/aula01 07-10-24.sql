create table aluno (nome varchar, idade int, nota float);

insert into aluno values ('matheus', 20, 84);
insert into aluno values ('erick', 30, 85);
insert into aluno values ('jansen', 40, 80);


select * from aluno; 
--select nome from aluno;

--select idade from aluno;

--soma, média, mínimo, máximo, quantidade

select sum(idade) from aluno; --90

select count(nome) from aluno; --3

select min(idade) from aluno; --20

select max(idade) from aluno; --40

select avg(idade) from aluno; --30


select idade from aluno where nome = 'matheus'; --20

select nome from aluno where idade > 20; --erick e jansen


--trazer os alunos com pelo menos trinta anos com média menor que 85

select nome from aluno where idade < 30 and nota < 85; --and , or
