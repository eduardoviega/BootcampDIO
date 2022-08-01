SELECT * FROM agencia
SELECT * FROM banco
SELECT * FROM cliente
SELECT * FROM cliente_transacoes
SELECT * FROM conta_corrente
SELECT * FROM tipo_transacao

SELECT banco_numero, numero, nome, ativo, data_criacao FROM agencia
SELECT numero, nome, ativo, data_criacao FROM banco
SELECT numero, nome, email, ativo, data_criacao FROM cliente
SELECT id, banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, tipo_transacao_id, valor, data_criacao 
FROM cliente_transacoes
SELECT banco_numero, agencia_numero, numero, digito, cliente_numero, ativo, data_criacao 
FROM conta_corrente
SELECT id, nome, ativo, data_criacao FROM tipo_transacao

-- Colunas de uma tabela
SELECT column_name, data_type, character_maximum_length 
FROM information_schema.columns 
WHERE table_name = 'cliente_transacoes';

-- AVG
-- COUNT(having)
-- MAX
-- MIN
-- SUM

SELECT valor FROM cliente_transacoes

SELECT AVG(valor) FROM cliente_transacoes -- Média

SELECT COUNT(numero) FROM cliente

SELECT COUNT(numero), email
FROM cliente
WHERE email ILIKE '%@gmail.com'
GROUP BY email

SELECT MAX(numero) FROM cliente
SELECT MIN(numero) FROM cliente

SELECT MAX(valor) FROM cliente_transacoes
SELECT MIN(valor) FROM cliente_transacoes

SELECT MAX(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id

SELECT MIN(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id

SELECT COUNT(id), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
HAVING COUNT(id) > 150

SELECT SUM(valor)
FROM cliente_transacoes

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id ASC

SELECT SUM(valor), tipo_transacao_id
FROM cliente_transacoes
GROUP BY tipo_transacao_id
ORDER BY tipo_transacao_id DESC