-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Oca 2022, 09:50:52
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `proje`
--

DELIMITER $$
--
-- Yordamlar
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_student` (IN `var1` INT)  BEGIN  
    SELECT * FROM student_info LIMIT var1;  
    SELECT COUNT(stud_code) AS Total_Student FROM student_info;    
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `kategorileri_Getir` ()  BEGIN  
	SELECT * FROM kategori;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eleman`
--

CREATE TABLE `eleman` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `eleman`
--

INSERT INTO `eleman` (`id`, `ad`, `soyad`, `email`, `password`) VALUES
(1, 'Anas', 'Hamed', 'anas.hamed@gmail.com', 'kah'),
(5, 'halit', 'hatahet', 'khaled.hatahet@gmail.com', '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilceler`
--

CREATE TABLE `ilceler` (
  `id` int(11) NOT NULL,
  `ilceadi` varchar(255) NOT NULL,
  `sehirid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ilceler`
--

INSERT INTO `ilceler` (`id`, `ilceadi`, `sehirid`) VALUES
(1, 'ALADAĞ', 1),
(2, 'CEYHAN', 1),
(3, 'ÇUKUROVA', 1),
(4, 'FEKE', 1),
(5, 'İMAMOĞLU', 1),
(6, 'KARAİSALI', 1),
(7, 'KARATAŞ', 1),
(8, 'KOZAN', 1),
(9, 'POZANTI', 1),
(10, 'SAİMBEYLİ', 1),
(11, 'SARIÇAM', 1),
(12, 'SEYHAN', 1),
(13, 'TUFANBEYLİ', 1),
(14, 'YUMURTALIK', 1),
(15, 'YÜREĞİR', 1),
(16, 'BESNİ', 2),
(17, 'ÇELİKHAN', 2),
(18, 'GERGER', 2),
(19, 'GÖLBAŞI', 2),
(20, 'KAHTA', 2),
(21, 'MERKEZ', 2),
(22, 'SAMSAT', 2),
(23, 'SİNCİK', 2),
(24, 'TUT', 2),
(25, 'BAŞMAKÇI', 3),
(26, 'BAYAT', 3),
(27, 'BOLVADİN', 3),
(28, 'ÇAY', 3),
(29, 'ÇOBANLAR', 3),
(30, 'DAZKIRI', 3),
(31, 'DİNAR', 3),
(32, 'EMİRDAĞ', 3),
(33, 'EVCİLER', 3),
(34, 'HOCALAR', 3),
(35, 'İHSANİYE', 3),
(36, 'İSCEHİSAR', 3),
(37, 'KIZILÖREN', 3),
(38, 'MERKEZ', 3),
(39, 'SANDIKLI', 3),
(40, 'SİNANPAŞA', 3),
(41, 'SULTANDAĞI', 3),
(42, 'ŞUHUT', 3),
(43, 'DİYADİN', 4),
(44, 'DOĞUBAYAZIT', 4),
(45, 'ELEŞKİRT', 4),
(46, 'HAMUR', 4),
(47, 'MERKEZ', 4),
(48, 'PATNOS', 4),
(49, 'TAŞLIÇAY', 4),
(50, 'TUTAK', 4),
(51, 'AĞAÇÖREN', 68),
(52, 'ESKİL', 68),
(53, 'GÜLAĞAÇ', 68),
(54, 'GÜZELYURT', 68),
(55, 'MERKEZ', 68),
(56, 'ORTAKÖY', 68),
(57, 'SARIYAHŞİ', 68),
(58, 'SULTANHANI', 68),
(59, 'GÖYNÜCEK', 5),
(60, 'GÜMÜŞHACIKÖY', 5),
(61, 'HAMAMÖZÜ', 5),
(62, 'MERKEZ', 5),
(63, 'MERZİFON', 5),
(64, 'SULUOVA', 5),
(65, 'TAŞOVA', 5),
(66, 'AKYURT', 6),
(67, 'ALTINDAĞ', 6),
(68, 'AYAŞ', 6),
(69, 'BALA', 6),
(70, 'BEYPAZARI', 6),
(71, 'ÇAMLIDERE', 6),
(72, 'ÇANKAYA', 6),
(73, 'ÇUBUK', 6),
(74, 'ELMADAĞ', 6),
(75, 'ETİMESGUT', 6),
(76, 'EVREN', 6),
(77, 'GÖLBAŞI', 6),
(78, 'GÜDÜL', 6),
(79, 'HAYMANA', 6),
(80, 'KAHRAMANKAZAN', 6),
(81, 'KALECİK', 6),
(82, 'KEÇİÖREN', 6),
(83, 'KIZILCAHAMAM', 6),
(84, 'MAMAK', 6),
(85, 'NALLIHAN', 6),
(86, 'POLATLI', 6),
(87, 'PURSAKLAR', 6),
(88, 'SİNCAN', 6),
(89, 'ŞEREFLİKOÇHİSAR', 6),
(90, 'YENİMAHALLE', 6),
(91, 'AKSEKİ', 7),
(92, 'AKSU', 7),
(93, 'ALANYA', 7),
(94, 'DEMRE', 7),
(95, 'DÖŞEMEALTI', 7),
(96, 'ELMALI', 7),
(97, 'FİNİKE', 7),
(98, 'GAZİPAŞA', 7),
(99, 'GÜNDOĞMUŞ', 7),
(100, 'İBRADI', 7),
(101, 'KAŞ', 7),
(102, 'KEMER', 7),
(103, 'KEPEZ', 7),
(104, 'KONYAALTI', 7),
(105, 'KORKUTELİ', 7),
(106, 'KUMLUCA', 7),
(107, 'MANAVGAT', 7),
(108, 'MURATPAŞA', 7),
(109, 'SERİK', 7),
(110, 'ÇILDIR', 75),
(111, 'DAMAL', 75),
(112, 'GÖLE', 75),
(113, 'HANAK', 75),
(114, 'MERKEZ', 75),
(115, 'POSOF', 75),
(116, 'ARDANUÇ', 8),
(117, 'ARHAVİ', 8),
(118, 'BORÇKA', 8),
(119, 'HOPA', 8),
(120, 'KEMALPAŞA', 8),
(121, 'MERKEZ', 8),
(122, 'MURGUL', 8),
(123, 'ŞAVŞAT', 8),
(124, 'YUSUFELİ', 8),
(125, 'BOZDOĞAN', 9),
(126, 'BUHARKENT', 9),
(127, 'ÇİNE', 9),
(128, 'DİDİM', 9),
(129, 'EFELER', 9),
(130, 'GERMENCİK', 9),
(131, 'İNCİRLİOVA', 9),
(132, 'KARACASU', 9),
(133, 'KARPUZLU', 9),
(134, 'KOÇARLI', 9),
(135, 'KÖŞK', 9),
(136, 'KUŞADASI', 9),
(137, 'KUYUCAK', 9),
(138, 'NAZİLLİ', 9),
(139, 'SÖKE', 9),
(140, 'SULTANHİSAR', 9),
(141, 'YENİPAZAR', 9),
(142, 'ALTIEYLÜL', 10),
(143, 'AYVALIK', 10),
(144, 'BALYA', 10),
(145, 'BANDIRMA', 10),
(146, 'BİGADİÇ', 10),
(147, 'BURHANİYE', 10),
(148, 'DURSUNBEY', 10),
(149, 'EDREMİT', 10),
(150, 'ERDEK', 10),
(151, 'GÖMEÇ', 10),
(152, 'GÖNEN', 10),
(153, 'HAVRAN', 10),
(154, 'İVRİNDİ', 10),
(155, 'KARESİ', 10),
(156, 'KEPSUT', 10),
(157, 'MANYAS', 10),
(158, 'MARMARA', 10),
(159, 'SAVAŞTEPE', 10),
(160, 'SINDIRGI', 10),
(161, 'SUSURLUK', 10),
(162, 'AMASRA', 74),
(163, 'KURUCAŞİLE', 74),
(164, 'MERKEZ', 74),
(165, 'ULUS', 74),
(166, 'BEŞİRİ', 72),
(167, 'GERCÜŞ', 72),
(168, 'HASANKEYF', 72),
(169, 'KOZLUK', 72),
(170, 'MERKEZ', 72),
(171, 'SASON', 72),
(172, 'AYDINTEPE', 69),
(173, 'DEMİRÖZÜ', 69),
(174, 'MERKEZ', 69),
(175, 'BOZÜYÜK', 11),
(176, 'GÖLPAZARI', 11),
(177, 'İNHİSAR', 11),
(178, 'MERKEZ', 11),
(179, 'OSMANELİ', 11),
(180, 'PAZARYERİ', 11),
(181, 'SÖĞÜT', 11),
(182, 'YENİPAZAR', 11),
(183, 'ADAKLI', 12),
(184, 'GENÇ', 12),
(185, 'KARLIOVA', 12),
(186, 'KİĞI', 12),
(187, 'MERKEZ', 12),
(188, 'SOLHAN', 12),
(189, 'YAYLADERE', 12),
(190, 'YEDİSU', 12),
(191, 'ADİLCEVAZ', 13),
(192, 'AHLAT', 13),
(193, 'GÜROYMAK', 13),
(194, 'HİZAN', 13),
(195, 'MERKEZ', 13),
(196, 'MUTKİ', 13),
(197, 'TATVAN', 13),
(198, 'DÖRTDİVAN', 14),
(199, 'GEREDE', 14),
(200, 'GÖYNÜK', 14),
(201, 'KIBRISCIK', 14),
(202, 'MENGEN', 14),
(203, 'MERKEZ', 14),
(204, 'MUDURNU', 14),
(205, 'SEBEN', 14),
(206, 'YENİÇAĞA', 14),
(207, 'AĞLASUN', 15),
(208, 'ALTINYAYLA', 15),
(209, 'BUCAK', 15),
(210, 'ÇAVDIR', 15),
(211, 'ÇELTİKÇİ', 15),
(212, 'GÖLHİSAR', 15),
(213, 'KARAMANLI', 15),
(214, 'KEMER', 15),
(215, 'MERKEZ', 15),
(216, 'TEFENNİ', 15),
(217, 'YEŞİLOVA', 15),
(218, 'BÜYÜKORHAN', 16),
(219, 'GEMLİK', 16),
(220, 'GÜRSU', 16),
(221, 'HARMANCIK', 16),
(222, 'İNEGÖL', 16),
(223, 'İZNİK', 16),
(224, 'KARACABEY', 16),
(225, 'KELES', 16),
(226, 'KESTEL', 16),
(227, 'MUDANYA', 16),
(228, 'MUSTAFAKEMALPAŞA', 16),
(229, 'NİLÜFER', 16),
(230, 'ORHANELİ', 16),
(231, 'ORHANGAZİ', 16),
(232, 'OSMANGAZİ', 16),
(233, 'YENİŞEHİR', 16),
(234, 'YILDIRIM', 16),
(235, 'AYVACIK', 17),
(236, 'BAYRAMİÇ', 17),
(237, 'BİGA', 17),
(238, 'BOZCAADA', 17),
(239, 'ÇAN', 17),
(240, 'ECEABAT', 17),
(241, 'EZİNE', 17),
(242, 'GELİBOLU', 17),
(243, 'GÖKÇEADA', 17),
(244, 'LAPSEKİ', 17),
(245, 'MERKEZ', 17),
(246, 'YENİCE', 17),
(247, 'ATKARACALAR', 18),
(248, 'BAYRAMÖREN', 18),
(249, 'ÇERKEŞ', 18),
(250, 'ELDİVAN', 18),
(251, 'ILGAZ', 18),
(252, 'KIZILIRMAK', 18),
(253, 'KORGUN', 18),
(254, 'KURŞUNLU', 18),
(255, 'MERKEZ', 18),
(256, 'ORTA', 18),
(257, 'ŞABANÖZÜ', 18),
(258, 'YAPRAKLI', 18),
(259, 'ALACA', 19),
(260, 'BAYAT', 19),
(261, 'BOĞAZKALE', 19),
(262, 'DODURGA', 19),
(263, 'İSKİLİP', 19),
(264, 'KARGI', 19),
(265, 'LAÇİN', 19),
(266, 'MECİTÖZÜ', 19),
(267, 'MERKEZ', 19),
(268, 'OĞUZLAR', 19),
(269, 'ORTAKÖY', 19),
(270, 'OSMANCIK', 19),
(271, 'SUNGURLU', 19),
(272, 'UĞURLUDAĞ', 19),
(273, 'ACIPAYAM', 20),
(274, 'BABADAĞ', 20),
(275, 'BAKLAN', 20),
(276, 'BEKİLLİ', 20),
(277, 'BEYAĞAÇ', 20),
(278, 'BOZKURT', 20),
(279, 'BULDAN', 20),
(280, 'ÇAL', 20),
(281, 'ÇAMELİ', 20),
(282, 'ÇARDAK', 20),
(283, 'ÇİVRİL', 20),
(284, 'GÜNEY', 20),
(285, 'HONAZ', 20),
(286, 'KALE', 20),
(287, 'MERKEZEFENDİ', 20),
(288, 'PAMUKKALE', 20),
(289, 'SARAYKÖY', 20),
(290, 'SERİNHİSAR', 20),
(291, 'TAVAS', 20),
(292, 'BAĞLAR', 21),
(293, 'BİSMİL', 21),
(294, 'ÇERMİK', 21),
(295, 'ÇINAR', 21),
(296, 'ÇÜNGÜŞ', 21),
(297, 'DİCLE', 21),
(298, 'EĞİL', 21),
(299, 'ERGANİ', 21),
(300, 'HANİ', 21),
(301, 'HAZRO', 21),
(302, 'KAYAPINAR', 21),
(303, 'KOCAKÖY', 21),
(304, 'KULP', 21),
(305, 'LİCE', 21),
(306, 'SİLVAN', 21),
(307, 'SUR', 21),
(308, 'YENİŞEHİR', 21),
(309, 'AKÇAKOCA', 81),
(310, 'CUMAYERİ', 81),
(311, 'ÇİLİMLİ', 81),
(312, 'GÖLYAKA', 81),
(313, 'GÜMÜŞOVA', 81),
(314, 'KAYNAŞLI', 81),
(315, 'MERKEZ', 81),
(316, 'YIĞILCA', 81),
(317, 'ENEZ', 22),
(318, 'HAVSA', 22),
(319, 'İPSALA', 22),
(320, 'KEŞAN', 22),
(321, 'LALAPAŞA', 22),
(322, 'MERİÇ', 22),
(323, 'MERKEZ', 22),
(324, 'SÜLOĞLU', 22),
(325, 'UZUNKÖPRÜ', 22),
(326, 'AĞIN', 23),
(327, 'ALACAKAYA', 23),
(328, 'ARICAK', 23),
(329, 'BASKİL', 23),
(330, 'KARAKOÇAN', 23),
(331, 'KEBAN', 23),
(332, 'KOVANCILAR', 23),
(333, 'MADEN', 23),
(334, 'MERKEZ', 23),
(335, 'PALU', 23),
(336, 'SİVRİCE', 23),
(337, 'ÇAYIRLI', 24),
(338, 'İLİÇ', 24),
(339, 'KEMAH', 24),
(340, 'KEMALİYE', 24),
(341, 'MERKEZ', 24),
(342, 'OTLUKBELİ', 24),
(343, 'REFAHİYE', 24),
(344, 'TERCAN', 24),
(345, 'ÜZÜMLÜ', 24),
(346, 'AŞKALE', 25),
(347, 'AZİZİYE', 25),
(348, 'ÇAT', 25),
(349, 'HINIS', 25),
(350, 'HORASAN', 25),
(351, 'İSPİR', 25),
(352, 'KARAÇOBAN', 25),
(353, 'KARAYAZI', 25),
(354, 'KÖPRÜKÖY', 25),
(355, 'NARMAN', 25),
(356, 'OLTU', 25),
(357, 'OLUR', 25),
(358, 'PALANDÖKEN', 25),
(359, 'PASİNLER', 25),
(360, 'PAZARYOLU', 25),
(361, 'ŞENKAYA', 25),
(362, 'TEKMAN', 25),
(363, 'TORTUM', 25),
(364, 'UZUNDERE', 25),
(365, 'YAKUTİYE', 25),
(366, 'ALPU', 26),
(367, 'BEYLİKOVA', 26),
(368, 'ÇİFTELER', 26),
(369, 'GÜNYÜZÜ', 26),
(370, 'HAN', 26),
(371, 'İNÖNÜ', 26),
(372, 'MAHMUDİYE', 26),
(373, 'MİHALGAZİ', 26),
(374, 'MİHALIÇÇIK', 26),
(375, 'ODUNPAZARI', 26),
(376, 'SARICAKAYA', 26),
(377, 'SEYİTGAZİ', 26),
(378, 'SİVRİHİSAR', 26),
(379, 'TEPEBAŞI', 26),
(380, 'ARABAN', 27),
(381, 'İSLAHİYE', 27),
(382, 'KARKAMIŞ', 27),
(383, 'NİZİP', 27),
(384, 'NURDAĞI', 27),
(385, 'OĞUZELİ', 27),
(386, 'ŞAHİNBEY', 27),
(387, 'ŞEHİTKAMİL', 27),
(388, 'YAVUZELİ', 27),
(389, 'ALUCRA', 28),
(390, 'BULANCAK', 28),
(391, 'ÇAMOLUK', 28),
(392, 'ÇANAKÇI', 28),
(393, 'DERELİ', 28),
(394, 'DOĞANKENT', 28),
(395, 'ESPİYE', 28),
(396, 'EYNESİL', 28),
(397, 'GÖRELE', 28),
(398, 'GÜCE', 28),
(399, 'KEŞAP', 28),
(400, 'MERKEZ', 28),
(401, 'PİRAZİZ', 28),
(402, 'ŞEBİNKARAHİSAR', 28),
(403, 'TİREBOLU', 28),
(404, 'YAĞLIDERE', 28),
(405, 'KELKİT', 29),
(406, 'KÖSE', 29),
(407, 'KÜRTÜN', 29),
(408, 'MERKEZ', 29),
(409, 'ŞİRAN', 29),
(410, 'TORUL', 29),
(411, 'ÇUKURCA', 30),
(412, 'DERECİK', 30),
(413, 'MERKEZ', 30),
(414, 'ŞEMDİNLİ', 30),
(415, 'YÜKSEKOVA', 30),
(416, 'ALTINÖZÜ', 31),
(417, 'ANTAKYA', 31),
(418, 'ARSUZ', 31),
(419, 'BELEN', 31),
(420, 'DEFNE', 31),
(421, 'DÖRTYOL', 31),
(422, 'ERZİN', 31),
(423, 'HASSA', 31),
(424, 'İSKENDERUN', 31),
(425, 'KIRIKHAN', 31),
(426, 'KUMLU', 31),
(427, 'PAYAS', 31),
(428, 'REYHANLI', 31),
(429, 'SAMANDAĞ', 31),
(430, 'YAYLADAĞI', 31),
(431, 'ARALIK', 76),
(432, 'KARAKOYUNLU', 76),
(433, 'MERKEZ', 76),
(434, 'TUZLUCA', 76),
(435, 'AKSU', 32),
(436, 'ATABEY', 32),
(437, 'EĞİRDİR', 32),
(438, 'GELENDOST', 32),
(439, 'GÖNEN', 32),
(440, 'KEÇİBORLU', 32),
(441, 'MERKEZ', 32),
(442, 'SENİRKENT', 32),
(443, 'SÜTÇÜLER', 32),
(444, 'ŞARKİKARAAĞAÇ', 32),
(445, 'ULUBORLU', 32),
(446, 'YALVAÇ', 32),
(447, 'YENİŞARBADEMLİ', 32),
(448, 'ADALAR', 34),
(449, 'ARNAVUTKÖY', 34),
(450, 'ATAŞEHİR', 34),
(451, 'AVCILAR', 34),
(452, 'BAĞCILAR', 34),
(453, 'BAHÇELİEVLER', 34),
(454, 'BAKIRKÖY', 34),
(455, 'BAŞAKŞEHİR', 34),
(456, 'BAYRAMPAŞA', 34),
(457, 'BEŞİKTAŞ', 34),
(458, 'BEYKOZ', 34),
(459, 'BEYLİKDÜZÜ', 34),
(460, 'BEYOĞLU', 34),
(461, 'BÜYÜKÇEKMECE', 34),
(462, 'ÇATALCA', 34),
(463, 'ÇEKMEKÖY', 34),
(464, 'ESENLER', 34),
(465, 'ESENYURT', 34),
(466, 'EYÜPSULTAN', 34),
(467, 'FATİH', 34),
(468, 'GAZİOSMANPAŞA', 34),
(469, 'GÜNGÖREN', 34),
(470, 'KADIKÖY', 34),
(471, 'KAĞITHANE', 34),
(472, 'KARTAL', 34),
(473, 'KÜÇÜKÇEKMECE', 34),
(474, 'MALTEPE', 34),
(475, 'PENDİK', 34),
(476, 'SANCAKTEPE', 34),
(477, 'SARIYER', 34),
(478, 'SİLİVRİ', 34),
(479, 'SULTANBEYLİ', 34),
(480, 'SULTANGAZİ', 34),
(481, 'ŞİLE', 34),
(482, 'ŞİŞLİ', 34),
(483, 'TUZLA', 34),
(484, 'ÜMRANİYE', 34),
(485, 'ÜSKÜDAR', 34),
(486, 'ZEYTİNBURNU', 34),
(487, 'ALİAĞA', 35),
(488, 'BALÇOVA', 35),
(489, 'BAYINDIR', 35),
(490, 'BAYRAKLI', 35),
(491, 'BERGAMA', 35),
(492, 'BEYDAĞ', 35),
(493, 'BORNOVA', 35),
(494, 'BUCA', 35),
(495, 'ÇEŞME', 35),
(496, 'ÇİĞLİ', 35),
(497, 'DİKİLİ', 35),
(498, 'FOÇA', 35),
(499, 'GAZİEMİR', 35),
(500, 'GÜZELBAHÇE', 35),
(501, 'KARABAĞLAR', 35),
(502, 'KARABURUN', 35),
(503, 'KARŞIYAKA', 35),
(504, 'KEMALPAŞA', 35),
(505, 'KINIK', 35),
(506, 'KİRAZ', 35),
(507, 'KONAK', 35),
(508, 'MENDERES', 35),
(509, 'MENEMEN', 35),
(510, 'NARLIDERE', 35),
(511, 'ÖDEMİŞ', 35),
(512, 'SEFERİHİSAR', 35),
(513, 'SELÇUK', 35),
(514, 'TİRE', 35),
(515, 'TORBALI', 35),
(516, 'URLA', 35),
(517, 'AFŞİN', 46),
(518, 'ANDIRIN', 46),
(519, 'ÇAĞLAYANCERİT', 46),
(520, 'DULKADİROĞLU', 46),
(521, 'EKİNÖZÜ', 46),
(522, 'ELBİSTAN', 46),
(523, 'GÖKSUN', 46),
(524, 'NURHAK', 46),
(525, 'ONİKİŞUBAT', 46),
(526, 'PAZARCIK', 46),
(527, 'TÜRKOĞLU', 46),
(528, 'EFLANİ', 78),
(529, 'ESKİPAZAR', 78),
(530, 'MERKEZ', 78),
(531, 'OVACIK', 78),
(532, 'SAFRANBOLU', 78),
(533, 'YENİCE', 78),
(534, 'AYRANCI', 70),
(535, 'BAŞYAYLA', 70),
(536, 'ERMENEK', 70),
(537, 'KAZIMKARABEKİR', 70),
(538, 'MERKEZ', 70),
(539, 'SARIVELİLER', 70),
(540, 'AKYAKA', 36),
(541, 'ARPAÇAY', 36),
(542, 'DİGOR', 36),
(543, 'KAĞIZMAN', 36),
(544, 'MERKEZ', 36),
(545, 'SARIKAMIŞ', 36),
(546, 'SELİM', 36),
(547, 'SUSUZ', 36),
(548, 'ABANA', 37),
(549, 'AĞLI', 37),
(550, 'ARAÇ', 37),
(551, 'AZDAVAY', 37),
(552, 'BOZKURT', 37),
(553, 'CİDE', 37),
(554, 'ÇATALZEYTİN', 37),
(555, 'DADAY', 37),
(556, 'DEVREKANİ', 37),
(557, 'DOĞANYURT', 37),
(558, 'HANÖNÜ', 37),
(559, 'İHSANGAZİ', 37),
(560, 'İNEBOLU', 37),
(561, 'KÜRE', 37),
(562, 'MERKEZ', 37),
(563, 'PINARBAŞI', 37),
(564, 'SEYDİLER', 37),
(565, 'ŞENPAZAR', 37),
(566, 'TAŞKÖPRÜ', 37),
(567, 'TOSYA', 37),
(568, 'AKKIŞLA', 38),
(569, 'BÜNYAN', 38),
(570, 'DEVELİ', 38),
(571, 'FELAHİYE', 38),
(572, 'HACILAR', 38),
(573, 'İNCESU', 38),
(574, 'KOCASİNAN', 38),
(575, 'MELİKGAZİ', 38),
(576, 'ÖZVATAN', 38),
(577, 'PINARBAŞI', 38),
(578, 'SARIOĞLAN', 38),
(579, 'SARIZ', 38),
(580, 'TALAS', 38),
(581, 'TOMARZA', 38),
(582, 'YAHYALI', 38),
(583, 'YEŞİLHİSAR', 38),
(584, 'BAHŞILI', 71),
(585, 'BALIŞEYH', 71),
(586, 'ÇELEBİ', 71),
(587, 'DELİCE', 71),
(588, 'KARAKEÇİLİ', 71),
(589, 'KESKİN', 71),
(590, 'MERKEZ', 71),
(591, 'SULAKYURT', 71),
(592, 'YAHŞİHAN', 71),
(593, 'BABAESKİ', 39),
(594, 'DEMİRKÖY', 39),
(595, 'KOFÇAZ', 39),
(596, 'LÜLEBURGAZ', 39),
(597, 'MERKEZ', 39),
(598, 'PEHLİVANKÖY', 39),
(599, 'PINARHİSAR', 39),
(600, 'VİZE', 39),
(601, 'AKÇAKENT', 40),
(602, 'AKPINAR', 40),
(603, 'BOZTEPE', 40),
(604, 'ÇİÇEKDAĞI', 40),
(605, 'KAMAN', 40),
(606, 'MERKEZ', 40),
(607, 'MUCUR', 40),
(608, 'ELBEYLİ', 79),
(609, 'MERKEZ', 79),
(610, 'MUSABEYLİ', 79),
(611, 'POLATELİ', 79),
(612, 'BAŞİSKELE', 41),
(613, 'ÇAYIROVA', 41),
(614, 'DARICA', 41),
(615, 'DERİNCE', 41),
(616, 'DİLOVASI', 41),
(617, 'GEBZE', 41),
(618, 'GÖLCÜK', 41),
(619, 'İZMİT', 41),
(620, 'KANDIRA', 41),
(621, 'KARAMÜRSEL', 41),
(622, 'KARTEPE', 41),
(623, 'KÖRFEZ', 41),
(624, 'AHIRLI', 42),
(625, 'AKÖREN', 42),
(626, 'AKŞEHİR', 42),
(627, 'ALTINEKİN', 42),
(628, 'BEYŞEHİR', 42),
(629, 'BOZKIR', 42),
(630, 'CİHANBEYLİ', 42),
(631, 'ÇELTİK', 42),
(632, 'ÇUMRA', 42),
(633, 'DERBENT', 42),
(634, 'DEREBUCAK', 42),
(635, 'DOĞANHİSAR', 42),
(636, 'EMİRGAZİ', 42),
(637, 'EREĞLİ', 42),
(638, 'GÜNEYSINIR', 42),
(639, 'HADİM', 42),
(640, 'HALKAPINAR', 42),
(641, 'HÜYÜK', 42),
(642, 'ILGIN', 42),
(643, 'KADINHANI', 42),
(644, 'KARAPINAR', 42),
(645, 'KARATAY', 42),
(646, 'KULU', 42),
(647, 'MERAM', 42),
(648, 'SARAYÖNÜ', 42),
(649, 'SELÇUKLU', 42),
(650, 'SEYDİŞEHİR', 42),
(651, 'TAŞKENT', 42),
(652, 'TUZLUKÇU', 42),
(653, 'YALIHÜYÜK', 42),
(654, 'YUNAK', 42),
(655, 'ALTINTAŞ', 43),
(656, 'ASLANAPA', 43),
(657, 'ÇAVDARHİSAR', 43),
(658, 'DOMANİÇ', 43),
(659, 'DUMLUPINAR', 43),
(660, 'EMET', 43),
(661, 'GEDİZ', 43),
(662, 'HİSARCIK', 43),
(663, 'MERKEZ', 43),
(664, 'PAZARLAR', 43),
(665, 'SİMAV', 43),
(666, 'ŞAPHANE', 43),
(667, 'TAVŞANLI', 43),
(668, 'AKÇADAĞ', 44),
(669, 'ARAPGİR', 44),
(670, 'ARGUVAN', 44),
(671, 'BATTALGAZİ', 44),
(672, 'DARENDE', 44),
(673, 'DOĞANŞEHİR', 44),
(674, 'DOĞANYOL', 44),
(675, 'HEKİMHAN', 44),
(676, 'KALE', 44),
(677, 'KULUNCAK', 44),
(678, 'PÜTÜRGE', 44),
(679, 'YAZIHAN', 44),
(680, 'YEŞİLYURT', 44),
(681, 'AHMETLİ', 45),
(682, 'AKHİSAR', 45),
(683, 'ALAŞEHİR', 45),
(684, 'DEMİRCİ', 45),
(685, 'GÖLMARMARA', 45),
(686, 'GÖRDES', 45),
(687, 'KIRKAĞAÇ', 45),
(688, 'KÖPRÜBAŞI', 45),
(689, 'KULA', 45),
(690, 'SALİHLİ', 45),
(691, 'SARIGÖL', 45),
(692, 'SARUHANLI', 45),
(693, 'SELENDİ', 45),
(694, 'SOMA', 45),
(695, 'ŞEHZADELER', 45),
(696, 'TURGUTLU', 45),
(697, 'YUNUSEMRE', 45),
(698, 'ARTUKLU', 47),
(699, 'DARGEÇİT', 47),
(700, 'DERİK', 47),
(701, 'KIZILTEPE', 47),
(702, 'MAZIDAĞI', 47),
(703, 'MİDYAT', 47),
(704, 'NUSAYBİN', 47),
(705, 'ÖMERLİ', 47),
(706, 'SAVUR', 47),
(707, 'YEŞİLLİ', 47),
(708, 'AKDENİZ', 33),
(709, 'ANAMUR', 33),
(710, 'AYDINCIK', 33),
(711, 'BOZYAZI', 33),
(712, 'ÇAMLIYAYLA', 33),
(713, 'ERDEMLİ', 33),
(714, 'GÜLNAR', 33),
(715, 'MEZİTLİ', 33),
(716, 'MUT', 33),
(717, 'SİLİFKE', 33),
(718, 'TARSUS', 33),
(719, 'TOROSLAR', 33),
(720, 'YENİŞEHİR', 33),
(721, 'BODRUM', 48),
(722, 'DALAMAN', 48),
(723, 'DATÇA', 48),
(724, 'FETHİYE', 48),
(725, 'KAVAKLIDERE', 48),
(726, 'KÖYCEĞİZ', 48),
(727, 'MARMARİS', 48),
(728, 'MENTEŞE', 48),
(729, 'MİLAS', 48),
(730, 'ORTACA', 48),
(731, 'SEYDİKEMER', 48),
(732, 'ULA', 48),
(733, 'YATAĞAN', 48),
(734, 'BULANIK', 49),
(735, 'HASKÖY', 49),
(736, 'KORKUT', 49),
(737, 'MALAZGİRT', 49),
(738, 'MERKEZ', 49),
(739, 'VARTO', 49),
(740, 'ACIGÖL', 50),
(741, 'AVANOS', 50),
(742, 'DERİNKUYU', 50),
(743, 'GÜLŞEHİR', 50),
(744, 'HACIBEKTAŞ', 50),
(745, 'KOZAKLI', 50),
(746, 'MERKEZ', 50),
(747, 'ÜRGÜP', 50),
(748, 'ALTUNHİSAR', 51),
(749, 'BOR', 51),
(750, 'ÇAMARDI', 51),
(751, 'ÇİFTLİK', 51),
(752, 'MERKEZ', 51),
(753, 'ULUKIŞLA', 51),
(754, 'AKKUŞ', 52),
(755, 'ALTINORDU', 52),
(756, 'AYBASTI', 52),
(757, 'ÇAMAŞ', 52),
(758, 'ÇATALPINAR', 52),
(759, 'ÇAYBAŞI', 52),
(760, 'FATSA', 52),
(761, 'GÖLKÖY', 52),
(762, 'GÜLYALI', 52),
(763, 'GÜRGENTEPE', 52),
(764, 'İKİZCE', 52),
(765, 'KABADÜZ', 52),
(766, 'KABATAŞ', 52),
(767, 'KORGAN', 52),
(768, 'KUMRU', 52),
(769, 'MESUDİYE', 52),
(770, 'PERŞEMBE', 52),
(771, 'ULUBEY', 52),
(772, 'ÜNYE', 52),
(773, 'BAHÇE', 80),
(774, 'DÜZİÇİ', 80),
(775, 'HASANBEYLİ', 80),
(776, 'KADİRLİ', 80),
(777, 'MERKEZ', 80),
(778, 'SUMBAS', 80),
(779, 'TOPRAKKALE', 80),
(780, 'ARDEŞEN', 53),
(781, 'ÇAMLIHEMŞİN', 53),
(782, 'ÇAYELİ', 53),
(783, 'DEREPAZARI', 53),
(784, 'FINDIKLI', 53),
(785, 'GÜNEYSU', 53),
(786, 'HEMŞİN', 53),
(787, 'İKİZDERE', 53),
(788, 'İYİDERE', 53),
(789, 'KALKANDERE', 53),
(790, 'MERKEZ', 53),
(791, 'PAZAR', 53),
(792, 'ADAPAZARI', 54),
(793, 'AKYAZI', 54),
(794, 'ARİFİYE', 54),
(795, 'ERENLER', 54),
(796, 'FERİZLİ', 54),
(797, 'GEYVE', 54),
(798, 'HENDEK', 54),
(799, 'KARAPÜRÇEK', 54),
(800, 'KARASU', 54),
(801, 'KAYNARCA', 54),
(802, 'KOCAALİ', 54),
(803, 'PAMUKOVA', 54),
(804, 'SAPANCA', 54),
(805, 'SERDİVAN', 54),
(806, 'SÖĞÜTLÜ', 54),
(807, 'TARAKLI', 54),
(808, '19 MAYIS', 55),
(809, 'ALAÇAM', 55),
(810, 'ASARCIK', 55),
(811, 'ATAKUM', 55),
(812, 'AYVACIK', 55),
(813, 'BAFRA', 55),
(814, 'CANİK', 55),
(815, 'ÇARŞAMBA', 55),
(816, 'HAVZA', 55),
(817, 'İLKADIM', 55),
(818, 'KAVAK', 55),
(819, 'LADİK', 55),
(820, 'SALIPAZARI', 55),
(821, 'TEKKEKÖY', 55),
(822, 'TERME', 55),
(823, 'VEZİRKÖPRÜ', 55),
(824, 'YAKAKENT', 55),
(825, 'BAYKAN', 56),
(826, 'ERUH', 56),
(827, 'KURTALAN', 56),
(828, 'MERKEZ', 56),
(829, 'PERVARİ', 56),
(830, 'ŞİRVAN', 56),
(831, 'TİLLO', 56),
(832, 'AYANCIK', 57),
(833, 'BOYABAT', 57),
(834, 'DİKMEN', 57),
(835, 'DURAĞAN', 57),
(836, 'ERFELEK', 57),
(837, 'GERZE', 57),
(838, 'MERKEZ', 57),
(839, 'SARAYDÜZÜ', 57),
(840, 'TÜRKELİ', 57),
(841, 'AKINCILAR', 58),
(842, 'ALTINYAYLA', 58),
(843, 'DİVRİĞİ', 58),
(844, 'DOĞANŞAR', 58),
(845, 'GEMEREK', 58),
(846, 'GÖLOVA', 58),
(847, 'GÜRÜN', 58),
(848, 'HAFİK', 58),
(849, 'İMRANLI', 58),
(850, 'KANGAL', 58),
(851, 'KOYULHİSAR', 58),
(852, 'MERKEZ', 58),
(853, 'SUŞEHRİ', 58),
(854, 'ŞARKIŞLA', 58),
(855, 'ULAŞ', 58),
(856, 'YILDIZELİ', 58),
(857, 'ZARA', 58),
(858, 'AKÇAKALE', 63),
(859, 'BİRECİK', 63),
(860, 'BOZOVA', 63),
(861, 'CEYLANPINAR', 63),
(862, 'EYYÜBİYE', 63),
(863, 'HALFETİ', 63),
(864, 'HALİLİYE', 63),
(865, 'HARRAN', 63),
(866, 'HİLVAN', 63),
(867, 'KARAKÖPRÜ', 63),
(868, 'SİVEREK', 63),
(869, 'SURUÇ', 63),
(870, 'VİRANŞEHİR', 63),
(871, 'BEYTÜŞŞEBAP', 73),
(872, 'CİZRE', 73),
(873, 'GÜÇLÜKONAK', 73),
(874, 'İDİL', 73),
(875, 'MERKEZ', 73),
(876, 'SİLOPİ', 73),
(877, 'ULUDERE', 73),
(878, 'ÇERKEZKÖY', 59),
(879, 'ÇORLU', 59),
(880, 'ERGENE', 59),
(881, 'HAYRABOLU', 59),
(882, 'KAPAKLI', 59),
(883, 'MALKARA', 59),
(884, 'MARMARAEREĞLİSİ', 59),
(885, 'MURATLI', 59),
(886, 'SARAY', 59),
(887, 'SÜLEYMANPAŞA', 59),
(888, 'ŞARKÖY', 59),
(889, 'ALMUS', 60),
(890, 'ARTOVA', 60),
(891, 'BAŞÇİFTLİK', 60),
(892, 'ERBAA', 60),
(893, 'MERKEZ', 60),
(894, 'NİKSAR', 60),
(895, 'PAZAR', 60),
(896, 'REŞADİYE', 60),
(897, 'SULUSARAY', 60),
(898, 'TURHAL', 60),
(899, 'YEŞİLYURT', 60),
(900, 'ZİLE', 60),
(901, 'AKÇAABAT', 61),
(902, 'ARAKLI', 61),
(903, 'ARSİN', 61),
(904, 'BEŞİKDÜZÜ', 61),
(905, 'ÇARŞIBAŞI', 61),
(906, 'ÇAYKARA', 61),
(907, 'DERNEKPAZARI', 61),
(908, 'DÜZKÖY', 61),
(909, 'HAYRAT', 61),
(910, 'KÖPRÜBAŞI', 61),
(911, 'MAÇKA', 61),
(912, 'OF', 61),
(913, 'ORTAHİSAR', 61),
(914, 'SÜRMENE', 61),
(915, 'ŞALPAZARI', 61),
(916, 'TONYA', 61),
(917, 'VAKFIKEBİR', 61),
(918, 'YOMRA', 61),
(919, 'ÇEMİŞGEZEK', 62),
(920, 'HOZAT', 62),
(921, 'MAZGİRT', 62),
(922, 'MERKEZ', 62),
(923, 'NAZIMİYE', 62),
(924, 'OVACIK', 62),
(925, 'PERTEK', 62),
(926, 'PÜLÜMÜR', 62),
(927, 'BANAZ', 64),
(928, 'EŞME', 64),
(929, 'KARAHALLI', 64),
(930, 'MERKEZ', 64),
(931, 'SİVASLI', 64),
(932, 'ULUBEY', 64),
(933, 'BAHÇESARAY', 65),
(934, 'BAŞKALE', 65),
(935, 'ÇALDIRAN', 65),
(936, 'ÇATAK', 65),
(937, 'EDREMİT', 65),
(938, 'ERCİŞ', 65),
(939, 'GEVAŞ', 65),
(940, 'GÜRPINAR', 65),
(941, 'İPEKYOLU', 65),
(942, 'MURADİYE', 65),
(943, 'ÖZALP', 65),
(944, 'SARAY', 65),
(945, 'TUŞBA', 65),
(946, 'ALTINOVA', 77),
(947, 'ARMUTLU', 77),
(948, 'ÇINARCIK', 77),
(949, 'ÇİFTLİKKÖY', 77),
(950, 'MERKEZ', 77),
(951, 'TERMAL', 77),
(952, 'AKDAĞMADENİ', 66),
(953, 'AYDINCIK', 66),
(954, 'BOĞAZLIYAN', 66),
(955, 'ÇANDIR', 66),
(956, 'ÇAYIRALAN', 66),
(957, 'ÇEKEREK', 66),
(958, 'KADIŞEHRİ', 66),
(959, 'MERKEZ', 66),
(960, 'SARAYKENT', 66),
(961, 'SARIKAYA', 66),
(962, 'SORGUN', 66),
(963, 'ŞEFAATLİ', 66),
(964, 'YENİFAKILI', 66),
(965, 'YERKÖY', 66),
(966, 'ALAPLI', 67),
(967, 'ÇAYCUMA', 67),
(968, 'DEVREK', 67),
(969, 'EREĞLİ', 67),
(970, 'GÖKÇEBEY', 67),
(971, 'KİLİMLİ', 67),
(972, 'KOZLU', 67),
(973, 'MERKEZ', 67);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iller`
--

CREATE TABLE `iller` (
  `id` int(11) NOT NULL,
  `sehiradi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `iller`
--

INSERT INTO `iller` (`id`, `sehiradi`) VALUES
(1, 'ADANA'),
(2, 'ADIYAMAN'),
(3, 'AFYON'),
(4, 'AĞRI'),
(5, 'AMASYA'),
(6, 'ANKARA'),
(7, 'ANTALYA'),
(8, 'ARTVİN'),
(9, 'AYDIN'),
(10, 'BALIKESİR'),
(11, 'BİLECİK'),
(12, 'BİNGÖL'),
(13, 'BİTLİS'),
(14, 'BOLU'),
(15, 'BURDUR'),
(16, 'BURSA'),
(17, 'ÇANAKKALE'),
(18, 'ÇANKIRI'),
(19, 'ÇORUM'),
(20, 'DENİZLİ'),
(21, 'DİYARBAKIR'),
(22, 'EDİRNE'),
(23, 'ELAZIĞ'),
(24, 'ERZİNCAN'),
(25, 'ERZURUM'),
(26, 'ESKİŞEHİR'),
(27, 'GAZİANTEP'),
(28, 'GİRESUN'),
(29, 'GÜMÜŞHANE'),
(30, 'HAKKARİ'),
(31, 'HATAY'),
(32, 'ISPARTA'),
(33, 'İÇEL'),
(34, 'İSTANBUL'),
(35, 'İZMİR'),
(36, 'KARS'),
(37, 'KASTAMONU'),
(38, 'KAYSERİ'),
(39, 'KIRKLARELİ'),
(40, 'KIRŞEHİR'),
(41, 'KOCAELİ'),
(42, 'KONYA'),
(43, 'KÜTAHYA'),
(44, 'MALATYA'),
(45, 'MANİSA'),
(46, 'KAHRAMANMARAŞ'),
(47, 'MARDİN'),
(48, 'MUĞLA'),
(49, 'MUŞ'),
(50, 'NEVŞEHİR'),
(51, 'NİĞDE'),
(52, 'ORDU'),
(53, 'RİZE'),
(54, 'SAKARYA'),
(55, 'SAMSUN'),
(56, 'SİİRT'),
(57, 'SİNOP'),
(58, 'SİVAS'),
(59, 'TEKİRDAĞ'),
(60, 'TOKAT'),
(61, 'TRABZON'),
(62, 'TUNCELİ'),
(63, 'ŞANLIURFA'),
(64, 'UŞAK'),
(65, 'VAN'),
(66, 'YOZGAT'),
(67, 'ZONGULDAK'),
(68, 'AKSARAY'),
(69, 'BAYBURT'),
(70, 'KARAMAN'),
(71, 'KIRIKKALE'),
(72, 'BATMAN'),
(73, 'ŞIRNAK'),
(74, 'BARTIN'),
(75, 'ARDAHAN'),
(76, 'IĞDIR'),
(77, 'YALOVA'),
(78, 'KARABÜK'),
(79, 'KİLİS'),
(80, 'OSMANİYE'),
(81, 'DÜZCE');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `indirimkodlari`
--

CREATE TABLE `indirimkodlari` (
  `id` int(11) NOT NULL,
  `İndirimKodu` varchar(255) NOT NULL,
  `İndirimMiktari` decimal(10,2) NOT NULL COMMENT 'TL olarak ne kadar indirim yapılacak'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `indirimkodlari`
--

INSERT INTO `indirimkodlari` (`id`, `İndirimKodu`, `İndirimMiktari`) VALUES
(1, 'Ablr42321lgk2', '50.00'),
(2, 'lver435f2oifre', '20.00'),
(3, 'k2390ifs44lf', '65.00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `KategoriAdi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`KategoriAdi`) VALUES
('Hediye Kutuları'),
('Kabe Maketleri'),
('Kuran-ı Kerim Kutuları'),
('Lazer Kuranı Kerim Kutuları'),
('Rahleler'),
('Saatler'),
('Tesbih');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `id` int(11) NOT NULL,
  `SepetNumarasi` int(11) DEFAULT NULL,
  `UyeId` int(11) NOT NULL,
  `UrunId` int(11) NOT NULL,
  `UrunAdedi` int(11) NOT NULL,
  `SepetToplamIndirimMiktari` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`id`, `SepetNumarasi`, `UyeId`, `UrunId`, `UrunAdedi`, `SepetToplamIndirimMiktari`) VALUES
(16, 16, 1, 40, 2, '0.00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `UyeId` int(11) NOT NULL,
  `SiparisNumarasi` int(11) NOT NULL,
  `Urunid` int(11) NOT NULL,
  `UrunAdi` varchar(50) NOT NULL,
  `UrunFiyati` decimal(10,2) NOT NULL,
  `UrunAdedi` int(11) NOT NULL,
  `ToplamUrunFiyati` decimal(10,2) NOT NULL,
  `KargoUcreti` decimal(10,2) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `adres` text NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `Aciklama` text DEFAULT NULL,
  `SiparisTarihi` int(11) NOT NULL,
  `SiparisDurumu` tinyint(1) NOT NULL COMMENT '0 => iptal edildi\r\n1 => yolda\r\n2 => Teslim Edildi ',
  `İndirimMiktari` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`id`, `UyeId`, `SiparisNumarasi`, `Urunid`, `UrunAdi`, `UrunFiyati`, `UrunAdedi`, `ToplamUrunFiyati`, `KargoUcreti`, `ad`, `soyad`, `adres`, `TelefonNumarasi`, `Aciklama`, `SiparisTarihi`, `SiparisDurumu`, `İndirimMiktari`) VALUES
(1, 1, 3, 39, 'kuran Kutusu', '35.00', 1, '420.50', '77.50', 'halit', 'hatahet', 'bulvar istanbul/BAŞAKŞEHİR/İSTANBUL', '05385497592', '', 1640247388, 0, '0.00'),
(2, 1, 3, 42, 'kadife kuran kutusu', '99.00', 2, '420.50', '77.50', 'halit', 'hatahet', 'bulvar istanbul/BAŞAKŞEHİR/İSTANBUL', '05385497592', '', 1640247388, 0, '0.00'),
(3, 1, 3, 41, 'masaüstü rahle', '55.00', 2, '420.50', '77.50', 'halit', 'hatahet', 'bulvar istanbul/BAŞAKŞEHİR/İSTANBUL', '05385497592', '', 1640247388, 0, '0.00'),
(4, 1, 5, 51, 'mescit maketi', '80.00', 1, '95.50', '15.50', 'grtg', 'rtgrtg', 'tgrgrtg/KİĞI/BİNGÖL', 'rtgrtgrt434', 'grgtrg', 1640250098, 0, '0.00'),
(6, 1, 14, 42, 'kadife kuran kutusu', '99.00', 2, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00'),
(7, 1, 14, 50, 'Tesbih Kutusu', '58.00', 2, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00'),
(8, 1, 14, 43, 'kabe maketi', '65.00', 3, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00'),
(9, 1, 14, 44, 'Hediye Kutusu', '66.50', 2, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00'),
(10, 1, 14, 39, 'kuran Kutusu', '35.00', 3, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00'),
(11, 1, 14, 38, 'lazer kuran kutusu', '10.00', 1, '958.50', '201.50', '34r34r', '34r34r43', '34r34r34/LÜLEBURGAZ/KIRKLARELİ', '1234567854', '', 1641071964, 2, '0.00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sirketinbilgileri`
--

CREATE TABLE `sirketinbilgileri` (
  `Aciklama` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `adres` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sirketinbilgileri`
--

INSERT INTO `sirketinbilgileri` (`Aciklama`, `email`, `telefon`, `adres`) VALUES
('30 yıllık tecrübe ve bilgi birikimine sahip Retaj Gifts; İslami hediyelik eşyalar ve Hac malzemeleri konusunda Türkiye&#039;nin güvenilir markalarındandır.\r\n\r\nSeccade, tesbih, takke, hac kıyafetleri, kozmetik, hediyelik eşya ve cami malzemelerinden oluşan 3000 çeşit ürün gamı ile hem toptan hem de perakende satış hizmeti vermektedir.\r\n\r\n\r\n50 ülkeye ihracat yapan Retaj Gifs; İstanbul’da 3 mağazası (Eminönü, İstoç ve Ataşehir), Türkiye&#039;nin birçok yerinde satış noktaları, yurtdışında franchising mağazaları yanında online satış kanalında da hizmet kalitesini devam ettirmektedir.\r\n\r\nKaliteli ürün temini, müşteri odaklı ve müşteri memnuniyeti amaçlı hizmeti ile, siparişleriniz zamanında teslim edilmektedir.\r\n\r\nYurtiçi ve yurtdışındaki üretim ağı sayesinde ürün çeşitliliği her geçen gün artmakta ve depolarındaki stoklu çalışmalardan dolayı ürün gönderimi hızlı bir şekilde sağlanmaktadır.', 'halit@gmail.com', '+905385497592', 'başakşehir mahallesi,Bahçelievler,Istanbul,Türkiye');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `id` int(11) UNSIGNED NOT NULL,
  `urunadi` varchar(50) NOT NULL,
  `Kod` varchar(50) NOT NULL,
  `Kg` varchar(50) NOT NULL,
  `Olcu` varchar(50) NOT NULL,
  `UrunFiyati` decimal(10,2) NOT NULL,
  `Anafoto` varchar(150) NOT NULL,
  `KucukFotograf1` varchar(50) DEFAULT NULL,
  `KucukFotograf2` varchar(50) DEFAULT NULL,
  `KucukFotograf3` varchar(50) DEFAULT NULL,
  `KategoriAdi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`id`, `urunadi`, `Kod`, `Kg`, `Olcu`, `UrunFiyati`, `Anafoto`, `KucukFotograf1`, `KucukFotograf2`, `KucukFotograf3`, `KategoriAdi`) VALUES
(38, 'lazer kuran kutusu', 'la-325', '2', '10*12*6', '10.00', '9276.png', '', '', '', 'Kuran-ı Kerim Kutuları'),
(39, 'kuran Kutusu', 'ka-463', '5', '10*10*6', '35.00', '3831.jpg', '3541.png', '3987.png', '', 'Kuran-ı Kerim Kutuları'),
(40, 'ayar rahle', 'ra-351', '6', '20*20*10', '80.00', '8441.png', '2284.png', '4361.png', '8101.png', 'Rahleler'),
(41, 'masaüstü rahle', 'ra-653', '1', '5*6*7', '55.00', '1142.jpg', '4082.png', '', '', 'Rahleler'),
(42, 'kadife kuran kutusu', 'ka-352', '5', '20*20*5', '99.00', '8471.jpg', '1395.jpg', '1581.jpg', '', 'Kuran-ı Kerim Kutuları'),
(43, 'kabe maketi', 'kb-123', '5', '20*20*20', '65.00', '9418.png', '6829.png', '', '', 'Kabe Maketleri'),
(44, 'Hediye Kutusu', 'ku-365', '3', '10*10*4', '66.50', '9642.png', '9579.png', '', '', 'Hediye Kutuları'),
(46, 'Duvar Saati', 'sa-365', '2', '5*5*1', '50.50', '4777.png', '', '', '', 'Saatler'),
(50, 'Tesbih Kutusu', 'ka-365', '2', '5*5*3', '58.00', '3636.png', '', '', '', 'Tesbih'),
(51, 'mescit maketi', 'ma-562', '5', '20*10*6', '80.00', '7964.png', '6562.png', '', '', 'Kuran-ı Kerim Kutuları'),
(52, 'lazer kuran kutusu', 'la-665', '2', '10*20*5', '70.00', '4803.png', '9180.png', '', '', 'Lazer Kuranı Kerim Kutuları'),
(53, 'Lazer Rahle', 'lr-635', '5', '20*20*8', '69.00', '2214.png', ' 7376.png', '5280.png', ' 6826.png', 'Rahleler'),
(54, 'Lazer Açılı Rahle', 'lr-985', '5', '20*25*6', '105.50', '9732.png', '4639.png', '', '', 'Rahleler'),
(55, 'Altın-Gümüş Kuran Kutusu', 'ku-635', '5', '15*20*6', '55.00', '1739.png', '6460.jpg', '5249.png', '', 'Kuran-ı Kerim Kutuları'),
(58, 'k871111111', '76', '67u', '76u6', '85.00', '9635.png', '', '', '', 'Rahleler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `ad` varchar(50) NOT NULL,
  `soyad` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `ad`, `soyad`, `email`, `password`) VALUES
(1, 'halit', 'hatahet', 'halit.hatahet@gmail.com', '12345'),
(2, 'hamza', 'hatahet', 'hamza@gmail.com', '123'),
(3, 'aabb', 'abba', 'ab@gmail.com', '123');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eleman`
--
ALTER TABLE `eleman`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `ilceler`
--
ALTER TABLE `ilceler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `iller`
--
ALTER TABLE `iller`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `indirimkodlari`
--
ALTER TABLE `indirimkodlari`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `İndirimKodu` (`İndirimKodu`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`KategoriAdi`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `eleman`
--
ALTER TABLE `eleman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `ilceler`
--
ALTER TABLE `ilceler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=974;

--
-- Tablo için AUTO_INCREMENT değeri `iller`
--
ALTER TABLE `iller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- Tablo için AUTO_INCREMENT değeri `indirimkodlari`
--
ALTER TABLE `indirimkodlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
