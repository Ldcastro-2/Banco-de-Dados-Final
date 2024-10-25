-- Função COUNT() para conta o número de produtos:
SELECT COUNT(*) AS total_produtos 
FROM produtos;

-- Função Sum() para calcular o valor total de vendas em todos os pedidos:
SELECT SUM(total) AS total_vendas 
FROM pedidos;

-- Função AVG() para calcular o preço médio dos produtos vendidos:
SELECT AVG(preco) AS preco_medio 
FROM produtos;

-- Função MAX() para encontrar o produto mais caro:
SELECT MAX(preco) AS preco_mais_caro 
FROM produtos;

-- MIN() para encontrar o produto mais barato:
SELECT MIN(preco) AS preco_mais_barato 
FROM produtos;

-- Date() e Year() Manipulação de datas para extrair o ano de um pedido:
SELECT YEAR(data_pedido) AS ano_pedido 
FROM pedidos;

-- Year Para filtrar os pedidos realizados em 2024:
SELECT * FROM pedidos 
WHERE YEAR(data_pedido) = 2024;

-- IF() para condição
SELECT nome_produto, IF(estoque > 0, 'Em Estoque', 'Esgotado') AS status_estoque 
FROM produtos;

-- Group By () Agrupar resultados
SELECT id_cliente, COUNT(id_pedido) AS total_pedidos 
FROM pedidos 
GROUP BY id_cliente;

-- Produtos Mais Vendidos
SELECT p.nome_produto, SUM(dp.quantidade) AS total_vendido
FROM detalhes_pedido dp
JOIN produtos p ON dp.id_produto = p.id_produto
GROUP BY p.nome_produto
ORDER BY total_vendido DESC
LIMIT 5;

