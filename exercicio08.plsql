--Exercício 08 Álgebra Relacional + SQL

CREATE DATABASE “EX08”

TEMPLATE = TEMPLATE0

ENCODING ‘UTF-8’

CONNECTION LIMIT -1;

CREATE TABLE tb_departamentos(

cod_depto CHAR(2),

nm_depto  VARCHAR(60),

CONSTRAINT pk_departamentos_cod_depto PRIMARY KEY(cod_depto) 

);

CREATE TABLE tb_funcionarios(

cod_funcionario  CHAR(2),

nome                  VARCHAR(60),

cod_depto          CHAR(2),

salario                 NUMERIC(7,2),

CONSTRAINT pk_funcionarios_cod_funcionario PRIMARY KEY(cod_funcionario),

CONSTRAINT fk_departamentos_cod_depto FOREIGN KEY(cod_depto)

REFERENCES tb_departamentos(cod_depto)

);

Carga das tabelas:

INSERT INTO tb_departamentos

VALUES

('D1', 'Contabilidade'),

('D2', 'Administração'),

('D3', 'Informática'),

('D4', 'RH');

INSERT INTO tb_funcionarios

VALUES

('E1', 'Jose',   'D1', 2500.00),

('E2', 'Maria',  'D1', 2800.00),

('E3', 'Jose',   'D2', 3200.00),

('E4', 'Silvia', 'D3', 4650.00),

('E5', 'João',   'D1', 2800.00);
