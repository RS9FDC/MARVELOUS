create database Marvelous;

use Marvelous;

create table usuario(
id int primary key auto_increment,
nome char(10),
email char(50),
senha char(15)
); 

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

select * from usuario;

insert into usuario values
(default,'rato','sapo',123);

insert into aviso values 
(1, 'sapo', 'dodoizito', 1);

select * from usuario join aviso on fk_usuario = usuario.id;

truncate table usuario;

drop database Marvelous;

