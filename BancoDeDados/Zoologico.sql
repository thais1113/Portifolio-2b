---ANIMAIS----
create table animais(
	COD_Animal Int primary key,
	Setor varchar,
	Nome varchar,
	Ano_nasc bigint,
	Peso int,
	Ultima_visita_veterinário date,
	Obs varchar,
	Especie varchar
);
select * from animais

---FORNECEDOR----
create table fornecedores(
	cnpj varchar primary key,
	nome varchar,
	email varchar,
	produto varchar,
	local varchar
);
select * from fornecedores

---ESTOQUE----
create table estoque(
	COD_estoque Int primary key,
	produto varchar,
	quantidade int,
	preço decimal (3,2),
	marca varchar,
	data_compra date,
	validade date,
	Cod_fornecedor varchar,
	foreign key (Cod_fornecedor)
references fornecedores (cnpj)
);

---FUNCIONARIOS----
create table funcionarios(
	pis int primary key,
	cargo varchar,
	carga_horaria varchar,
	salario decimal (9,2),
	nome varchar,
	cpf varchar,
	email varchar,
	data_nasc date
);

---VISITANTES----
create table visitantes(
	cpf_visitante varchar primary key,
	nome varchar,
	idade int,
	checkin varchar
);

---BILHETERIA----
create table bilheteria(
	n_pulseira Int primary key,
	cod_visitante varchar,
	esta_zoo varchar,
	foreign key (cod_visitante)
references visitantes (cpf_visitante)
);

---EMPRESAS_PARCEIRAS----
create table empresas_parceiras(
	cod_empresa_parc Int primary key,
	funcao varchar,
	aluguel varchar,
	nome varchar
);

---CONTAS----
create table contas(
	cod_contas Int primary key,
	lucro decimal (9,2),
	gastos_extras decimal (9,2) ,
	valor_total_funcionarios decimal (9,2),
	valor_total_estoque decimal (9,2),
	mes_ano date,
	valor_total_bilheteria decimal (9,2)
);
