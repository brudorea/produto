create database cadastro
default character set utf8
default collate utf8_general_ci;

/* Acionar o banco que quer usar */
use cadastro;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum ('F', 'M', 'O'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(30) default 'Brasil',
primary key (id)
)default charset = utf8;

/* Para verificar a estrutura da tabela */
describe pessoas;

/* Inserir dados na tabela. Inserir primeiro a ordem que será seguida */
insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Bruno Henrique','1996-10-16','M','71.2','1.73','Brasil');

insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Taylor Swift','1989-12-13','F','69.2','1.84','Estados Unidos'),
('Gabriel Coutinho','2004-08-29','M','61.6','1.72','Alemanha'),
('Erica Viana','1993-02-27','F','58.5','1.57','Brasil'),
('Elen Grecco','1984-05-30','F','64.0','1.59','Grecia');

/* Verificar o que foi criado na tabela */
select * from pessoas;

insert into pessoas
values
(default,'Andressa Urach','1985-11-10','F','75.0','1.70',default);

/* ALTER TABLE */
desc pessoas; /* Descrever o que está na tabela */

alter table pessoas
add column profissao varchar(10);

alter table pessoas /* Faz alteração na tabela */
drop column profissao; /* Drop exclui */

alter table pessoas
add column profissao varchar(10) after nome; /* After serve para colocar após X item na coluna */

alter table pessoas
add column codigo int first;

alter table pessoas
modify column profissao varchar(10) not null; /* MODIFY modifica o tipo primitivo do campo e as constraint */

select * from pessoas;
desc pessoas;

alter table pessoas
modify column profissao varchar(30) not null default '';

/* Renomear a coluna */
alter table pessoas
change column profissao prof varchar(30) not null default '';

desc pessoas;
select * from pessoas;

alter table pessoas
drop column codigo;

/* Renomear tabela */
alter table pessoas
rename to alunos;

desc alunos;

create table if not exists cursos(
idcurso int not null auto_increment,
nome varchar(50) not null unique, /* Tornar unico */
descricao text,
carga int unsigned,
totaulas int,
ano year default 2025,
primary key(idcurso)
)default charset = utf8;

desc cursos;
select * from cursos;

alter table cursos
add column idcurso int first; /* Adicionar coluna e colocar em primeiro */

alter table cursos 
add primary key(idcurso); /* Adicionar chave primária */

alter table cursos modify column nome varchar(50) not null;
alter table cursos modify column idcurso int not null auto_increment;

drop table cursos;


insert into cursos values
(default, 'Algoriitimos',
'Lógica de programação. Você aprenderá sobre o desenvolvimento de soluções com aplicação da lógica de programação, que permite a criação de softwares amigáveis, seguros e funcionais.',
'40',
'10',
default),

(default, 'Exel Essencl',
'Você aprenderá a criar planilhas e tabelas, fazer gráficos simples, além de salvar arquivos em nuvem e realizar cálculos usando fórmulas e funções de Excel básico.',
'40',
'10',
default),

(default, 'Excel Avçado I',
'Você aprofundará conhecimentos em funções do Excel avançado para otimizar cálculos e facilitar a construção de planilhas, banco de dados, relatórios e gráficos.',
'24',
'6',
default),

(default, 'Excel Avado II',
'Você saberá mais sobre ferramentas avançadas e em recursos de banco de dados no Excel para automatizar tarefas e aprimorar consultas, relatórios, gráficos e cálculos.',
'24',
'6',
default),

(default, 'Form Excel: do básico ao avançado',
'Você aprenderá a inserir informações em planilhas, usando recursos, funções e ferramentas avançadas do Excel 365 para criar gráficos, fazer cálculos e manipular dados.',
'72',
'18',
default),

(default, 'Desenvvidor Web Front-end 1',
'Você aprenderá a planejar e desenvolver sites responsivos com imagens.',
'60',
'15',
default),

(default, 'Desenvolvedor GeWeb Front-end 2: JavaScript',
'Você aprenderá como utilizar a codificação JavaScript para criar e usar recursos básicos de interatividade em um site.',
'40',
'12',
default),

