-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 01, 2019 at 08:11 AM
-- Server version: 5.7.27-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startup_punjab`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'divyaprakashmittal@gmail.com', '$2a$08$FGAjwqc3mPlilLXrIZ7fU..yU4eeH/OyjeZetEKJD0xfJmve3dg1y');

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`) VALUES
(1, 'ksjomxpom', 'nmpojdpojcpom'),
(2, 'asnin', 'ininpoijpom '),
(3, 'Info', 'As of now, the bootstrapped platform process over 100 Mn retail data points a month across different verticals.\r\n\r\nIn 2018, the startup also made it to the second cohort of the SaaS accelerator, Uppekha, which helped it increase its ARR by 4X, ARPU by 67% and revenue churn of -16%.\r\n\r\nThe startup is soon going to available on Shopify and has signed a technology partnership with an enterprise ecommerce platform. It has also applied for a patent for one of its products which is currently in private beta.\r\n\r\nWhile in 2018, its revenue split was India (80%) and North America (20%), the founders would like to see the revenue split at the end of 2019 as India (40%) and North America (60%). In India, it is currently working with brands like Candere by Kalyan Jewelers, Ritu Kumar, William Penn, Apollo Pharmacy to name a few.'),
(4, 'Important', 'In order to maintain variety and freshness of thoughts, the company work with freelancers from different regions, for not more than 20 designs with each. In 2018, it adopted a quick fashion strategy, wherein they launched 5-10 new products every 2 months and once sold out, its off the market.\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `pincode`) VALUES
(1, 'Lutheri', 140102),
(2, 'Sahauran', 140104),
(3, 'Mainpur', 140108),
(4, 'Khizrabad West', 140109),
(5, 'Chamkaur Sahib', 140112),
(6, 'Ghanauli', 140113),
(7, 'Nurpur Bedi', 140117),
(8, 'Anandpur Sahib', 140118),
(9, 'Takhatgarh', 140119),
(10, 'Ganguwal', 140123),
(11, 'Nangal Labour', 140124),
(12, 'Nangal', 140125),
(13, 'Nangal Sector 2', 140126),
(14, 'Ramgarh (Rupar)', 140202),
(15, 'Kharar', 140301),
(16, 'Manauli', 140306),
(17, 'Landran', 140307),
(18, 'Rajpura', 140401),
(19, 'Sangatpursodhian', 140405),
(20, 'Hamayunpur', 140406),
(21, 'Bassi', 140412),
(22, 'Gharuan', 140413),
(23, 'Lairu', 140501),
(24, 'Handesra', 140502),
(25, 'Dappar Ammunition Depot', 140506),
(26, 'Banur', 140601),
(27, 'Manakpur', 140602),
(28, 'Kauli', 140701),
(29, 'Ghanaur', 140702),
(30, 'Khamano Kalan', 140801),
(31, 'Sanghol', 140802),
(32, 'Ludhiana', 141001),
(33, 'Colony Ropar', 141002),
(34, 'Ludhiana', 141003),
(35, 'P A P Lines', 141004),
(36, 'Ludhiana', 141005),
(37, 'Ludhiana', 141007),
(38, 'Kidwai Nagar', 141008),
(39, 'Dakha', 141102),
(40, 'K C G S Sudhar', 141104),
(41, 'Saraba', 141105),
(42, 'Haliwara A D', 141106),
(43, 'Halwara', 141107),
(44, 'Pakhowal', 141108),
(45, 'Raikot', 141109),
(46, 'Jamalpur Awana', 141111),
(47, 'Katni Kalan', 141113),
(48, 'Samrala', 141114),
(49, 'Machhiwara', 141115),
(50, 'Gill', 141116),
(51, 'Frhlon', 141118),
(52, 'Malaudh', 141119),
(53, 'Sanehwal', 141120),
(54, 'Bahlolpur', 141121),
(55, 'Jaspal Bangar', 141122),
(56, 'Ghulal', 141124),
(57, 'Kila Raipur', 141201),
(58, 'Narangwal', 141203),
(59, 'Ghungrana', 141204),
(60, 'Latala', 141205),
(61, 'Ghawaddi', 141206),
(62, 'Samrai', 141302),
(63, 'Jandiala', 141303),
(64, 'Partabpur', 141305),
(65, 'Pasla', 141307),
(66, 'Talwan', 141308),
(67, 'Nurmahal', 141309),
(68, 'Railway Road', 141310),
(69, 'Dhesian Kahna', 141311),
(70, 'Mahatpur', 141315),
(71, 'Sarih', 141317),
(72, 'Khanna H O', 141401),
(73, 'A S College Khanna', 141402),
(74, 'Daheru', 141412),
(75, 'Dhamot', 141413),
(76, 'Isru', 141414),
(77, 'Jarg', 141415),
(78, 'Payal', 141416),
(79, 'Rahawan', 141417),
(80, 'Rampur', 141418),
(81, 'Ghurani Kalan', 141419),
(82, 'Doraha', 141421),
(83, 'Industrial Area Moga', 142001),
(84, 'Dalla', 142011),
(85, 'Baddowai', 142021),
(86, 'Lalton Kalan', 142022),
(87, 'Man', 142023),
(88, 'Jagraon Tehsil', 142026),
(89, 'Ayali Kalan', 142027),
(90, 'Jodhan', 142029),
(91, 'Kamalpur', 142030),
(92, 'Hathur', 142031),
(93, 'Bassian', 142032),
(94, 'Manoke(Ludhiana)', 142034),
(95, 'Mallah', 142035),
(96, 'Galib Kalan', 142036),
(97, 'Badhni Kalan', 142037),
(98, 'Canal Colony', 142040),
(99, 'Dharamkot', 142042),
(100, 'Makhu', 142044),
(101, 'Pattohira Singh', 142046),
(102, 'Ram Road Zira', 142047),
(103, 'Ghall Kalan', 142048),
(104, 'Talwandi Bhai', 142050),
(105, 'Fatehgarh Panjtoor', 142051),
(106, 'Ferozshah', 142052),
(107, 'Dhudike', 142053),
(108, 'Nihal Singh Wala', 142055),
(109, 'Gholia Khurd', 142056),
(110, 'Samadh Bhal', 142057),
(111, 'Ghall Khurd', 142059),
(112, 'Manawan', 142061),
(113, 'Amritsar', 143001),
(114, 'Amritsar', 143002),
(115, 'Jawala Fr Mls Amritsar', 143003),
(116, 'Khanna Ngr Amritsar', 143004),
(117, 'Amritsar', 143006),
(118, 'Vijay Nagar Amritsar', 143036),
(119, 'Raja Sansi', 143101),
(120, 'Ajnala', 143102),
(121, 'Chamiari', 143103),
(122, 'Amritsar', 143104),
(123, 'Chheharta Railway Station', 143105),
(124, 'Naraingarh (Amritsar)', 143106),
(125, 'Distillery Khasa', 143107),
(126, 'Attari', 143108),
(127, 'Chogawan', 143109),
(128, 'Preet Nagar', 143110),
(129, 'Khilchian', 143111),
(130, 'Rayon Silk Mills', 143112),
(131, 'Fatehpur Rajputan', 143113),
(132, 'Jandiala Guru', 143115),
(133, 'Thermal Power', 143116),
(134, 'Khadur Sahib', 143117),
(135, 'Vairowal', 143118),
(136, 'Mehta Chowk', 143144),
(137, 'Baba Bakala', 143202),
(138, 'Dera Baba Jaimal Singh', 143204),
(139, 'Sathiala', 143205),
(140, 'Chabhal', 143301),
(141, 'Kacha Pacca', 143304),
(142, 'Khalra', 143305),
(143, 'Chowk Darbar Sahib', 143401),
(144, 'Kang', 143406),
(145, 'Fatehbad (Tarn Taran)', 143407),
(146, 'Chohla Sahib', 143408),
(147, 'Sarhali', 143410),
(148, 'Dhotian', 143411),
(149, 'Harike', 143412),
(150, 'Sarai Amanat Khan', 143414),
(151, 'Kairon', 143415),
(152, 'Patti', 143416),
(153, 'Sabra', 143417),
(154, 'Voltoha', 143418),
(155, 'Khem Karan', 143419),
(156, 'Masatgarh', 143420),
(157, 'Gharyala', 143421),
(158, 'Verka', 143501),
(159, 'Kathu Nangal', 143502),
(160, 'Chawinda Deviwala', 143504),
(161, 'N G Batala', 143505),
(162, 'Batala', 143506),
(163, 'Aliwal', 143507),
(164, 'Fateh Nangal', 143508),
(165, 'Zaffarwal', 143510),
(166, 'Kalanaur(Gurdespur)', 143512),
(167, 'Kala Afghana', 143513),
(168, 'Ghoman', 143514),
(169, 'Dhariwal', 143515),
(170, 'Qadian', 143516),
(171, 'Maja Singh', 143518),
(172, 'Trimu Rd', 143521),
(173, 'Kaler Kalan', 143523),
(174, 'Villa Teja', 143524),
(175, 'Dorangla', 143526),
(176, 'Harchowal', 143527),
(177, 'Kahnuwan', 143528),
(178, 'Tiber', 143529),
(179, 'Tibri', 143530),
(180, 'Dina Nagar', 143531),
(181, 'Gharota', 143533),
(182, 'Taragarh', 143534),
(183, 'Marara', 143535),
(184, 'Awankha', 143536),
(185, 'Talibpur Pandoori', 143537),
(186, 'Ghani Ke Banger', 143538),
(187, 'Majitha', 143601),
(188, 'Fatehgarh Churian', 143602),
(189, 'Ram Dass', 143603),
(190, 'Dera Baba Nanak', 143604),
(191, 'Dhianpur', 143605),
(192, 'Chetanpur', 143606),
(193, 'Dharamkot Randhawa', 143607),
(194, 'Jalandhar City', 144001),
(195, 'Jalandhar', 144002),
(196, 'Jalandhar', 144003),
(197, 'Jalandhar', 144004),
(198, 'Jalandhar', 144005),
(199, 'Jalandhar', 144006),
(200, 'Basti Gujan', 144007),
(201, 'Chogetti', 144009),
(202, 'Dhanowali', 144010),
(203, 'Regional Engg College', 144011),
(204, 'Jamsher', 144020),
(205, 'Jalandhar', 144021),
(206, 'Garha', 144022),
(207, 'Dakoha', 144023),
(208, 'Jandu Singha', 144025),
(209, 'Lambra', 144026),
(210, 'O D Suranassi', 144027),
(211, 'Chitti', 144028),
(212, 'Patara', 144101),
(213, 'Adampur Doaba', 144102),
(214, 'Adampur A D', 144103),
(215, 'Darauli Kalan', 144104),
(216, 'Tanda (Hoshiarpur)', 144203),
(217, 'Urmar', 144204),
(218, 'Dasuya H O', 144205),
(219, 'Dholbaha', 144206),
(220, 'Garhdiwala', 144207),
(221, 'Hariana', 144208),
(222, 'Janauri', 144209),
(223, 'Tanda Ram Sahai', 144214),
(224, 'Talwara Township', 144216),
(225, 'Mehangarwal', 144218),
(226, 'Hajipur', 144221),
(227, 'Datarpur', 144222),
(228, 'Kamani Devi', 144223),
(229, 'Alawalpur', 144301),
(230, 'Kala Bakra', 144303),
(231, 'Lakhinder', 144304),
(232, 'Khudda', 144305),
(233, 'Phagwara', 144401),
(234, 'Satnampura', 144402),
(235, 'Ranipur', 144403),
(236, 'Ajnoha', 144404),
(237, 'Narur', 144405),
(238, 'Baddon', 144406),
(239, 'Domeli', 144407),
(240, 'Panchhat', 144408),
(241, 'Phillaur', 144410),
(242, 'Lasara', 144415),
(243, 'Aur', 144417),
(244, 'Barapind', 144418),
(245, 'Dayalpur', 144419),
(246, 'Sahlon', 144421),
(247, 'Uzapur', 144422),
(248, 'Dosanjh Kalan', 144502),
(249, 'Pharla', 144503),
(250, 'Banga', 144505),
(251, 'Mahil Gaila', 144506),
(252, 'Naura (Jalandhar)', 144508),
(253, 'Khankhana', 144509),
(254, 'Ladhana Jhikka', 144510),
(255, 'Dosanjh Khurd', 144511),
(256, 'Kahma', 144512),
(257, 'Nawanshahr', 144514),
(258, 'Jadla', 144515),
(259, 'Langroya', 144516),
(260, 'Rahon', 144517),
(261, 'Garcha', 144518),
(262, 'Bala Chaur', 144521),
(263, 'Kathgarh', 144522),
(264, 'Saroa', 144524),
(265, 'Sahilba', 144525),
(266, 'Mehandpur', 144526),
(267, 'Rampur Bilron', 144528),
(268, 'Saila Khurd', 144529),
(269, 'Jaijon', 144530),
(270, 'Samundra', 144532),
(271, 'Kapurthala', 144601),
(272, 'Chaudharian', 144606),
(273, 'Raipur Pirbuxwala', 144619),
(274, 'Kala Singhian', 144623),
(275, 'Nabha', 144624),
(276, 'Lodhi', 144626),
(277, 'Tharha Jadid', 144628),
(278, 'Lohian', 144629),
(279, 'Nangal Lubana', 144631),
(280, 'Chachoki', 144632),
(281, 'Sarhali (Kapurthala)', 144633),
(282, 'Malsian', 144701),
(283, 'Nangal Ambia', 144703),
(284, 'Kartarpur Qilla', 144801),
(285, 'Jagatjit Ngr Kapurthala', 144802),
(286, 'Dialpur', 144803),
(287, 'Dhilwan', 144804),
(288, 'Pattar Kalan', 144806),
(289, 'Pathankot', 145001),
(290, 'Mamoon', 145002),
(291, 'Dhar Kalan', 145021),
(292, 'Dunera', 145022),
(293, 'Madhopur', 145024),
(294, 'Malikpur', 145025),
(295, 'Narot Jaimal Singh', 145026),
(296, 'Haryal', 145027),
(297, 'Hoshiarpur', 146001),
(298, 'Sadhu Ashram', 146021),
(299, 'Piplanwala', 146022),
(300, 'Bajwara', 146023),
(301, 'Barian Kalan', 146101),
(302, 'Bassi Kalan', 146102),
(303, 'Mahilpur', 146105),
(304, 'Nangal Kalan', 146106),
(305, 'Paldi', 146107),
(306, 'Sarhala Kalan', 146108),
(307, 'Toto Mazra', 146109),
(308, 'Purhiran', 146111),
(309, 'Rajpur Bhayan', 146112),
(310, 'Nanda Chaur', 146114),
(311, 'Panjjodeota', 146115),
(312, 'Colony Patiala', 147001),
(313, 'Univ P O Patiala', 147002),
(314, 'Bahadurgarh(Patiala)', 147021),
(315, 'Samana', 147101),
(316, 'Ghagga', 147102),
(317, 'Sanaur', 147103),
(318, 'Chinarthal Kalan', 147104),
(319, 'Patran', 147105),
(320, 'Nabha', 147201),
(321, 'Amloh', 147203),
(322, 'Meemsa', 147205),
(323, 'Mandi Gobindgarh', 147301),
(324, 'Sangrur', 148001),
(325, 'Bahadurpur', 148004),
(326, 'Ubhewal', 148005),
(327, 'Badru Khan', 148006),
(328, 'Mehlam', 148007),
(329, 'Mangwal', 148008),
(330, 'Lohat Badi', 148009),
(331, 'Sandhaur', 148020),
(332, 'Ahmedgarh', 148021),
(333, 'Amargarh', 148022),
(334, 'Malerkotla', 148023),
(335, 'Dhuri', 148024),
(336, 'Pakki Khanauri', 148027),
(337, 'Cheema', 148029),
(338, 'Lehragaga', 148031),
(339, 'Nagra', 148032),
(340, 'Akalgarh', 148033),
(341, 'Ladda', 148034),
(342, 'Dirba', 148035),
(343, 'Rogla', 148036),
(344, 'Fatehgarh Panjjarian', 148038),
(345, 'Hamidi', 148039),
(346, 'Janal', 148040),
(347, 'Balram', 148043),
(348, 'Khanal Kalan', 148045),
(349, 'Banra', 148046),
(350, 'Chhahar', 148047),
(351, 'Gharanchon', 148048),
(352, 'Mauran', 148049),
(353, 'Bathan', 148050),
(354, 'Banbhauran', 148051),
(355, 'Barnala', 148101),
(356, 'Mahilkalan', 148104),
(357, 'Dhanaula', 148105),
(358, 'Longowal', 148106),
(359, 'Hadiaya', 148107),
(360, 'Tapa', 148108),
(361, 'Joga', 148109),
(362, 'Kattu', 148117),
(363, 'Nai Basti', 151001),
(364, 'G Nanak Thl Plt Bhatinda', 151002),
(365, 'Nathana', 151102),
(366, 'Rampura Phul', 151103),
(367, 'Phul', 151104),
(368, 'Balanwali', 151107),
(369, 'Salabatpur', 151108),
(370, 'Jaitu', 151202),
(371, 'Faridkot Mandi', 151203),
(372, 'Rlwy Bazar', 151204),
(373, 'Panjgrain Kalan', 151207),
(374, 'Bargari', 151208),
(375, 'Sandhawan', 151209),
(376, 'Alamwala', 151210),
(377, 'Raman', 151301),
(378, 'Talwasdi Saboo', 151302),
(379, 'Sangat', 151401),
(380, 'Bareta', 151501),
(381, 'Mansa', 151505),
(382, 'Jhunir', 151506),
(383, 'Sardulgarh', 151507),
(384, 'Maur', 151509),
(385, 'Railway Station', 152001),
(386, 'Ferozepur', 152003),
(387, 'Kandwala Amarkot', 152005),
(388, 'Mallanwala', 152021),
(389, 'Mamdot', 152023),
(390, 'Jalalabad', 152024),
(391, 'Bariwala', 152025),
(392, 'Sadar Bazar', 152026),
(393, 'Doba', 152031),
(394, 'Rupana', 152032),
(395, 'Mandi Aminganj', 152033),
(396, 'Gidderbaha', 152101),
(397, 'Gidderbaha C C', 152102),
(398, 'Jhumba', 152103),
(399, 'Malout', 152107),
(400, 'Ram Nagar', 152112),
(401, 'Lambi', 152113),
(402, 'Tappakhera', 152114),
(403, 'Abohar', 152116),
(404, 'Balluna', 152117),
(405, 'Ramsara', 152120),
(406, 'Khuikhera', 152121),
(407, 'Nihal Khera', 152122),
(408, 'Cloth Mkt Fazilka', 152123),
(409, 'Dharangwali', 152125),
(410, 'Paterwala', 152126),
(411, 'Churiwala Dhanna', 152127),
(412, 'Haripur', 152128),
(413, 'Panjkosi', 152129),
(414, 'Jhumianwali', 152130),
(415, 'Mauzam', 152131),
(416, 'Mauzgarh', 152132),
(417, 'New Secretariate', 160001),
(418, 'Industrial Area Sector 28', 160002),
(419, 'Aerodrome Chandigarh', 160003),
(420, 'Sector 8 Chandigarh', 160008),
(421, 'Sector 9 Chandigarh', 160009),
(422, 'Sector 10 Chandigarh', 160010),
(423, 'Sector 12 Chandigarh', 160011),
(424, 'Engg College', 160012),
(425, 'Sector 14 Chandigarh', 160014),
(426, 'Sector 16 Chandigarh', 160016),
(427, 'Chandigarh', 160017),
(428, 'Sector 18 Chandigarh', 160018),
(429, 'Sector 19 Chandigarh', 160019),
(430, 'Sector 29 Chandigarh', 160020),
(431, 'Sector 22 Chandigarh', 160022),
(432, 'Sector 23 Chandigarh', 160023),
(433, 'Sector 26 Chandigarh', 160026),
(434, 'Sector 31 Chandigarh', 160031),
(435, 'Sector 36 Chandigarh', 160036),
(436, 'Mohali Sas Nagar', 160055),
(437, 'Sector 59 Chandigarh', 160059),
(438, 'Sector 61 Chandigarh', 160061),
(439, 'Mani Mazra', 160101),
(440, 'Burail', 160106);

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`id`, `name`) VALUES
(1, 'AI'),
(2, 'Analytics'),
(3, 'Animation'),
(4, 'AR + VR'),
(5, 'Art & Photography'),
(6, 'Automotive'),
(7, 'Chemicals'),
(8, 'Telecommunication & Networking'),
(9, 'Computer Vision'),
(10, 'Construction'),
(11, 'Dating Matrimonial'),
(12, 'Design'),
(13, 'Education'),
(14, 'Non- Renewable Energy'),
(15, 'Renewable Energy'),
(16, 'Green Technology'),
(17, 'Enterprise Software'),
(18, 'Events'),
(19, 'Fashion'),
(20, 'Finance Technology'),
(21, 'Food & Beverages'),
(22, 'Technology Hardware'),
(23, 'Healthcare & Lifesciences'),
(24, 'Human Resources'),
(25, 'Internet of Things'),
(26, 'IT Services'),
(27, 'Media & Entertainment'),
(28, 'Nanotechnology'),
(29, 'Pets & Animals'),
(30, 'Professional & Commercial Services'),
(31, 'Real Estate'),
(32, 'Retail'),
(33, 'Other Specialty Retailers'),
(34, 'Robotics'),
(35, 'Safety'),
(36, 'Security Solutions'),
(37, 'House-Hold Services'),
(38, 'Social Impact'),
(39, 'Social Network'),
(40, 'Sports'),
(41, 'Textiles & Apparel'),
(42, 'Transportation & Storage'),
(43, 'Travel & Tourism'),
(44, 'Advertising'),
(45, 'Agriculture'),
(46, 'Others'),
(47, 'Logistics'),
(48, 'Airport Operations'),
(49, 'Waste Management'),
(50, 'Passenger Experience'),
(51, 'Biotechnology');

