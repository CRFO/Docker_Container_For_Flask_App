-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2022 at 02:20 PM
-- Server version: 8.0.18
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedulefyi`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyId` int(11) NOT NULL,
  `companyName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `address1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `address2` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `stateProvince` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `postalCode` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(128) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyId`, `companyName`, `address1`, `address2`, `city`, `stateProvince`, `postalCode`, `country`) VALUES
(1, 'IP Engineering', '4509 Amy Lane', 'test', 'Flower Mound', 'TX', '75022', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `countryId` int(11) NOT NULL,
  `abbreviationName` varchar(3) COLLATE utf8mb4_general_ci NOT NULL,
  `countryName` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `phoneCode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`countryId`, `abbreviationName`, `countryName`, `phoneCode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AL', 'Albania', 355),
(3, 'DZ', 'Algeria', 213),
(4, 'AS', 'American Samoa', 1684),
(5, 'AD', 'Andorra', 376),
(6, 'AO', 'Angola', 244),
(7, 'AI', 'Anguilla', 1264),
(8, 'AQ', 'Antarctica', 0),
(9, 'AG', 'Antigua And Barbuda', 1268),
(10, 'AR', 'Argentina', 54),
(11, 'AM', 'Armenia', 374),
(12, 'AW', 'Aruba', 297),
(13, 'AU', 'Australia', 61),
(14, 'AT', 'Austria', 43),
(15, 'AZ', 'Azerbaijan', 994),
(16, 'BS', 'Bahamas The', 1242),
(17, 'BH', 'Bahrain', 973),
(18, 'BD', 'Bangladesh', 880),
(19, 'BB', 'Barbados', 1246),
(20, 'BY', 'Belarus', 375),
(21, 'BE', 'Belgium', 32),
(22, 'BZ', 'Belize', 501),
(23, 'BJ', 'Benin', 229),
(24, 'BM', 'Bermuda', 1441),
(25, 'BT', 'Bhutan', 975),
(26, 'BO', 'Bolivia', 591),
(27, 'BA', 'Bosnia and Herzegovina', 387),
(28, 'BW', 'Botswana', 267),
(29, 'BV', 'Bouvet Island', 0),
(30, 'BR', 'Brazil', 55),
(31, 'IO', 'British Indian Ocean Territory', 246),
(32, 'BN', 'Brunei', 673),
(33, 'BG', 'Bulgaria', 359),
(34, 'BF', 'Burkina Faso', 226),
(35, 'BI', 'Burundi', 257),
(36, 'KH', 'Cambodia', 855),
(37, 'CM', 'Cameroon', 237),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 238),
(40, 'KY', 'Cayman Islands', 1345),
(41, 'CF', 'Central African Republic', 236),
(42, 'TD', 'Chad', 235),
(43, 'CL', 'Chile', 56),
(44, 'CN', 'China', 86),
(45, 'CX', 'Christmas Island', 61),
(46, 'CC', 'Cocos (Keeling) Islands', 672),
(47, 'CO', 'Colombia', 57),
(48, 'KM', 'Comoros', 269),
(49, 'CG', 'Republic Of The Congo', 242),
(50, 'CD', 'Democratic Republic Of The Congo', 242),
(51, 'CK', 'Cook Islands', 682),
(52, 'CR', 'Costa Rica', 506),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225),
(54, 'HR', 'Croatia (Hrvatska)', 385),
(55, 'CU', 'Cuba', 53),
(56, 'CY', 'Cyprus', 357),
(57, 'CZ', 'Czech Republic', 420),
(58, 'DK', 'Denmark', 45),
(59, 'DJ', 'Djibouti', 253),
(60, 'DM', 'Dominica', 1767),
(61, 'DO', 'Dominican Republic', 1809),
(62, 'TP', 'East Timor', 670),
(63, 'EC', 'Ecuador', 593),
(64, 'EG', 'Egypt', 20),
(65, 'SV', 'El Salvador', 503),
(66, 'GQ', 'Equatorial Guinea', 240),
(67, 'ER', 'Eritrea', 291),
(68, 'EE', 'Estonia', 372),
(69, 'ET', 'Ethiopia', 251),
(70, 'XA', 'External Territories of Australia', 61),
(71, 'FK', 'Falkland Islands', 500),
(72, 'FO', 'Faroe Islands', 298),
(73, 'FJ', 'Fiji Islands', 679),
(74, 'FI', 'Finland', 358),
(75, 'FR', 'France', 33),
(76, 'GF', 'French Guiana', 594),
(77, 'PF', 'French Polynesia', 689),
(78, 'TF', 'French Southern Territories', 0),
(79, 'GA', 'Gabon', 241),
(80, 'GM', 'Gambia The', 220),
(81, 'GE', 'Georgia', 995),
(82, 'DE', 'Germany', 49),
(83, 'GH', 'Ghana', 233),
(84, 'GI', 'Gibraltar', 350),
(85, 'GR', 'Greece', 30),
(86, 'GL', 'Greenland', 299),
(87, 'GD', 'Grenada', 1473),
(88, 'GP', 'Guadeloupe', 590),
(89, 'GU', 'Guam', 1671),
(90, 'GT', 'Guatemala', 502),
(91, 'XU', 'Guernsey and Alderney', 44),
(92, 'GN', 'Guinea', 224),
(93, 'GW', 'Guinea-Bissau', 245),
(94, 'GY', 'Guyana', 592),
(95, 'HT', 'Haiti', 509),
(96, 'HM', 'Heard and McDonald Islands', 0),
(97, 'HN', 'Honduras', 504),
(98, 'HK', 'Hong Kong S.A.R.', 852),
(99, 'HU', 'Hungary', 36),
(100, 'IS', 'Iceland', 354),
(101, 'IN', 'India', 91),
(102, 'ID', 'Indonesia', 62),
(103, 'IR', 'Iran', 98),
(104, 'IQ', 'Iraq', 964),
(105, 'IE', 'Ireland', 353),
(106, 'IL', 'Israel', 972),
(107, 'IT', 'Italy', 39),
(108, 'JM', 'Jamaica', 1876),
(109, 'JP', 'Japan', 81),
(110, 'XJ', 'Jersey', 44),
(111, 'JO', 'Jordan', 962),
(112, 'KZ', 'Kazakhstan', 7),
(113, 'KE', 'Kenya', 254),
(114, 'KI', 'Kiribati', 686),
(115, 'KP', 'Korea North', 850),
(116, 'KR', 'Korea South', 82),
(117, 'KW', 'Kuwait', 965),
(118, 'KG', 'Kyrgyzstan', 996),
(119, 'LA', 'Laos', 856),
(120, 'LV', 'Latvia', 371),
(121, 'LB', 'Lebanon', 961),
(122, 'LS', 'Lesotho', 266),
(123, 'LR', 'Liberia', 231),
(124, 'LY', 'Libya', 218),
(125, 'LI', 'Liechtenstein', 423),
(126, 'LT', 'Lithuania', 370),
(127, 'LU', 'Luxembourg', 352),
(128, 'MO', 'Macau S.A.R.', 853),
(129, 'MK', 'Macedonia', 389),
(130, 'MG', 'Madagascar', 261),
(131, 'MW', 'Malawi', 265),
(132, 'MY', 'Malaysia', 60),
(133, 'MV', 'Maldives', 960),
(134, 'ML', 'Mali', 223),
(135, 'MT', 'Malta', 356),
(136, 'XM', 'Man (Isle of)', 44),
(137, 'MH', 'Marshall Islands', 692),
(138, 'MQ', 'Martinique', 596),
(139, 'MR', 'Mauritania', 222),
(140, 'MU', 'Mauritius', 230),
(141, 'YT', 'Mayotte', 269),
(142, 'MX', 'Mexico', 52),
(143, 'FM', 'Micronesia', 691),
(144, 'MD', 'Moldova', 373),
(145, 'MC', 'Monaco', 377),
(146, 'MN', 'Mongolia', 976),
(147, 'MS', 'Montserrat', 1664),
(148, 'MA', 'Morocco', 212),
(149, 'MZ', 'Mozambique', 258),
(150, 'MM', 'Myanmar', 95),
(151, 'NA', 'Namibia', 264),
(152, 'NR', 'Nauru', 674),
(153, 'NP', 'Nepal', 977),
(154, 'AN', 'Netherlands Antilles', 599),
(155, 'NL', 'Netherlands The', 31),
(156, 'NC', 'New Caledonia', 687),
(157, 'NZ', 'New Zealand', 64),
(158, 'NI', 'Nicaragua', 505),
(159, 'NE', 'Niger', 227),
(160, 'NG', 'Nigeria', 234),
(161, 'NU', 'Niue', 683),
(162, 'NF', 'Norfolk Island', 672),
(163, 'MP', 'Northern Mariana Islands', 1670),
(164, 'NO', 'Norway', 47),
(165, 'OM', 'Oman', 968),
(166, 'PK', 'Pakistan', 92),
(167, 'PW', 'Palau', 680),
(168, 'PS', 'Palestinian Territory Occupied', 970),
(169, 'PA', 'Panama', 507),
(170, 'PG', 'Papua new Guinea', 675),
(171, 'PY', 'Paraguay', 595),
(172, 'PE', 'Peru', 51),
(173, 'PH', 'Philippines', 63),
(174, 'PN', 'Pitcairn Island', 0),
(175, 'PL', 'Poland', 48),
(176, 'PT', 'Portugal', 351),
(177, 'PR', 'Puerto Rico', 1787),
(178, 'QA', 'Qatar', 974),
(179, 'RE', 'Reunion', 262),
(180, 'RO', 'Romania', 40),
(181, 'RU', 'Russia', 70),
(182, 'RW', 'Rwanda', 250),
(183, 'SH', 'Saint Helena', 290),
(184, 'KN', 'Saint Kitts And Nevis', 1869),
(185, 'LC', 'Saint Lucia', 1758),
(186, 'PM', 'Saint Pierre and Miquelon', 508),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784),
(188, 'WS', 'Samoa', 684),
(189, 'SM', 'San Marino', 378),
(190, 'ST', 'Sao Tome and Principe', 239),
(191, 'SA', 'Saudi Arabia', 966),
(192, 'SN', 'Senegal', 221),
(193, 'RS', 'Serbia', 381),
(194, 'SC', 'Seychelles', 248),
(195, 'SL', 'Sierra Leone', 232),
(196, 'SG', 'Singapore', 65),
(197, 'SK', 'Slovakia', 421),
(198, 'SI', 'Slovenia', 386),
(199, 'XG', 'Smaller Territories of the UK', 44),
(200, 'SB', 'Solomon Islands', 677),
(201, 'SO', 'Somalia', 252),
(202, 'ZA', 'South Africa', 27),
(203, 'GS', 'South Georgia', 0),
(204, 'SS', 'South Sudan', 211),
(205, 'ES', 'Spain', 34),
(206, 'LK', 'Sri Lanka', 94),
(207, 'SD', 'Sudan', 249),
(208, 'SR', 'Suriname', 597),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47),
(210, 'SZ', 'Swaziland', 268),
(211, 'SE', 'Sweden', 46),
(212, 'CH', 'Switzerland', 41),
(213, 'SY', 'Syria', 963),
(214, 'TW', 'Taiwan', 886),
(215, 'TJ', 'Tajikistan', 992),
(216, 'TZ', 'Tanzania', 255),
(217, 'TH', 'Thailand', 66),
(218, 'TG', 'Togo', 228),
(219, 'TK', 'Tokelau', 690),
(220, 'TO', 'Tonga', 676),
(221, 'TT', 'Trinidad And Tobago', 1868),
(222, 'TN', 'Tunisia', 216),
(223, 'TR', 'Turkey', 90),
(224, 'TM', 'Turkmenistan', 7370),
(225, 'TC', 'Turks And Caicos Islands', 1649),
(226, 'TV', 'Tuvalu', 688),
(227, 'UG', 'Uganda', 256),
(228, 'UA', 'Ukraine', 380),
(229, 'AE', 'United Arab Emirates', 971),
(230, 'GB', 'United Kingdom', 44),
(231, 'US', 'United States', 1),
(232, 'UM', 'United States Minor Outlying Islands', 1),
(233, 'UY', 'Uruguay', 598),
(234, 'UZ', 'Uzbekistan', 998),
(235, 'VU', 'Vanuatu', 678),
(236, 'VA', 'Vatican City State (Holy See)', 39),
(237, 'VE', 'Venezuela', 58),
(238, 'VN', 'Vietnam', 84),
(239, 'VG', 'Virgin Islands (British)', 1284),
(240, 'VI', 'Virgin Islands (US)', 1340),
(241, 'WF', 'Wallis And Futuna Islands', 681),
(242, 'EH', 'Western Sahara', 212),
(243, 'YE', 'Yemen', 967),
(244, 'YU', 'Yugoslavia', 38),
(245, 'ZM', 'Zambia', 260),
(246, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `locationId` int(11) NOT NULL,
  `locationName` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `locationNickname` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address1` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `address2` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `stateProvince` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `postalCode` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `country` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `getLocationLat` float NOT NULL,
  `getLocationLong` float NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`locationId`, `locationName`, `locationNickname`, `address1`, `address2`, `city`, `stateProvince`, `postalCode`, `country`, `getLocationLat`, `getLocationLong`, `companyId`) VALUES