(default, 'PHP co MySQL',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP e do gerenciador de banco de dados MySQL.',
'40',
'12',
default),

(default, 'Lógica de Programação Direcionada a PHP',
'Você aprenderá a criar algoritmos e desenvolver aplicações e sistemas web com a linguagem de programação PHP.',
'40',
'12',
default),

(default, 'PHP',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'24',
'6',
default),

(default, 'PHP4',
'Você aprenderá a desenvolver sistemas computacionais e websites com recursos da linguagem de programação PHP.',
'32',
'8',
default),

(default, 'Photoshop',
'Você aprenderá como tratar, manipular e editar imagens, utilizando filtros, cores, efeitos de camada e demais recursos do Adobe Photoshop.',
'36',
'9',
default),

(default, 'Photoshop para Mídias Sociais',
'Você aprenderá técnicas de criação, edição, composição e exportação de conteúdo gráfico para mídias sociais, utilizando recursos e ferramentas do Adobe Photoshop.',
'36',
'9',
default),

(default, 'Python',
'Você aprenderá a desenvolver programação web por meio da linguagem Python.',
'32',
'8',
default),

(default, 'Python I - fundamentos',
'Você aprenderá a desenvolver programação web por meio da linguagem Python, que possibilita a pesquisa e a extração de dados de páginas da internet.',
'44',
'11',
default),

(default, 'Python II - desenvolvendo aplicações web',
'Você aprenderá a desenvolver soluções para a web aplicando linguagem Python em framework de projetos de software e a manipular banco de dados.',
'60',
'15',
default),

(default, 'Introdução à Linguagem Java',
'Você aprenderá a programar aplicações básicas com a linguagem Java.',
'40',
'10',
default),

(default, 'Formação Front-end',
'Você aprenderá a planejar e produzir site com imagens, linguagem HTML5, CSS3 e Web Semântica usando codificação JavaScript.',
'108',
'27',
default),

(default, 'Desenvolvedor Web Back-end: NodeJs',
'Você aprenderá a configurar ambiente Node.js, desenvolvendo código JavaScript e executando no back-end. Também criará APTI Rest para acessar banco de dados e atender requisições HTTPs.',
'48',
'12',
default),

(default, 'POO',
'Curso de Programação Orientada ao Objeto',
'60',
'15',
'2022'),

(default, 'C++',
'Curso de C++',
'40',
'10',
'2023'),

(default, 'C#',
'Curso de C#',
'24',
'6',
'2023'),

(default, 'PowerPoint',
'Curso completo de PowerPoint',
'24',
'6',
'2023'),

(default, 'Word',
'Curso completo de Word',
'24',
'6',
'2023'),

(default, 'Pacote Office',
'Curso de Word, PowerPoint e Excel',
'60',
'15',
'2024'),

(default, 'Hardware',
'Curso de Montagem e Manutenção de Computadores',
'36',
'9',
default),

(default, 'Redes',
'Curso de Redes para Iniciantes0',
'40',
'10',
'2021'),

(default, 'Segurança da Informação',
'Curso de Segurança',
'16',
'4',
'2021');

desc cursos;
select * from cursos;

/* Modifique o curso configurando o nome "ALGORITMO", onde o idcurso é igual a 1*/
update cursos
set nome = 'Algoritmos'
where idcurso = 1;

update cursos
set nome = 'Excel Essencial'
where idcurso = 2;

update cursos
set nome = 'Excel Avançado I'
where idcurso = 3;

update cursos
set nome = 'Excel Avançado II'
where idcurso = 4;

update cursos
set nome = 'Formação Excel: do básico ao avançado'
where idcurso = 5;

update cursos
set nome = 'Desenvolvedor Web Front-End 1'
where idcurso = 6;

update cursos
set nome = 'Desenvolvedor Web Front-End 2: JavaScript'
where idcurso = 7;

update cursos
set nome = 'PHP com MySQL'
where idcurso = 8;

update cursos
set nome = 'Excel Essencial', carga = '24', totaulas = '6'
where idcurso = '2';

