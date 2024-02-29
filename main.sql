
-- Criação da tabela de Professores
CREATE TABLE Professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

-- Criação da tabela de Turmas
CREATE TABLE Turma (
    id_turma INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    id_professor INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
);

-- Criação da tabela de Atividades
CREATE TABLE atividade (
    id_atividade INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

CREATE TABLE turma_atividade(
    id_turma_atividade INT AUTO_INCREMENT PRIMARY KEY,
    id_turma INT,
    id_atividade INT,
    FOREIGN KEY (id_atividade) REFERENCES atividade(id_atividade),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);




INSERT INTO Professor(nome,email,senha)
VALUES
('Márcia', 'marcia@gmail.com', 'senhadamarcia'),
('Carlitos', 'carlitos@gmail.com', 'senhacarlitos');   

INSERT INTO Turma(numero, nome, id_professor)
VALUES 
(2, 'DS-TB', 1),
(3, 'DS-TB', 1);

INSERT INTO atividade(numero, descricao, id_turma)
VALUES
(14, 'Matemática', 1),
(11, 'Português', 1),
(44, 'Inglês', 2);


/* 
2) Ler informações de uma turma

SELECT numero, nome, id_professor
FROM Turma
WHERE numero = 2;
*/


/* 
3) Atualizar a descrição de uma atividade

UPDATE atividade SET descricao = 'nova descrição' WHERE id_atividade = 1;
SELECT numero,descricao, id_turma
FROM atividade
WHERE numero = 14;
*/


/*
4) Deletar um professor

DELETE FROM Professor WHERE id_professor = 2;
SELECT nome, email, senha
FROM Professor;
*/


/*
6) Listar todas as atividades de uma turma

SELECT atividade.numero, atividade.descricao
FROM atividade
JOIN Turma ON atividade.id_turma = Turma.id_turma
WHERE Turma.id_turma = '1';
*/


/* 
7) Atualizar a descrição de uma atividade

UPDATE Turma SET id_professor = 2 WHERE id_turma = 1;
SELECT numero,nome, id_professor
FROM Turma
WHERE numero = 2;
*/


/*
8) Liste o nome de cada turma junto com o nome do professor responsável por ela. Inclua o número de identificação da turma e o e-mail do professor.

SELECT Turma.numero, Turma.nome AS nome_turma, Professor.nome AS nome_professor, Professor.email
FROM Turma
INNER JOIN Professor ON Turma.id_professor = Professor.id_professor;
*/


