-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2026 at 07:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `art_gallery`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`) VALUES
(59, 'ALANNA EAKIN'),
(73, 'ALEXANDER SMALL'),
(57, 'ALEXANDRA CHAUCHEREAU'),
(26, 'ANDREW CRANE'),
(4, 'ANGELA EDWARDS'),
(32, 'ANGELA SMITH'),
(15, 'ANNA SUDBINA'),
(16, 'APOLLINARIA MANKO'),
(47, 'ARIADNA DANE'),
(37, 'ASHLEY HANSON'),
(27, 'BARBARA HOWEY'),
(48, 'BRYAN LAVELLE'),
(52, 'CAROLINE CORNELIUS'),
(45, 'CAS SNELGAR'),
(19, 'CHARLOTTE ROSEBERRY'),
(10, 'CLAIRE CANSICK'),
(67, 'CLARE THATCHER'),
(53, 'CRIMSON BONER'),
(22, 'DAMIEN MAURO'),
(55, 'DAVID WIGHTMAN'),
(35, 'DAY BOWMAN'),
(64, 'DMITRIEVA DARIA'),
(12, 'ELLIE WANG'),
(8, 'FERNANDO VELAZQUEZ'),
(21, 'FLETCHER SIBTHORP'),
(72, 'GEORGIA BEAUMONT'),
(31, 'GEORGIE MCEWAN'),
(76, 'HENRY WARD'),
(61, 'JANE PRYOR'),
(3, 'JESSICA HOLMES'),
(36, 'JO BERRY'),
(66, 'JONATHAN ALIBONE'),
(60, 'JULIET E P GIBBS'),
(42, 'KALLY LAURENCE'),
(54, 'KATE LOWE'),
(25, 'L\'ATLAS'),
(23, 'LAURA CRAMER'),
(28, 'LEE KAY-BARRY'),
(34, 'LISA DENYER'),
(1, 'LOTTIE COLE'),
(7, 'LUKE ELWES'),
(70, 'MAGDALENA GLUSZAK - HOLEKSA'),
(77, 'MAGGIE ROYLE'),
(13, 'MARTINE LAFONT'),
(11, 'MELINDA MATYAS'),
(38, 'MICHAEL COPPELOV'),
(24, 'MICHAEL TIERNEY'),
(5, 'NANCY COLLANTINE'),
(58, 'NARBI PRICE'),
(33, 'NATHALIE MAQUET'),
(78, 'NICK MALONE'),
(75, 'NICOLE ROSE'),
(46, 'ODILE FRACHET'),
(65, 'OLGA MUN'),
(17, 'PAUL ANDERSON MORROW'),
(6, 'PAUL BENNETT'),
(62, 'PEN DALTON'),
(40, 'PERDITA SINCLAIR'),
(20, 'RACHEL MERCER'),
(80, 'ROBBIE BUSHE'),
(41, 'ROBERT DUNT'),
(9, 'ROBERT OWEN BLOOMFIELD'),
(30, 'RUTH PHILO'),
(44, 'SABRINA SHAH'),
(18, 'SARAH EMILY PORTER'),
(56, 'SARAH NEEDHAM'),
(81, 'SASHA C. BOKOBZA'),
(39, 'SEÇIL EREL'),
(71, 'SINÉAD ALDRIDGE'),
(74, 'SONIA MARTIN'),
(69, 'SOPHIE LEVYGALEY'),
(63, 'STEPH GOODGER'),
(2, 'TAYA DE LA CRUZ'),
(79, 'THE FRYM'),
(50, 'THOMAS MACGREGOR'),
(49, 'TIM FAWCETT'),
(29, 'TOM BERRY'),
(68, 'TOMASZ CICHOWSKI'),
(14, 'TRUDIE TARA MOULTON'),
(43, 'VICTORIA HORKAN'),
(51, 'VIRGINIE BASTIÉ');

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `Artwork_Id` int(11) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `Artist_Name` varchar(50) DEFAULT NULL,
  `Artwork_Title` varchar(255) DEFAULT NULL,
  `Dimensions` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`Artwork_Id`, `image_path`, `Artist_Name`, `Artwork_Title`, `Dimensions`, `Price`, `artist_id`) VALUES
(1, 'In_the_Wings__Interior_with_Dame_Laura_Knight_1.jpg', 'LOTTIE COLE', 'In the Wings, Interior with Dame Laura Knight', '46x60 cm', 3665.00, 1),
(2, 'Skin_Deep_Fragments_10_2.jpg', 'TAYA DE LA CRUZ', 'Skin Deep Fragments 10', '84x44 cm', 6285.00, 2),
(3, 'Hothouse_Opera_IV_3.jpg', 'JESSICA HOLMES', 'Hothouse Opera IV', '100x80 cm', 2375.00, 3),
(4, 'In_the_Moment_4.jpg', 'ANGELA EDWARDS', 'In the Moment', '100x100 cm', 3360.00, 4),
(5, 'Standard_bearer_5.jpg', 'NANCY COLLANTINE', 'Standard bearer', '90x90 cm', 2105.00, 5),
(6, 'Lost_Horizons_6.jpg', 'PAUL BENNETT', 'Lost Horizons', '101x76 cm', 2870.00, 6),
(7, 'Waterline__25_7.jpg', 'LUKE ELWES', 'Waterline (25)', '57x76 cm', 3390.00, 7),
(8, 'Catched_8.jpg', 'NANCY COLLANTINE', 'Catched', '100x100 cm', 2180.00, 5),
(9, 'Play_9.jpg', 'FERNANDO VELAZQUEZ', 'Play', '76x152 cm', 4480.00, 8),
(10, 'City_Place_10.jpg', 'ANGELA EDWARDS', 'City Place', '80x100 cm', 2485.00, 4),
(11, 'From_the_Shadow_11.jpg', 'PAUL BENNETT', 'From the Shadow', '100x100 cm', 3730.00, 6),
(12, 'Inviolate_12.jpg', 'NANCY COLLANTINE', 'Inviolate', '75x55 cm', 1955.00, 5),
(13, 'sh____d____n_17_13.jpg', 'ROBERT OWEN BLOOMFIELD', 'sháńdíín 17', '40x60 cm', 645.00, 9),
(14, 'Eternal_Verdure_III_14.jpg', 'JESSICA HOLMES', 'Eternal Verdure III', '100x80 cm', 2375.00, 3),
(15, 'Yet_The_Sea_Never_Overflows_II_15.jpg', 'CLAIRE CANSICK', 'Yet The Sea Never Overflows II', '50x65 cm', 1600.00, 10),
(16, 'The_diarist_in_1943__Hommage_to_Anne_Hrank_16.jpg', 'MELINDA MATYAS', 'The diarist in 1943 (Hommage to Anne Hrank)', '91x61 cm', 3940.00, 11),
(17, 'Younger_17.jpg', 'ELLIE WANG', 'Younger', '102x82 cm', 4030.00, 12),
(18, 'Herbes_2_18.jpg', 'MARTINE LAFONT', 'Herbes 2', '130x130 cm', 4595.00, 13),
(19, 'Forever___Forever_19.jpg', 'TRUDIE TARA MOULTON', 'Forever & Forever', '31x31 cm', 1145.00, 14),
(20, 'I_Used_To_Have_Legs_2_20.jpg', 'ANNA SUDBINA', 'I Used To Have Legs 2', '100x100 cm', 3860.00, 15),
(21, 'A_Pair_of_Contrasts_21.jpg', 'APOLLINARIA MANKO', 'A Pair of Contrasts', '60x50 cm', 1100.00, 16),
(22, 'The_Island_22.jpg', 'NANCY COLLANTINE', 'The Island', '75x55 cm', 1955.00, 5),
(23, 'Legacy_II_23.jpg', 'TAYA DE LA CRUZ', 'Legacy II', '31x22 cm', 2375.00, 2),
(24, 'Holmfirth_24.jpg', 'PAUL ANDERSON MORROW', 'Holmfirth', '74x54 cm', 1105.00, 17),
(25, 'Promenade_002_25.jpg', 'SARAH EMILY PORTER', 'Promenade 002', '53x53 cm', 1075.00, 18),
(26, 'Trig_II_26.jpg', 'CHARLOTTE ROSEBERRY', 'Trig II', '51x51 cm', 4205.00, 19),
(27, 'Martha_27.jpg', 'RACHEL MERCER', 'Martha', '75x60 cm', 2805.00, 20),
(28, 'Old_Fashioned_28.jpg', 'ANNA SUDBINA', 'Old Fashioned', '100x76 cm', 4070.00, 15),
(29, 'Replicant_II___Tear_in_the_Rain_29.jpg', 'FLETCHER SIBTHORP', 'Replicant II - Tear in the Rain', '91x91 cm', 2100.00, 21),
(30, 'Land_to_Light_30.jpg', 'PAUL BENNETT', 'Land to Light', '50x50 cm', 1135.00, 6),
(31, 'Landscape_2_31.jpg', 'DAMIEN MAURO', 'Landscape 2', '92x73 cm', 3155.00, 22),
(32, 'Botallack__Cornwall_32.jpg', 'LAURA CRAMER', 'Botallack, Cornwall', '100x80 cm', 3390.00, 23),
(33, 'Party_Icon_33.jpg', 'MICHAEL TIERNEY', 'Party Icon', '80x80 cm', 0.00, 24),
(34, 'Love_yourself_and_dance_34.jpg', 'L\'ATLAS', 'Love yourself and dance', '140x100 cm', 16200.00, 25),
(35, 'Rio_35.jpg', 'ANDREW CRANE', 'Rio', '59x74 cm', 1450.00, 26),
(36, 'High_Summer_in_the_long_grass_36.jpg', 'BARBARA HOWEY', 'High Summer in the long grass', '41x51 cm', 1630.00, 27),
(37, 'Awake__I_Rose_37.jpg', 'LEE KAY-BARRY', 'Awake, I Rose', '41x31 cm', 1160.00, 28),
(38, 'Firestarters_38.jpg', 'TOM BERRY', 'Firestarters', '111x59 cm', 2985.00, 29),
(39, 'Sun_Phase_39.jpg', 'RUTH PHILO', 'Sun Phase', '30x30 cm', 1220.00, 30),
(40, 'Hop_Splotch_40.jpg', 'GEORGIE MCEWAN', 'Hop Splotch', '30x30 cm', 655.00, 31),
(41, 'Maze_IV_41.jpg', 'CHARLOTTE ROSEBERRY', 'Maze IV', '91x61 cm', 4070.00, 19),
(42, 'Softly_softly_42.jpg', 'ANGELA SMITH', 'Softly-softly', '43x43 cm', 1330.00, 32),
(43, 'Bouquet_45_43.jpg', 'NATHALIE MAQUET', 'Bouquet 45', '100x81 cm', 1980.00, 33),
(44, 'Cause_Effect_I_44.jpg', 'LISA DENYER', 'Cause/Effect I', '40x31 cm', 725.00, 34),
(45, 'Quay_6_45.jpg', 'DAY BOWMAN', 'Quay 6', '102x112 cm', 0.00, 35),
(46, 'Untitled_2020__reCAPTCHA_46.jpg', 'JO BERRY', 'Untitled 2020 (reCAPTCHA)', '76x76 cm', 2440.00, 36),
(47, 'Red_Rock_47.jpg', 'TRUDIE TARA MOULTON', 'Red Rock', '112x188 cm', 5415.00, 14),
(48, 'Red_Cranes_48.jpg', 'ASHLEY HANSON', '\'Red Cranes\'', '60x70 cm', 2505.00, 37),
(49, 'How_to_Run_Naked_49.jpg', 'MICHAEL COPPELOV', 'How to Run Naked', '160x200 cm', 12710.00, 38),
(50, 'Coherence_Blue_and_Yellow_50.jpg', 'SEÇIL EREL', 'Coherence Blue and Yellow', '60x50 cm', 3240.00, 39),
(51, 'Recalling_the_Plesiosaur_51.jpg', 'PERDITA SINCLAIR', 'Recalling the Plesiosaur', '100x70 cm', 3395.00, 40),
(52, 'Wallis_Distortion_52.jpg', 'ROBERT DUNT', 'Wallis Distortion', '76x76 cm', 3295.00, 41),
(53, 'Empty_Nest_53.jpg', 'KALLY LAURENCE', 'Empty Nest', '110x106 cm', 1560.00, 42),
(54, 'Holding_It_Togetherness_54.jpg', 'VICTORIA HORKAN', 'Holding It Togetherness', '100x100 cm', 4220.00, 43),
(55, 'Good_enough_55.jpg', 'SABRINA SHAH', 'Good enough', '40x30 cm', 0.00, 44),
(56, '047A3022_56.jpg', 'CAS SNELGAR', '047A3022', '50x50 cm', 2595.00, 45),
(57, 'S__rie_Atmosph__re_2_57.jpg', 'ODILE FRACHET', 'Série Atmosphère 2', '69x19 cm', 1620.00, 46),
(58, 'Sideways__Tenderbeing_Series_58.jpg', 'ARIADNA DANE', 'Sideways (Tenderbeing Series)', '90x70 cm', 3325.00, 47),
(59, 'Tipping_Point__Cadmium_Lemon___Cadmium_Red_Genuine___1_59.jpg', 'BRYAN LAVELLE', 'Tipping Point (Cadmium Lemon / Cadmium Red Genuine) #1', '30x30 cm', 785.00, 48),
(60, 'As_Yet_60.jpg', 'TIM FAWCETT', 'As Yet', '76x76 cm', 2565.00, 49),
(61, 'Camoglaged_Admin_block_61.jpg', 'THOMAS MACGREGOR', 'Camoglaged Admin block', '100x100 cm', 5915.00, 50),
(62, 'Par_les_soirs_bleus_d___t_62.jpg', 'VIRGINIE BASTIÉ', 'Par les soirs bleus d\'été', '146x97 cm', 7600.00, 51),
(63, 'A_harmless_Guise_63.jpg', 'CAROLINE CORNELIUS', 'A harmless Guise', '49x80 cm', 2370.00, 52),
(64, 'Bananamori_64.jpg', 'CRIMSON BONER', 'Bananamori', '60x80 cm', 1490.00, 53),
(65, 'A_Different_Perspective_65.jpg', 'KATE LOWE', 'A Different Perspective', '130x90 cm', 2270.00, 54),
(66, 'Dio_66.jpg', 'DAVID WIGHTMAN', 'Dio', '55x55 cm', 2050.00, 55),
(67, 'Parallel_Strata_67.jpg', 'SARAH NEEDHAM', 'Parallel Strata', '150x120 cm', 8335.00, 56),
(68, 'Rue_Claude_Perrault_68.jpg', 'ALEXANDRA CHAUCHEREAU', 'Rue Claude Perrault', '73x92 cm', 1570.00, 57),
(69, 'Untitled_Flowers_Study_13_69.jpg', 'NARBI PRICE', 'Untitled Flowers Study 13', '30x25 cm', 1260.00, 58),
(70, 'You_Were_Such_A_Pretty_Dream_70.jpg', 'ALANNA EAKIN', 'You Were Such A Pretty Dream', '43x33 cm', 595.00, 59),
(71, 'Glitch_71.jpg', 'JULIET E P GIBBS', 'Glitch', '46x41 cm', 1060.00, 60),
(72, 'Daydream_Believer_3_72.jpg', 'JANE PRYOR', 'Daydream Believer 3', '61x76 cm', 1580.00, 61),
(73, 'Amuse_Yeux__1_73.jpg', 'PEN DALTON', 'Amuse Yeux #1', '25x30 cm', 370.00, 62),
(74, 'The_Crossing_6_74.jpg', 'STEPH GOODGER', 'The Crossing 6', '120x135 cm', 7055.00, 63),
(75, 'There_were_signs_everywhere_75.jpg', 'CAROLINE CORNELIUS', 'There were signs everywhere', '36x28 cm', 1075.00, 52),
(76, 'February_forest_76.jpg', 'DMITRIEVA DARIA', 'February forest', '100x80 cm', 5815.00, 64),
(77, 'Yellow_figure_77.jpg', 'OLGA MUN', 'Yellow figure', '145x91 cm', 6455.00, 65),
(78, 'Dark_Clouds_and_Black_Earth_78.jpg', 'JONATHAN ALIBONE', 'Dark Clouds and Black Earth', '18x13 cm', 355.00, 66),
(79, 'Viewpoint_III_79.jpg', 'CLARE THATCHER', 'Viewpoint III', '30x40 cm', 1340.00, 67),
(80, 'Blackish_Mood__12_80.jpg', 'TOMASZ CICHOWSKI', 'Blackish Mood #12', '200x105 cm', 4900.00, 68),
(81, 'TURQUOISE_water_2025_81.jpg', 'SOPHIE LEVYGALEY', 'TURQUOISE water 2025', '60x50 cm', 2800.00, 69),
(82, 'The_imitator_82.jpg', 'MAGDALENA GLUSZAK - HOLEKSA', 'The imitator', '90x120 cm', 6305.00, 70),
(83, 'A_measure_of_a_disorder_of_a_system_1_83.jpg', 'SINÉAD ALDRIDGE', 'A measure of a disorder of a system 1', '50x40 cm', 1620.00, 71),
(84, 'Filament_84.jpg', 'GEORGIA BEAUMONT', 'Filament', '92x62 cm', 2980.00, 72),
(85, 'Come_Forth_85.jpg', 'ALEXANDER SMALL', 'Come Forth', '31x23 cm', 445.00, 73),
(86, 'constraint_86.jpg', 'PEN DALTON', 'constraint', '30x30 cm', 1145.00, 62),
(87, 'Untitled_Flowers_Study_3_87.jpg', 'NARBI PRICE', 'Untitled Flowers Study 3', '30x25 cm', 1265.00, 58),
(88, 'Interior__Black_Cat_88.jpg', 'SONIA MARTIN', 'Interior (Black Cat)', '102x81 cm', 2535.00, 74),
(89, 'the_Dream_Maker_89.jpg', 'NICOLE ROSE', 'the Dream Maker', '100x100 cm', 4755.00, 75),
(90, 'Waterline__13_90.jpg', 'LUKE ELWES', 'Waterline (13)', '57x76 cm', 3390.00, 7),
(91, 'Side_Saddle_91.jpg', 'HENRY WARD', 'Side Saddle', '100x125 cm', 8075.00, 76),
(92, 'Revolution_at_the_Table_92.jpg', 'CAROLINE CORNELIUS', 'Revolution at the Table', '35x45 cm', 1220.00, 52),
(93, 'City_of_Glass_32__The_Apartment_93.jpg', 'ASHLEY HANSON', 'City of Glass 32 (The Apartment)', '70x100 cm', 2710.00, 37),
(94, 'Skin_Deep_Special_Edition_02_94.jpg', 'TAYA DE LA CRUZ', 'Skin Deep Special Edition 02', '30x30 cm', 1400.00, 2),
(95, 'We___re_all_looking_at_a_different_picture_95.jpg', 'MAGGIE ROYLE', 'We’re all looking at a different picture', '60x60 cm', 1195.00, 77),
(96, 'Quantum_Entanglement_IX_96.jpg', 'NICK MALONE', 'Quantum Entanglement IX', '50x50 cm', 1685.00, 78),
(97, 'Talent_97.jpg', 'THE FRYM', 'Talent', '90x70 cm', 2540.00, 79),
(98, 'Comic_Reader_98.jpg', 'ROBBIE BUSHE', 'Comic Reader', '40x50 cm', 1595.00, 80),
(99, 'Biblioth__que_de_l__nine_99.jpg', 'SASHA C. BOKOBZA', 'Bibliothèque de lénine', '60x80 cm', 2730.00, 81),
(100, 'Rotational_Equilibrium_III_100.jpg', 'SARAH EMILY PORTER', 'Rotational Equilibrium III', '62x62 cm', 1275.00, 18);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`),
  ADD UNIQUE KEY `artist_name` (`artist_name`);

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`Artwork_Id`),
  ADD KEY `fk_artist` (`artist_id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `artworks`
--
ALTER TABLE `artworks`
  MODIFY `Artwork_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artworks`
--
ALTER TABLE `artworks`
  ADD CONSTRAINT `fk_artist` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
