-- Insert période 
INSERT INTO periode (annee_debut,annee_fin) VALUES
(2023,2024),
(2024,2025)
ON CONFLICT DO NOTHING;

-- Insert nature_impot_interieure
INSERT INTO nature_impot_interieure (libelle) VALUES
('Impôt sur les revenus'),
('Impôt sur les revenus Salariaux et Assimilés'),
('Impôt sur les revenus des Capitaux Mobiliers'),
('Impôt sur les plus-values Immobilières'),
('Impôt Synthétique'),
('Droit d''Enregistrement'),
('Taxe sur la Valeur Ajoutée (y compris Taxe sur les transactions Mobiles)'),
('Impôt sur les marchés Publics'),
('Droit d''Accise (y compris Taxe environnementale)'),
('Taxes sur les Assurances'),
('Droit de Timbres'),
('Autres')
ON CONFLICT DO NOTHING;

-- Insert recette_fiscale_interieure
INSERT INTO recette_fiscale_interieure (valeur, id_nature_impot_interieure, id_periode) VALUES
-- 2024 (id_periode = 1)
(1179.0, 1, 1),
(848.2, 2, 1),
(78.2, 3, 1),
(14.0, 4, 1),
(132.3, 5, 1),
(49.0, 6, 1),
(1400.2, 7, 1),
(148.7, 8, 1),
(754.1, 9, 1),
(17.2, 10, 1),
(14.1, 11, 1),
(1.5, 12, 1),
-- 2025 (id_periode = 2)
(1411.4, 1, 2),
(889.9, 2, 2),
(93.7, 3, 2),
(18.3, 4, 2),
(164.7, 5, 2),
(62.8, 6, 2),
(1742.2, 7, 2),
(250.0, 8, 2),
(955.4, 9, 2),
(20.6, 10, 2),
(16.8, 11, 2),
(2.7, 12, 2);

-- Insert nature_droits_taxes_douane
INSERT INTO nature_droits_taxes_douane (libelle) VALUES
('Droit de douane'),
('TVA à l''importation'),
('Taxe sur les produits pétroliers'),
('TVA sur les produits pétroliers'),
('Droit de navigation'),
('Autres')
ON CONFLICT DO NOTHING;

-- Insert recette_douaniere
INSERT INTO recette_douaniere (valeur, id_nature_droits_taxes_douane, id_periode) VALUES
-- 2024 (id_periode = 1)
(847.5, 1, 1),
(1768.3, 2, 1),
(308.0, 3, 1),
(842.8, 4, 1),
(1.2, 5, 1),
(0.2, 6, 1),
-- 2025 (id_periode = 2)
(1010.7, 1, 2),
(2148.3, 2, 2),
(326.0, 3, 2),
(879.0, 4, 2),
(1.9, 5, 2),
(0.1, 6, 2);

-- Insert nature_recette_non_fiscale
INSERT INTO nature_recette_non_fiscale (libelle) VALUES
('Dividendes'),
('Productions immobilières financières'),
('Redevance de pêche'),
('Redevance minières'),
('Autres redevance'),
('Produits des activités et autres'),
('Autres')
ON CONFLICT DO NOTHING;

-- Insert recette_non_fiscale
INSERT INTO recette_non_fiscale (valeur, id_nature_recette_non_fiscale, id_periode) VALUES
-- 2024 (id_periode = 1)
(89.5, 1, 1),
(0.5, 2, 1),
(10.0, 3, 1),
(84.9, 4, 1),
(9.7, 5, 1),
(11.1, 6, 1),
(140.1, 7, 1),
-- 2025 (id_periode = 2)
(120.2, 1, 2),
(2.1, 2, 2),
(15.0, 3, 2),
(331.2, 4, 2),
(10.0, 5, 2),
(8.1, 6, 2),
(5.2, 7, 2);

-- Insert nature_don
INSERT INTO nature_don (libelle) VALUES
('Courants'),
('Capital')
ON CONFLICT DO NOTHING;

