--FORNECEDORES--
create table fornecedores(
	cnpj varchar(18) primary key,
	nome_fantasia varchar,
	tipo_roupa varchar,
	local varchar
);	
insert into fornecedores
(cnpj, nome_fantasia, tipo_roupa, local)
values
('11.222.222/0001-22', 'Joaozinho importacoes', 'Jeans', 'São Paulo'),
('11.222.343/0001-12', 'Lila importados', 'Vestidos', 'São Paulo'),
('11.112.112/0001-12', 'Erika entregas', 'Cropped', 'Acre'),
('55.555.555/0001-85', 'Kate', 'Short', 'São Paulo');

--FUNCIONARIOS--
create table funcionarios(
	num_carteira_trabalho varchar(14) primary key,
	nome varchar,
	cpf varchar,
	salario decimal(7,2),
	carga_horaria Int,
	fucao varchar
);
insert into funcionarios
(num_carteira_trabalho, nome, cpf, salario, carga_horaria, fucao)
values
('33.55555.22-1', 'Sheldon', '255.655.582-45', 1000.00, 5, 'estagiario'),
('55.55555.22-8', 'Jessica', '638.885.319-53', 2000.00, 8, 'estoquista');
	
--CLIENTES--
create table clientes(
	cpf varchar(14) primary key,
	nome varchar,
	email varchar,
	endereco varchar,
	telefone varchar
);
insert into clientes
(cpf, nome, email, endereco, telefone)
values
('255.655.525-52', 'William', 'will@gmail.com', 'Rua Tal', '(48)9999999'),
('555.666.522-97', 'Jose', 'Jose@gmail.com', 'Avenida Tal', '(48)1999999');

--PRODUTOS--
create table produtos(
	cod_produto bigint primary key,
	tecido varchar,
	tamanho varchar,
	modelo varchar,
	estilo varchar,
	marca varchar,
	preco decimal(5,2),
	cod_fornecedor varchar(18),
	foreign key (cod_fornecedor) references fornecedores(cnpj)
);
insert into produtos
(cod_produto, tecido, tamanho, modelo, estilo, marca, preco, cod_fornecedor)
values
(654987, 'Poliamida', 'M', 'Short', 'Esporte', 'Rolamoca', 54.90, '55.555.555/0001-85'),
(855984, 'Algodao', 'G', 'Vestido', 'Gala', 'Lancaperfume', 350.00, '11.222.343/0001-12');

--VENDAS--
create table vendas(
	data date,
	cod_funcionario varchar(14) references funcionarios,
	cod_roupa bigint references produtos,
	cod_cliente varchar(14) references clientes	
);

insert into vendas
(data, cod_funcionario, cod_roupa, cod_cliente)
values
('2022-02-16', '55.55555.22-8', 855984, '255.655.525-52'),
('2022-02-17', '55.55555.22-8', 654987, '555.666.522-97');

--VISUALIZAÇÃO--
select v."data" as venda, p.modelo, p.marca, p.preco,
f.nome as nome_funcionario, f.salario,
c.nome as nome_cliente, c.email as email_cliente from vendas v

inner join produtos p on v.cod_roupa = p.cod_produto
inner join funcionarios f on f.num_carteira_trabalho = v.cod_funcionario
inner join clientes c on v.cod_cliente = c.cpf
