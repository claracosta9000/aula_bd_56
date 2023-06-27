DELETE FROM funcionarios;

SET SQL_SAFE_UPDATES=0;

SELECT * FROM funcionarios;

#Contagem de funcionarios no departamento
SELECT id_departamento, COUNT(*) AS total_funcionarios 
FROM funcionarios
GROUP BY id_departamento;

#Faz a contagem de funcionarios que recebem  acima de 10000
SELECT id_departamento, COUNT(*) AS total_funcionarios 
FROM funcionarios
WHERE  salario > 10000
GROUP BY id_departamento;

#faz contagem de quantos funcionarios recebem entre 5000 e 10000
SELECT id_departamento, COUNT(*) AS total_funcionarios 
FROM funcionarios
WHERE  salario between 5000 and 10000 GROUP BY id_departamento;