-- Insert don
INSERT INTO don (valeur, id_nature_don, id_periode) VALUES
-- 2024 (id_periode = 1)
(0.3, 1, 1),
(1086.0, 2, 1),
-- 2025 (id_periode = 2)
(31.0, 1, 2),
(2445.6, 2, 2);

-- Insert nature_interet_dette
INSERT INTO nature_interet_dette (libelle) VALUES
('Intérêts de la dette extérieure'),
('Intérêts de la dette intérieure')
ON CONFLICT DO NOTHING;

-- Insert interet_dette
INSERT INTO interet_dette (valeur, id_nature_interet_dette, id_periode) VALUES
-- 2024 (id_periode = 1)
(287.60, 1, 1),
(384.40, 2, 1),
-- 2025 (id_periode = 2)
(314.20, 1, 2),
(442.20, 2, 2);

-- Insert nature_depense_solde
INSERT INTO nature_depense_solde (libelle) VALUES
('Dépenses courantes de solde (hors indemnités)')
ON CONFLICT DO NOTHING;

-- Insert depense_solde
INSERT INTO depense_solde (valeur, id_nature_depense_solde, id_periode) VALUES
-- 2024 (id_periode = 1)
(3814.5, 1, 1),
-- 2025 (id_periode = 2)
(3846.4, 1, 2);

-- Insert institution
INSERT INTO institution (titre) VALUES
('Ministère des Forces Armées'), -- 1
('Ministère de la Santé Publique'), -- 2
('Ministère de la Sécurité Publique'), -- 3
('Ministère de l''Éducation Nationale'), -- 4
('Ministère de l''Enseignement Technique et de la Formation Professionnelle'), -- 5
('Ministère de l''Enseignement Supérieur et de la Recherche Scientifique'), -- 6
('Ministère délégué en charge de la Gendarmerie Nationale') -- 7
ON CONFLICT DO NOTHING;

-- Insert poste_budgetaire_autorisee (pour 2025 seulement)
INSERT INTO poste_budgetaire_autorisee (valeur, id_institution, id_periode) VALUES
(1000, 1, 2),
(300, 2, 2),
(1000, 3, 2),
(3000, 4, 2),
(250, 5, 2),
(100, 6, 2),
(1000, 7, 2);

-- Insert nature_depense_fonctionnement
INSERT INTO nature_depense_fonctionnement (libelle) VALUES
('Indemnités'),
('Biens et Services'),
('Transfets')
ON CONFLICT DO NOTHING;

-- Insert depense_fonctionnement
INSERT INTO depense_fonctionnement (valeur, id_nature_depense_fonctionnement, id_periode) VALUES
-- 2024 (id_periode = 1)
(244.8, 1, 1),
(573.2, 2, 1),
(2251.0, 3, 1),
-- 2025 (id_periode = 2)
(244.8, 1, 2),
(504.7, 2, 2),
(1554.8, 3, 2);

-- Insert nature_investissement_public
INSERT INTO nature_investissement_public (libelle) VALUES
('PIP sur financement interne'),
('PIP sur financement externe')
ON CONFLICT DO NOTHING;

-- Insert investissement_public
INSERT INTO investissement_public (valeur, id_nature_investissement_public, id_periode) VALUES
-- 2024 (id_periode = 1)
(1262.5, 1, 1),
(3574.3, 2, 1),
-- 2025 (id_periode = 2)
(2377.3, 1, 2),
(6159.9, 2, 2);

-- Insert nature_autre_rubrique_depense
INSERT INTO nature_autre_rubrique_depense (libelle) VALUES
('Autres opérations nettes du trésor')
ON CONFLICT DO NOTHING;

-- Insert autre_rubrique_depense
INSERT INTO autre_rubrique_depense (valeur, id_nature_autre_rubrique_depense, id_periode) VALUES
-- 2024 (id_periode = 1)
(390.2, 1, 1),
-- 2025 (id_periode = 2)
(860.6, 1, 2);

