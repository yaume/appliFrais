-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           10.2.3-MariaDB-log - mariadb.org binary distribution
-- SE du serveur:                Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Export de données de la table gsb.etat : ~4 rows (environ)
DELETE FROM `etat`;
/*!40000 ALTER TABLE `etat` DISABLE KEYS */;
INSERT INTO `etat` (`id`, `libelle`) VALUES
	('CL', 'Saisie clôturée'),
	('CR', 'Fiche créée, saisie en cours'),
	('RB', 'Remboursée'),
	('VA', 'Validée et mise en paiement');
/*!40000 ALTER TABLE `etat` ENABLE KEYS */;

-- Export de données de la table gsb.fichefrais : ~0 rows (environ)
DELETE FROM `fichefrais`;
/*!40000 ALTER TABLE `fichefrais` DISABLE KEYS */;
INSERT INTO `fichefrais` (`idUtilisateur`, `mois`, `nbJustificatifs`, `montantValide`, `dateModif`, `idEtat`) VALUES
	('a17', '201803', 0, NULL, '2018-02-28', 'CR');
/*!40000 ALTER TABLE `fichefrais` ENABLE KEYS */;

-- Export de données de la table gsb.fraisforfait : ~4 rows (environ)
DELETE FROM `fraisforfait`;
/*!40000 ALTER TABLE `fraisforfait` DISABLE KEYS */;
INSERT INTO `fraisforfait` (`id`, `libelle`, `montant`) VALUES
	('ETP', 'Forfait Etape', 110.00),
	('KM', 'Frais Kilométrique', 0.62),
	('NUI', 'Nuitée Hôtel', 80.00),
	('REP', 'Repas Restaurant', 25.00);
/*!40000 ALTER TABLE `fraisforfait` ENABLE KEYS */;

-- Export de données de la table gsb.lignefraisforfait : ~4 rows (environ)
DELETE FROM `lignefraisforfait`;
/*!40000 ALTER TABLE `lignefraisforfait` DISABLE KEYS */;
INSERT INTO `lignefraisforfait` (`idUtilisateur`, `mois`, `idFraisForfait`, `quantite`) VALUES
	('a17', '201803', 'ETP', 0),
	('a17', '201803', 'KM', 0),
	('a17', '201803', 'NUI', 0),
	('a17', '201803', 'REP', 0);
/*!40000 ALTER TABLE `lignefraisforfait` ENABLE KEYS */;

-- Export de données de la table gsb.lignefraishorsforfait : ~0 rows (environ)
DELETE FROM `lignefraishorsforfait`;
/*!40000 ALTER TABLE `lignefraishorsforfait` DISABLE KEYS */;
/*!40000 ALTER TABLE `lignefraishorsforfait` ENABLE KEYS */;

