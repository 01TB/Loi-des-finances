
-- Schéma PostgreSQL du Budget des Citoyens (BDC) — Loi de Finances 2025
-- Généré le 19/10/2025

-- Enumérations
CREATE TYPE categorie_recette AS ENUM ('fiscale', 'douaniere', 'non-fiscale', 'don');
CREATE TYPE type_depense_enum AS ENUM ('fonctionnement', 'investissement', 'interets', 'solde_pensions');
CREATE TYPE niveau_admin AS ENUM ('central', 'deconcentre', 'region', 'autre');
CREATE TYPE type_source_fin AS ENUM ('budget', 'emprunt', 'don', 'autre');
CREATE TYPE type_table_figure AS ENUM ('tableau', 'figure');

-- Table Periode
CREATE TABLE Periode (
	periode_id SERIAL PRIMARY KEY,
	annee INT UNIQUE NOT NULL
);

-- Table SourceRecette
CREATE TABLE SourceRecette (
	source_recette_id SERIAL PRIMARY KEY,
	code VARCHAR(20) NOT NULL,
	libelle VARCHAR(100) NOT NULL,
	categorie categorie_recette NOT NULL,
	description TEXT
);

-- Table TableauFigure
CREATE TABLE TableauFigure (
	id_table_figure SERIAL PRIMARY KEY,
	ref VARCHAR(20) NOT NULL,
	titre VARCHAR(200) NOT NULL,
	type type_table_figure NOT NULL,
	description TEXT,
	page_pdf INT
);

-- Table Recette
CREATE TABLE Recette (
	recette_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	source_recette_id INT NOT NULL REFERENCES SourceRecette(source_recette_id),
	montant DECIMAL(18,2) NOT NULL,
	unite VARCHAR(10) NOT NULL,
	precision VARCHAR(20),
	commentaire TEXT,
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure)
);

-- Table TypeDepense
CREATE TABLE TypeDepense (
	type_depense_id SERIAL PRIMARY KEY,
	code VARCHAR(20) NOT NULL,
	libelle VARCHAR(100) NOT NULL,
	nature_economique type_depense_enum NOT NULL,
	description TEXT
);

-- Table PosteBudgetaire
CREATE TABLE PosteBudgetaire (
	poste_id SERIAL PRIMARY KEY,
	code_poste VARCHAR(20) NOT NULL,
	libelle_poste VARCHAR(100) NOT NULL,
	type_depense_id INT NOT NULL REFERENCES TypeDepense(type_depense_id),
	autorise_pour_annee BOOLEAN DEFAULT FALSE
);

-- Table Administration
CREATE TABLE Administration (
	id_admin SERIAL PRIMARY KEY,
	code_admin VARCHAR(20) NOT NULL,
	nom VARCHAR(100) NOT NULL,
	niveau niveau_admin NOT NULL
);

-- Table Depense
CREATE TABLE Depense (
	depense_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	poste_id INT NOT NULL REFERENCES PosteBudgetaire(poste_id),
	montant DECIMAL(18,2) NOT NULL,
	unite VARCHAR(10) NOT NULL,
	nature VARCHAR(30) NOT NULL,
	admin_id INT REFERENCES Administration(id_admin),
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure),
	commentaire TEXT
);

-- Table Dette
CREATE TABLE Dette (
	dette_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	type_dette VARCHAR(20) NOT NULL,
	montant_interet DECIMAL(18,2) NOT NULL,
	montant_principal DECIMAL(18,2) NOT NULL,
	unite VARCHAR(10) NOT NULL,
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure),
	commentaire TEXT
);

-- Table Don
CREATE TABLE Don (
	don_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	donneur VARCHAR(100) NOT NULL,
	montant DECIMAL(18,2) NOT NULL,
	affectation VARCHAR(100),
	type_aide VARCHAR(50),
	unite VARCHAR(10) NOT NULL,
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure)
);

-- Table SoldePension
CREATE TABLE SoldePension (
	solde_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	categorie_personnel VARCHAR(100) NOT NULL,
	montant DECIMAL(18,2) NOT NULL,
	nombre_beneficiaires INT,
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure)
);

-- Table SourceFinancement
CREATE TABLE SourceFinancement (
	id_fin SERIAL PRIMARY KEY,
	code VARCHAR(20) NOT NULL,
	libelle VARCHAR(100) NOT NULL,
	type type_source_fin NOT NULL
);

-- Table Investissement
CREATE TABLE Investissement (
	invest_id SERIAL PRIMARY KEY,
	periode_id INT NOT NULL REFERENCES Periode(periode_id),
	projet VARCHAR(200) NOT NULL,
	montant DECIMAL(18,2) NOT NULL,
	source_financement_id INT NOT NULL REFERENCES SourceFinancement(id_fin),
	unite VARCHAR(10) NOT NULL,
	tableau_figure_id INT REFERENCES TableauFigure(id_table_figure),
	commentaire TEXT
);

-- Indexation
CREATE INDEX idx_recette_periode ON Recette(periode_id);
CREATE INDEX idx_recette_source_periode ON Recette(source_recette_id, periode_id);
CREATE INDEX idx_depense_periode ON Depense(periode_id);
CREATE INDEX idx_depense_poste_periode ON Depense(poste_id, periode_id);
CREATE INDEX idx_depense_admin_periode ON Depense(admin_id, periode_id);
CREATE INDEX idx_investissement_periode ON Investissement(periode_id);
CREATE INDEX idx_dette_periode ON Dette(periode_id);
CREATE INDEX idx_don_periode ON Don(periode_id);

-- Fin du schéma PostgreSQL
