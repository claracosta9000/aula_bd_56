use empresa_xpto;

select * from departamentos;

insert into departamentos values (10, 'marketing');

insert into departamentos values(11, 'producao');

insert into departamentos values (12, 'executivo');

insert into departamentos values (13, 'gerente financeiro');

insert into departamentos values (14, 'gerente de marketing');

insert into departamentos values (15, 'gerente de producao');


#Alteracao da tabela funcionarios 
#Adicionando a coluna id_departamentos como chave estrangeira 
#fazendo referencia a tabela departamentos 
ALTER TABLE funcionarios
ADD COLUMN id_departamento int,
ADD CONSTRAINT fk_funcionarios_departamentos
FOREIGN KEY (id_departamento) REFERENCES departamentos(id);

#seleciona a tabela funcionarios 
select * from funcionarios;

#ATUALIZA O CADASTRO 
UPDATE funcionarios
SET id_departamento= 1
WHERE id = 1;


#ATUALIZA O CADASTRO DOS FUNCIONARIOS 3 4 5 PARA O SETOR 2 "vendas"
UPDATE  funcionarios 
SET id_departamentos = 2
WHERE id = 3 or id = 4 or id =5;

#ATUALIZA O CADASTRO DOS FUNCIONARIOS 6 7 9 para o departamento 4"TI"
UPDATE  funcionarios 
SET id_departamentos = 4 
WHERE id = 6 or id = 7 or id =8 or id =9 ;

#ATUALIZA O CADASTRO DOS FUNCIONARIOS 10,11,12,13 para o departamento 5"juridico"
UPDATE  funcionarios 
SET id_departamento = 5
WHERE id = 10 or id = 11 or id = 12 or id = 13; 

#ATUALIZA O CADASTRO DOS FUNCIONARIOS 14,15,16,17 PARA o departamento 9 "recursos humanos"
UPDATE  funcionarios 
SET id_departamento = 9
WHERE id = 14  or id = 15 or id = 16 or id = 17 ; 

#CONSULTA O FUNCIONARIO COM MAIOR SALARIO 
SELECT * FROM funcionarios ORDER BY salario DESC;


#ATUALIZA O FUNCIONARIO COM MAIOR SALARIO PARA O "DEPARTAMENTO EXECUTIVO"
UPDATE  funcionarios 
SET id_departamento = 12
WHERE id = 937;

#atualiza o funcionario com segundo maior salario para "gerente financeiro"
UPDATE  funcionarios 
SET id_departamento = 13
WHERE id = 44;

#atualiza o funcionario com terceiro maior salario para "gerente de producao"
UPDATE  funcionarios 
SET id_departamento = 15
WHERE id = 869;

#atualiza o funcionario com quarto maior salario para "gerente de marketing"
UPDATE  funcionarios 
SET id_departamento = 14
WHERE id = 577;

select * from departamentos;

SELECT * FROM funcionarios ORDER BY salario DESC;

















