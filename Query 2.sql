-- produtos disponíveis 

SELECT nome_produto, IF(estoque > 0, 'Em Estoque', 'Esgotado') AS status_estoque FROM produtos;


-- Clientes com dados da compra utilizando o left join 
-- para mostrar todos os resultados
SELECT clientes.nome_cliente, pedidos.id_pedido, pedidos.data_pedido, pedidos.total
FROM clientes
LEFT JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente;


-- Pedidos Realizados pelos clientes
-- Group By () Agrupar resultados
SELECT id_cliente, COUNT(id_pedido) AS total_pedidos 
FROM pedidos GROUP BY id_cliente;

-- Detalhes do pedido
SELECT clientes.nome_cliente, pedidos.id_pedido, pedidos.data_pedido,
produtos.nome_produto, detalhes_pedido.quantidade, detalhes_pedido.preco_unitario,
(detalhes_pedido.quantidade * detalhes_pedido.preco_unitario) 
AS total_item
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN detalhes_pedido ON pedidos.id_pedido = detalhes_pedido.id_pedido
JOIN produtos ON detalhes_pedido.id_produto = produtos.id_produto;