drop database if exists escola;
create database escola;
use escola;

create table alunos (
	id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    data_nascimento date,
    turma_id int
);

create table professores (
	id int auto_increment primary key,
    nome varchar(100) not null,
    especialidade varchar(100)
);

create table turmas (
	id int auto_increment primary key,
    nome varchar(50) not null,
    professor_id int,
    horario time,
    foreign key (professor_id) references professores(id)
);

create table disciplinas (
	id int auto_increment primary key,
    nome varchar(100) not null,
    carga_horaria int
);

create table notas (
	id int auto_increment primary key,
    aluno_id int,
    disciplina_id int,
	nota decimal (2, 1),
    bimestre int,
    foreign key (aluno_id) references alunos(id),
    foreign key (disciplina_id) references disciplinas(id)
);

alter table alunos 
add foreign key (turma_id) references turmas(id);

insert into professores (nome, especialidade)
values
('Carlos Silva', 'Matemática'),
('Ana Santos', 'Português'),
('Marcos Lima', 'História'),
('Julia Costa', 'Ciências'),
('Roberto Alves', 'Geografia');

insert into turmas (nome, professor_id, horario)
values
('1º Ano A', 1, '08:00:00'),
('1º Ano B', 2, '10:00:00'),
('2º Ano A', 3, '08:00:00'),
('2º Ano B', 4, '13:00:00'),
('3º Ano A', 5, '14:00:00');

INSERT INTO alunos (nome, email, data_nascimento, turma_id) VALUES
('Amon Ra Silva', 'amon.ra@example.com', '2010-03-12', 1),
('Bastet Oliveira', 'bastet.oliveira@example.com', '2005-11-28', 2),
('Hórus Fernandes', 'horus.fernandes@example.com', '2011-01-05', 1),
('Ísis Moreira', 'isis.moreira@example.com', '2010-07-19', 3),
('Deide Costa', 'deide.costa@example.com', '2005-02-22', 2),
('Anúbis Costa', 'anubis.costa@example.com', '2012-09-30', 1),
('Seth Moraes', 'seth.moraes@example.com', '2007-05-14', 3),
('Tomas tubano', 'neftis.cardoso@example.com', '2010-12-09', 2),
('Hathor Ribeiro', 'hathor.ribeiro@example.com', '2011-08-03', 1),
('Tétis Albuquerque', 'tetis.albuquerque@example.com', '2007-04-27', 3),
('Sobek Martins', 'sobek.martins@example.com', '2006-06-16', 2),
('Sekhmet Duarte', 'sekhmet.duarte@example.com', '2010-10-25', 1),
('Anuket Lima', 'anuket.lima@example.com', '2012-02-11', 3),
('Khnum Ferreira', 'khnum.ferreira@example.com', '2006-07-08', 2),
('Ptah Nascimento', 'ptah.nascimento@example.com', '2010-03-30', 1),
('Maat Souza', 'maat.souza@example.com', '2007-09-04', 3),
('Toth Araújo', 'toth.araujo@example.com', '2006-01-22', 2),
('Montu Vasconcelos', 'montu.vasconcelos@example.com', '2011-12-18', 1),
('Serket Prado', 'serket.prado@example.com', '2007-06-29', 3),
('Wadjet Mendes', 'wadjet.mendes@example.com', '2006-05-07', 2),
('Mingau (^･ω･^)', 'mingau@example.com', '2010-03-12', 1),
('Totó Miaw (ฅ•.•ฅ)', 'toto.miaw@example.com', '2005-11-28', 2),
('Bolinhas (=^‥^=)', 'bolinhas@example.com', '2011-01-05', 1),
('Frajola (ฅ^•ﻌ•^ฅ)', 'frajola@example.com', '2006-07-19', 3),
('Mimi Chan (≚ᄌ≚)', 'mimi.chan@example.com', '2012-02-22', 2),
('Nino Ronrom (ᵔᴥᵔ)', 'nino.ronrom@example.com', '2010-09-30', 1),
('Pelúcia (ΦωΦ)', 'pelucia@example.com', '2007-05-14', 3),
('Churros (=ＴェＴ=)', 'churros@example.com', '2010-12-09', 2),
('Biscoito (>^_^<)', 'biscoito@example.com', '2011-08-03', 1),
('Pipoca (ฅ´ω`ฅ)', 'pipoca@example.com', '2007-04-27', 3),
('Sushi Cat (⌯˃̶᷄ ﹏ ˂̶᷄⌯)', 'sushi.cat@example.com', '2012-06-16', 2),
('Tigresa (ฅ=^･ω･^=ฅ)', 'tigresa@example.com', '2010-10-25', 1),
('Zigzag (๑ↀᆺↀ๑)', 'zigzag@example.com', '2011-02-11', 3),
('Pudim Mia (ฅ•ω•ฅ)', 'pudim.mia@example.com', '2006-07-08', 2),
('Rabisco (~˘▾˘)~', 'rabisco@example.com', '2010-03-30', 1),
('Luna Ronrona (✧◡✧)', 'luna.ronrona@example.com', '2007-09-04', 3),
('Mochi (ฅ´꒳`ฅ)', 'mochi@example.com', '2011-01-22', 2),
('Fofuxo (｡•̀ᴥ•́｡)', 'fofuxo@example.com', '2010-12-18', 1),
('ChocoCat (ฅ^•⩊•^ฅ)', 'chococat@example.com', '2007-06-29', 3),
('Pepê Miaw (๑• ₃ •๑)', 'pepe.miaw@example.com', '2012-05-07', 2);


