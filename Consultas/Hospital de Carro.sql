use hospitalcarro;

ALTER TABLE cliente ADD observacao VARCHAR(45);
ALTER TABLE cliente ADD nomeRetira VARCHAR(45);

-- ---------------------------------------------------------------------------------------------------------------------

CREATE TABLE informacoes ( 
	idInfo INT(11) not null AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    telefone INT(9) NOT NULL,
    PRIMARY KEY(idInfo)
); 

-- ---------------------------------------------------------------------------------------------------------------------

INSERT INTO tipocarro (tipoCarro) 	VALUES ("Antigo");
INSERT INTO tipocarro (tipoCarro) 	VALUES ("Moderno");
INSERT INTO tipocarro (tipoCarro) 	VALUES ("Hibrido");
INSERT INTO tipocarro (tipoCarro) 	VALUES ("Eletrico");

select * from tipocarro;

INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira)	VALUES ("Joao Henrique", "01/01/2005", "GAY", "Elika");
INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira)	VALUES ("Enrique Lobo", "21/04/2004", "Nado", "Ana");
INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira)	VALUES ("Pedro", "08/01/2005", "MATA", "Felipe");

SELECT * FROM cliente;

INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Golf", "VolksWagen", 2024, 2, 2);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Corola", "Toyota", 2024, 3, 3);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Fusca", "VolksWagen", 1905, 1, 2);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Gol", "VolksWagen", 2019, 2, 2);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Voyage", "VolksWagen", 2024, 2, 3);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Virtus", "VolksWagen", 2024, 2, 3);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Opala", "Chevrolet", 1950, 1, 2);
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Brasilia", "VolksWagen", 1925, 1, 3);

SELECT * FROM carro;

INSERT INTO informacoes (nome, endereco, telefone)	VALUES ("Hospital do Carro", "Rua Bahia, 320, Centro - Belo Horizonte/MG", 999887744);

SELECT * FROM informacoes;

INSERT INTO curso (curso)	VALUES ("Hibrido");
INSERT INTO curso (curso)	VALUES ("Eletrico");

SELECT * FROM curso;

INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Rolamento", 200.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Vela", 150.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Farol", 500.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Cabeçote", 300.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Parabrisa", 1000.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Resistor", 2.50);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Parafuso", 0.50);

SELECT * FROM pecas;

INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (700.00, "Troca de Farol",  3);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (300.00, "Troca de Vela",  2);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (1300.00, "Troca de Parabrisa",  5);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (5.00, "Troca de Parafuso",  1);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (1.00, "Troca de Resistor",  1);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (360.00, "Troca de Cabeçote",  5);

SELECT * FROM servico;

INSERT INTO funcionario (CPF, nome)	VALUES (1041, "Carlos");
INSERT INTO funcionario (CPF, nome)	VALUES (2058555458, "Douflas");

SELECT * FROM funcionario;

INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (1 , 1);
INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (1 , 3);
INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (4 , 1);
INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (3 , 3);

SELECT * FROM funcionario_has_curso;

INSERT INTO funcionario_has_servico (funcionario_idFuncionario, Servico_idServico)	VALUES (1 , 2);
INSERT INTO funcionario_has_servico (funcionario_idFuncionario, Servico_idServico)	VALUES (1 , 3);
INSERT INTO funcionario_has_servico (funcionario_idFuncionario, Servico_idServico)	VALUES (2 , 1);

SELECT * FROM funcionario_has_servico;

INSERT INTO pecas_has_servico (pecas_idpecas, Servico_idServico) VALUES (3 , 1);
INSERT INTO pecas_has_servico (pecas_idpecas, Servico_idServico) VALUES (2 , 2);

SELECT * FROM pecas_has_servico;

-- ---------------------------------------------------------------------------------------------------------------------

DELETE FROM carro WHERE idCarro = 3;
DELETE FROM cliente WHERE idCliente = 1;
DELETE FROM curso WHERE idCurso = 2;
DELETE FROM funcionario WHERE idFuncionario = 2;
-- DELETE FROM funcionario_has_curso WHERE idServico = 2;
-- DELETE FROM funcionario_has_servico WHERE idServico = 2;
DELETE FROM informacoes WHERE idInfo = 1;
DELETE FROM pecas WHERE idPecas = 1;
-- DELETE FROM pecas_has_servico WHERE idServico = 2;
DELETE FROM servico WHERE idServico = 2;
DELETE FROM tipocarro WHERE idtipoCarro = 4;

-- ---------------------------------------------------------------------------------------------------------------------