(1, 'Home', 'My Home', '4509 Amy Lane', 'test', 'Flower Mound', 'TX', '75028', 'United States', 33.048, -97.0803, 1),
(2, 'Work', 'My Work', '1950 Noth Stemmons Frwy', '', 'Dallas', 'TX', '75207', 'United States', 32.8003, -96.8195, 1),
(3, 'Iowa Home', 'My Mom Home', '4701 Franklin Ave', '', 'Des Moines', 'IA', '50310', 'United States', 41.6115, -93.6817, 1);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `projectId` int(11) NOT NULL,
  `projectName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `companyId` int(11) NOT NULL,
  `startDate` datetime DEFAULT NULL,
  `estimatedCompletionDate` datetime DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `locationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`projectId`, `projectName`, `companyId`, `startDate`, `estimatedCompletionDate`, `completionDate`, `locationId`) VALUES
(1, 'Build master shower', 1, '2020-09-28 09:00:00', '2020-10-01 16:00:00', '2020-10-10 16:00:00', 1),
(2, 'Build kitchen', 1, NULL, '2020-09-12 15:30:00', '2020-10-10 20:45:00', 2),
(3, 'Build new pool', 1, NULL, NULL, NULL, 1),
(4, 'Install Hot Tub', 1, '2020-08-08 13:00:00', '2020-08-10 17:30:00', NULL, 1),
(5, 'Fix Firepit', 1, NULL, NULL, NULL, 1),
(6, 'Fix social bathtub', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projectnote`
--

CREATE TABLE `projectnote` (
  `projectNoteId` int(11) NOT NULL,
  `projectNote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `projectId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projectnote`
--

INSERT INTO `projectnote` (`projectNoteId`, `projectNote`, `projectId`) VALUES
(1, 'We still need to get in touch with contractor recommended.', 1),
(2, 'TEST', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subtask`
--

CREATE TABLE `subtask` (
  `subTaskId` int(11) NOT NULL,
  `taskId` int(11) NOT NULL,
  `subTaskParentReference` int(11) NOT NULL DEFAULT '0',
  `subTaskNumber` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `locationId` int(11) NOT NULL,
  `subTaskName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `subTaskDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subTaskOwner` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subTaskStartDate` datetime DEFAULT NULL,
  `subTaskDueDate` datetime DEFAULT NULL,
  `subTaskCompletionDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtask`
--

INSERT INTO `subtask` (`subTaskId`, `taskId`, `subTaskParentReference`, `subTaskNumber`, `locationId`, `subTaskName`, `subTaskDescription`, `subTaskOwner`, `subTaskStartDate`, `subTaskDueDate`, `subTaskCompletionDate`) VALUES
(1, 1, 0, NULL, 1, 'Select the best material', 'Get an estimate for each of the material choices', NULL, NULL, NULL, '2020-09-29 17:45:00'),
(2, 1, 0, NULL, 1, 'Select contractor', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subtasknote`
--

CREATE TABLE `subtasknote` (
  `subTaskNoteId` int(11) NOT NULL,
  `subTaskNote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `subTaskId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subtasknote`
--

INSERT INTO `subtasknote` (`subTaskNoteId`, `subTaskNote`, `subTaskId`) VALUES
(1, 'Get prices for each of the materials and compare available options.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskId` int(11) NOT NULL,
  `projectId` int(11) NOT NULL,
  `taskSubtaskId` int(11) NOT NULL DEFAULT '0',
  `taskNumber` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `taskName` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `taskDescription` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `taskOwner` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `taskStartDate` datetime DEFAULT NULL,
  `taskDueDate` datetime DEFAULT NULL,
  `taskCompletionDate` datetime DEFAULT NULL,
  `locationId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`taskId`, `projectId`, `taskSubtaskId`, `taskNumber`, `taskName`, `taskDescription`, `taskOwner`, `taskStartDate`, `taskDueDate`, `taskCompletionDate`, `locationId`) VALUES
(1, 1, 0, NULL, 'Buy materials for shower', 'Go to Floors and Decors to buy all materials', '', '2020-07-18 09:00:00', '2020-07-21 17:50:00', NULL, 1),
(2, 6, 0, NULL, 'Replace bath tub', '', NULL, NULL, NULL, NULL, 1),
(3, 1, 0, NULL, 'Get Estimates', 'Find prices for remodeling', 'Cristiane Foust', '2020-07-14 09:00:00', '2020-07-18 17:30:00', NULL, 1),
(4, 1, 0, NULL, 'Build new shower', 'Shower bath construction', '', '2020-07-21 09:00:00', '2020-07-25 16:00:00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tasknote`
--

CREATE TABLE `tasknote` (
  `taskNoteId` int(11) NOT NULL,
  `taskNote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `taskId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasknote`
--

INSERT INTO `tasknote` (`taskNoteId`, `taskNote`, `taskId`) VALUES
(1, 'Go to many stores to get estimates for all materials and find best option.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `userName` varchar(64) COLLATE utf8mb4_general_ci NOT NULL,
  `passwordHash` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `firstName` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastName` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emailAddress` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `countryName` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `mobileCountry` int(11) DEFAULT NULL,
  `mobileNumber` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastSeen` datetime NOT NULL,
  `userRole` varchar(128) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `passwordHash`, `firstName`, `lastName`, `emailAddress`, `countryName`, `mobileCountry`, `mobileNumber`, `lastSeen`, `userRole`) VALUES
(1, 'Cristiane', 'pbkdf2:sha256:150000$71ELp4a5$09f9b5cf41b97edf76c6203981f021326308c48bb9da17f8da16e8537fd1f0d4', 'Cristiane', 'Foust', 'cristiane.foust@gmail.com', 'United States', 1, '+19728541000', '2020-04-04 00:30:10', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user_company`
--

CREATE TABLE `user_company` (
  `userId` int(11) NOT NULL,
  `companyId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyId`),
  ADD UNIQUE KEY `idx_companyName` (`companyName`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`countryId`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`locationId`),
  ADD KEY `companyId` (`companyId`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`projectId`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `locationId` (`locationId`);

--
-- Indexes for table `projectnote`
--
ALTER TABLE `projectnote`
  ADD PRIMARY KEY (`projectNoteId`),
  ADD KEY `projectId` (`projectId`);

--
-- Indexes for table `subtask`
--
ALTER TABLE `subtask`
  ADD PRIMARY KEY (`subTaskId`),
  ADD KEY `taskId` (`taskId`),
  ADD KEY `locationId` (`locationId`);

--
-- Indexes for table `subtasknote`
--
ALTER TABLE `subtasknote`
  ADD PRIMARY KEY (`subTaskNoteId`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskId`),
  ADD KEY `locationId` (`locationId`),
  ADD KEY `projectId` (`projectId`);

--
-- Indexes for table `tasknote`
--
ALTER TABLE `tasknote`
  ADD PRIMARY KEY (`taskNoteId`),
  ADD KEY `taskId` (`taskId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `idx_userName` (`userName`),
  ADD UNIQUE KEY `idx_emailAddress` (`emailAddress`);

--
-- Indexes for table `user_company`
--
ALTER TABLE `user_company`
  ADD UNIQUE KEY `idx_userId` (`userId`),
  ADD UNIQUE KEY `idx_companyId` (`companyId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `countryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `locationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `projectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `projectnote`
--
ALTER TABLE `projectnote`
  MODIFY `projectNoteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subtask`
--
ALTER TABLE `subtask`
  MODIFY `subTaskId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subtasknote`
--
ALTER TABLE `subtasknote`
  MODIFY `subTaskNoteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tasknote`
--
ALTER TABLE `tasknote`
  MODIFY `taskNoteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `project_ibfk_2` FOREIGN KEY (`locationId`) REFERENCES `location` (`locationId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `projectnote`
--
ALTER TABLE `projectnote`
  ADD CONSTRAINT `projectnote_ibfk_1` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `subtask`
--
ALTER TABLE `subtask`
  ADD CONSTRAINT `subtask_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `task` (`taskId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `subtask_ibfk_2` FOREIGN KEY (`locationId`) REFERENCES `location` (`locationId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `subtasknote`
--
ALTER TABLE `subtasknote`
  ADD CONSTRAINT `subtasknote_ibfk_1` FOREIGN KEY (`subTaskNoteId`) REFERENCES `subtask` (`subTaskId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`locationId`) REFERENCES `location` (`locationId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tasknote`
--
ALTER TABLE `tasknote`
  ADD CONSTRAINT `tasknote_ibfk_1` FOREIGN KEY (`taskId`) REFERENCES `task` (`taskId`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `user_company`
--
ALTER TABLE `user_company`
  ADD CONSTRAINT `user_company_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `user_company_ibfk_2` FOREIGN KEY (`companyId`) REFERENCES `company` (`companyId`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
