CREATE DATABASE nutriacao;
CREATE TABLE Usuario(
id_usuario int auto_increment primary key,
nome_completo varchar(100) not null,
data_nascimento date not null,
cpf varchar(11) unique not null,
endereco varchar(100) not null,
cidade varchar(20) not null,
email varchar(50) not null,
telefone varchar(15) not null,
tipo_usuario varchar(20) not null
);

CREATE TABLE item_estoque (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    descricao_alimentos VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    validade DATE NOT NULL,
    data_entrada DATE NOT NULL,
    tipo_item VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE detalhe_distribuicao(
id_detalhe INT AUTO_INCREMENT PRIMARY KEY,
id_distribuicao INT,
id_item INT,
quantidade_distribuida INT NOT NULL,
FOREIGN KEY (id_distribuicao) REFERENCES distribuicao(id_distribuicao),
FOREIGN KEY (id_item) REFERENCES item_estoque(id_item)
);

CREATE TABLE distribuicao(
id_distribuicao INT AUTO_INCREMENT PRIMARY KEY,
id_usuario INT,
data_distribuicao DATE NOT NULL,
rastreabilidade VARCHAR(100) NOT NULL,
observacao VARCHAR(100) NULL
);


INSERT INTO Usuario (id_usuario, nome_completo, data_nascimento, cpf, endereco, cidade, email, telefone, tipo_usuario) VALUES
(1, 'Carlos Almeida', '1985-04-12', '11122233344', 'Rua A, 123', 'São Paulo', 'carlos@email.com', '11988887777', 'Doador'),
(2, 'Mariana Costa', '1990-08-25', '22233344455', 'Av. B, 45', 'Campinas', 'mariana@email.com', '19977776666', 'Doador'),
(3, 'João Silva', '1978-11-05', '33344455566', 'Rua C, 90', 'Guarulhos', 'joao@email.com', '11966665555', 'Funcionario'),
(4, 'Lar Esperança', '1995-01-20', '44455566677', 'Pça D, 12', 'Osasco', 'contato@lar.org', '11955554444', 'Instituicao'),
(5, 'Roberto Gomes', '1982-03-15', '55566677788', 'Rua E, 88', 'São Bernardo', 'roberto@email.com', '11944443333', 'Doador'),
(6, 'Ana Paula', '1993-07-09', '66677788899', 'Av. F, 300', 'Santo André', 'ana@email.com', '11933332222', 'Funcionario'),
(7, 'ONG Alimenta', '2000-10-10', '77788899900', 'Rua G, 77', 'Diadema', 'ong@alimenta.br', '11922221111', 'Instituicao'),
(8, 'Felipe Néri', '1988-12-01', '88899900011', 'Viela H, 5', 'São Paulo', 'felipe@email.com', '11911110000', 'Doador'),
(9, 'Creche Luz', '1998-05-18', '99900011122', 'Av. I, 210', 'Barueri', 'luz@creche.com', '11900009999', 'Instituicao'),
(10, 'Patrícia Lima', '1980-02-28', '00011122233', 'Rua J, 15', 'São Caetano', 'patricia@email.com', '11988889999', 'Funcionario');

INSERT INTO item_estoque (id_item, id_usuario, descricao_alimentos, quantidade, validade, data_entrada, tipo_item) VALUES
(1, 1, 'Arroz Branco 5kg', 50, '2027-12-01', '2026-10-01', 'Não Perecível'),
(2, 2, 'Feijão Carioca 1kg', 100, '2027-08-15', '2026-10-02', 'Não Perecível'),
(3, 5, 'Leite Integral 1L', 200, '2026-12-30', '2026-10-03', 'Perecível'),
(4, 8, 'Macarrão Espaguete 500g', 80, '2028-01-20', '2026-10-05', 'Não Perecível'),
(5, 1, 'Óleo de Soja 900ml', 60, '2027-05-10', '2026-10-06', 'Não Perecível'),
(6, 2, 'Açúcar Refinado 1kg', 120, '2028-06-01', '2026-10-07', 'Não Perecível'),
(7, 5, 'Molho de Tomate 340g', 90, '2027-03-15', '2026-10-08', 'Não Perecível'),
(8, 8, 'Fubá Mimoso 500g', 40, '2027-10-10', '2026-10-09', 'Não Perecível'),
(9, 1, 'Cesta Básica Padrão', 25, '2027-09-01', '2026-10-10', 'Misto'),
(10, 2, 'Bolacha Maria 400g', 70, '2027-02-28', '2026-10-11', 'Não Perecível');

INSERT INTO distribuicao (id_distribuicao, id_usuario, data_distribuicao, rastreabilidade, observacao) VALUES
(1, 4, '2026-10-15', 'Rota ABC-01', 'Entrega mensal padrão'),
(2, 7, '2026-10-16', 'Rota XYZ-02', 'Foco na zona leste'),
(3, 9, '2026-10-18', 'Rota LMN-03', 'Emergencial'),
(4, 4, '2026-10-20', 'Retirada Local', 'Retirado pela coord.'),
(5, 7, '2026-10-22', 'Rota ABC-02', 'Complemento de cesta'),
(6, 9, '2026-10-25', 'Rota XYZ-04', 'Evento de dia das crianças'),
(7, 4, '2026-10-28', 'Retirada Local', 'N/A'),
(8, 7, '2026-11-01', 'Rota LMN-05', 'Entrega mensal padrão'),
(9, 9, '2026-11-03', 'Rota ABC-03', 'Foco em perecíveis'),
(10, 4, '2026-11-05', 'Retirada Local', 'Atraso por chuva');

INSERT INTO detalhe_distribuicao (id_detalhe, id_distribuicao, id_item, quantidade_distribuida) VALUES
(1, 1, 1, 10),
(2, 1, 2, 20),
(3, 2, 3, 50),
(4, 3, 4, 15),
(5, 4, 5, 10),
(6, 5, 6, 30),
(7, 6, 7, 25),
(8, 7, 8, 10),
(9, 8, 9, 5),
(10, 9, 10, 20);

SELECT descricao_alimentos, quantidade, validade, tipo_item
FROM item_estoque
WHERE validade BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);

