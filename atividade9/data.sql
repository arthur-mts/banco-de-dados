insert into professor (matricula, nome, snome, datanasc, sexo, salario)
value ('121031','José Maria','Campos', '1982-03-10', 'M',7000.00);

insert into departamento (nome, sigla, codigo, coordenador)
values ('Tec. Telemática', 'DTT','121',121031);

update professor set depto = '121' where matricula like '121031';

insert into professor (matricula, nome, snome, datanasc, sexo, salario, depto)
value ('121003','Pedro','Pereira da Siva', '1978-03-10', 'M',4000.00,'121');

update professor set matricu_coord_area = '121003' where matricula like '121031';

insert into professor (matricula, nome, snome, datanasc, sexo, salario)
value ('122047','Ana Clara','Araújo Santos', '1994-11-27', 'F',7200.00);

insert into departamento (nome, sigla, codigo, coordenador)
values ('Tec. Construção de Edifícios', 'DCE','122','122047');

update professor set depto = '122' where matricula = '122047';

insert into professor (matricula, nome, snome, datanasc, sexo, salario, depto)
value ('122045','Bento','Diniz Costa', '1980-11-27', 'M',4000.00, '122');

update professor set matricu_coord_area = '122045' where matricula like '122047';

insert into professor
(nome,snome,matricula,datanasc,sexo,salario) VALUES (
'Joana Maria', 'Pereira', '125332', '1990-12-06', 'F', '4500');

insert into professor
(nome,snome,matricula,datanasc,sexo,salario,matricu_coord_area) VALUES (
'Maria Luiza', 'Machado', '125331', '1974-08-16', 'F', '6800', '125332');

insert into professor
(nome,snome,matricula,datanasc,sexo,salario,matricu_coord_area,depto) VALUES (
'João Carlos', 'Matos Cavalcanti', '125335', '1976-07-22', 'M', '3700', '125332', '125');

insert into departamento (nome, sigla, codigo, coordenador)
values ('Eng. Computação', 'DEC','125','125331');

update professor
set depto = '125'
where matricula in ('125335','125331', '125332');









