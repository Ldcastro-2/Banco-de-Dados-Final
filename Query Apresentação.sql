
-- Função COUNT() para conta o número de produtos:
SELECT COUNT(*) AS total_produtos 
FROM produtos;

-- Função AVG() para calcular o preço médio dos produtos vendidos:
SELECT AVG(preco) AS preco_medio 
FROM produtos;

-- MIN() para encontrar o produto mais barato:
SELECT MIN(preco) AS preco_mais_barato 
FROM produtos;

-- Função MAX() para encontrar o produto mais caro:
SELECT MAX(preco) AS preco_mais_caro 
FROM produtos;

-- Dados do estoque
SELECT nome_produto, IF(estoque > 0, 'Em Estoque', 'Esgotado') AS status_estoque FROM produtos;

-- Clientes com dados da compra
SELECT clientes.nome_cliente, pedidos.id_pedido, pedidos.data_pedido, pedidos.total
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;

-- Detalhes do pedido
SELECT clientes.nome_cliente, pedidos.id_pedido, pedidos.data_pedido,
produtos.nome_produto, detalhes_pedido.quantidade, detalhes_pedido.preco_unitario,
(detalhes_pedido.quantidade * detalhes_pedido.preco_unitario) 
AS total_item
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN detalhes_pedido ON pedidos.id_pedido = detalhes_pedido.id_pedido
JOIN produtos ON detalhes_pedido.id_produto = produtos.id_produto;