update cursos
set nome = 'Excel Avançado I'
where idcurso = '3'
limit 1; /* LIMIT serve para afetar uma única linha */

select * from cursos;

update cursos
set ano = '2025', carga ='60'
where ano = 2030
limit 1;

/*Remover registros*/
delete from cursos
where idcurso = '8';

select * from cursos;

delete from cursos
where ano = '2023';

delete from cursos
where ano = '2030'
limit 2;

/*Remover TODAS as linhas/registros/tuplas*/
truncate table cursos; 
truncate cursos;

select * from cursos;

desc alunos;
desc cursos;
select * from alunos;
select * from cursos;

drop database cadastro;

insert into alunos values

(default, 'Sirlene', 'Professor', '1979-08-10', 'F', '60.00', '1.56', 'Brasil'),
(default, 'José de Assis', 'Professor', '1971-04-10', 'M', '60', '1.60', default),
(default, 'Leandro', 'Professor', '1979-04-02', 'M', '98.5', '1.75', default),
(default, 'Robson', 'Professor', '1979-07-02', 'M', '65', '1.70', default),
(default, 'Andres', 'Dentista', '1970-01-01', 'M', '70', '1.70', 'Irlanda'),
(default, 'Edinaldo', 'Empreendedor', '1970-10-10', 'M', '74.65', '1.85', 'EUA'),
(default, 'Érica', 'Esteticista', '2013-12-30', 'F', '58.5', '1.68', default),
(default, 'Erick', 'Auxiliar Adm', '1993-04-22', 'M', '98.2', '1.95', default),
(default, 'Gabriela', 'Atora', '1994-03-12', 'F', '52.9', '1.62', 'Canadá'),
(default, 'Gabriel', 'Professor', '1989-12-01', 'M', '64.22', '1.65', 'Portugal'),
(default, 'Gustavo Pinheiro', 'Empreendedor', '2000-06-23', 'M', '77.44', '1.66', 'EUA'),
(default, 'Gustavo Teodoro', 'Programador', '1995-03-12', 'M', '88.5', '1.76', 'Inglaterra'),
(default, 'Julia', 'Dentista', '1988-01-01', 'F', '55.2', '1.65', 'França'),
(default, 'Luiz', 'Contador', '2011-01-01', 'M', '54.11', '1.58', default),
(default, 'Milena', 'Dentista', '2006-08-11', 'F', '88.7', '1.78', default),
(default, 'Paulo', 'Contador', '1993-07-01', 'M', '70.3', '1.65', default),
(default, 'Ryan', 'Arquiteto', '1968-10-11', 'M', '88.88', '1.64', 'Argentina'),
(default, 'Vinicius', 'Engenheiro Eletrico', '1984-11-01', 'M', '75.12', '1.63', 'Argentina'),
(default, 'Vitor', 'Engenheiro Civil', '1970-01-01', 'M', '70', '1.70', 'Uruguaí'),
(default, 'Wesley Carlos', 'Mecanico', '2000-03-03', 'M', '82', '1.78', 'Portugal'),
(default, 'Wesley Moreira', 'Jogador de Futebol', '1996-05-17', 'M', '65.8', '1.682', default);

insert into alunos values

