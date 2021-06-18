/* create database rh; */

use rh;

create table tb_funcionarios (
 id bigint (5) auto_increment,
 nome varchar (100) not null,
 email varchar (100) not null,
 salario decimal (10,2) not null,
 numeroRegistro bigint (4) not null,
 cargo varchar (100) not null,
 primary key (id)
);

select * from tb_funcionarios;

insert into tb_funcionarios (nome, email, salario, numeroRegistro, cargo)
values ("Bruno","bruno@gen",5000.00, 4525,"Full Stack"),
("Gui","gui@gen",8500.0, 5260,"Front End"),
("Igor","igor@gen", 4200.00, 7022,"Back End"),
("Ed","ed@gen",5100.00, 2526,"Database"),
("Zinha","zinha@gen",6000.00, 1857,"Front End");

update tb_funcionarios set salario = 1500 where id = 2;
update tb_funcionarios set salario = 1300 where id = 1;

/*Query de selecionar funcionarios com salario maior que 2000:*/
select * from tb_funcionarios where salario > 2000;

/*Query de selecionar funcionarios com salario menor que 2000:*/
select * from tb_funcionarios where salario < 2000;

/*Query de atualização de email:*/
update tb_funcionarios set email = "guizika@gen" where id = 2;

