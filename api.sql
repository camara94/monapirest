-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 23 juin 2019 à 23:16
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `api`
--

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id` int(10) UNSIGNED NOT NULL,
  `numCert` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `plateforme` varchar(255) NOT NULL,
  `dateCertif` datetime NOT NULL,
  `url` varchar(255) NOT NULL,
  `universite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id`, `numCert`, `titre`, `description`, `auteur`, `plateforme`, `dateCertif`, `url`, `universite`) VALUES
(1, 'n° 5889878715', 'Apprenez à programmer en C !', 'J\'ai étudié le fonctionnement de la mémoire, des variables, des conditions et des boucles. Puis j\'ai appris à réutiliser tout ce que j\'ai appris pour créer des interfaces graphiques avec la bibliothèque SDL (jeux vidéo, animations audio...). Enfin, j\'ai appris à manipuler les structures de données les plus courantes pour organiser les informations en mémoire : listes, piles, files, tables de hachage', 'Mathieu Nebra', 'OPENCLASSROOMS', '2019-06-01 00:00:00', 'https://openclassrooms.com/fr/course-certificates/5889878715', ''),
(2, 'n° 3129011750', 'Concevez votre site web avec PHP et MySQL', 'Dans ce j\'ai appris à :\r\n-Installer les outils propres à PHP (serveur web, logiciel de gestion de base de données)\r\n\r\n-Respecter les conventions d\'écriture de code\r\n\r\n-Programmer des fonctions\r\n\r\n-Ecrire des instructions en PHP\r\n\r\n-Enregistrer des données dans un fichier\r\n\r\n-Stocker des données dans les sessions et les cookies\r\n\r\n-Transmettre des données\r\n\r\n-Ecrire des fonctions SQL basiques\r\n\r\n-Communiquer avec la base de données\r\n\r\n-Utiliser les expressions régulières en PHP', 'Mathieu Nebra', 'OPENCLASSROOMS', '2019-03-24 00:00:00', 'https://openclassrooms.com/fr/course-certificates/3129011750', ''),
(3, 'n° 4735728537', 'Des applications ultra-rapides avec Node.js', 'À l\'issue de ce cours, j\'ai été capable de : \r\n\r\n-Retourner du code HTML\r\n\r\n-Installer Node.js\r\n\r\n-Gérer les routes avec Express.js\r\n\r\n-Gérer les modules Node.js\r\n\r\n-Écouter et créer des évènements\r\n\r\n-Communiquer avec plusieurs clients', '', 'Mathieu Nebra', '2019-03-18 00:00:00', 'https://openclassrooms.com/fr/course-certificates/4735728537', ''),
(4, 'n° 6352202321', 'Apprenez à développer en C#', 'Dans ce cours, j\'ai maîtrisé les bases de la programmation en C# et j\'ai su créer une application capable d\'interagir avec un utilisateur, de lire ses saisies au clavier et d\'afficher des choses à l\'écran via une console', 'Nicolas Hilaire', 'OPENCLASSROOMS', '2018-10-28 00:00:00', 'https://openclassrooms.com/fr/course-certificates/6352202321', ''),
(5, 'n° 8517988674', 'Apprenez à créer votre site web avec HTML5 et CSS3', 'Dans ce cours, j\'ai été capable de :\r\n\r\n-Utiliser du code HTML\r\n\r\n-Structurer une page web en HTML\r\n\r\n-Utiliser du code CSS\r\n\r\n-Mettre en forme une page web en CSS\r\n\r\n-Organiser les éléments d’une page Web grâce au CSS\r\n\r\n-Modifier l\'agencement d\'une page HTML avec CSS\r\n\r\n-Intégrer des formules dans une page web\r\n\r\n-Adapter une page pour les petites résolutions en CSS', 'Mathieu Nebra', 'OPENCLASSROOMS', '2019-03-29 00:00:00', 'https://openclassrooms.com/fr/course-certificates/8517988674', ''),
(6, 'n° 2114963610', 'Simplifiez vos développements JavaScript avec jQuery', 'Dans ce cours, j\'ai découverts les multiples facettes du framework jQuery. De la sélection d\'éléments à la manipulation du DOM, en passant par l\'animation, les requêtes AJAX, l\'utilisation et la création de plugins, la création de jeux et bien d\'autres choses encore !', 'Michel Martin,', 'OPENCLASSROOMS', '2019-04-27 00:00:00', 'https://openclassrooms.com/fr/course-certificates/2114963610', ''),
(7, 'n° 7769676152', 'Programmez en orienté objet en PHP', 'À l\'issue de ce cours, j\'ai été capable de : \r\n\r\n-Procéder à un héritage\r\n\r\n-Utiliser une classe pour créer des objets\r\n\r\n-Connaître des techniques avancées pour -programmer en PHP\r\n\r\n-Créer une application PHP orientée objet', 'Victor Thuillier', 'OPENCLASSROOMS', '2019-06-11 00:00:00', 'https://openclassrooms.com/fr/course-certificates/7769676152', ''),
(8, 'n° 4429669695', 'Structurez vos données avec XML', 'Dans ce cours, j\'ai découvert  comment écrire des documents XML, et j\'ai vu également comment :\r\n\r\n-Imposer une structure bien précise à nos documents XML.\r\n\r\n-Les mettre en forme.\r\n\r\n-Lire facilement les données contenues dans un document XML.\r\n\r\n-Transformer les documents XML vers d\'autres formats comme une page Internet', 'Ludovic Roland', 'OPENCLASSROOMS', '2019-06-09 00:00:00', 'https://openclassrooms.com/fr/course-certificates/4429669695', ''),
(9, 'n° 3017042428', 'Prenez en main Bootstrap', 'À l\'issue de ce cours, vous serez capable de :\r\n\r\nJ\'ai appris communiquer efficacement en utilisant les termes spécifiques de Bootstrap.\r\n\r\n-Charger des ressources externes dans une page web avec un Content Delivery Network\r\n\r\n-Créer un layout responsive avec le système de grille de Bootstrap\r\n\r\n-Intégrer une maquette de site web responsive avec Bootstrap\r\n\r\n-Dynamiser une page web avec des plugins Jquery customisés pour Bootstrap', 'Maurice Chavelli', 'OPENCLASSROOMS', '2018-08-04 00:00:00', 'https://openclassrooms.com/fr/course-certificates/3017042428', ''),
(10, 'n° 9823579050', 'Comprendre le Web', 'À l’issue de ce cours, j\'ai été capable de : \r\n\r\n-Communiquer en utilisant le langage spécifique du Web\r\n\r\n-Trouver des versions anciennes de sites web\r\n\r\n-Distinguer les différents langages du Web\r\n\r\n-Expliquer le principe des serveurs\r\n\r\n-Appréhender le métier de développeur', 'Mathieu Nebra', 'OPENCLASSROOMS', '2018-07-06 00:00:00', 'https://openclassrooms.com/fr/course-certificates/9823579050', ''),
(11, 'n° 2530388032', 'Gérez votre code avec Git et GitHub', 'Dans ce cours, j\'ai été capable de :\r\n\r\n-Installer la solution de versioning Git\r\n\r\n-Enregistrer et retrouver les modifications avec les commits\r\n\r\n-Envoyer le code sur une autre machine dite remote\r\n\r\n-Créer un repository Git\r\n\r\n-Enregistrer des commits\r\n\r\n-Repérer les fichiers à ignorer\r\n\r\n-Résoudre les conflits de branche\r\n\r\n-Expliquer les notions de commit, d\'historique des validations et de branche', 'Marc G Gauthier', 'OPENCLASSROOMS', '2018-07-16 00:00:00', 'https://openclassrooms.com/fr/course-certificates/2530388032', ''),
(12, 'n° 6960710673', 'Concevez vos screencasts avec Camtasia Windows', 'Dans ce cours, j\'ai appris à créer:\r\n-des screencasts\r\n-des videos\r\n-animations à travers camtasia', 'Hadrien Southwell,\r\nVidéaste, Monteur et Motion', 'OPENCLASSROOMS', '2018-04-16 00:00:00', 'https://openclassrooms.com/fr/course-certificates/6960710673', ''),
(13, 'n° 1340827311', 'Animez une communauté Facebook', 'Dans ce cours, j\'ai appris à un peu le \r\nmanagement à travers en créant une facebook bien que je n\'ai pas pu continuer à de mon employer charger des formations qui font que j\'oublais de m\'en charger de cette page facebook.', 'Guillaume Parrou', 'OPENCLASSROOMS', '2018-04-12 00:00:00', 'https://openclassrooms.com/fr/course-certificates/1340827311', ''),
(14, 'n° 3323645277', 'Programmez en orienté objet avec C#', 'Ici, j\'ai appris les bases de la programmation orientée objet ainsi que la syntaxe C# à utiliser pour créer des classes et manipuler mes objets. j\'ai découvert également comment utiliser les différents types du framework .NET, comment créer des bibliothèques de code réutilisables ou encore comment créer des tests unitaires', 'Nicolas Hilaire', 'OPENCLASSROOMS', '2019-03-10 00:00:00', 'https://openclassrooms.com/fr/course-certificates/3323645277', ''),
(15, 'n° 5093329233', 'Apprenez à coder avec JavaScript\r\n', 'Dans ce cours, j\'ai été capable de : \r\n\r\n-Communiquer efficacement en JavaScript en utilisant le vocabulaire approprié\r\n\r\n-Résoudre des problèmes de base en JavaScript\r\n\r\n-Écrire un programme en JavaScript', 'Baptiste Pesquet', 'OPENCLASSROOMS', '2018-01-14 00:00:00', 'https://openclassrooms.com/fr/course-certificates/5093329233', ''),
(16, 'n° 3209171959', 'Créez des pages web interactives avec JavaScript', 'Dans ce cours, j\'ai appris  à utiliser JavaScript pour créer des pages web dynamiques et interactives. Après l\'avoir suivi, je sais animer mes pages, les modifier en fonction des actions de l\'utilisateur ou encore interagir en temps réel avec un serveur distant à travers AJAX. La suite dépend uniquement de mon imagination : tout ou presque est possible avec JavaScript', 'Baptiste Pesquet', 'OPENCLASSROOMS', '2018-01-31 00:00:00', 'https://openclassrooms.com/fr/course-certificates/3209171959', ''),
(17, 'n° 6530411578', 'Utilisez des API REST dans vos projets web', 'Dans ce cours, j\'ai su ...\r\n\r\n-ce qu\'est une API et pourquoi je devrais en utiliser ;\r\n\r\n-les critères qui définissent une API REST ;\r\n\r\n-la différence entre les API SOAP et REST ;\r\n\r\n-comment est construite une API REST ;\r\n\r\n-comment envoyer des requêtes à une API externe ;\r\n\r\n-les bases pour construire ma propre API.', 'Emily Reese', 'OPENCLASSROOMS', '2019-03-27 00:00:00', 'https://openclassrooms.com/fr/course-certificates/6530411578', ''),
(18, 'n° 8614187978', 'Modélisez et implémentez une base de données relationnelle avec UML', 'Réalisation:\r\n-Comprendre la différence entre un tableur et une base de données relationnelle\r\n\r\n-Apprendre comment organiser une base de données relationnelle\r\n\r\n-Créer des diagrammes de classes UML\r\n\r\n-Utiliser UML pour échanger sur votre conception avec des personnes ayant ou non un profil technique\r\n\r\n-Créer des bases de données MySQL ou PostgreSQL\r\n\r\n-Apprendre à interroger une base de données avec SQL\r\n\r\n-Apprendre à ajouter et modifier des informations dans une base de données avec SQL\r\n\r\n-Effectuer un CRUD !', 'Loïc Guibert', 'OPENCLASSROOMS', '2018-12-02 00:00:00', 'https://openclassrooms.com/fr/course-certificates/8614187978', ''),
(19, 'n° 7662234541', 'Maintenez-vous à jour en développement', 'A travers ce cours je m\'informe souvent sur les sites:\r\n-https://techcrunch.com/\r\n-https://www.theverge.com/\r\n-https://venturebeat.com/\r\n-https://mashable.com/\r\n-https://thenextweb.com/\r\n-https://arstechnica.com/\r\n-https://kotaku.com/\r\n-https://www.wired.com/\r\n-https://www.lesechos.fr/tech-medias/hightech/index.php\r\n-https://www.lafrenchtech.com/fr/\r\n-https://www.numerama.com/tech/\r\n-https://www.clubic.com/actualites-informatique/\r\n-https://www.slate.fr/tech-internet/\r\n-https://medium.com/france/startups/home', 'Emily Reese', 'OPENCLASSROOMS', '2019-04-02 00:00:00', 'https://openclassrooms.com/fr/course-certificates/7662234541', ''),
(20, 'n° 8675451763', 'Apprenez à apprendre', 'Vraiment dans ce j\'ai appris des techniques qui m\'ont beaucoup aider dans mon processus d\'apprentissage des nouveaux langages et continue à m\'aider toujours dans mes études.', 'Guillaume Parrou', 'OPENCLASSROOMS', '2018-08-28 00:00:00', 'https://openclassrooms.com/fr/course-certificates/8675451763', ''),
(21, 'n° 6877818304', 'Prenez la parole en public', 'Dans ce cours, j\'ai vu comment :\r\n\r\n-Mobiliser les techniques de \"storytelling\" pour construire un contenu.\r\n\r\n-Visualiser et mémoriser votre contenu grâce au \"mind mapping\".\r\n\r\n-Adapter votre discours en fonction du contexte de votre intervention.\r\n\r\n-Utiliser les méthodes de mise en condition physique et mentale.\r\n\r\n-Travailler sur votre langage corporel et verbal afin de délivrer un message avec impact.\r\n\r\n-Faire face aux imprévus avec la réaction adéquate.', 'Stéphane Bonneville,Laurène Castor,Mathieu Nebra,', 'OPENCLASSROOMS', '2018-09-02 00:00:00', 'https://openclassrooms.com/fr/course-certificates/6877818304', ''),
(22, 'n° 7369875628', 'Développez des applications Web avec Angular\r\n', 'Dans ce cours, j\'ai été capable de :\r\n\r\n-Créer des components Angular\r\n\r\n-Manipuler un template avec le databinding, les directives et les pipes\r\n\r\n-Faire communiquer les components avec les services et les Observables\r\n\r\n-Créer des Single Page Applications avec le routing\r\n\r\n-Communiquer avec les utilisateurs avec les formulaires\r\n\r\n-Faire communiquer une application avec un backend', 'Will Alexander', 'OPENCLASSROOMS', '2018-07-29 00:00:00', 'https://openclassrooms.com/fr/course-certificates/7369875628', ''),
(23, 'n° 2809946679', 'Développez une application mobile multiplateforme avec Ionic 3', 'Dans ce cours, j\'ai été capable de :\r\n\r\n-Créer une application multiplateforme basique\r\n\r\n-Utiliser les components Ionic pour faciliter le développement\r\n\r\n-Interagir avec les utilisateurs grâce aux formulaires\r\n\r\n-Intégrer un backend\r\n\r\n-Utiliser Ionic Native pour l\'accès aux native features des appareils\r\n\r\n-Tester et déployer une application complète ', 'Will Alexander', 'OPENCLASSROOMS', '2019-02-05 00:00:00', 'https://openclassrooms.com/fr/course-certificates/2809946679', ''),
(24, 'n° 5154147183', 'Intégrateur Web', 'Actuellement avec mon niveau en informatique, je suis en mesure de créer une maquette fonctionnelle en me basant sur la maquette graphique. Ce nouvel outil permettra d\'avoir un rendu réel du site dans un navigateur. Mais les contenus pourront être factices comme un squelette et tant d\'autres chose .', 'Mathieu Nebra', 'OPENCLASSROOMS', '2018-08-04 00:00:00', 'https://openclassrooms.com/fr/learning-path-certificates/5154147183', ''),
(25, '', '', '', '', 'OPENCLASSROOMS', '0000-00-00 00:00:00', '', ''),
(26, 'Verify at coursera.org/verify/SH5T3J32XU8M\r\n', 'Front-End JavaScript Frameworks: Angular', 'Dans ce cours, j\'ai appris à :\r\n-Connaître les frameworks Javascript côté client et le framework angular\r\n- être capable d\'implémenter des applications d\'une seule page dans Angular(SPA)\r\n- être capable d\'utiliser diverses fonctionnalités angular, notamment des directives, des composants(components) et des services\r\n- être capable de mettre en œuvre une application Web front-end fonctionnelle utilisant Angular\r\n- Être capable d\'utiliser Angular Material et Angular Flex-Layout pour concevoir des applications angular réactives\r\n- être capable d\'utiliser les Observables et RxJS dans le contexte d\'applications angular', 'Jogesh K. Muppala', 'COURSERA', '2019-01-22 08:23:00', 'https://www.coursera.org/account/accomplishments/certificate/SH5T3J32XU8M', 'The Hong Kong University of Science and Technology'),
(27, 'Verify at coursera.org/verify/XJLHVJ8LBGG7', 'Front-End Web UI Frameworks and Tools: Bootstrap 4', 'Dan ce cours j\'ai eu  un aperçu des infrastructures d’interface utilisateur Web côté client, en particulier Bootstrap 4. J\'ai découvert les grilles et les composants responsive design, Bootstrap CSS et JavaScript. j\'ai en appris plus sur les préprocesseurs CSS, Less et Sass. J\'ai appris également les bases de Node.js et NPM, ainsi que des task runners tels que Grunt et Gulp.\r\nJ\'ai : \r\na) configurer, concevoir et styler une page Web à l’aide de Bootstrap 4 et de ses composants, \r\nb) créer une conception de page Web réactive, et \r\nc) utiliser des outils Web pour configurer et gérer des sites Web.\r\nCe cours m\'a également donné une piste de spécialisation qui me permet de travailler sur mon propre projet de développement d\'un site Web à l\'aide de Bootstrap 4.\r\nGrâce à ce cours j\'ai eu une bonne connaissance pratique du HTML, du CSS et de JavaScript.\r\n', 'Jogesh K. Muppala', 'COURSERA', '2019-03-12 04:54:00', 'https://www.coursera.org/account/accomplishments/certificate/XJLHVJ8LBGG7', 'The Hong Kong University of Science and Technology'),
(28, 'Verify at coursera.org/verify/TPQLM4RLUVAP', 'Multiplatform Mobile App Development with NativeScript', 'Dans ce cours, j\'ai  pu créer une (a) applications mobiles ciblant plusieurs plates-formes avec une seule base de code, (b) tirer parti de mes compétences en angular, typeScript et javascript, et (c) utiliser diverses fonctionnalités du framework NativeScript pour créer applications mobiles véritablement multi-plateformes\r\n', 'Jogesh K. Muppala', 'COURSERA', '2019-03-25 12:33:00', 'https://www.coursera.org/account/accomplishments/certificate/TPQLM4RLUVAP', 'The Hong Kong University of Science and Technology'),
(29, 'Verify at coursera.org/verify/YPQPEMN97ESV', 'Server-side Development with NodeJS, Express and MongoDB', 'Dans ce cours, j\'ai pu:\r\n\r\n-Démontrer une compréhension des concepts côté serveur, CRUD et REST\r\n- Construire et configurer un serveur principal en utilisant la structure NodeJS\r\n- Construire une API RESTful pour le front-end pour accéder aux services principaux', 'Jogesh K. Muppala', 'COURSERA', '2019-04-24 08:39:00', 'https://www.coursera.org/account/accomplishments/certificate/YPQPEMN97ESV', 'The Hong Kong University of Science and Technology'),
(30, 'Verify at coursera.org/verify/T8MWN45DRGG6', 'Multiplatform Mobile App Development with Web Technologies: Ionic and Cordova', 'Dans ce cours, j\'ia appris à créer :\r\n(a) créer des applications mobiles ciblant plusieurs plates-formes avec une seule base de code, \r\n(b) tirer parti de vos compétences en HTML5, CSS, Javascript et angular, et \r\n(c) utiliser diverses fonctionnalités du cadre Ionic et cordova. construire des applications mobiles hybrides', 'Jogesh K. Muppala', 'COURSERA', '2018-10-22 03:45:00', 'https://www.coursera.org/account/accomplishments/certificate/T8MWN45DRGG6', 'The Hong Kong University of Science and Technology'),
(31, 'Verify this certificate at:\r\ncoursera.org/verify/specialization/ALQTJWC4EXQP', 'Full Stack Web and\r\nMultiplatform Mobile App\r\nDevelopment', 'J\'ai appris le développement mobile front-end et hybride, avec une prise en charge côté serveur, pour la mise en œuvre d\'une solution multiplateforme. Les deux premiers cours de cette spécialisation couvrent les frameworks front-end: Bootstrap 4 et Angular. J\'ai appris également à créer des applications mobiles hybrides, en utilisant le framework Ionic, Cordova et NativeScript. Côté serveur, j\'ai appris à implémenter des bases de données NoSQL à l’aide de MongoDB, à travailler dans un environnement Node.js et dans une infrastructure Express et à communiquer avec le client via une API RESTful. \r\nGrâce à cette spécialisation j\'ai eu  une connaissance pratique préalable de HTML, CSS et JavaScript.', 'Jogesh K. Muppala', 'COURSERA', '2019-04-04 00:00:00', 'https://www.coursera.org/account/accomplishments/specialization/certificate/ALQTJWC4EXQP', 'The Hong Kong University of Science and Technology'),
(32, 'Verify at coursera.org/verify/UE3NGVBPF3FX', 'Building Web Applications in PHP', 'Dans ce cours, j\'ai exploreré la structure de base d\'une application Web et la manière dont un navigateur Web interagit avec un serveur Web. j\'ai utilisé le cycle de demande / réponse, y compris GET / POST / Redirect. J\'ai obtenu également une compréhension de base du langage HTML (Hypertext Markup Language), ainsi que de la syntaxe de base et des structures de données du langage PHP, des variables, de la logique, des itérations, des tableaux, du traitement des erreurs et des variables superglobales, entre autres éléments. Une introduction aux feuilles de style en cascade (CSS) ma permis de styliser le balisage des pages Web. Enfin, j\'ai acquis les compétences et les connaissances nécessaires pour installer et utiliser un environnement PHP / MySQL intégré tel que XAMPP et WAMP.', 'Charles Severance', 'COURSERA', '2018-12-15 03:20:00', 'https://www.coursera.org/account/accomplishments/certificate/UE3NGVBPF3FX', 'Université du Michigan'),
(33, 'verify.certiport.com at ubmb-XLJ2', 'Sofware Development Fundamentals', 'Microsoft Technology Associate', 'Satya Nadella', 'MICROSOFT', '2019-05-20 00:00:00', '', ''),
(34, 'verify.certiport.com at v9rz-DTh4', 'Networking Fundamentals', 'Microsoft Technology Associate(MTA)', 'Satya Nadella', 'MICROSOFT', '2018-05-26 00:00:00', '', ''),
(35, 'verify.certiport.com at demW-Dwhp', 'Introduction to Programming using JavaScript', 'Microsoft Technology Associate(MTA)', 'Satya Nadella', 'MICROSOFT', '2019-05-15 00:00:00', '', ''),
(36, 'verify.certiport.com at wbKRh-H9aF', 'Introduction to Programming using Java', 'Microsoft Technology Associate(MTA)', 'Satya Nadella', 'MICROSOFT', '2019-05-20 00:00:00', '', ''),
(37, 'verify.certiport.com at wwPAN-22xq', 'HTML5 Application Development Fundamentals', 'Microsoft Technology Associate(MTA)', 'Satya Nadella', 'MICROSOFT', '2018-05-02 00:00:00', '', ''),
(38, 'verify.certiport.com at vbzJ-XVN7', 'Database Administration Fundamentals', 'Microsoft Technology Associate(MTA)', 'Satya Nadella', 'MICROSOFT', '2018-05-16 00:00:00', '', ''),
(39, '18 C2i etu 310', 'CERTIFICATION EN INFORMATIQUE ET INTERNET << C2I>>', ' C2I', 'Prof. Mahjoub Aouni', 'UniversitÃ© Virtuelle de Tunis', '2019-05-29 00:00:00', 'http://localhost/../images/certif/cv-camara.pdf', 'UniversitÃ© Virtuelle de Tunis'),
(40, '18 C2i etu 310', 'CERTIFICATION EN INFORMATIQUE ET INTERNET << C2I>>', ' Les bases du bureatique en informatiques', 'Prof. Mahjoub Aouni', 'UniversitÃ© Virtuelle de Tunis', '2018-08-15 00:00:00', 'http://localhost/api..', 'UniversitÃ© Virtuelle de Tunis');

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `universite` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `departement` varchar(255) NOT NULL,
  `semestre` varchar(255) NOT NULL,
  `cession` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `enseignant` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sujet`
--

INSERT INTO `sujet` (`id`, `universite`, `type`, `departement`, `semestre`, `cession`, `url`, `enseignant`) VALUES
(1, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Examen TP', 'Technologie de de l\'informatique', 'Semestre 2', '2018-2019', 'http://localhost/api/images/examenTP-L2DSI_Mai_2019.png', 'M.Anis Assas'),
(2, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Devoir de contrôle', 'Technologie de l\'Informatique', 'Semestre 1', '2018-2019', 'api/images/csharpdc.pdf', 'M. Mohamed Ourir Raouf'),
(3, 'Institut Supérieur des Etudes Technologiques de Djerba', 'Devoir de synthèse', 'Technologie de l\'Informatique', 'Semestre 2', '2018-2019', 'api/images/plsql.pdf', 'M. Ben Hassane');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
