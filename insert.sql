INSERT INTO comercio.cliente
(tipo ,cpf_cnpj,nome,sobrenome,endereco, telefone,data_nasc)
VALUES ('Pessoa Física','12906108564','Maria','Kopke','Rua Sao Jose','22510088','1999-10-20'),('Pessoa Jurídica','12906102623','Joana','Kopke','Rua Sao Jose','22336699','1995-10-20');

select * from cliente;

INSERT INTO comercio.fornecedor
(cnpj,nome)
VALUES('00.394.460/0058-87', 'Padaria do João'),('00.394.460/0058-30', 'Mercado atacadão'),('00.394.460/0058-50', 'Açougue do Tião');
select * from fornecedor;


INSERT INTO comercio.produto
(nome,valor,quantidade)
VALUES ('Hamburguer','15,00', '20'),('Batata-frita','10,00', '50'),('Coca-Cola 2L','12,00', '6');
select * from produto;

INSERT INTO comercio.vendedor
(nome)
VALUES ('Vendedor 01'), ('Vendedor 02'),('Vendedor 03') ;
select * from vendedor;

insert INTO	comercio.pedido
(descricao, observacoes, forma_pagamento, frete, cliente_id, status, rastreio)
values ('Hamburguer', 'Sem salada', 'A VISTA', '10', '2', 'Em andamento', '0001');