INSERT INTO disciplinas (nome, carga_horaria) VALUES
('Matemática', 80),
('Português', 80),
('Ciências', 60),
('História', 60),
('Geografia', 60),
('Educação Física', 40);

INSERT INTO notas (aluno_id, disciplina_id, nota, bimestre) VALUES
(1, 1, 8.5, 1),
(2, 3, 7.2, 1),
(3, 2, 9.0, 1),
(4, 4, 6.8, 1),
(5, 1, 7.5, 1),
(6, 5, 8.9, 1),
(7, 2, 6.4, 1),
(8, 6, 9.3, 1),
(9, 3, 7.7, 1),
(10, 4, 5.9, 1),
(11, 1, 8.1, 2),
(12, 3, 6.5, 2),
(13, 2, 9.4, 2),
(14, 4, 7.8, 2),
(15, 6, 8.2, 2),
(16, 5, 6.9, 2),
(17, 2, 9.1, 2),
(18, 4, 7.0, 2),
(19, 3, 8.7, 2),
(20, 1, 6.3, 2),
(21, 5, 7.4, 3),
(22, 6, 8.8, 3),
(23, 3, 9.2, 3),
(24, 1, 6.7, 3),
(25, 4, 7.9, 3),
(26, 2, 8.6, 3),
(27, 5, 6.2, 3),
(28, 6, 9.5, 3),
(29, 3, 7.1, 3),
(30, 1, 8.4, 3),
(31, 4, 6.8, 4),
(32, 5, 7.3, 4),
(33, 6, 8.9, 4),
(34, 2, 9.0, 4),
(35, 3, 6.6, 4),
(36, 1, 7.8, 4),
(37, 4, 8.3, 4),
(38, 5, 6.7, 4),
(39, 6, 9.1, 4),
(40, 2, 8.0, 4);

show databases;

-- 1) Listar todos os alunos da turma 1ªA

select * from alunos where turma_id = 1; 

-- 2) Listar todos os alunos em ordem alfabética

select * from alunos order by nome ASC;

-- 3) Listar alunos nascidos após o ano de 2010 (coluna nome e data_nascimento)

select * from alunos where  data_nascimento >= '2010-01-01';

-- 4) Listar quantos alunos tem em cada turma (Count)

-- 5)  Mostrar a média de notas por disciplina (AVG)

