
drop view if exists filtro_aluno;

create view filtro_aluno as
select
        matricula.numero as 'Numero de Matrícula',
        aluno.nome as 'Nome do Aluno',
        aluno.documento as 'CPF do Aluno',
        curso.nome as 'Nome do Curso'
        
from matricula
inner join curso
on curso.id = matricula.curso
inner join aluno
on aluno.id = matricula.aluno;

select * from filtro_aluno;

