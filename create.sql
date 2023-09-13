create database comercio;
use comercio;

-- Tabela de cliente
CREATE TABLE  cliente (
  id INT NOT NULL AUTO_INCREMENT,
  tipo ENUM('Pessoa Física', 'Pessoa Jurídica') NOT NULL,
  cpf_cnpj CHAR(25) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  sobrenome VARCHAR(45) NOT NULL,
  endereco VARCHAR(100) NOT NULL,
  telefone CHAR(10) NOT NULL,
  data_nasc DATE NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX cpf_UNIQUE (cpf_cnpj ASC));

  
  -- Tabela de fornecedor
CREATE TABLE fornecedor (
  id INT NOT NULL AUTO_INCREMENT,
  cnpj VARCHAR(45) NOT NULL,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX id_UNIQUE (id ASC),
  UNIQUE INDEX cnpj_UNIQUE (cnpj ASC));
  
-- Tabela de pedido
  CREATE TABLE pedido (
  id INT NOT NULL AUTO_INCREMENT,
  descricao VARCHAR(200) NULL,
  observacoes VARCHAR(250) NULL,
  forma_pagamento ENUM('A VISTA', 'PARCELADO') NOT NULL,
  frete FLOAT NOT NULL,
  clientes_id INT NOT NULL,
  status ENUM('Em andamento', 'Processando', 'Enviado', 'Entregue') NULL DEFAULT 'Processando',
  rastreio VARCHAR(45) NOT NULL,
  PRIMARY KEY (id, clientes_id),
  INDEX fk_pedidos_clientes_idx (clientes_id ASC),
  UNIQUE INDEX rastreio_UNIQUE (rastreio ASC),
  CONSTRAINT fk_pedidos_clientes FOREIGN KEY (clientes_id) REFERENCES cliente (id));
  

  -- Tabela de produto
  CREATE TABLE produto (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  valor VARCHAR(45) NOT NULL,
  quantidade INT NOT NULL,
  PRIMARY KEY (id));

  
-- Tabela de vendedor
  CREATE TABLE vendedor (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
  
  
