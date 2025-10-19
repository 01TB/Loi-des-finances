
-- Données d'exemple pour le Budget des Citoyens (BDC) — Loi de Finances 2025
-- Généré le 19/10/2025

-- Période
INSERT INTO Periode (annee) VALUES (2025);

-- Tableau/Figure (exemples)
INSERT INTO TableauFigure (ref, titre, type, description, page_pdf) VALUES
	('Tableau 1.1', 'Recettes fiscales Intérieures', 'tableau', 'Recettes fiscales par source', 12),
	('Tableau 1.2', 'Recettes douanières', 'tableau', 'Recettes douanières par source', 13),
	('Tableau 1.3', 'Recettes non fiscales', 'tableau', 'Recettes non fiscales', 14),
	('Tableau 1.4', 'Composition des Dons', 'tableau', 'Dons reçus par l’État', 15),
	('Tableau 2.1', 'Ventilation des dépenses par rubrique', 'tableau', 'Dépenses par nature économique', 20),
	('Figure 1.1', 'Recettes totales de l’État', 'figure', 'Evolution des recettes totales', 10),
	('Figure 2.1', 'Variation de l’intérêt de la dette', 'figure', 'Evolution des intérêts de la dette', 22),
	('Figure 2.2', 'Évolution des investissements publics', 'figure', 'Investissements publics par source de financement', 25),
	('Figure 3.1', 'Prévision du déficit budgétaire', 'figure', 'Déficit budgétaire annuel', 30);

-- SourceRecette
INSERT INTO SourceRecette (code, libelle, categorie, description) VALUES
	('FISC01', 'Impôt sur le revenu', 'fiscale', 'Recettes fiscales sur les revenus'),
	('FISC02', 'TVA', 'fiscale', 'Taxe sur la valeur ajoutée'),
	('DOU01', 'Droits de douane', 'douaniere', 'Recettes douanières'),
	('NONF01', 'Amendes et pénalités', 'non-fiscale', 'Recettes non fiscales'),
	('DON01', 'Aide internationale', 'don', 'Dons reçus de partenaires internationaux');

-- TypeDepense
INSERT INTO TypeDepense (code, libelle, nature_economique, description) VALUES
	('FONC', 'Fonctionnement', 'fonctionnement', 'Dépenses de fonctionnement'),
	('INV', 'Investissement', 'investissement', 'Dépenses d’investissement'),
	('INT', 'Intérêts de la dette', 'interets', 'Intérêts sur la dette'),
	('SOLDE', 'Soldes et pensions', 'solde_pensions', 'Dépenses de soldes et pensions');

-- PosteBudgetaire
INSERT INTO PosteBudgetaire (code_poste, libelle_poste, type_depense_id, autorise_pour_annee) VALUES
	('PB01', 'Administration centrale', 1, TRUE),
	('PB02', 'Éducation', 1, TRUE),
	('PB03', 'Santé', 1, TRUE),
	('PB04', 'Investissements publics', 2, TRUE),
	('PB05', 'Intérêts de la dette', 3, TRUE),
	('PB06', 'Soldes et pensions', 4, TRUE);

-- Administration
INSERT INTO Administration (code_admin, nom, niveau) VALUES
	('ADM01', 'Ministère des Finances', 'central'),
	('ADM02', 'Ministère de l’Éducation', 'central'),
	('ADM03', 'Ministère de la Santé', 'central');

-- Recette
INSERT INTO Recette (periode_id, source_recette_id, montant, unite, precision, commentaire, tableau_figure_id) VALUES
	(1, 1, 1500000000, 'MGA', 'estimé', 'Recette fiscale sur le revenu', 1),
	(1, 2, 2000000000, 'MGA', 'estimé', 'Recette TVA', 1),
	(1, 3, 500000000, 'MGA', 'estimé', 'Recette douanière', 2),
	(1, 4, 100000000, 'MGA', 'estimé', 'Amendes et pénalités', 3),
	(1, 5, 300000000, 'MGA', 'estimé', 'Aide internationale', 4);

