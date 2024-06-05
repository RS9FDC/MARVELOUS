create database Marvelous;

use Marvelous;

create table usuario(
id int primary key auto_increment,
nome varchar(15),
idade int,
email varchar(50),
senha varchar(10)
); 

select * from usuario;

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

create table quiz (
id int primary key auto_increment,
heroi varchar(45),
fk_usuario INT,
constraint chkheroi check (heroi in ('HomemAranha','PanteraNegra','Wolverine','JeanGray')),
FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

select * from usuario;
select * from aviso;
select * from quiz;
-- insert into usuario values
-- (default,'rato','sapo',123);

-- insert into aviso values 
-- (1, 'sapo', 'dodoizito', 1);

select * from usuario join aviso on fk_usuario = usuario.id;

-- Calculando a idade média apenas para o Homem Aranha
SELECT q.heroi, AVG(u.idade) AS idade_media
FROM quiz q
JOIN usuario u ON q.fk_usuario = u.id
WHERE q.heroi IN ('HomemAranha')
GROUP BY q.heroi;

-- Calculando a idade média apenas para o Pantera Negra
SELECT q.heroi, AVG(u.idade) AS idade_media
FROM quiz q
JOIN usuario u ON q.fk_usuario = u.id
WHERE q.heroi IN ('PanteraNegra')
GROUP BY q.heroi;

-- Calculando a idade média apenas para o Wolverine
SELECT q.heroi, AVG(u.idade) AS idade_media
FROM quiz q
JOIN usuario u ON q.fk_usuario = u.id
WHERE q.heroi IN ('Wolverine')
GROUP BY q.heroi;

-- Calculando a idade média apenas para a Jean Gray
SELECT q.heroi, AVG(u.idade) AS idade_media
FROM quiz q
JOIN usuario u ON q.fk_usuario = u.id
WHERE q.heroi IN ('JeanGray')
GROUP BY q.heroi;

-- Calculando a idade média geral
SELECT AVG(idade) AS idade_media
FROM usuario;



-- truncate table usuario;

 -- drop database Marvelous;