(default, 'Arthur Antonio de Almeida', 'Engenheiro', '1985-03-22', 'M', '75.50', '1.78', 'Brasil'),
(default, 'Antonio Pereira', 'Administrador', '1980-07-19', 'M', '82.30', '1.72', 'Brasil'),
(default, 'Antônia dos Santos', 'Médica', '1990-01-15', 'F', '65.20', '1.65', 'Brasil'),
(default, 'Adriano Sanches', 'Arquiteto', '1988-09-10', 'M', '78.40', '1.80', 'Brasil'),
(default, 'Bruno', 'Designer', '1992-04-28', 'M', '70.00', '1.75', 'Brasil'),
(default, 'Bruna', 'Psicóloga', '1987-12-03', 'F', '60.00', '1.68', 'Brasil'),
(default, 'Bento', 'Veterinário', '1983-10-07', 'M', '74.50', '1.73', 'Brasil'),
(default, 'Brian', 'Analista', '1991-06-11', 'M', '68.00', '1.77', 'Brasil'),
(default, 'Barnabé', 'Professor', '1975-02-18', 'M', '79.80', '1.70', 'Brasil'),
(default, 'Beatriz', 'Dentista', '1993-05-25', 'F', '58.90', '1.66', 'Brasil'),
(default, 'Bianca', 'Enfermeira', '1989-08-29', 'F', '64.10', '1.70', 'Brasil'),
(default, 'Bárbara', 'Nutricionista', '1995-11-30', 'F', '59.30', '1.64', 'Brasil'),
(default, 'Carolina', 'Jornalista', '1986-01-09', 'F', '61.70', '1.69', 'Brasil'),
(default, 'Cecília', 'Advogada', '1990-03-17', 'F', '62.50', '1.67', 'Brasil'),
(default, 'Clara', 'Estudante', '2001-06-14', 'F', '55.00', '1.60', 'Brasil'),
(default, 'Cauã', 'Estudante', '2000-09-05', 'M', '67.00', '1.74', 'Brasil'),
(default, 'César', 'Consultor', '1982-10-20', 'M', '80.00', '1.76', 'Brasil'),
(default, 'Juliana', 'Bióloga', '1994-04-06', 'F', '63.20', '1.68', 'Brasil'),
(default, 'Jéssica', 'Farmacêutica', '1985-08-13', 'F', '66.00', '1.72', 'Brasil'),
(default, 'Joana', 'Assistente Social', '1991-11-22', 'F', '60.50', '1.63', 'Brasil'),
(default, 'Joyce', 'Engenheira', '1988-07-01', 'F', '64.70', '1.66', 'Brasil'),
(default, 'Mariana', 'Gerente de Projetos', '1984-12-08', 'F', '70.00', '1.71', 'Brasil'),
(default, 'Melissa', 'Empresária', '1996-05-03', 'F', '59.60', '1.62', 'Brasil'),
(default, 'Maitê', 'Arquiteta', '1992-02-27', 'F', '58.20', '1.65', 'Brasil'),
(default, 'Marina', 'Publicitária', '1993-09-19', 'F', '61.00', '1.69', 'Brasil'),
(default, 'Manuella', 'Estilista', '1989-06-26', 'F', '60.90', '1.64', 'Brasil'),
(default, 'Monique', 'Economista', '1990-10-30', 'F', '63.80', '1.67', 'Brasil'),
(default, 'Michelle', 'Fisioterapeuta', '1987-03-15', 'F', '65.00', '1.70', 'Brasil'),
(default, 'Andres Cristian Yapiticona Flores', 'Pesquisador', '1981-11-04', 'M', '72.10', '1.74', 'Brasil'),
(default, 'Edinaldo Pereira de Barros', 'Técnico', '1982-04-21', 'M', '85.00', '1.76', 'Brasil'),
(default, 'Érica da Silva Pires', 'Administradora', '1986-01-19', 'F', '68.40', '1.71', 'Brasil'),
(default, 'Erick Luan Ferreira', 'Programador', '1994-02-02', 'M', '73.20', '1.78', 'Brasil'),
(default, 'Gabriela Gomes Da Silva', 'Professora', '1995-09-09', 'F', '59.90', '1.64', 'Brasil'),
(default, 'Gabriel Rodrigues Dos Santos', 'Contador', '1983-06-12', 'M', '76.30', '1.75', 'Brasil'),
(default, 'Gustavo Pinheiro Leite', 'Engenheiro Civil', '1985-12-05', 'M', '82.00', '1.80', 'Brasil'),
(default, 'Gustavo Teodoro Gabilan', 'Consultor de TI', '1991-07-17', 'M', '78.90', '1.74', 'Brasil'),
(default, 'Julia Picole Turubia', 'Estudante', '2000-03-23', 'F', '55.40', '1.62', 'Brasil'),
(default, 'Luiz Henrique Da Silva Costa', 'Analista Financeiro', '1989-11-16', 'M', '79.60', '1.77', 'Brasil'),
(default, 'Millena Gutemberg Dos Santos Silva', 'Professora', '1993-05-01', 'F', '62.30', '1.66', 'Brasil'),
(default, 'Paulo Nicolas dos Santos', 'Gestor', '1990-01-27', 'M', '77.70', '1.73', 'Brasil'),
(default, 'Ryan Gomes dos Santos', 'Técnico em TI', '1997-08-31', 'M', '70.50', '1.72', 'Brasil'),
(default, 'Vinicius de Souza Nascimento', 'Estudante', '2001-02-14', 'M', '68.90', '1.70', 'Brasil'),
(default, 'Vitor Fialho Bergami', 'Cientista de Dados', '1996-10-11', 'M', '74.80', '1.76', 'Brasil'),
(default, 'Weslley Carlos Gonçalves da Silva', 'Engenheiro de Produção', '1992-06-07', 'M', '81.40', '1.79', 'Brasil'),
(default, 'Weslley Moreira Nascimento Da Silva', 'Administrador', '1988-12-25', 'M', '79.10', '1.74', 'Brasil'),
(default, 'Silvana Souza', 'Gerente', '1984-04-30', 'F', '68.20', '1.70', 'Brasil'),
(default, 'Sandra Gomes', 'Diretora', '1979-09-21', 'F', '70.00', '1.72', 'Brasil'),
(default, 'Simone Aparecida Pereira', 'Supervisora', '1986-11-11', 'F', '67.00', '1.68', 'Brasil'),
(default, 'Samuel Andrade', 'Motorista', '1981-08-04', 'M', '83.50', '1.75', 'Brasil'),
(default, 'Sérgio Sebastian da Silva', 'Professor Universitário', '1975-05-15', 'M', '85.90', '1.80', 'Brasil'),
(default, 'Sidney Gimenis', 'Empresário', '1980-07-02', 'M', '88.00', '1.78', 'Brasil'),
(default, 'Sabrina Gomes de Andrade', 'Psicóloga', '1992-12-01', 'F', '63.00', '1.66', 'Brasil');

