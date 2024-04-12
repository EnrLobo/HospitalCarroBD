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
INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)	VALUES ("Fusca", "VolksWagen", 2024, 3, 2);

SELECT * FROM carro;

INSERT INTO informacoes (nome, endereco, telefone)	VALUES ("Hospital do Carro", "Rua Bahia, 320, Centro - Belo Horizonte/MG", 999887744);

SELECT * FROM informacoes;

INSERT INTO curso (curso)	VALUES ("Hibrido");
INSERT INTO curso (curso)	VALUES ("Eletrico");

SELECT * FROM curso;

INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Rolamento", 200.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Vela", 150.00);
INSERT INTO pecas (nomePeca, precoPeca)	VALUES ("Farol", 500.00);

SELECT * FROM pecas;

INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (700.00, "Troca de Farol",  3);
INSERT INTO servico (precoServico, descricao, Carro_idCarro)	VALUES (300.00, "Troca de Vela",  2);

SELECT * FROM servico;

INSERT INTO funcionario (CPF, nome)	VALUES (1041, "Carlos");
INSERT INTO funcionario (CPF, nome)	VALUES (2058555458, "Douflas");

SELECT * FROM funcionario;

INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (1 , 1);
INSERT INTO funcionario_has_curso (funcionario_idFuncionario, curso_idCuso)	VALUES (1 , 2);

SELECT * FROM funcionario_has_curso;

INSERT INTO funcionario_has_servico (funcionario_idFuncionario, Servico_idServico)	VALUES (1 , 2);
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
