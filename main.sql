
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

INSERT INTO Professor(nome,email,senha)
VALUES
('Márcia', 'marcia@gmail.com', 'senhadamarcia');

INSERT INTO Turma(numero, nome, id_professor)
VALUES (2, 'DS-TB', 1);

INSERT INTO atividade(numero, descricao, id_turma)
VALUES
(14, 'Matemática', 1);


/* 
1)

SELECT numero, nome, id_professor
FROM Turma
WHERE numero = 2;
*/


/* 
2)

UPDATE atividade SET descricao = 'nova descrição' WHERE id_atividade = 1;
SELECT numero,descricao, id_turma
FROM atividade
WHERE numero = 14;
*/








