CREATE TABLE Usuario (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	email VARCHAR(255) NOT NULL,	-- added default type
	data_nascimento VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE Academia (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	endereco VARCHAR(255) NOT NULL,	-- added default type
	telefone VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE CheckIn (
	id VARCHAR(255) NOT NULL,	-- added default type
	data_hora VARCHAR(255) NOT NULL,	-- added default type
	latitude VARCHAR(255) NOT NULL,	-- added default type
	longitude VARCHAR(255) NOT NULL,	-- added default type
	usuario_id VARCHAR(255) NOT NULL,	-- added default type
	academia_id VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE PlanoTreino (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	data_criacao VARCHAR(255) NOT NULL,	-- added default type
	usuario_id VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE Exercicio (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	descricao VARCHAR(255) NOT NULL,	-- added default type
	video_url VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE ItemPlano (
	id VARCHAR(255) NOT NULL,	-- added default type
	series VARCHAR(255) NOT NULL,	-- added default type
	repeticoes VARCHAR(255) NOT NULL,	-- added default type
	plano_id VARCHAR(255) NOT NULL,	-- added default type
	exercicio_id VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE Dieta (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	data_inicio VARCHAR(255) NOT NULL,	-- added default type
	objetivo_calorias VARCHAR(255) NOT NULL,	-- added default type
	usuario_id VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE Refeicao (
	id VARCHAR(255) NOT NULL,	-- added default type
	tipo VARCHAR(255) NOT NULL,	-- added default type
	calorias VARCHAR(255) NOT NULL,	-- added default type
	dieta_id VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE Receita (
	id VARCHAR(255) NOT NULL,	-- added default type
	nome VARCHAR(255) NOT NULL,	-- added default type
	descricao VARCHAR(255) NOT NULL,	-- added default type
	ingredientes VARCHAR(255) NOT NULL,	-- added default type
	PRIMARY KEY (id)
);
CREATE TABLE RelUsuarioCheckIn (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Usuario (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES CheckIn (id) ON DELETE CASCADE
);
CREATE TABLE RelAcademiaCheckIn (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Academia (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES CheckIn (id) ON DELETE CASCADE
);
CREATE TABLE RelUsuarioPlanoTreino (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Usuario (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES PlanoTreino (id) ON DELETE CASCADE
);
CREATE TABLE RelPlanoTreinoItemPlano (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES PlanoTreino (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES ItemPlano (id) ON DELETE CASCADE
);
CREATE TABLE RelExercicioItemPlano (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Exercicio (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES ItemPlano (id) ON DELETE CASCADE
);
CREATE TABLE RelUsuarioDieta (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Usuario (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES Dieta (id) ON DELETE CASCADE
);
CREATE TABLE RelDietaRefeicao (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Dieta (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES Refeicao (id) ON DELETE CASCADE
);
CREATE TABLE RelRefeicaoReceita (
	id VARCHAR(255) NOT NULL,	-- added default type
	id2 VARCHAR(255) NOT NULL,	-- renamed from: id; added default type
	PRIMARY KEY (id, id2),
	FOREIGN KEY (id) REFERENCES Refeicao (id) ON DELETE CASCADE,
	FOREIGN KEY (id2) REFERENCES Receita (id) ON DELETE CASCADE
);