UPDATE carro SET nome = "Chevett", marca = "Chevrolet", ano = 1910 where idCarro = 5;
SELECT * FROM carro;

UPDATE cliente SET nome = "Enrique Rocha" WHERE idCliente = 2;
SELECT * FROM cliente;

UPDATE curso SET curso = "Eletrico" WHERE idCurso = 1;
SELECT * FROM curso;

UPDATE funcionario SET nome = "Gregorio" WHERE idFuncionario = 1;
SELECT * FROM funcionario;


UPDATE informacoes SET nome = "Hospital de Carro" WHERE idInfo = 2;
SELECT * FROM informacoes;


UPDATE pecas SET precoPeca = 180.05 WHERE idpecas = 2;
SELECT * FROM pecas;


UPDATE servico SET Carro_idCarro = 5 WHERE idServico = 1;
SELECT * FROM servico;

UPDATE tipocarro SET tipoCarro = "Eletrico" WHERE idtipoCarro = 3;
SELECT * FROM tipocarro;

-- ---------------------------------------------------------------------------------------------------------------------
CREATE VIEW Servico_com_carro AS
	SELECT c.nome AS Nome, s.descricao AS Descricao FROM carro c 
    JOIN servico s ON s.Carro_idCarro = idCarro;
    
SELECT * FROM Servico_com_carro;

CREATE VIEW Carro_Cliente AS
	SELECT cl.nome AS Nome_Cliente, ca.nome AS Nome_Carro FROM cliente cl 
    JOIN carro ca ON ca.Cliente_idCliente = cl.idCliente;
    
SELECT * FROM Carro_Cliente;

CREATE VIEW Carro_TipoCarro AS
	SELECT t.tipoCarro AS Tipo_Carro, ca.nome AS Nome_Carro FROM tipoCarro t 
    JOIN carro ca ON ca.tipoCarro_idtipoCarro = t.idtipoCarro;
    
SELECT * FROM Carro_TipoCarro;    

CREATE VIEW curso_funcionario AS
	SELECT f.nome AS Nome, c.curso AS Curso FROM funcionario f
    JOIN funcionario_has_curso AS fc ON f.idFuncionario = fc.funcionario_idFuncionario 
    JOIN curso AS c ON fc.curso_idCuso = c.idCurso;

SELECT * FROM curso_funcionario;

CREATE VIEW servico_funcionario AS
	SELECT f.nome AS Nome, s.descricao AS Descricao FROM funcionario f
    JOIN funcionario_has_servico AS fs ON f.idFuncionario = fs.funcionario_idFuncionario 
    JOIN servico AS s ON fs.Servico_idServico = s.idServico;  
    
SELECT * FROM servico_funcionario;   

CREATE VIEW servico_pecas AS
	SELECT p.nomePeca AS Nome_Peca, s.descricao AS Descricao FROM pecas p
    JOIN pecas_has_servico AS ps ON p.idpecas = ps.pecas_idpecas 
    JOIN servico AS s ON ps.Servico_idServico = s.idServico;
    
SELECT * FROM servico_pecas;       
-- ---------------------------------------------------------------------------------------------------------------------
SELECT nomePeca AS Nome, precoPeca AS Preco FROM  pecas WHERE precoPeca < (SELECT avg(precoPeca) FROM pecas)order by precoPeca DESC;

SELECT descricao AS Descricao, precoServico AS Preco FROM  servico WHERE precoServico > (SELECT avg(precoServico) FROM servico)order by precoServico DESC;

SELECT nome, marca, ano FROM carro WHERE ano <(SELECT MAX(ano) FROM carro);

SELECT c.nome, t.tipoCarro, c.ano FROM carro c, tipoCarro t WHERE c.tipoCarro_idtipoCarro = t.idtipoCarro and c.ano > (SELECT MIN(ano) FROM carro) ORDER BY ano DESC;

SELECT nome, ano FROM carro WHERE ano > (SELECT avg(ano)FROM carro)order by ano DESC;

SELECT cl.nome AS NomeCliente, ca.nome AS NomeCarro, ca.ano FROM cliente cl, carro ca WHERE ca.Cliente_idCliente = cl.idCliente and ca.ano < (SELECT avg(ano) FROM carro) ORDER BY ano DESC;

SELECT ca.ano AS Ano, ca.nome AS NomeCarro, t.tipoCarro AS TipoCarro, cl.nome AS NomeCliente FROM carro ca, tipocarro t, cliente cl WHERE ca.tipoCarro_idtipoCarro = t.idtipoCarro and ca.Cliente_idCliente = cl.idCliente and ano > (SELECT MIN(ano) FROM carro)ORDER BY tipoCarro;