-- Export de données de la table gsb.utilisateur : ~27 rows (environ)
DELETE FROM `utilisateur`;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `login`, `mdp`, `adresse`, `cp`, `ville`, `dateEmbauche`, `fonction`) VALUES
	('a131', 'Villechalane', 'Louis', 'lvillachane', 'jux7g', '8 rue des Charmes', '46000', 'Cahors', '2005-12-21', 'comptable'),
	('a17', 'Andre', 'David', 'dandre', 'oppg5', '1 rue Petit', '46200', 'Lalbenque', '1998-11-23', 'visiteur'),
	('a55', 'Bedos', 'Christian', 'cbedos', 'gmhxd', '1 rue Peranud', '46250', 'Montcuq', '1995-01-12', 'visiteur'),
	('a93', 'Tusseau', 'Louis', 'ltusseau', 'ktp3s', '22 rue des Ternes', '46123', 'Gramat', '2000-05-01', 'visiteur'),
	('b13', 'Bentot', 'Pascal', 'pbentot', 'doyw1', '11 allée des Cerises', '46512', 'Bessines', '1992-07-09', 'visiteur'),
	('b16', 'Bioret', 'Luc', 'lbioret', 'hrjfs', '1 Avenue gambetta', '46000', 'Cahors', '1998-05-11', 'visiteur'),
	('b19', 'Bunisset', 'Francis', 'fbunisset', '4vbnd', '10 rue des Perles', '93100', 'Montreuil', '1987-10-21', 'visiteur'),
	('b25', 'Bunisset', 'Denise', 'dbunisset', 's1y1r', '23 rue Manin', '75019', 'paris', '2010-12-05', 'visiteur'),
	('b28', 'Cacheux', 'Bernard', 'bcacheux', 'uf7r3', '114 rue Blanche', '75017', 'Paris', '2009-11-12', 'visiteur'),
	('b34', 'Cadic', 'Eric', 'ecadic', '6u8dc', '123 avenue de la République', '75011', 'Paris', '2008-09-23', 'visiteur'),
	('b4', 'Charoze', 'Catherine', 'ccharoze', 'u817o', '100 rue Petit', '75019', 'Paris', '2005-11-12', 'visiteur'),
	('b50', 'Clepkens', 'Christophe', 'cclepkens', 'bw1us', '12 allée des Anges', '93230', 'Romainville', '2003-08-11', 'visiteur'),
	('b59', 'Cottin', 'Vincenne', 'vcottin', '2hoh9', '36 rue Des Roches', '93100', 'Monteuil', '2001-11-18', 'visiteur'),
	('c14', 'Daburon', 'François', 'fdaburon', '7oqpv', '13 rue de Chanzy', '94000', 'Créteil', '2002-02-11', 'visiteur'),
	('c3', 'De', 'Philippe', 'pde', 'gk9kx', '13 rue Barthes', '94000', 'Créteil', '2010-12-14', 'visiteur'),
	('c54', 'Debelle', 'Michel', 'mdebelle', 'od5rt', '181 avenue Barbusse', '93210', 'Rosny', '2006-11-23', 'visiteur'),
	('d13', 'Debelle', 'Jeanne', 'jdebelle', 'nvwqq', '134 allée des Joncs', '44000', 'Nantes', '2000-05-11', 'visiteur'),
	('d51', 'Debroise', 'Michel', 'mdebroise', 'sghkb', '2 Bld Jourdain', '44000', 'Nantes', '2001-04-17', 'visiteur'),
	('e22', 'Desmarquest', 'Nathalie', 'ndesmarquest', 'f1fob', '14 Place d Arc', '45000', 'Orléans', '2005-11-12', 'visiteur'),
	('e24', 'Desnost', 'Pierre', 'pdesnost', '4k2o5', '16 avenue des Cèdres', '23200', 'Guéret', '2001-02-05', 'visiteur'),
	('e39', 'Dudouit', 'Frédéric', 'fdudouit', '44im8', '18 rue de l église', '23120', 'GrandBourg', '2000-08-01', 'visiteur'),
	('e49', 'Duncombe', 'Claude', 'cduncombe', 'qf77j', '19 rue de la tour', '23100', 'La souteraine', '1987-10-10', 'visiteur'),
	('e5', 'Enault-Pascreau', 'Céline', 'cenault', 'y2qdu', '25 place de la gare', '23200', 'Gueret', '1995-09-01', 'visiteur'),
	('e52', 'Eynde', 'Valérie', 'veynde', 'i7sn3', '3 Grand Place', '13015', 'Marseille', '1999-11-01', 'visiteur'),
	('f21', 'Finck', 'Jacques', 'jfinck', 'mpb3t', '10 avenue du Prado', '13002', 'Marseille', '2001-11-10', 'visiteur'),
	('f39', 'Frémont', 'Fernande', 'ffremont', 'xs5tq', '4 route de la mer', '13012', 'Allauh', '1998-10-01', 'visiteur'),
	('f4', 'Gest', 'Alain', 'agest', 'dywvt', '30 avenue de la mer', '13025', 'Berre', '1985-11-01', 'visiteur');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
