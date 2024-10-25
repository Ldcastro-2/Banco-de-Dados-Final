-- Dados do Produto
INSERT INTO produtos (nome_produto, descricao, preco, estoque) VALUES 
('Chocolate ao Leite', 'Chocolate suave com 30% cacau', 5.50, 100),
('Chocolate Amargo', 'Chocolate intenso com 70% cacau', 7.00, 80),
('Trufa de Maracujá', 'Trufa com recheio de maracujá', 3.00, 150);
select * from produtos;

-- Dados dos Cliente 
INSERT INTO clientes (nome_cliente, email, telefone, endereco, cidade, estado, cep) VALUES 
('Aurora Matos', 'aurora.matosa@gmail.com', '21666666666', 'Rua Amarela, 123', 'Rio de Janeiro', 'RJ', '21000-001'),
('Henrique Castro', 'h.castro@gmail.com', '219777777777', 'Rua Branco, 456', 'São Paulo', 'SP', '22000-002'),
('Lavinia Alves', 'lavialves@gmail.com', '2188888888', 'Rua Cinza, 123', 'Rio de Janeiro', 'RJ', '21000-003');
select * from clientes;

-- Dados dos Pedidos 
INSERT INTO pedidos (id_cliente, data_pedido, total) VALUES 
(1, '2024-10-16', 30.00),
(2, '2024-10-16', 50.00),
(3, '2024-10-16', 50.00);
select * from pedidos;

-- Dados dos Detalhes do Pedido 
INSERT INTO detalhes_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES 
(1, 1, 5, 5.50), 
(1, 2, 3, 7.00), 
(2, 3, 10, 3.00); 
select * from detalhes_pedido;


