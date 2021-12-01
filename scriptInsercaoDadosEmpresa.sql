insert into cargo
values
('C1', 'Cozinheira', 350),
('C2', 'Mecânico', 750),
('C3', 'Auxiliar de Escritório', 450),
('C4', 'Esvriturário', 600),
('C5', 'Gerente', 2300),
('C7', 'Vigia', 400);

select * from cargo;

update cargo set nmCargo = 'Cozinheira'
where cdCargo = 'C1';

insert into departamento
values
('D1', 'Administração', 221),
('D2', 'Oficina', 235),
('D3', 'Serviços Geraos', 243),
('D4', 'Vendas', 258);

select * from departamento;

insert into funcionario
values
(1001, 'João Sampaio', '1993/08/10', 'M', 'C2', 'D2'),
(1004, 'Lúcio Torres', '1994/03/02', 'M', 'C2', 'D2'),
(1034, 'Roberto Pereira', '1992/05/23', 'M', 'C3', 'D1'),
(1021, 'José Nogueira', '1994/11/10', 'M', 'C3', 'D1'),
(1029, 'Ruth de Souza', '1992/01/05', 'F', 'C1', 'D3'),
(1095, 'Maria da Silva', '1992/09/03', 'F', 'C4', 'D1'),
(1023, 'Luiz de Almeida', '1993/01/12', 'M', 'C2', 'D2'),
(1042, 'Pedro Pinheiro', '1994/07/29', 'M', 'C4', 'D1'),
(1048, 'Ana Silveira', '1993/06/01', 'F', 'C5', 'D1'),
(1015, 'Paulo Rodrigues', '1992/08/17', 'M', 'C2', 'D2');

select * from funcionario;

/* 1. Todos os funcionários do departamento ‘D1’. */
select * from funcionario where cdDpto = 'D1';

/* 2. O nome e a matrícula de todos os funcionários do departamento ‘D1’. */
select nrMatricula, nmFunc, cdDpto from funcionario
where cdDpto = 'D1';

/* 3. A matrícula e o nome do respectivo departamento de todos os funcionários. */
select funcionario.nrMatricula, departamento.nmDpto
from funcionario 
inner join departamento
on funcionario.cdDpto = departamento.cdDpto;


/* 4. O nome dos funcionários que ganham mais de $500. */

/* 5. O ramal do funcionário ‘ANA SILVEIRA’. */

/* 6. Os nomes de todos os funcionários com cargo de ‘MECANICO’. */

/* 7. Os nomes de todos os funcionários que trabalham no mesmo departamento que ‘JOSE NOGUEIRA’. */

/* 8. Os nomes dos departamentos que possuem tanto funcionários como funcionárias. */