-- Insert institution pour rattachement administratif
INSERT INTO institution (titre) VALUES
('Présidence de la République'), -- 8
('Sénat'), -- 9
('Assemblée Nationale'), -- 10
('Haute Cour Constitutionnelle'), -- 11
('Primature'), -- 12
('Conseil du Fampiavanana Malagasy'), -- 13
('Commission Électorale Nationale Indépendante'), -- 14
('Ministère de la Défense Nationale'), -- 15
('Ministère des Affaires Étrangères'), --16
('Ministère de la Justice'), -- 17
('Ministère de l''Intérieur'), -- 18
('Ministère de l''Économie et des Finances'), -- 19
('Ministère de l''Industrialisation et du Commerce'), -- 20
('Ministère de la Décentralisation et de l''Aménagement du Territoire'), -- 21
('Ministère du Travail, de l''Emploi et de la Fonction Publique'), -- 22
('Ministère du Tourisme et de l''Artisanat'), -- 23
('Ministère de l''Environnement et du Développement Durable'), -- 24
('Ministère des Transports et de la Météorologie'), -- 25
('Ministère de la Communication et de la Culture'), -- 26
('Ministère des Travaux Publics'), -- 27
('Ministère des Mines et des Ressources Stratégiques'), -- 28
('Ministère de l''Énergie et des Hydrocarbures'), -- 29
('Ministère de l''Eau, de l''Assainissement et de l''Hygiène'), -- 30
('Ministère de l''Agriculture et de l''Élevage'), -- 31
('Ministère de la Pêche et de l''Économie Bleue'), -- 32
('Ministère de l''Artisanat et des Métiers'), -- 33
('Ministère du Développement Numérique, des Postes et des Télécommunications'), -- 34
('Ministère de la Population et des Solidarités'), -- 35
('Ministère de la Jeunesse et des Sports'), -- 36
('Secrétariat d''État en charge des Nouvelles Villes et de l''Habitat'), -- 37
('Ministère délégué chargé de la Gendarmerie'), -- 38
('Secrétariat d''État en charge de la Souveraineté Alimentaire') -- 39
ON CONFLICT DO NOTHING;