select * from alunos;

select * from cursos
order by nome;

select * from cursos
order by nome desc;

select * from cursos
order by nome asc;

select nome, carga, ano from cursos
order by nome;

select ano, carga, nome from cursos
order by ano, nome;

select * from cursos
where ano = '2023'
order by ano;

select nome, descricao from cursos
where ano <= '2023'
order by nome;

/* NA LOGICA DE PROGRAMAÇÃO */
/* =, >=, <= */

select nome, descricao, ano from cursos
where ano <= '2023'
order by nome;

select nome, descricao, ano from cursos
where ano > '2023'
order by nome;

select * from cursos
where totaulas between '20' and '30'
order by nome;

select nome, ano from cursos
where ano between 2021 and 2023
order by ano desc, nome;

select nome, ano from cursos
where ano in(2021,2023)
order by ano desc, nome;

select * from cursos
where carga > 35 AND totaulas < 20
order by carga;

select * from cursos
where carga > 35 OR totaulas > 20
order by carga;

select * from cursos
where nome = 'Photoshop';

select * from cursos
where nome LIKE 'E%';

select * from cursos
where nome LIKE '%E';

select * from cursos
where nome LIKE '%A%';

select * from cursos
where nome LIKE 'E%L%';

select * from cursos
where nome like 'C%_';

select * from cursos
where nome like 'ph%p';

select * from cursos
where nome like 'ph%p_';

select * from cursos
where nome like 'P__T%';

select * from cursos
where nome like 'P_%';

select * from alunos
where nome like '%silva%';

select nome, prof from alunos
where nome like '%souza%';

select nome, prof from alunos
where nome like '%_silva%';

select distinct carga from cursos;

select * from cursos
order by carga;

select distinct nacionalidade from alunos;

select count(*) from cursos;
select count(*) from alunos;

select * from cursos
where carga > 40
order by carga;

select count(*) from cursos
where carga >= 40;

