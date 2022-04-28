create table cliente(
	Telefone Int,
	Nome varchar,
	ID_Cliente Int primary key
);

create table livro(
	Cod_livros Int primary key,
	Titulo varchar,
	Autor varchar,
	Cod_cliente Int,
	foreign key (Cod_cliente)
references cliente (ID_Cliente)
);


insert into cliente
(Telefone, Nome, ID_Cliente)
values
(123456789,'Joana',1),
(987654321,'Luiz',5),
(999999999,'Joao',3);

insert into livro
(Cod_livros, Titulo, Autor, Cod_cliente)
values
(12122 ,'Percy Jackson','Rick Riordan', 1),
(21122 ,'Senhor dos Aneis','J.R.R. Tolkien', 5),
(11112 ,'Senhor das moscas','William Golding', 3),
(11122,'Harry Potter', 'J.K.Rowling', 1);

select * from cliente inner join livro on ID_Cliente = Cod_cliente