-- Depense
INSERT INTO Depense (periode_id, poste_id, montant, unite, nature, admin_id, tableau_figure_id, commentaire) VALUES
	(1, 1, 1200000000, 'MGA', 'fonctionnement', 1, 5, 'Fonctionnement administration centrale'),
	(1, 2, 800000000, 'MGA', 'fonctionnement', 2, 5, 'Fonctionnement éducation'),
	(1, 3, 600000000, 'MGA', 'fonctionnement', 3, 5, 'Fonctionnement santé'),
	(1, 4, 900000000, 'MGA', 'investissement', 1, 6, 'Investissements publics'),
	(1, 5, 200000000, 'MGA', 'interet', 1, 7, 'Intérêts de la dette'),
	(1, 6, 150000000, 'MGA', 'solde_pension', 1, 8, 'Soldes et pensions');

-- Dette
INSERT INTO Dette (periode_id, type_dette, montant_interet, montant_principal, unite, tableau_figure_id, commentaire) VALUES
	(1, 'externe', 200000000, 1000000000, 'MGA', 7, 'Dette extérieure'),
	(1, 'interne', 100000000, 500000000, 'MGA', 7, 'Dette intérieure');

-- Don
INSERT INTO Don (periode_id, donneur, montant, affectation, type_aide, unite, tableau_figure_id) VALUES
	(1, 'Union Européenne', 150000000, 'Santé', 'Subvention', 'MGA', 4),
	(1, 'Banque Mondiale', 100000000, 'Éducation', 'Prêt', 'MGA', 4);

-- SoldePension
INSERT INTO SoldePension (periode_id, categorie_personnel, montant, nombre_beneficiaires, tableau_figure_id) VALUES
	(1, 'Fonctionnaires', 100000000, 5000, 8),
	(1, 'Retraités', 50000000, 2000, 8);

-- SourceFinancement
INSERT INTO SourceFinancement (code, libelle, type) VALUES
	('BUDG', 'Budget général', 'budget'),
	('EMPR', 'Emprunt extérieur', 'emprunt'),
	('DON', 'Don international', 'don');

-- Investissement
INSERT INTO Investissement (periode_id, projet, montant, source_financement_id, unite, tableau_figure_id, commentaire) VALUES
	(1, 'Construction d’hôpitaux', 400000000, 1, 'MGA', 6, 'Projet santé'),
	(1, 'Réhabilitation écoles', 300000000, 2, 'MGA', 6, 'Projet éducation'),
	(1, 'Infrastructure routière', 200000000, 3, 'MGA', 6, 'Projet transport');


-- Recettes fiscales intérieures détaillées
INSERT INTO Recette (periode_id, source_recette_id, montant, unite, precision, commentaire, tableau_figure_id) VALUES
	(1, 1, 1550000000, 'MGA', 'réalisé', 'Impôt sur le revenu', 1),
	(1, 2, 2100000000, 'MGA', 'réalisé', 'TVA', 1),
	(1, 1, 1500000000, 'MGA', 'estimé', 'Impôt sur le revenu', 1),
	(1, 2, 2000000000, 'MGA', 'estimé', 'TVA', 1);

-- Recettes douanières détaillées
INSERT INTO Recette (periode_id, source_recette_id, montant, unite, precision, commentaire, tableau_figure_id) VALUES
	(1, 3, 520000000, 'MGA', 'réalisé', 'Droits de douane', 2),
	(1, 3, 500000000, 'MGA', 'estimé', 'Droits de douane', 2);

-- Recettes non fiscales détaillées
INSERT INTO Recette (periode_id, source_recette_id, montant, unite, precision, commentaire, tableau_figure_id) VALUES
	(1, 4, 120000000, 'MGA', 'réalisé', 'Amendes et pénalités', 3),
	(1, 4, 100000000, 'MGA', 'estimé', 'Amendes et pénalités', 3);

-- Dons détaillés
INSERT INTO Don (periode_id, donneur, montant, affectation, type_aide, unite, tableau_figure_id) VALUES
	(1, 'UNICEF', 50000000, 'Éducation', 'Subvention', 'MGA', 4),
	(1, 'AFD', 80000000, 'Santé', 'Prêt', 'MGA', 4),
	(1, 'Union Européenne', 150000000, 'Santé', 'Subvention', 'MGA', 4),
	(1, 'Banque Mondiale', 100000000, 'Éducation', 'Prêt', 'MGA', 4);