SELECT
    SUM(CASE WHEN bimestre = 1 THEN nota ELSE 0 END) AS Media_Bimestre_1,
    SUM(CASE WHEN bimestre = 2 THEN nota ELSE 0 END) AS Media_Bimestre_2,
    SUM(CASE WHEN bimestre = 3 THEN nota ELSE 0 END) AS Media_Bimestre_3,
    SUM(CASE WHEN bimestre = 4 THEN nota ELSE 0 END) AS Media_Bimestre_4
FROM notas;

-- 6) – INNER JOIN Básico Alunos com suas turmas e professores

select * from alunos inner join professores on alunos.turma_id = professores.id;

-- 7) JOIN com múltiplas tabelas notas dos alunos com detalhes

SELECT
    A.nome AS Nome_Aluno,
    T.nome AS Turma,
    D.nome AS Disciplina,
    N.nota AS Nota,
    N.bimestre AS Bimestre
FROM
    alunos A
INNER JOIN
    notas N ON A.id = N.aluno_id       -- 1. Conecta o aluno com suas notas
INNER JOIN
    disciplinas D ON N.disciplina_id = D.id -- 2. Conecta a nota à disciplina
INNER JOIN
    turmas T ON A.turma_id = T.id      -- 3. Conecta o aluno à sua turma
ORDER BY
    Nome_Aluno, Disciplina, Bimestre;

-- – PROCEDURES Para calcular média do aluno

DELIMITER //

CREATE PROCEDURE CalcularMediaGeral (
    IN p_aluno_id INT,
    OUT p_media_geral DECIMAL(4, 2)
)
BEGIN
    -- Calcula a média aritmética de todas as notas do aluno
    SELECT
        AVG(nota)
    INTO
        p_media_geral
    FROM
        notas
    WHERE
        aluno_id = p_aluno_id;
END //

DELIMITER ;
SET @media_geral_do_aluno = 0.0;
CALL CalcularMediaGeral(2, @media_geral_do_aluno);
SELECT 'Média Geral do Aluno 2:' AS Teste, @media_geral_do_aluno AS Media_Geral_Calculada;

-- PROCEDURES
-- Para listar alunos por turma
 DELIMITER //

CREATE PROCEDURE ListarAlunosPorTurma (
    IN p_turma_id INT -- Parâmetro de entrada: o ID da turma desejada
)
BEGIN
    -- Seleciona os detalhes dos alunos, da turma e do professor
    SELECT
        A.nome AS Nome_do_Aluno,
        A.email AS Email_do_Aluno,
        T.nome AS Nome_da_Turma,
        P.nome AS Professor_Regente
    FROM
        alunos A
    INNER JOIN
        turmas T ON A.turma_id = T.id -- Conecta Alunos à Turma
    INNER JOIN
        professores P ON T.professor_id = P.id -- Conecta a Turma ao Professor
    WHERE
        A.turma_id = p_turma_id -- Filtra apenas os alunos da turma especificada
    ORDER BY
        A.nome;
END //

DELIMITER ;

CALL ListarAlunosPorTurma(1);

/*======================================================================================================================*/

-- Query para mostrar Aprovado se nota maior que 7.0 ou reprovado se nota menor
SELECT
    A.nome AS Nome_do_Aluno,
    D.nome AS Nome_da_Disciplina,
    AVG(N.nota) AS Media_Final,
    CASE
        WHEN AVG(N.nota) >= 7.0 THEN 'APROVADO'
        ELSE 'REPROVADO'
    END AS Status_Final
FROM
    alunos A
INNER JOIN
    notas N ON A.id = N.aluno_id
INNER JOIN
    disciplinas D ON N.disciplina_id = D.id
GROUP BY
    A.id, D.id, A.nome, D.nome
ORDER BY
    Nome_do_Aluno, Nome_da_Disciplina;

/*======================================================================================================================*/

-- Rankear os melhores alunos
SELECT
    A.nome AS Nome_do_Aluno,
    AVG(N.nota) AS Media_Geral,
    RANK() OVER (ORDER BY AVG(N.nota) DESC) AS Posicao_Ranking
FROM
    alunos A
INNER JOIN
    notas N ON A.id = N.aluno_id 
GROUP BY
    A.id, A.nome 
ORDER BY
    Media_Geral DESC;


