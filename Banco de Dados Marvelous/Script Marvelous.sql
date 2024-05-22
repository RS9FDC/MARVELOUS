create database Marvelous;

use Marvelous;

create table usuario (
idUsuario int primary key,
nome char(10),
email char(50),
senha char(15)
); 

INSERT INTO usuario VALUES
(1, 'rato', 'vaca', 12345);

select * from usuario;

truncate table usuario;