SELECT 
    d.data_distribuicao, 
    u.nome_completo AS instituicao, 
    i.descricao_alimentos, 
    dd.quantidade_distribuida, 
    d.rastreabilidade
FROM distribuicao d
JOIN Usuario u ON d.id_usuario = u.id_usuario
JOIN detalhe_distribuicao dd ON d.id_distribuicao = dd.id_distribuicao
JOIN item_estoque i ON dd.id_item = i.id_item
WHERE u.nome_completo = 'Lar Esperança'
ORDER BY d.data_distribuicao DESC;

SELECT tipo_item, SUM(quantidade) AS total_em_estoque
FROM item_estoque
GROUP BY tipo_item;

SELECT 
    u.nome_completo, 
    u.cidade, 
    COUNT(i.id_item) AS lotes_doados, 
    SUM(i.quantidade) AS total_itens_doados
FROM Usuario u
JOIN item_estoque i ON u.id_usuario = i.id_usuario
WHERE u.tipo_usuario = 'Doador'
GROUP BY u.id_usuario, u.nome_completo, u.cidade
ORDER BY total_itens_doados DESC;

SELECT 
    d.id_distribuicao, 
    d.data_distribuicao, 
    u.nome_completo AS destino, 
    i.descricao_alimentos, 
    dd.quantidade_distribuida
FROM detalhe_distribuicao dd
JOIN distribuicao d ON dd.id_distribuicao = d.id_distribuicao
JOIN Usuario u ON d.id_usuario = u.id_usuario
JOIN item_estoque i ON dd.id_item = i.id_item
WHERE dd.quantidade_distribuida > 20
ORDER BY dd.quantidade_distribuida DESC;