-- Insert budget_institution_rattachement_administratif
INSERT INTO budget_institution_rattachement_administratif (valeur, id_institution, id_periode) VALUES
-- 2024 (id_periode = 1)
(177.1, 8, 1),   -- Présidence
(22.1, 9, 1),    -- Sénat
(87.4, 10, 1),   -- Assemblée Nationale
(11.9, 11, 1),   -- Haute Cour Constitutionnelle
(278.3, 12, 1),  -- Primature
(6.7, 13, 1),    -- Conseil du Fampiavanana
(113.3, 14, 1),  -- CENI
(557.0, 15, 1),  -- Défense
(99.2, 16, 1),   -- Affaires Étrangères
(199.6, 17, 1),  -- Justice
(150.2, 18, 1),  -- Intérieur
(2848.0, 19, 1), -- Économie et Finances
(228.3, 3, 1),  -- Sécurité Publique
(113.2, 20, 1),  -- Industrialisation et Commerce
(356.8, 21, 1),  -- Décentralisation
(31.8, 22, 1),   -- Travail
(19.2, 23, 1),   -- Tourisme
(284.2, 6, 1),  -- Enseignement Supérieur
(94.4, 24, 1),   -- Environnement
(1532.8, 4, 1), -- Éducation Nationale
(63.9, 25, 1),   -- Transports
(716.6, 2, 1),  -- Santé
(38.4, 26, 1),   -- Communication
(1217.3, 27, 1), -- Travaux Publics
(18.3, 28, 1),   -- Mines
(407.9, 29, 1),  -- Énergie
(306.1, 30, 1),  -- Eau
(469.8, 31, 1),  -- Agriculture
(29.9, 32, 1),   -- Pêche
(103.7, 5, 1),  -- Enseignement Technique
(2.5, 33, 1),    -- Artisanat
(8.4, 34, 1),    -- Développement Numérique
(99.1, 35, 1),   -- Population
(40.5, 36, 1),   -- Jeunesse et Sports
(247.1, 37, 1),  -- Nouvelles Villes
(414.8, 38, 1),  -- Gendarmerie
(127.3, 39, 1),  -- Souveraineté Alimentaire
-- 2025 (id_periode = 2)
(224.7, 8, 2),   -- Présidence
(21.3, 9, 2),    -- Sénat
(85.9, 10, 2),   -- Assemblée Nationale
(9.3, 11, 2),    -- Haute Cour Constitutionnelle
(339.9, 12, 2),  -- Primature
(6.3, 13, 2),    -- Conseil du Fampiavanana
(16.4, 14, 2),   -- CENI
(543.2, 15, 2),  -- Défense
(104.7, 16, 2),  -- Affaires Étrangères
(219.8, 17, 2),  -- Justice
(134.7, 18, 2),  -- Intérieur
(2332.7, 19, 2), -- Économie et Finances
(229.2, 3, 2),  -- Sécurité Publique
(119.6, 20, 2),  -- Industrialisation et Commerce
(568.1, 21, 2),  -- Décentralisation
(33.7, 22, 2),   -- Travail
(43.9, 23, 2),   -- Tourisme
(285.6, 6, 2),  -- Enseignement Supérieur
(188.8, 24, 2),  -- Environnement
(1562.0, 4, 2), -- Éducation Nationale
(216.3, 25, 2),  -- Transports
(921.0, 2, 2),  -- Santé
(32.1, 26, 2),   -- Communication
(2327.5, 27, 2), -- Travaux Publics
(18.1, 28, 2),   -- Mines
(1332.0, 29, 2), -- Énergie
(600.2, 30, 2),  -- Eau
(795.5, 31, 2),  -- Agriculture
(28.8, 32, 2),   -- Pêche
(94.8, 5, 2),   -- Enseignement Technique
(8.8, 34, 2),    -- Développement Numérique
(193.4, 35, 2),  -- Population
(58.1, 36, 2),   -- Jeunesse et Sports
(138.8, 37, 2),  -- Nouvelles Villes
(446.4, 38, 2),  -- Gendarmerie
(127.3, 39, 2);  -- Souveraineté Alimentaire

-- Insert organe_constitutionnel
INSERT INTO organe_constitutionnel (titre) VALUES
('Haut Conseil pour la Défense de la Démocratie et de l''État de Droit (HCDDED)'),
('Commission Nationale Indépendante des Droits de l''Homme (CNIDH)'),
('Haute Cour de Justice')
ON CONFLICT DO NOTHING;

-- Insert budget_organe_constitutionnel_rattachement_administratif
INSERT INTO budget_organe_constitutionnel_rattachement_administratif (valeur, id_organe_constitutionnel, id_periode) VALUES
-- 2024 (id_periode = 1)
(2.1, 1, 1),
(2.1, 2, 1),
-- 2025 (id_periode = 2)
(2.0, 1, 2),
(2.0, 2, 2);

-- Insert organe_constitutionnel
INSERT INTO autre_institution (titre) VALUES
('Haute Cour de Justice')
ON CONFLICT DO NOTHING;

-- Insert budget_autre_rattachement_administratif
INSERT INTO budget_autre_rattachement_administratif (valeur, id_autre_institution, id_periode) VALUES
-- 2024 (id_periode = 1)
(3.7, 1, 1),
-- 2025 (id_periode = 2)
(3.5, 1, 2);

-- Insert financement_interieur
INSERT INTO financement_interieur (valeur, id_periode) VALUES
(494.6, 2); -- 2025 seulement

-- Insert financement_exterieur
INSERT INTO financement_exterieur (valeur, id_periode) VALUES
(3147.6, 2); -- 2025 seulement