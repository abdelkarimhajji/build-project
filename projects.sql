-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 16 mai 2024 à 16:33
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `waiting_coder`
--

-- --------------------------------------------------------

--
-- Structure de la table `projects`
--

CREATE TABLE `projects` (
  `id` int(255) NOT NULL,
  `name_project` varchar(255) NOT NULL,
  `count_exp` int(255) NOT NULL,
  `id_collection` int(255) NOT NULL,
  `image_project` varchar(255) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projects`
--

INSERT INTO `projects` (`id`, `name_project`, `count_exp`, `id_collection`, `image_project`, `description`) VALUES
(1, 'Create a biography of a character who inspires you', 100, 3, 'biographie.png', 'This involves creating a web page which presents the biography of a character of your choice (sportsman, scientist, artist, etc.) using HTML5 and CSS3;'),
(2, 'Reproduce a mockup and convert it to HTML and CSS.', 170, 3, 'biographie.png', 'You will reproduce a mock-up of a contact page which you will then have to translate into HTML and CSS based on the specifications provided.'),
(3, 'Design and create a responsive landing page', 70, 3, 'biographie.png', 'The objective of this brief is to adapt a model of your choice, in order to create 2 new models (Desktop/Mobile) for a responsive Landing page. Then you must translate your models into HTML and CSS code according to the instructions provided.'),
(4, 'Créer une interface utilisateur de gestion de produits qui interroge un fichier JSON', 90, 4, 'biographie.png', 'Créer un fichier JSON contenant les informations des produits de votre choix, exploiter ce fichier pour créer une page responsive qui permet d\'afficher ces données, les trier et les filtrer.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_collection` (`id_collection`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`id_collection`) REFERENCES `name_specifics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
