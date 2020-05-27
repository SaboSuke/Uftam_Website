-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2020 at 06:31 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swib_uftam_all`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_event`
--

CREATE TABLE `t_event` (
  `eve_id` int(11) NOT NULL,
  `eve_img` varchar(255) DEFAULT NULL,
  `eve_lib` varchar(255) DEFAULT NULL,
  `eve_description` text,
  `eve_date` date DEFAULT NULL,
  `tte_id` int(11) DEFAULT NULL,
  `eve_active` varchar(5) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_event`
--

INSERT INTO `t_event` (`eve_id`, `eve_img`, `eve_lib`, `eve_description`, `eve_date`, `tte_id`, `eve_active`) VALUES
(5, 'event1.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-01', 3, 'yes'),
(6, 'event1.png', 'Lorem, ipsum.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse nostrum sint error explicabo quibusdam! Iste, porro delectus? Officiis, veritatis corporis.', '2020-05-06', 1, 'yes'),
(7, 'event1.png', 'new event', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-05-02', 1, 'yes'),
(8, 'event2.png', 'other new event', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-05-08', 1, 'yes'),
(10, 'event2.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-27', 3, 'yes'),
(13, 'event2.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur l', '2020-05-19', 1, 'yes'),
(14, 'event3.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-04-25', 3, 'yes'),
(16, 'event3.png', ' qjsdfhm q', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2020-02-12', 4, 'yes'),
(17, 'event3.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-15', 3, 'yes'),
(25, 'event3.png', 'testsqs', 'test', '2020-05-09', 1, 'yes'),
(26, 'event3.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2024-05-14', 3, 'yes'),
(27, 'event2.png', 'Bourses dâ€™excellence', ' Pour le dÃ©marrage de lâ€™UFTAM, Lâ€™Institut FranÃ§ais de Tunisie et le ministÃ¨re de lâ€™enseignement supÃ©rieur tunisien ont attribuÃ© 12 bourses aux Ã©tudiants tunisiens les plus mÃ©ritants. La sÃ©lection des Ã©tudiants boursiers sâ€™est basÃ©e sur lâ€™excellence acadÃ©mique, le lieu de rÃ©sidence ainsi que sur la situation familiale et financiÃ¨re.  Les 12 Ã©tudiants sÃ©lectionnÃ©s ont donc pu profiter de lâ€™exonÃ©ration totale de leur frais de scolaritÃ©.', '2020-05-31', 3, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_formation`
--

CREATE TABLE `t_formation` (
  `for_id` int(11) NOT NULL,
  `for_img` varchar(255) DEFAULT NULL,
  `for_lib` varchar(50) DEFAULT NULL,
  `for_presentation` text,
  `for_description` text,
  `ttf_id` int(11) DEFAULT NULL,
  `for_active` varchar(5) NOT NULL DEFAULT 'yes',
  `for_modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_formation`
--

INSERT INTO `t_formation` (`for_id`, `for_img`, `for_lib`, `for_presentation`, `for_description`, `ttf_id`, `for_active`, `for_modification_date`) VALUES
(20, 'master-gestion-envir.png', 'Gestion de lâ€™environnement et mÃ©tiers de lâ€™ea', 'Le master Gestion de lâ€™environnement et mÃ©tiers de lâ€™eau a pour ambitions de rÃ©pondre aux enjeux de lâ€™eau, afin dâ€™assurer les besoins humains (â€ Leaving no one behind â€œ), en quantitÃ© et en qualitÃ©, tout en prÃ©servant la biodiversitÃ©.', 'description ici', 3, 'yes', '2020-05-27 16:09:02'),
(21, 'master-expertise-eco.png', 'Expertise Ã©conomique des politiques et projets de', 'Dans un contexte marquÃ© par lâ€™InstabilitÃ© Ã©conomique et financiÃ¨re mondiales, des problÃ¨mes dâ€™emploi, de nombreux conflits et les risques majeurs du changement climatique.', 'description ici', 3, 'yes', '2020-05-27 16:09:35'),
(22, 'master-data-science.png', 'Sciences des donnÃ©es pour les nouveaux mÃ©tiers d', 'Le traitement des flux de donnÃ©es massives (big data) est aujourdâ€™hui indispensable pour apprÃ©hender les nouveaux mÃ©tiers du numÃ©rique.', 'description ici', 3, 'yes', '2020-05-27 16:10:10'),
(23, 'master-gÃ©nie-electrique-.png', 'GÃ©nie Ã©lectrique et informatique industrielle', 'Former sur le plan disciplinaire et peÌdagogique, dans le domaine du GeÌnie Electrique et de lâ€™Informatique Industrielle, des formateurs : enseignants pour le lyceÌe, pour les ISET, pour les eÌcoles dâ€™ingeÌnieurs et lâ€™UniversiteÌ.', 'description ici', 3, 'yes', '2020-05-27 16:10:49'),
(24, 'master-Intelligence-Economique-Africaine.png', 'Intelligence Ã©conomique africaine', 'Ce Master vise Ã  sensibiliser les futurs cadres des pouvoirs publics, des reprÃ©sentations diplomatiques, des partenaires au dÃ©veloppement, des entreprises, et du monde Ã©ducatif aux enjeux de la veille.', 'description ici', 3, 'yes', '2020-05-27 16:12:27'),
(25, 'master-mutation-digit.png', 'Mutations Digitales', 'Ce MastÃ¨re, situÃ© au croisement du droit et du digital marketing, vise Ã  apporter une spÃ©cialisation juridique et managÃ©riale dans le domaine des mÃ©dias et de la communication, concernant lâ€™ensemble des secteursâ€¦', 'description ici', 3, 'yes', '2020-05-27 16:12:54'),
(26, 'LICENCE.png', 'Licence Gestion de lâ€™environnement', 'Cette licence a pour objectif dâ€™offrir aux Ã©tudiants des connaissances approfondies dans la caractÃ©risation de la biodiversitÃ© et des Ã©cosystÃ¨mes, la conservation des ressources naturelles (bioressources, eau, Ã©nergie et sol),..', 'description ici', 1, 'yes', '2020-05-27 16:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `t_la_vie`
--

CREATE TABLE `t_la_vie` (
  `tlv_id` int(11) NOT NULL,
  `tlv_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tlv_lib` varchar(50) NOT NULL,
  `tlv_description` text NOT NULL,
  `tlv_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_la_vie`
--

INSERT INTO `t_la_vie` (`tlv_id`, `tlv_active`, `tlv_lib`, `tlv_description`, `tlv_img`) VALUES
(13, 'yes', 'Titre', 'L\'UFTAM offre une pÃ©dagogie originale, centrÃ©e sur le transfert dâ€™expÃ©rience dans lâ€™action, pluridisciplinaire, tournÃ©e vers l\'international pour faire Ã©merger les grands entrepreneurs et les grands projets de demain.', 'person.png'),
(14, 'yes', 'Titre', 'Les cours qu\'on a reÃ§u jusqu\'Ã  maintenant m\'ont permis d\'enrichir mes connaissances surtout au niveau du traitement des donnÃ©es (modÃ©lisation, Ã©conomÃ©trie) et au niveau de mes connaissances macroÃ©conomique des concepts de dÃ©veloppement Ã©conomique.', 'person.png'),
(15, 'yes', 'Titre', 'Etudier Ã  l\'UFTAM et en Tunisie, me permet de travailler et en mÃªme temps approfondir mes connaissances avec des experts internationaux mobilisÃ©s par l\'UFTAM. en plus avoir un diplÃ´me d\'une Ã©cole franÃ§aise va me faciliter le dÃ©veloppement de ma carriÃ¨re Ã  l\'international.', 'person.png'),
(16, 'yes', 'Titre', 'J\'ai dÃ©couvert l\'UFTAM Ã  l\'occasion de la lecture d\'un article de presse portant sur son inauguration et cela m\'a amenÃ© Ã  m\'informer sur les formations proposÃ©es. J\'ai ainsi dÃ©couvert le mastÃ¨re expertise Ã©conomique qui m\'a attirÃ© Ã©tant donnÃ© mon travail actuel dans le secteur du dÃ©veloppement Ã©conomique.', 'person.png'),
(17, 'yes', 'Titre', 'Lâ€™UniversitÃ© mâ€™a permis de dÃ©velopper mon niveau d\'autonomie ainsi que ma faÃ§on de voir les phÃ©nomÃ¨nes observables. J\'aime cette petite institution hors du commun, car ses cours en bloc, ses mÃ©thodes et ses stratÃ©gies pÃ©dagogiques ont Ã©tÃ© pour moi une expÃ©rience fantastique dans mon cursus universitaire.', 'person.png'),
(18, 'yes', 'Titre', 'Seule lâ€™UFTAM proposait une telle formation, jâ€™ai donc dÃ©cidÃ© de relever le dÃ©fi ! Â« Ã€ l\'instar des autres UniversitÃ©s prÃ©sentent en Tunisie, lâ€™UFTAM propose des formations de trÃ¨s haut niveau, voire dâ€™un niveau supÃ©rieur Ã  celui de certaines institutions, prÃ©sentes en Europe, qui profitent dâ€™une certaine notoriÃ©tÃ©, non seulement auprÃ¨s de la communautÃ© Ã©tudiante, mais Ã©galement auprÃ¨s de nombreux recruteurs Nationaux et Internationaux.', 'person.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_partner`
--

CREATE TABLE `t_partner` (
  `par_id` int(11) NOT NULL,
  `par_lib` varchar(50) DEFAULT NULL,
  `par_logo` varchar(255) DEFAULT NULL,
  `par_ing_subpage` varchar(5) NOT NULL DEFAULT 'no',
  `par_active` varchar(5) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_partner`
--

INSERT INTO `t_partner` (`par_id`, `par_lib`, `par_logo`, `par_ing_subpage`, `par_active`) VALUES
(48, 'ecole normale paris saclay', 'ecole normale paris saclay.png', 'no', 'yes'),
(49, 'enit', 'enit.png', 'no', 'yes'),
(50, 'ensit', 'ensit.png', 'no', 'yes'),
(51, 'ensta', 'ensta.png', 'no', 'yes'),
(52, 'essect', 'essect.png', 'no', 'yes'),
(53, 'facultÃ© de droit aix marseille', 'facultÃ© de droit aix marseille.png', 'no', 'yes'),
(54, 'faculte des sciences bizerte', 'faculte des sciences bizerte.png', 'no', 'yes'),
(55, 'faculte des sciences de tunis', 'faculte des sciences de tunis.png', 'no', 'yes'),
(56, 'faculte droit', 'faculte droit.png', 'no', 'yes'),
(57, 'supcom', 'supcom.png', 'no', 'yes'),
(58, 'universit aix marseille', 'universit aix marseille.png', 'no', 'yes'),
(59, 'universite cote azur', 'universite cote azur.png', 'no', 'yes'),
(60, 'universite de carthage', 'universite de carthage.png', 'no', 'yes'),
(61, 'universitÃ© de tunis', 'universitÃ© de tunis.png', 'no', 'yes'),
(62, 'universite manar', 'universite manar.png', 'no', 'yes'),
(63, 'universite paris saclay', 'universite paris saclay.png', 'no', 'yes'),
(64, 'universityÃ© sorbonne', 'universityÃ© sorbonne.png', 'no', 'yes'),
(65, 'afd', 'afd.png', 'no', 'yes'),
(66, 'ambassade fr', 'ambassade fr.png', 'no', 'yes'),
(67, 'ift', 'ift.png', 'no', 'yes'),
(68, 'ird', 'ird.png', 'no', 'yes'),
(69, 'republique tun', 'republique tun.png', 'no', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `t_student_exp`
--

CREATE TABLE `t_student_exp` (
  `tse_id` int(11) NOT NULL,
  `tse_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tse_lib` text NOT NULL,
  `tse_description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_student_exp`
--

INSERT INTO `t_student_exp` (`tse_id`, `tse_active`, `tse_lib`, `tse_description`) VALUES
(6, 'yes', 'AccessibilitÃ© du campus et transport en commun', 'Les Frais dâ€™abonnement aux transports en commun (bus, mÃ©tro et train) sont variables  en fonction du trajet et du moyen de transport concernÃ© (bus ; mÃ©tro et train) : de 12dt Ã  130dt annuels.'),
(7, 'yes', 'Bourses dâ€™Ã©tudes', 'description'),
(8, 'yes', 'La restauration universitaire', 'description ici'),
(9, 'yes', 'Le logement universitaire', 'description ici'),
(10, 'yes', 'La santÃ© Assistance psychologique et mÃ©dicale', 'description ici');

-- --------------------------------------------------------

--
-- Table structure for table `t_trust_campany`
--

CREATE TABLE `t_trust_campany` (
  `ttc_id` int(11) NOT NULL,
  `ttc_active` varchar(5) NOT NULL DEFAULT 'yes',
  `ttc_lib` varchar(50) DEFAULT NULL,
  `ttc_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_trust_campany`
--

INSERT INTO `t_trust_campany` (`ttc_id`, `ttc_active`, `ttc_lib`, `ttc_logo`) VALUES
(9, 'yes', 'logo bh', 'logo bh.png'),
(10, 'yes', 'logo-internieur', 'logo-internieur.png'),
(11, 'yes', 'rtci logo', 'rtci logo.png'),
(12, 'yes', 'tv5 mondelogo', 'tv5 mondelogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `t_type_event`
--

CREATE TABLE `t_type_event` (
  `tte_id` int(11) NOT NULL,
  `tte_active` varchar(5) NOT NULL DEFAULT 'yes',
  `tte_lib` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_type_event`
--

INSERT INTO `t_type_event` (`tte_id`, `tte_active`, `tte_lib`) VALUES
(1, 'yes', 'first'),
(3, 'yes', 'second'),
(4, 'yes', 'third');

-- --------------------------------------------------------

--
-- Table structure for table `t_type_formation`
--

CREATE TABLE `t_type_formation` (
  `ttf_id` int(11) NOT NULL,
  `ttf_active` varchar(5) NOT NULL DEFAULT 'yes',
  `ttf_lib` varchar(50) NOT NULL,
  `ttf_modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_type_formation`
--

INSERT INTO `t_type_formation` (`ttf_id`, `ttf_active`, `ttf_lib`, `ttf_modification_date`) VALUES
(1, 'yes', 'Licence', '2020-05-27 14:01:01'),
(3, 'yes', 'Masters', '2020-05-27 14:01:15'),
(4, 'yes', 'Certificats', '2020-05-27 14:01:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_event`
--
ALTER TABLE `t_event`
  ADD PRIMARY KEY (`eve_id`),
  ADD KEY `fk1_type_event` (`tte_id`);

--
-- Indexes for table `t_formation`
--
ALTER TABLE `t_formation`
  ADD PRIMARY KEY (`for_id`),
  ADD KEY `fk1_type_formation` (`ttf_id`);

--
-- Indexes for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  ADD PRIMARY KEY (`tlv_id`);

--
-- Indexes for table `t_partner`
--
ALTER TABLE `t_partner`
  ADD PRIMARY KEY (`par_id`);

--
-- Indexes for table `t_student_exp`
--
ALTER TABLE `t_student_exp`
  ADD PRIMARY KEY (`tse_id`);

--
-- Indexes for table `t_trust_campany`
--
ALTER TABLE `t_trust_campany`
  ADD PRIMARY KEY (`ttc_id`);

--
-- Indexes for table `t_type_event`
--
ALTER TABLE `t_type_event`
  ADD PRIMARY KEY (`tte_id`);

--
-- Indexes for table `t_type_formation`
--
ALTER TABLE `t_type_formation`
  ADD PRIMARY KEY (`ttf_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_event`
--
ALTER TABLE `t_event`
  MODIFY `eve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `t_formation`
--
ALTER TABLE `t_formation`
  MODIFY `for_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_la_vie`
--
ALTER TABLE `t_la_vie`
  MODIFY `tlv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `t_partner`
--
ALTER TABLE `t_partner`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `t_student_exp`
--
ALTER TABLE `t_student_exp`
  MODIFY `tse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_trust_campany`
--
ALTER TABLE `t_trust_campany`
  MODIFY `ttc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `t_type_event`
--
ALTER TABLE `t_type_event`
  MODIFY `tte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_type_formation`
--
ALTER TABLE `t_type_formation`
  MODIFY `ttf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_event`
--
ALTER TABLE `t_event`
  ADD CONSTRAINT `fk1_type_event` FOREIGN KEY (`tte_id`) REFERENCES `t_type_event` (`tte_id`);

--
-- Constraints for table `t_formation`
--
ALTER TABLE `t_formation`
  ADD CONSTRAINT `fk1_type_formation` FOREIGN KEY (`ttf_id`) REFERENCES `t_type_formation` (`ttf_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