-- --------------------------------------------------------

--
-- Table structure for table `industry_sector`
--

CREATE TABLE `industry_sector` (
  `i_id` int(11) NOT NULL,
  `sec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `industry_sector`
--

INSERT INTO `industry_sector` (`i_id`, `sec_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 4),
(2, 5),
(2, 6),
(3, 1),
(4, 1),
(5, 1),
(5, 7),
(5, 8),
(5, 9),
(6, 1),
(6, 10),
(6, 11),
(6, 12),
(7, 1),
(7, 13),
(7, 14),
(8, 1),
(9, 1),
(10, 1),
(10, 15),
(10, 16),
(10, 17),
(10, 18),
(10, 19),
(11, 1),
(12, 1),
(12, 20),
(12, 21),
(13, 1),
(13, 22),
(13, 23),
(13, 24),
(13, 25),
(14, 1),
(14, 26),
(14, 27),
(14, 28),
(14, 29),
(15, 1),
(15, 30),
(15, 31),
(15, 32),
(15, 33),
(16, 1),
(16, 34),
(16, 35),
(17, 1),
(17, 36),
(17, 37),
(17, 38),
(17, 39),
(17, 40),
(17, 41),
(17, 42),
(17, 43),
(18, 1),
(18, 44),
(18, 45),
(19, 1),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(20, 1),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(20, 55),
(20, 56),
(20, 57),
(20, 58),
(20, 59),
(20, 60),
(20, 61),
(20, 62),
(20, 63),
(20, 64),
(20, 65),
(21, 1),
(21, 66),
(21, 67),
(21, 68),
(22, 1),
(22, 69),
(22, 70),
(22, 71),
(22, 72),
(22, 73),
(23, 1),
(23, 74),
(23, 75),
(23, 76),
(23, 77),
(23, 78),
(23, 79),
(23, 80),
(24, 1),
(24, 81),
(24, 82),
(24, 83),
(24, 84),
(24, 85),
(25, 1),
(25, 86),
(25, 87),
(25, 88),
(26, 1),
(26, 89),
(26, 90),
(26, 91),
(26, 92),
(26, 93),
(26, 94),
(26, 95),
(26, 96),
(26, 97),
(27, 1),
(27, 98),
(27, 99),
(27, 100),
(27, 101),
(27, 102),
(27, 103),
(27, 104),
(27, 105),
(27, 106),
(28, 1),
(29, 1),
(30, 1),
(30, 107),
(30, 108),
(30, 109),
(30, 110),
(30, 111),
(30, 112),
(31, 1),
(31, 113),
(31, 114),
(32, 1),
(32, 115),
(32, 116),
(32, 117),
(33, 1),
(33, 118),
(33, 119),
(33, 120),
(33, 121),
(33, 122),
(34, 1),
(34, 123),
(34, 124),
(35, 1),
(35, 125),
(36, 1),
(36, 126),
(36, 127),
(37, 1),
(37, 128),
(37, 129),
(37, 130),
(37, 131),
(38, 1),
(38, 132),
(39, 1),
(40, 1),
(40, 133),
(40, 134),
(41, 1),
(41, 135),
(41, 136),
(41, 137),
(41, 138),
(41, 139),
(42, 1),
(42, 140),
(42, 141),
(42, 142),
(43, 1),
(43, 143),
(43, 144),
(43, 145),
(43, 146),
(43, 147),
(43, 148),
(44, 1),
(44, 149),
(44, 150),
(45, 1),
(45, 151),
(45, 152),
(45, 153),
(45, 68),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `name`) VALUES
(1, 'Others'),
(2, 'Machine Learning'),
(3, ' NLP'),
(4, 'Buisness Intelligence'),
(5, ' Big Data'),
(6, ' Data Science'),
(7, 'Handicraft'),
(8, ' Art'),
(9, ' Photography'),
(10, 'Tires'),
(11, ' Parts'),
(12, ' Manufacturers'),
(13, 'Commodity'),
(14, ' Agricultural '),
(15, 'New-age Construction Technologies'),
(16, ' Construction Materials'),
(17, ' Construction & Engineering'),
(18, ' Construction Supplies & Fixtures'),
(19, ' Homebuilding'),
(20, 'Web Design'),
(21, ' Industrial Design'),
(22, 'E-learning'),
(23, ' Education Technology'),
(24, ' Skill Development'),
(25, ' Coaching'),
(26, 'Oil & Gas Exploration and Production'),
(27, ' Oil & Gas Drilling'),
(28, ' Oil Related Services and Equipment'),
(29, ' Oil & Gas Transportation Services'),
(30, 'Renewable Solar Energy'),
(31, ' Renewable Wind Energy'),
(32, ' Renewable Nuclear Energy'),
(33, ' Renewable Energy Solutions'),
(34, 'Waste management'),
(35, ' Clean Tech'),
(36, 'Cloud'),
(37, ' ERP'),
(38, ' CXM'),
(39, ' SCM'),
(40, ' Customer Support'),
(41, ' Collaboration'),
(42, ' Location Based'),
(43, ' Enterprise Mobility'),
(44, 'Wedding'),
(45, ' Event Management'),
(46, 'Fashion Technology'),
(47, ' Lifestyle'),
(48, ' Apparel'),
(49, ' Fan Merchandise'),
(50, ' Jewellery'),
(51, 'Crowdfunding'),
(52, ' Mobile wallets Payments'),
(53, ' Point of Sales'),
(54, ' Payment Platforms'),
(55, ' Trading'),
(56, ' Billing and Invoicing'),
(57, ' Personal Finance'),
(58, 'Insurance'),
(59, 'Advisory'),
(60, 'Business Finance'),
(61, 'P2P Lending'),
(62, 'Bitcoin and Blockchain'),
(63, 'Microfinance'),
(64, 'Foreign Exchange'),
(65, 'Accounting'),
(66, 'Restaurants'),
(67, 'Microbrewery'),
(68, 'Food Processing'),
(69, 'Embedded'),
(70, 'Semiconductor'),
(71, 'Electronics'),
(72, '3d printing'),
(73, 'Manufacturing'),
(74, 'Medical Devices Biomedical'),
(75, 'Health & Wellness'),
(76, 'Pharmaceutical'),
(77, 'Biotechnology'),
(78, 'Healthcare Services'),
(79, 'Healthcare IT'),
(80, 'Healthcare Technology'),
(81, 'Recruitment Jobs'),
(82, 'Training'),
(83, 'Skills Assessment'),
(84, 'Talent Management'),
(85, 'Internships'),
(86, 'Smart Home'),
(87, 'Manufacturing & Warehouse'),
(88, 'Wearables'),
(89, 'IT Consulting'),
(90, 'BPO'),
(91, 'KPO'),
(92, 'Web Development'),
(93, 'Product Development'),
(94, 'Application Development'),
(95, 'Testing'),
(96, 'IT Management'),
(97, 'Project Management'),
(98, 'Digital Media News'),
(99, 'Digital Media Video'),
(100, 'Digital Media Blogging'),
(101, 'Digital Media Publishing'),
(102, 'Digital Media'),
(103, 'Movies'),
(104, 'OOH Media'),
(105, 'Social Media'),
(106, 'Entertainment'),
(107, 'Environmental Services & Equipment'),
(108, 'Commercial Printing Services'),
(109, 'Employment Services'),
(110, 'Business Support Services'),
(111, 'Professional Information Services'),
(112, 'Business Support Supplies'),
(113, 'Housing'),
(114, ' Coworking Space'),
(115, 'Retail Technology'),
(116, 'Social Commerce'),
(117, 'Comparison Shopping'),
(118, 'Auto Vehicles'),
(119, ' Parts & Service Retailers'),
(120, 'Home Improvement Products & Services Retailers'),
(121, 'Home Furnishings Retailers'),
(122, 'Computer & Electronics Retailers'),
(123, 'Robotics Application'),
(124, ' Robotics Technology'),
(125, 'Personal Security'),
(126, 'Cyber Security'),
(127, ' Home Security'),
(128, 'Personal Care'),
(129, 'Laundry'),
(130, 'Baby Care'),
(131, 'Home Care'),
(132, 'NGO'),
(133, 'Outdoors'),
(134, ' Indoors'),
(135, 'Leather Textiles Goods'),
(136, 'Non- Leather Textiles Goods'),
(137, 'Apparel & Accessories'),
(138, 'Leather Footwear'),
(139, 'Non- Leather Footwear'),
(140, 'Freight & Logistics Services'),
(141, 'Passenger Transportation Services'),
(142, 'Transport Infrastructure'),
(143, 'Holiday Rentals'),
(144, 'Hotel'),
(145, 'Experiential Travel'),
(146, 'Ticketing'),
(147, 'Hospitality'),
(148, 'Facility Management'),
(149, 'Ad Tech'),
(150, ' Online Classified'),
(151, 'Dairy Farming'),
(152, 'Organic Agriculture'),
(153, 'Agri-Tech'),
(154, 'Food Processing');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(1, 'Consumer Internet'),
(2, 'Discovery'),
(3, 'E-commerce'),
(4, 'Engineering'),
(5, 'Enterprise Mobility'),
(6, 'Government'),
(7, 'Hyperlocal'),
(8, 'Location Based Services'),
(9, 'Manufacturing'),
(10, 'Marketplace'),
(11, 'Mobile'),
(12, 'Offline'),
(13, 'Online Aggregator'),
(14, 'Peer to Peer'),
(15, 'Platform'),
(16, 'Rental'),
(17, 'Research'),
(18, 'SaaS'),
(19, 'Sharing Economy'),
(20, 'Social Enterprise'),
(21, 'Subscription Commerce'),
(22, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `stage`
--

CREATE TABLE `stage` (
  `id` int(11) NOT NULL,
  `name` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stage`
--

INSERT INTO `stage` (`id`, `name`) VALUES
(1, 'Ideation'),
(2, 'Validation'),
(3, 'Early Traction'),
(4, 'Scaling');

-- --------------------------------------------------------

--
-- Table structure for table `startups`
--

CREATE TABLE `startups` (
  `id` int(11) NOT NULL,
  `logo` varchar(30) DEFAULT NULL,
  `name` mediumtext,
  `brief` longtext,
  `stage_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `funded` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `website` varchar(30) DEFAULT NULL,
  `app_link` varchar(30) DEFAULT NULL,
  `i_id` int(11) DEFAULT NULL,
  `sec_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startups`
--

INSERT INTO `startups` (`id`, `logo`, `name`, `brief`, `stage_id`, `c_id`, `funded`, `email`, `password`, `mobile`, `website`, `app_link`, `i_id`, `sec_id`) VALUES
(1, NULL, 'Divya Prakash Mittal', NULL, NULL, NULL, NULL, 'divyaprakashmittal@gmail.com', '$2b$08$QLFgY.J.bNJ5Tz4vYqVVm.cX.NGtvPBoAVrE7vWEvaHB5XEowsaji', NULL, NULL, NULL, NULL, NULL),
(2, NULL, 'Pulkit', NULL, NULL, NULL, NULL, 'dmittal_be17@thapar.edu', '$2b$08$4KN09hOSM.4vrSzP.vZb3OJgqN69zbcMGowShw.H5Ir2lsArhrlGq', NULL, NULL, NULL, NULL, NULL),
(3, NULL, 'GrabOn', 'GrabOn hopes to establish itself as an irreplaceable shopping companion for every Indian shopper in the next five years. The company is currently operating in multiple verticals including deals and coupons (GrabOn), price comparison (BestPriceOn) and gift cards.\r\n\r\nAs claimed by the company, it became profitable within 15 months of its launch. It currently boasts of 4000+ brand associations and 60+ strategic alliances and claims to surge ahead of its competition, beating them by an average of 35% in terms of monthly visitors.\r\n\r\nIt is now tapping the growth opportunities in Tier 2 and Tier 3 cities and targets to win over 40% of the gift cards space by 2020.\r\n\r\n', 2, 21, 0, 'contact@grabon.in', 'qwerty', 987654321, 'grabon.in', NULL, 32, NULL),
(4, NULL, 'GExpress', 'Gxpress aims to provide customised service solutions for international logistics and ecommerce sellers in India. On one hand it, enables businesses in selling products on online platforms such as Amazon and eBay, on the other, it allows Indian exporters, wholesalers, and manufacturers to sell their products globally via its logistics network.\r\n\r\nThe company achieved a revenue of INR 7 Cr in the first financial year and looks to double its revenue to INR 15 Cr by end of FY18. The company also has plans to expand its services further in India and internationally to locations like China, UK, USA, Dubai, Germany, Australia and the USA.\r\n\r\nThe company also plans to target manufacturers and artisans, whose business volumes will grow in the future.', 2, 216, 0, 'contact@gexpress.in', 'qwerty', 874584125, 'gexpress.in', NULL, 10, 1),
(5, NULL, 'Happy Fox', 'HappyFox is a multilingual help desk ticketing system supporting multiple customer support channels. It converts email, phone, web and chat requests into tickets and keep them organised.\r\n\r\nIt is currently rendering its services in 35 languages including English, Deutsche, Arabic, Portuguese, Dutch, Russian, Czech, Swedish, Turkish, Bulgarian, Norwegian, and Hindi.\r\n\r\nThe platform is used by thousands of companies of all sizes spread across diverse sectors such as — education, government, media, manufacturing among others. As mentioned on the company’s website, it serves over 12,000 companies spread across 70+ countries. This includes brands like Lowe’s, LeapFrog, Whirlpool, Kindling among others.\r\n\r\n', 3, 200, 1, 'contact@happyfox.in', 'qwerty', 574852145, 'happyfox.in', NULL, 26, 1),
(6, NULL, 'InterviewBit', 'InterviewBit offers a platform for free interview preparation. It gathers data about the users’ coding skills, their previous projects, and other technical attributes from sites like Stack Overflow and GitHub. This data is used to match the best candidates to a given job.\r\n\r\nPost that, they behave like a tech-assisted recruitment agency. The self-funded startup also sources pre-screened technical talent for coveted employers such as Facebook, Amazon, Uber and Google. In 2018, the company partnered with 500+ tech employers in India to help them find the best tech talent and also helped drive the entire campus hiring for companies like Uber, Toppr, Saavn, and Credit Suisse. The four key products of the company include — InterviewBit Hire, Campus Hiring,  Assessments and Code Collab.\r\n\r\nGoing forward, the startup aims to train and support placement of at least 25,000 students graduating in 2019 with a package of about INR 10 Lakhs Per Annum.', 4, 150, 0, 'contact@interviewbit.com', 'qwerty', 874596215, 'interviewbit.com', NULL, 17, 1),
(7, NULL, 'Mudraka', 'Mudraka was initially started as a marketplace for outdoor advertising, display and signage products with vendors across India.\r\n\r\nHowever, in order to address issues concerning quality control, consistency, service levels, packaging, etc, the founders had to internalise a number of processes. They then shifted from the marketplace model to the inventory model.\r\n\r\nScaling impressively year-on-year, clocking in 7X revenue in FY18 as compared to the previous financial year, Mudraka aims to grow its partner base besides generating ten times more indirect employment by 2021.\r\n\r\nIt counts brands like Google, Zoomcar, Muthoot, 1mg, Apollo Tyres, and Modi Pharma as well as FICCI among others as its clients. The founders aim to resolve some of the issues such as opaque pricing, and non-standardised products in this so far unorganised industry.\r\n\r\n', 1, 147, 0, 'contact@mudraka.com', 'qwerty', 748596321, 'mudraka.com', NULL, 14, 1),
(8, NULL, 'Quack Quack', 'For QuackQuack founder Ravi Mittal, the idea was simple. To solve the ‘dating’ problem of the singles. As he said in an earlier interaction with Inc42, “We aim to solve the problem for singles, help them find a date, make money in the process, and grow. It was never about raising funds or creating valuation.”\r\n\r\nThe startup claims it has 4 Mn users (as of January 2019) with 1.5 Mn users added in 2018 alone. The app has over 800K downloads, and has witnessed over 64 Mn message exchanges by 2.05 Mn mutual matches.\r\n\r\nIn 2019, the company plans to double its per day user count to 9,000. The startup is in the midst of launching an independent app focused on live one-to-one stranger video chat which is stealth mode right now. Going forward, the bootstrapped startup also has plans launching the app in 10 international languages.\r\n\r\n', 3, 199, 1, 'quack@quack.com', 'qwerty', 578426897, 'quack.com', NULL, 16, 1),
(9, NULL, 'ReferralYogi', 'ReferralYogi offers reputation management software to help local businesses identify their promoters, encourage referrals, manage references and create a buzz around their brands.\r\n\r\nIt enables businesses to send review invitations to customers via email and SMS; ask for reviews manually; schedule them or auto-trigger at the time of check-out; manage Google, Facebook and NPS reviews across all locations from a single dashboard; monitor reviews, get notified and respond to them.\r\n\r\nGoing ahead, the bootstrapped startup is looking to enter the U.S. SMB market and hit an ARR of $200K by Dec 2019.', 1, 20, 0, 'contact@ryogi.com', 'qwerty', 457826954, 'ryogi.com', NULL, 7, 1),
(10, NULL, 'Social Pilot', 'SocialPilot is solving the problem of managing multiple social media profiles efficiently. It provides seamless management of publishing, analytics and conversations for all social channels at one place.\r\n\r\nIn 2018, SocialPilot’s MRR (monthly recurring revenue) grew by 90% while the customer base grew by 22% in comparison to previous year. From a team perspective, it grew from 16 members to 30 members distributed across the US and India. It also launched a few capabilities to enhance collaboration between teams and manage publishing, engagement, and analytics for major social networks.\r\n\r\nThese included Social Inbox, White Labeled Reports, Dropbox Integration to access stored media directly from Dropbox, Google My Business Integration for listings right from SocialPilot and more.\r\n\r\nAs of January 2019, 80% of its customers are Small/Medium Agencies with team size of 2-20 and SMBs based in the US and EU, 15% are based in APAC and 5% of are based in India. Overall, it has a base of 100K users and is growing at 5%-7% month on a month organically. Going ahead, it aims to grow at least 100% YoY while staying profitable and lean.\r\n\r\n', 2, 20, 0, 'contact@socialpilot@com', 'qwerty', 485987628, 'socialpilot.com', NULL, 16, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `industry_sector`
--
ALTER TABLE `industry_sector`
  ADD KEY `fk_i_id` (`i_id`),
  ADD KEY `fk_sec_id` (`sec_id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_s_id` (`stage_id`),
  ADD KEY `f_sec_id` (`sec_id`),
  ADD KEY `f_i_id` (`i_id`),
  ADD KEY `f_c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;
--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `stage`
--
ALTER TABLE `stage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `startups`
--
ALTER TABLE `startups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `industry_sector`
--
ALTER TABLE `industry_sector`
  ADD CONSTRAINT `fk_i_id` FOREIGN KEY (`i_id`) REFERENCES `industry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sec_id` FOREIGN KEY (`sec_id`) REFERENCES `sector` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `startups`
--
ALTER TABLE `startups`
  ADD CONSTRAINT `f_c_id` FOREIGN KEY (`c_id`) REFERENCES `city` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f_i_id` FOREIGN KEY (`i_id`) REFERENCES `industry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f_s_id` FOREIGN KEY (`stage_id`) REFERENCES `stage` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f_sec_id` FOREIGN KEY (`sec_id`) REFERENCES `sector` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