-- Ventilation des dépenses par rubrique
INSERT INTO Depense (periode_id, poste_id, montant, unite, nature, admin_id, tableau_figure_id, commentaire) VALUES
	(1, 1, 1250000000, 'MGA', 'fonctionnement', 1, 5, 'Administration centrale'),
	(1, 2, 850000000, 'MGA', 'fonctionnement', 2, 5, 'Éducation'),
	(1, 3, 650000000, 'MGA', 'fonctionnement', 3, 5, 'Santé'),
	(1, 4, 950000000, 'MGA', 'investissement', 1, 6, 'Investissements publics'),
	(1, 5, 220000000, 'MGA', 'interet', 1, 7, 'Intérêts de la dette'),
	(1, 6, 160000000, 'MGA', 'solde_pension', 1, 8, 'Soldes et pensions');

-- POSTES BUDGÉTAIRES AUTORISÉES POUR 2025
INSERT INTO PosteBudgetaire (code_poste, libelle_poste, type_depense_id, autorise_pour_annee) VALUES
	('PB07', 'Développement rural', 2, TRUE),
	('PB08', 'Justice', 1, TRUE);

-- Dépenses de fonctionnement des administrations publiques (hors solde)
INSERT INTO Depense (periode_id, poste_id, montant, unite, nature, admin_id, tableau_figure_id, commentaire) VALUES
	(1, 1, 1300000000, 'MGA', 'fonctionnement', 1, 5, 'Fonctionnement administration centrale'),
	(1, 2, 900000000, 'MGA', 'fonctionnement', 2, 5, 'Fonctionnement éducation'),
	(1, 3, 700000000, 'MGA', 'fonctionnement', 3, 5, 'Fonctionnement santé'),
	(1, 8, 300000000, 'MGA', 'fonctionnement', 1, 5, 'Fonctionnement justice');

-- Dépenses d’investissement
INSERT INTO Investissement (periode_id, projet, montant, source_financement_id, unite, tableau_figure_id, commentaire) VALUES
	(1, 'Construction d’hôpitaux', 420000000, 1, 'MGA', 6, 'Projet santé'),
	(1, 'Réhabilitation écoles', 320000000, 2, 'MGA', 6, 'Projet éducation'),
	(1, 'Infrastructure routière', 250000000, 3, 'MGA', 6, 'Projet transport'),
	(1, 'Développement rural', 180000000, 1, 'MGA', 6, 'Projet rural');

-- Répartition du budget par rattachement administratif
INSERT INTO Administration (code_admin, nom, niveau) VALUES
	('ADM04', 'Ministère de la Justice', 'central'),
	('ADM05', 'Ministère du Développement rural', 'central');

-- Dépenses par administration
INSERT INTO Depense (periode_id, poste_id, montant, unite, nature, admin_id, tableau_figure_id, commentaire) VALUES
	(1, 7, 180000000, 'MGA', 'investissement', 5, 6, 'Développement rural'),
	(1, 8, 300000000, 'MGA', 'fonctionnement', 4, 5, 'Justice');

-- Dette détaillée
INSERT INTO Dette (periode_id, type_dette, montant_interet, montant_principal, unite, tableau_figure_id, commentaire) VALUES
	(1, 'externe', 220000000, 1100000000, 'MGA', 7, 'Dette extérieure'),
	(1, 'interne', 120000000, 600000000, 'MGA', 7, 'Dette intérieure');

-- Soldes et pensions détaillées
INSERT INTO SoldePension (periode_id, categorie_personnel, montant, nombre_beneficiaires, tableau_figure_id) VALUES
	(1, 'Fonctionnaires', 110000000, 5200, 8),
	(1, 'Retraités', 60000000, 2100, 8);

-- Prévision du déficit budgétaire
-- (calculé à partir des recettes et dépenses, mais on peut ajouter une table ou vue si besoin)

-- Fin des données exhaustives
