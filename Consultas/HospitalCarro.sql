use hospitalcarro;

ALTER TABLE cliente ADD observacao VARCHAR(45);
ALTER TABLE cliente ADD nomeRetira VARCHAR(45);

CREATE TABLE informacoes ( 
	idInfo INT(11) not null AUTO_INCREMENT, 
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    telefone INT(9) NOT NULL,
    PRIMARY KEY(idInfo)
);    

INSERT INTO tipocarro (antigo, moderno, hibrido, eletrico) VALUES ("Opala","Onix","Corola","Tesla");
INSERT INTO tipocarro (antigo, moderno, hibrido, eletrico) VALUES ("Fusca","Mustang","BMW 530e","BYD Dolphin");

INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira ) VALUES ("João Henrique","12/01/2005", "O mais GAY", "Elika");
INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira ) VALUES ("Pedro Bitencourt","28/01/2005", "MATA", "Felipe");
INSERT INTO cliente (nome, dataNascimento, observacao, nomeRetira ) VALUES ("Enrique Lobo","21/04/2004", "Nado", "Ana");

INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)
VALUES 
('Corolla', 'Toyota', 2019, 1, 4),
('Civic', 'Honda', 2020, 1, 5),
('HR-V', 'Honda', 2018, 2, 6);

INSERT INTO carro (nome, marca, ano, tipoCarro_idtipoCarro, Cliente_idCliente)
VALUES
("Gol", "Volks", 2024, 2, 6);

INSERT INTO funcionario (CPF, nome, capacitacao)
VALUES 
('123', 'Jorge', "Mecanico"),
('019', 'Carlin Carioca', "Pintor"),
('321', 'Jioser', "Gerente");

INSERT INTO servico ( precoServico, Carro_idCarro)
VALUES 
( 200.00, 3),
( 150.00, 4),
( 100.00, 5);

select * from servico;
select * from carro;