select count(nome) from alunos
where nacionalidade = 'Brasil';

select MAX(totaulas) from cursos;

select MAX(carga) from cursos;

select max(totaulas) from cursos
where ano = '2023';

select max(totaulas) from cursos
where ano = '2025';

select MIN(carga) from cursos
where ano = '2025';

select SUM(carga) from cursos;

select sum(carga) from cursos
where ano = '2021';

select AVG(carga) from cursos;

select avg(carga) from cursos
where ano = '2025';

select * from alunos;

select * from alunos
where sexo = 'F'
order by nome; /* EXERCÍCIO 1 - TABELA APENAS DE MULHERES */

select * from alunos
where nascimento between '2000-01-01' and '2013-12-31'
order by nascimento; /* EXERCÍCIO 2 - TABELA COM TODOS OS INDIVIDUOS NASCIDOS ENTRE 2000 E 2013 */

select * from alunos
where prof = 'contador' and sexo = 'M'; /*EXERCÍCIO 3 -  LISTA DE HOMENS CONTADORES */

select * from alunos
where nome like 'm%' and sexo = 'F' and nacionalidade = 'Brasil'; /* EXERCÍCIO 4 - LISTA DE MULHERES NASCIDAS NO BRASIL */

select * from alunos
where nome like '%silva%' and sexo = 'M' and peso < 80 and nacionalidade = 'Brasil'; /* EXERCÍCIO 5 - LISTA DE HOMENS QUE TEM SILVA (PS: O UNICO HOMENS NAS CONDIÇÕES EXIGIDAS, É BRASILEIRO) */

select max(altura) from alunos /* EXERCÍCIO 6 - MAIOR ALTURA ENTRE HOMENS NO BRASIL*/
where sexo = 'M' and altura = 1.95 and nacionalidade = 'Brasil'; 

select avg (peso) from alunos; /* EXERCÍCIO 7 - MEDIA DE PESO */

select avg (peso) from alunos /* EXERCÍCIO 8 - MEDIA DE PESO ENTRE AS MULHERES */
where sexo = 'F';

select MIN(peso) from alunos /* EXECÍCIO 9 - MENOR PESO DE MULHERES QUE NÃO NASCERAM NO BRASIL */
where sexo = 'F' and nacionalidade <> 'Brasil' and nascimento between '1970-01-01' and '2000-12-31';

select count(sexo) from alunos /* EXERCICIO 10 - CONTAR QUANTAS MULHERES TEM MAIS DE 1,60 */
where sexo = 'F' and altura > 1.60; 

/*28/04/2025--------------------*/

select distinct nacionalidade from alunos 
order by nacionalidade;

select carga, count(nome) from cursos 
group by carga;

select nacionalidade, count(nome) from alunos 
group by nacionalidade;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos
where totaulas = '4';

select carga, totaulas from cursos
where totaulas = '6'
group by carga;

select nome, count(*) from cursos
where totaulas = '8'
group by nome;

select ano, count(*) from cursos
group by ano
order by ano;

select ano, count(*) from cursos
group by ano
having count(ano)>4
order by ano;

select ano, count(*) from cursos 
where carga >=40
group by ano 
having ano >= 2024
order by ano;

select avg(carga) from cursos;

select carga, count(*) from cursos 
where ano >=2023
group by carga
having carga > (select avg(carga) from cursos);


/*Exercício 1-----------------*/

select prof, count(nome) from alunos
group by prof;

/*Exercício 2-----------------*/

SELECT sexo, COUNT(*) as total
FROM alunos
WHERE nascimento > '2000-01-01'
GROUP BY sexo
ORDER BY sexo;

/*Exercício 3-----------------*/

select nacionalidade, count(*)from alunos
group by nacionalidade
order by nacionalidade;


select nacionalidade, count(*) from alunos 
where nacionalidade <> 'Brasil'
group by nacionalidade 
having count(*) >= 2 
order by nacionalidade;

/*Exercício 4-----------------*/

select altura, count(*) from alunos
where peso > 80.00
group by altura
having altura > (select avg(altura) from alunos)
order by altura;






































