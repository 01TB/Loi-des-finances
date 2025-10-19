CREATE TABLE periode(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   annee_debut INTEGER NOT NULL,
   annee_fin INTEGER NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(annee_debut),
   UNIQUE(annee_fin)
);

CREATE TABLE nature_impot_interieure(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE recette_fiscale_interieure(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_impot_interieure INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_nature_impot_interieure) REFERENCES nature_impot_interieure(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE nature_droits_taxes_douane(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE recette_douaniere(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_droits_taxes_douane INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_droits_taxes_douane) REFERENCES nature_droits_taxes_douane(id)
);

CREATE TABLE nature_recette_non_fiscale(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE recette_non_fiscale(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_recette_non_fiscale INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_recette_non_fiscale) REFERENCES nature_recette_non_fiscale(id)
);

CREATE TABLE nature_don(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE don(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_don INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_don) REFERENCES nature_don(id)
);

CREATE TABLE nature_interet_dette(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE interet_dette(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_interet_dette INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_nature_interet_dette) REFERENCES nature_interet_dette(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE nature_depense_solde(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE depense_solde(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_depense_solde INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_nature_depense_solde) REFERENCES nature_depense_solde(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE institution(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   titre VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(titre)
);

CREATE TABLE poste_budgetaire_autorisee(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_institution INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_institution) REFERENCES institution(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE nature_depense_fonctionnement(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE depense_fonctionnement(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_depense_fonctionnement INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_depense_fonctionnement) REFERENCES nature_depense_fonctionnement(id)
);

CREATE TABLE nature_investissement_public(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE nature_autre_rubrique_depense(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   libelle VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(libelle)
);

CREATE TABLE autre_rubrique_depense(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)  ,
   id_nature_autre_rubrique_depense INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_autre_rubrique_depense) REFERENCES nature_autre_rubrique_depense(id)
);

CREATE TABLE budget_institution_rattachement_administratif(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_institution INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_institution) REFERENCES institution(id)
);

CREATE TABLE organe_constitutionnel(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   titre VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(titre)
);

CREATE TABLE budget_organe_constitutionnel_rattachement_administratif(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_organe_constitutionnel INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_organe_constitutionnel) REFERENCES organe_constitutionnel(id)
);

CREATE TABLE autre_institution(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   titre VARCHAR(150)  NOT NULL,
   PRIMARY KEY(id),
   UNIQUE(titre)
);

CREATE TABLE financement_interieur(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE financement_exterieur(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id)
);

CREATE TABLE investissement_public(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_nature_investissement_public INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_nature_investissement_public) REFERENCES nature_investissement_public(id)
);

CREATE TABLE budget_autre_rattachement_administratif(
   id INTEGER GENERATED ALWAYS AS IDENTITY,
   valeur NUMERIC(6,2)   NOT NULL,
   id_autre_institution INTEGER NOT NULL,
   id_periode INTEGER NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_periode) REFERENCES periode(id),
   FOREIGN KEY(id_autre_institution) REFERENCES autre_institution(id)
);
