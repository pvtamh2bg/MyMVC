-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2015 at 04:58 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `btvn`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(10) unsigned NOT NULL,
  `catname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `catname`, `description`, `created`) VALUES
(1, 'Xã Hội', 'Tin tức - xã hội', '2015-06-10 00:00:00'),
(2, 'Thể thao', 'tin tức thể thao', '0000-00-00 00:00:00'),
(3, 'Tâm sự', 'chuyên mục tâm sự', '2015-06-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(10) unsigned NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `public` tinyint(4) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `parentid`, `title`, `description`, `content`, `image`, `public`, `created`) VALUES
(1, 1, 'GiÃ¡ xÄƒng giá»¯ nguyÃªn, dáº§u diesel giáº£m nháº¹sssss', '<p><span>Theo quyáº¿t Ä‘á»‹nh tá»« Li&ecirc;n Bá»™ T&agrave;i ch&iacute;nh &ndash; C&ocirc;ng ThÆ°Æ¡ng, gi&aacute; xÄƒng sáº½ giá»¯ nguy&ecirc;n, dáº§u diesel giáº£m 19 Ä‘á»“ng ká»ƒ tá»« 15h30 ng&agrave;y 4/6.</span></p>', '<p>Theo quyáº¿t Ä‘á»‹nh tá»« Li&ecirc;n Bá»™ T&agrave;i ch&iacute;nh &ndash; C&ocirc;ng ThÆ°Æ¡ng, gi&aacute; xÄƒng sáº½ giá»¯ nguy&ecirc;n, dáº§u diesel giáº£m 19 Ä‘á»“ng ká»ƒ tá»« 15h30 ng&agrave;y 4/6.</p>\r\n<p>Li&ecirc;n Bá»™ C&ocirc;ng ThÆ°Æ¡ng &ndash; T&agrave;i ch&iacute;nh y&ecirc;u cáº§u c&aacute;c doanh nghiá»‡p xÄƒng dáº§u giá»¯ nguy&ecirc;n gi&aacute; b&aacute;n Ä‘á»‘i vá»›i xÄƒng RON 95, RON 92. Gi&aacute; dáº§u diesel giáº£m nháº¹ 19 Ä‘á»“ng. Thá»i gian Ä‘iá»u chá»‰nh &aacute;p dá»¥ng l&agrave; 15h30 ng&agrave;y 4/6.</p>\r\n<p>Má»©c chi sá»­ dá»¥ng Quá»¹ B&igrave;nh á»•n c&oacute; sá»± Ä‘iá»u chá»‰nh nháº¹.&nbsp;Theo Ä‘&oacute;, má»©c chi cho xÄƒng c&aacute;c loáº¡i giáº£m 7 Ä‘á»“ng/l&iacute;t xuá»‘ng c&ograve;n 1.047 Ä‘á»“ng/l&iacute;t vá»›i RON 92, RON 95 v&agrave; 882 Ä‘á»“ng/l&iacute;t vá»›i E5.&nbsp;Äá»‘i vá»›i dáº§u diesel, cÆ¡ quan Ä‘iá»u h&agrave;nh quyáº¿t Ä‘á»‹nh ngÆ°ng chi Quá»¹ B&igrave;nh á»•n.</p>\r\n<p><img src="http://i.tinvn.info/m/2015/06/xang-tang-205-zing.jpg" alt="Gi&aacute; xÄƒng giá»¯ nguy&ecirc;n, dáº§u diesel giáº£m nháº¹ " /></p>\r\n<p>Sau 4 nÄƒm chá»‹u má»©c gi&aacute; cao tr&ecirc;n 20.000 Ä‘á»“ng/l&iacute;t, ngÆ°á»i d&acirc;n chá»‰ c&oacute; 6 th&aacute;ng Ä‘Æ°á»£c hÆ°á»Ÿng gi&aacute; xÄƒng tháº¥p. áº¢nh:&nbsp;<strong>Ho&agrave;ng Anh.</strong><br /><br /></p>\r\n<p>TrÆ°á»›c Ä‘&oacute;,&nbsp;táº¡i cuá»™c há»p b&aacute;o thÆ°á»ng ká»³ th&aacute;ng 5 cá»§a Bá»™ C&ocirc;ng ThÆ°Æ¡ng diá»…n ra chiá»u 1/6, &ocirc;ng V&otilde; VÄƒn Quyá»n &ndash; Vá»¥ trÆ°á»Ÿng Vá»¥ Thá»‹ trÆ°á»ng trong nÆ°á»›c (Bá»™ C&ocirc;ng ThÆ°Æ¡ng) cho biáº¿t, gi&aacute; xÄƒng c&oacute; thá»ƒ giáº£m náº¿u gi&aacute; tháº¿ giá»›i giáº£m trong 3 ng&agrave;y tá»« 2/6 Ä‘áº¿n 4/6.</p>\r\n<p>Ká»ƒ tá»« Ä‘áº§u nÄƒm 2015, gi&aacute; b&aacute;n láº» xÄƒng dáº§u li&ecirc;n tá»¥c c&oacute; sá»± thay Ä‘á»•i. Hai láº§n Ä‘iá»u chá»‰nh v&agrave;o th&aacute;ng 1 c&oacute; má»©c giáº£m tá»•ng cá»™ng 2.210 Ä‘á»“ng l&agrave; diá»…n biáº¿n Ä‘&aacute;ng ch&uacute; &yacute; hÆ¡n cáº£. Má»©c giáº£m Ä‘&oacute; l&ecirc;n tá»›i 40% so vá»›i láº§n cao Ä‘iá»ƒm th&aacute;ng 7/2014. Láº§n Ä‘iá»u chá»‰nh trong th&aacute;ng 1 cÅ©ng Ä‘Æ°a gi&aacute; xÄƒng xuá»‘ng tháº¥p nháº¥t trong v&ograve;ng nhiá»u nÄƒm trá»Ÿ láº¡i Ä‘&acirc;y.</p>\r\n<p>Tuy nhi&ecirc;n, tá»›i th&aacute;ng 5, gi&aacute; xÄƒng Ä‘&atilde; má»™t láº§n ná»¯a quay trá»Ÿ láº¡i má»‘c tr&ecirc;n 20.000 Ä‘á»“ng/l&iacute;t. NhÆ° váº­y, sau 4 nÄƒm chá»‹u má»©c gi&aacute; cao tr&ecirc;n 20.000 Ä‘á»“ng/l&iacute;t, ngÆ°á»i d&acirc;n chá»‰ c&oacute; 6 th&aacute;ng Ä‘Æ°á»£c hÆ°á»Ÿng gi&aacute; xÄƒng tháº¥p dÆ°á»›i má»©c tr&ecirc;n.</p>', '/BTVN/public/templates/backend/upload/image/xang-tang-205-zing.jpg', 1, '2015-06-11 05:54:28'),
(2, 1, 'QuÃ¡n cÃ  phÃª á»Ÿ SÃ i GÃ²n Ä‘áº¯t hÃ ng vÃ¬ cho khÃ¡ch Äƒn â€˜cháº­u cÃ¢yâ€™', '<p class="detail-sp">D&ugrave;ng cháº­u c&acirc;y l&agrave;m ly v&agrave; sá»­ dá»¥ng nhiá»u loáº¡i nguy&ecirc;n liá»‡u c&oacute; m&agrave;u sáº¯c giá»‘ng há»‡t Ä‘áº¥t Ä‘á»ƒ l&agrave;m ra m&oacute;n &ldquo;kem cháº­u c&acirc;y&rdquo; Ä‘á»™c Ä‘&aacute;o, qu&aacute;n c&agrave; ph&ecirc; táº¡i quáº­n 3, TP HCM Ä‘Æ°á»£c kh&aacute; Ä‘&ocirc;ng kh&aacute;ch t&igrave;m Ä‘áº¿n.</p>', '<h2 class="detail-sp">D&ugrave;ng cháº­u c&acirc;y l&agrave;m ly v&agrave; sá»­ dá»¥ng nhiá»u loáº¡i nguy&ecirc;n liá»‡u c&oacute; m&agrave;u sáº¯c giá»‘ng há»‡t Ä‘áº¥t Ä‘á»ƒ l&agrave;m ra m&oacute;n &ldquo;kem cháº­u c&acirc;y&rdquo; Ä‘á»™c Ä‘&aacute;o, qu&aacute;n c&agrave; ph&ecirc; táº¡i quáº­n 3, TP HCM Ä‘Æ°á»£c kh&aacute; Ä‘&ocirc;ng kh&aacute;ch t&igrave;m Ä‘áº¿n.</h2>\r\n<div>\r\n<div class="clrb">&nbsp;</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p><img id="img_113378" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/1-00-1429775615325_02.jpg" alt="" /><br />Náº¿u kh&ocirc;ng Ä‘Æ°á»£c nh&acirc;n vi&ecirc;n cá»§a qu&aacute;n giá»›i thiá»‡u l&agrave; m&oacute;n Äƒn, nhiá»u kh&aacute;ch h&agrave;ng sáº½ láº§m tÆ°á»Ÿng Ä‘&acirc;y l&agrave; má»™t cháº­u c&acirc;y tháº­t. M&oacute;n kem cháº­u c&acirc;y n&agrave;y c&oacute; gi&aacute; 55.000 Ä‘á»“ng, chá»‰ tÆ°Æ¡ng Ä‘Æ°Æ¡ng gi&aacute; c&aacute;c loáº¡i kem th&ocirc;ng thÆ°á»ng.</p>\r\n<p><img id="img_113377" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/2-02-1429775613251_02.jpg" alt="" /></p>\r\n<p>Chá»‹ Nguyá»…n Ngá»c Tháº£o, chá»§ qu&aacute;n cho biáº¿t, qu&aacute;n thá»±c hiá»‡n m&oacute;n kem Ä‘áº·c biá»‡t n&agrave;y Ä‘á»ƒ hÆ°á»Ÿng á»©ng phong tr&agrave;o báº£o vá»‡ c&acirc;y xanh. V&agrave;o nhá»¯ng ng&agrave;y Ä‘áº§u ráº¥t &iacute;t kh&aacute;ch d&ugrave;ng, do m&oacute;n kem nh&igrave;n giá»‘ng nhÆ° cháº­u c&acirc;y tháº­t, nháº¥t l&agrave; pháº§n Ä‘áº¥t trá»“ng. NhÆ°ng hiá»‡n nay, sau má»™t thá»i gian &ldquo;ch&agrave;o h&agrave;ng&rdquo;, kh&aacute;ch k&eacute;o Ä‘áº¿n Ä‘á»ƒ thÆ°á»Ÿng thá»©c ng&agrave;y má»™t Ä‘&ocirc;ng.</p>\r\n<p><img id="img_113376" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/3-03-1429775609611_02.jpg" alt="" /><br />Nguy&ecirc;n liá»‡u Ä‘á»ƒ l&agrave;m n&ecirc;n &ldquo;cháº­u c&acirc;y&rdquo; kh&aacute; Ä‘Æ¡n giáº£n. Chá»§ qu&aacute;n Ä‘&atilde; sá»­ dá»¥ng nhá»¯ng loáº¡i b&aacute;nh c&oacute; m&agrave;u sáº¯c gáº§n giá»‘ng vá»›i Ä‘áº¥t trá»“ng c&acirc;y Ä‘á»ƒ l&agrave;m kem, Ä‘iá»ƒm th&ecirc;m rau h&uacute;ng thÆ¡m l&agrave;m máº§m c&acirc;y.</p>\r\n<p><img id="img_113375" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/4-04-1429775605753_02.jpg" alt="" /></p>\r\n<p>Náº¿u nh&igrave;n báº±ng máº¯t thÆ°á»ng, kh&aacute;ch h&agrave;ng sáº½ dá»… d&agrave;ng nháº§m tÆ°á»Ÿng Ä‘&acirc;y l&agrave; Ä‘áº¥t, m&ugrave;n.</p>\r\n<p style="text-align: center;"><img id="img_113374" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/5-05-1429775604469_02.jpg" alt="" /><br />Nhá»¯ng vi&ecirc;n kem sáº½ Ä‘Æ°á»£c Ä‘áº·t v&agrave;o giá»¯a cháº­u.</p>\r\n<p><img id="img_113373" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/6-06-1429775601451_02.jpg" alt="" /><br />Chá»‰ máº¥t 5 ph&uacute;t Ä‘á»ƒ cháº¿ biáº¿n xong &ldquo;cháº­u c&acirc;y&rdquo; Ä‘á»™c Ä‘&aacute;o n&agrave;y.</p>\r\n<p><img id="img_113372" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/7-07-1429775600974_02.jpg" alt="" /><br />Chá»‹ Tháº£o cho biáº¿t th&ecirc;m, hiá»‡n má»—i ng&agrave;y qu&aacute;n b&aacute;n Ä‘Æ°á»£c khoáº£ng 50 ly kem cháº­u c&acirc;y, nhiá»u l&uacute;c kh&aacute;ch Ä‘&ocirc;ng kh&ocirc;ng Ä‘á»§ cháº­u Ä‘á»ƒ b&aacute;n.</p>\r\n<p><img id="img_113371" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/8-08-1429775598955_02.jpg" alt="" /><br />Cháº­u c&acirc;y v&agrave; muá»—ng h&igrave;nh gi&aacute; x&uacute;c Ä‘áº¥t n&agrave;y Ä‘Æ°á»£c chá»§ qu&aacute;n nháº­p tá»« Nháº­t, vá»›i gi&aacute; má»—i bá»™ 120.000 Ä‘á»“ng.</p>\r\n<p><img id="img_113370" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/9-09-1429775598539_02.jpg" alt="" /><br />Qu&aacute;n c&ograve;n c&oacute; m&oacute;n &ldquo;cÆ¡m trá»™n&rdquo; cháº¿ biáº¿n ho&agrave;n to&agrave;n báº±ng tr&aacute;i c&acirc;y, nhÆ°ng nh&igrave;n ráº¥t giá»‘ng m&oacute;n Äƒn máº·n. Äáº·c biá»‡t l&agrave; trá»©ng á»‘p la Ä‘Æ°á»£c l&agrave;m tá»« rau c&acirc;u.</p>\r\n<p><img id="img_113369" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/10-10-1429775598080_02.jpg" alt="" /><br />Chá»‹ Ho&agrave;ng Anh, má»™t kh&aacute;ch h&agrave;ng thÆ°á»ng Ä‘áº¿n Ä‘&acirc;y cho biáº¿t, láº§n Ä‘áº§u nh&igrave;n &ldquo;cháº­u c&acirc;y&rdquo;, chá»‹ ráº¥t &aacute;i ngáº¡i, kh&ocirc;ng d&aacute;m Äƒn. NhÆ°ng giá» th&igrave; ráº¥t th&iacute;ch, nhiá»u l&uacute;c Ä‘áº¿n pháº£i Ä‘á»£i kh&aacute; l&acirc;u má»›i Ä‘Æ°á»£c phá»¥c vá»¥.</p>\r\n<p><img id="img_113368" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/11-11-1429775595189_02.jpg" alt="" /><br />Ngo&agrave;i Ä‘á»“ Äƒn thá»©c uá»‘ng Ä‘áº·c biá»‡t, qu&aacute;n cÅ©ng Ä‘Æ°á»£c thiáº¿t káº¿ theo phong c&aacute;ch hiá»‡n Ä‘áº¡i, ráº¥t h&uacute;t kh&aacute;ch tráº».</p>\r\n<p><img id="img_113367" style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/04/12-12-1429775586276_02.jpg" alt="" /><br />Nhiá»u báº¡n tráº» tranh thá»§ chá»¥p láº¡i &ldquo;cháº­u c&acirc;y&rdquo; l&agrave;m m&oacute;n Äƒn Ä‘áº·c biá»‡t cá»§a m&igrave;nh Ä‘á»ƒ khoe c&ugrave;ng báº¡n b&egrave;.</p>', '/BTVN/public/templates/backend/upload/image/1-00-1429775615325_02.jpg', 1, '2015-06-10 17:49:37'),
(10, 1, 'HÃ¬nh áº£nh â€œhiáº¿m tháº¥yâ€ trong cuá»™c Ä‘á»i Äan TrÆ°á»ng', '<p class="news-sapo ">Tr&ecirc;n máº¡ng x&atilde; há»™i, fan h&acirc;m má»™ &ldquo;ph&aacute;t sá»‘t&rdquo; vá»›i h&igrave;nh áº£nh cá»±c &ldquo;chuáº©n men&rdquo; cá»§a ca sÄ© Äan TrÆ°á»ng khi Ä‘i du lá»‹ch c&ugrave;ng b&agrave; x&atilde; Thá»§y Ti&ecirc;n.</p>', '<h1 class="entry-title">H&igrave;nh áº£nh &ldquo;hiáº¿m tháº¥y&rdquo; trong cuá»™c Ä‘á»i Äan TrÆ°á»ng</h1>\r\n<div class="entry-content">\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/06/11350534-1102467236433566-204306326986048348-n-1433529529291-217-0-707-960-crop-1433529579229_01.jpg" alt="" width="660" height="360" /></p>\r\n<h2 class="news-sapo ">Tr&ecirc;n máº¡ng x&atilde; há»™i, fan h&acirc;m má»™ &ldquo;ph&aacute;t sá»‘t&rdquo; vá»›i h&igrave;nh áº£nh cá»±c &ldquo;chuáº©n men&rdquo; cá»§a ca sÄ© Äan TrÆ°á»ng khi Ä‘i du lá»‹ch c&ugrave;ng b&agrave; x&atilde; Thá»§y Ti&ecirc;n.</h2>\r\n<p>&nbsp;</p>\r\n<div>\r\n<ul class="detail_other">\r\n<li><a title="Nhá»¯ng bá»©c h&igrave;nh &aacute;m áº£nh khiáº¿n báº¡n kh&ocirc;ng d&aacute;m nh&igrave;n láº¡i láº§n ná»¯a" href="http://tinvn.info/nhung-buc-hinh-am-anh-khien-ban-khong-dam-nhin-lai-lan-nua.html">Nhá»¯ng bá»©c h&igrave;nh &aacute;m áº£nh khiáº¿n báº¡n kh&ocirc;ng d&aacute;m nh&igrave;n láº¡i láº§n ná»¯a</a></li>\r\n<li><a title="L&agrave;m r&otilde; th&ocirc;ng tin cáº£nh s&aacute;t cÆ¡ Ä‘á»™ng t&uacute;m cá»• &aacute;o ngÆ°á»i d&acirc;n" href="http://tinvn.info/lam-ro-thong-tin-canh-sat-co-dong-tum-co-ao-nguoi-dan.html">L&agrave;m r&otilde; th&ocirc;ng tin cáº£nh s&aacute;t cÆ¡ Ä‘á»™ng t&uacute;m cá»• &aacute;o ngÆ°á»i d&acirc;n</a></li>\r\n<li><a title="Nhá»¯ng m&agrave;n r&aacute;ch quáº§n khiáº¿n c&aacute;c nam ca sÄ© chá»‰ muá»‘n &ldquo;Ä‘á»™n thá»•&rdquo;" href="http://tinvn.info/nhung-man-rach-quan-khien-cac-nam-ca-si-chi-muon-don-tho.html">Nhá»¯ng m&agrave;n r&aacute;ch quáº§n khiáº¿n c&aacute;c nam ca sÄ© chá»‰ muá»‘n &ldquo;Ä‘á»™n thá»•&rdquo;</a></li>\r\n<li><a title="Ph&aacute;t hiá»‡n lo&agrave;i sinh váº­t m&agrave;u xanh b&iacute; áº©n c&oacute; lÆ°á»¡i si&ecirc;u d&agrave;i á»Ÿ Ä&agrave;i Loan" href="http://tinvn.info/phat-hien-loai-sinh-vat-mau-xanh-bi-an-co-luoi-sieu-dai-o-dai-loan.html">Ph&aacute;t hiá»‡n lo&agrave;i sinh váº­t m&agrave;u xanh b&iacute; áº©n c&oacute; lÆ°á»¡i si&ecirc;u d&agrave;i á»Ÿ Ä&agrave;i Loan</a></li>\r\n</ul>\r\n<div class="clrb">&nbsp;</div>\r\n</div>\r\n<span id="more-88906"></span>\r\n<p>&nbsp;</p>\r\n<p>Nhá»¯ng táº¥m h&igrave;nh Äan TrÆ°á»ng cá»Ÿi phanh &aacute;o khoe cÆ¡ thá»ƒ ráº¯n cháº¯c v&agrave; ná»Ÿ nang khiáº¿n h&agrave;ng ngh&igrave;n fan &ldquo;Ä‘i&ecirc;n Ä‘áº£o&rdquo;.</p>\r\n<p>Nhiá»u ngÆ°á»i Ä‘&atilde; Ä‘á»ƒ láº¡i nhá»¯ng lá»i b&igrave;nh luáº­n thá»ƒ hiá»‡n sá»± báº¥t ngá» vá»›i láº§n hiáº¿m hoi khoe &ldquo;áº£nh n&oacute;ng&rdquo; cá»§a nam ca sÄ© &ldquo;Kiáº¿p ve sáº§u&rdquo;.</p>\r\n<p>&ldquo;Nh&igrave;n anh áº¥y Ä‘&aacute;ng y&ecirc;u qu&aacute; Ä‘i th&ocirc;i&rdquo;, &ldquo;Anh Bo Ä‘áº¹p trai qu&aacute;. Mong anh ng&agrave;y c&agrave;ng h&aacute;t hay v&agrave; lu&ocirc;n lu&ocirc;n giá»¯ m&atilde;i phong Ä‘á»™ Ä‘iá»ƒn trai&rdquo;.</p>\r\n<p>&ldquo;Body Ä‘áº¹p qu&aacute; anh Æ¡i. Sexy qu&aacute;&hellip;&rdquo;, &ldquo;Woa&hellip;ngaÌ£c nhi&ecirc;n quaÌ anh Æ¡i! NhÆ°Ìƒng hiÌ€nh aÌ‰nh mang Ä‘&acirc;Ì£m phong caÌch ngaÌ€y heÌ€&rdquo;, l&agrave; nhá»¯ng b&igrave;nh luáº­n cá»§a ngÆ°á»i h&acirc;m má»™ d&agrave;nh cho Äan TrÆ°á»ng.</p>\r\n<p>Ngo&agrave;i ca ngá»£i &ldquo;nhan sáº¯c kh&ocirc;ng tuá»•i&rdquo; cá»§a Äan TrÆ°á»ng, cÆ° d&acirc;n máº¡ng c&ograve;n d&agrave;nh nhiá»u lá»i khen cho sá»± &ldquo;lá»™t x&aacute;c&rdquo; cá»§a vá»£ anh &ndash; doanh nh&acirc;n Thá»§y Ti&ecirc;n.</p>\r\n<p>Theo &yacute; kiáº¿n cá»§a má»™t sá»‘ fan th&igrave; Thá»§y Ti&ecirc;n ng&agrave;y c&agrave;ng tráº» trung v&agrave; xinh Ä‘áº¹p hÆ¡n so vá»›i thá»i Ä‘iá»ƒm má»›i káº¿t h&ocirc;n vá»›i Äan TrÆ°á»ng. Há» cÅ©ng b&agrave;y tá» mong muá»‘n cáº·p Ä‘&ocirc;i n&agrave;y sá»›m c&oacute; em b&eacute;.</p>\r\n<p>Äi k&egrave;m nhá»¯ng h&igrave;nh áº£nh &ldquo;n&oacute;ng&rdquo;, Äan TrÆ°á»ng cÅ©ng chia sáº» ráº±ng, sau chuyáº¿n Ä‘i nghá»‰ m&aacute;t vá»›i &ldquo;b&agrave; x&atilde;&rdquo; táº¡i Má»¹, anh sáº½ trá»Ÿ vá» Viá»‡t Nam Ä‘á»ƒ tiáº¿p tá»¥c thá»±c hiá»‡n nhá»¯ng káº¿ hoáº¡ch c&ocirc;ng viá»‡c do c&ocirc;ng ty sáº¯p xáº¿p.<br /><br /><img id="img_993012" style="display: block; margin-left: auto; margin-right: auto;" title="" src="http://i.tinvn.info/m/2015/06/hinh-anh-hiem-thay-trong-cuoc-doi-dan-truong.jpg" alt="Ä&acirc;y l&agrave; láº§n hiáº¿m hoi Äan TrÆ°á»ng tung áº£nh khoe cÆ¡ thá»ƒ ráº¯n cháº¯c cháº¯c cá»§a m&igrave;nh. TrÆ°á»›c Ä‘&oacute;, nam ca sÄ© T&igrave;nh kh&uacute;c v&agrave;ng ghi Ä‘iá»ƒm vá»›i ngÆ°á»i y&ecirc;u nháº¡c báº±ng h&igrave;nh áº£nh lá»‹ch l&atilde;m v&agrave; thÆ° sinh." /></p>\r\n<p>Ä&acirc;y l&agrave; láº§n hiáº¿m hoi Äan TrÆ°á»ng tung áº£nh khoe cÆ¡ thá»ƒ ráº¯n cháº¯c cháº¯c cá»§a m&igrave;nh. TrÆ°á»›c Ä‘&oacute;, nam ca sÄ© &ldquo;T&igrave;nh kh&uacute;c v&agrave;ng&rdquo; ghi Ä‘iá»ƒm vá»›i ngÆ°á»i y&ecirc;u nháº¡c báº±ng h&igrave;nh áº£nh lá»‹ch l&atilde;m v&agrave; thÆ° sinh.</p>\r\n<p><img id="img_993014" title="" src="http://i.tinvn.info/m/2015/06/hinh-anh-hiem-thay-trong-cuoc-doi-dan-truong_01.jpg" alt="Äan TrÆ°á»ng Ä‘&atilde; nháº­n Ä‘Æ°á»£c nhiá»u lá»i khen sau khi tung áº£nh n&oacute;ng." /></p>\r\n<p>Äan TrÆ°á»ng Ä‘&atilde; nháº­n Ä‘Æ°á»£c nhiá»u lá»i khen sau khi tung áº£nh &ldquo;n&oacute;ng&rdquo;.</p>\r\n<p><img id="img_993015" title="" src="http://i.tinvn.info/m/2015/06/hinh-anh-hiem-thay-trong-cuoc-doi-dan-truong_02.jpg" alt="" /></p>\r\n<p><img id="img_993016" title="" src="http://i.tinvn.info/m/2015/06/hinh-anh-hiem-thay-trong-cuoc-doi-dan-truong_03.jpg" alt="B&agrave; x&atilde; Thá»§y Ti&ecirc;n cá»§a Äan TrÆ°á»ng cÅ©ng Ä‘Æ°á»£c khen ng&agrave;y c&agrave;ng xinh Ä‘áº¹p. Nhiá»u fan hi vá»ng cáº·p Ä‘&ocirc;i n&agrave;y sáº½ sá»›m l&ecirc;n káº¿ hoáº¡ch sinh em b&eacute;." /></p>\r\n<p>&ldquo;B&agrave; x&atilde;&rdquo; Thá»§y Ti&ecirc;n cá»§a Äan TrÆ°á»ng cÅ©ng Ä‘Æ°á»£c khen ng&agrave;y c&agrave;ng xinh Ä‘áº¹p. Nhiá»u fan hi vá»ng cáº·p Ä‘&ocirc;i n&agrave;y sáº½ sá»›m l&ecirc;n káº¿ hoáº¡ch sinh em b&eacute;.</p>\r\n<p><img id="img_993017" style="display: block; margin-left: auto; margin-right: auto;" title="" src="http://i.tinvn.info/m/2015/06/hinh-anh-hiem-thay-trong-cuoc-doi-dan-truong_04.jpg" alt="" /></p>\r\n</div>', '/BTVN/public/templates/backend/upload/image/11350534-1102467236433566-204306326986048348-n-1433529529291-217-0-707-960-crop-1433529579229_01.jpg', 1, '2015-06-11 10:17:23'),
(11, 2, 'Ãnh ViÃªn bá» tÃºi bao nhiÃªu tiá»n thÆ°á»Ÿng sau khi giÃ nh 7 HCV, 8 láº§n phÃ¡ ká»· lá»¥c?', '<p><strong>T&iacute;nh tá»›i thá»i Ä‘iá»ƒm hiá»‡n táº¡i, vá»›i th&agrave;nh t&iacute;ch gi&agrave;nh 7 HCV v&agrave; ph&aacute; 8 ká»· lá»¥c táº¡i SEA Games 2015, k&igrave;nh ngÆ° Nguyá»…n &Aacute;nh Vi&ecirc;n dá»± t&iacute;nh sáº½ bá» t&uacute;i cáº£ &ldquo;n&uacute;i tiá»n thÆ°á»Ÿng&rdquo; Æ°á»›c t&iacute;nh v&agrave;o khoáº£ng gáº§n 1 tá»· Ä‘á»“ng.</strong></p>', '<h1 class="entry-title">&Aacute;nh Vi&ecirc;n bá» t&uacute;i bao nhi&ecirc;u tiá»n thÆ°á»Ÿng sau khi gi&agrave;nh 7 HCV, 8 láº§n ph&aacute; ká»· lá»¥c?</h1>\r\n<div class="entry-content">\r\n<p><strong>T&iacute;nh tá»›i thá»i Ä‘iá»ƒm hiá»‡n táº¡i, vá»›i th&agrave;nh t&iacute;ch gi&agrave;nh 7 HCV v&agrave; ph&aacute; 8 ká»· lá»¥c táº¡i SEA Games 2015, k&igrave;nh ngÆ° Nguyá»…n &Aacute;nh Vi&ecirc;n dá»± t&iacute;nh sáº½ bá» t&uacute;i cáº£ &ldquo;n&uacute;i tiá»n thÆ°á»Ÿng&rdquo; Æ°á»›c t&iacute;nh v&agrave;o khoáº£ng gáº§n 1 tá»· Ä‘á»“ng.</strong></p>\r\n<div>\r\n<ul class="detail_other">\r\n<li><a title="&Aacute;nh Vi&ecirc;n: &lsquo;Em muá»‘n th&agrave;nh c&ocirc;ng nhÆ° Michael Phelps&rsquo;" href="http://tinvn.info/anh-vien-em-muon-thanh-cong-nhu-michael-phelps.html">&Aacute;nh Vi&ecirc;n: &lsquo;Em muá»‘n th&agrave;nh c&ocirc;ng nhÆ° Michael Phelps&rsquo;</a></li>\r\n<li><a title="&Aacute;nh Vi&ecirc;n láº§n Ä‘áº§u cÆ°á»i tÆ°Æ¡i khi vá» Ä‘&iacute;ch á»Ÿ SEA Games" href="http://tinvn.info/anh-vien-lan-dau-cuoi-tuoi-khi-ve-dich-o-sea-games.html">&Aacute;nh Vi&ecirc;n láº§n Ä‘áº§u cÆ°á»i tÆ°Æ¡i khi vá» Ä‘&iacute;ch á»Ÿ SEA Games</a></li>\r\n<li><a title="Bá»‹ há»i Ä‘áº§y khi&ecirc;u kh&iacute;ch, &Aacute;nh Vi&ecirc;n khiáº¿n ph&oacute;ng vi&ecirc;n Singapore &ldquo;cá»©ng há»ng&rdquo;" href="http://tinvn.info/bi-hoi-day-khieu-khich-anh-vien-khien-phong-vien-singapore-cung-hong.html">Bá»‹ há»i Ä‘áº§y khi&ecirc;u kh&iacute;ch, &Aacute;nh Vi&ecirc;n khiáº¿n ph&oacute;ng vi&ecirc;n Singapore &ldquo;cá»©ng há»ng&rdquo;</a></li>\r\n<li><a title="&Aacute;nh Vi&ecirc;n n&oacute;i c&acirc;u g&igrave; khiáº¿n cá»™ng Ä‘á»“ng máº¡ng ph&aacute;t sá»‘t?" href="http://tinvn.info/anh-vien-noi-cau-gi-khien-cong-dong-mang-phat-sot.html">&Aacute;nh Vi&ecirc;n n&oacute;i c&acirc;u g&igrave; khiáº¿n cá»™ng Ä‘á»“ng máº¡ng ph&aacute;t sá»‘t?</a></li>\r\n</ul>\r\n<div class="clrb">&nbsp;</div>\r\n</div>\r\n<span id="more-89436"></span>\r\n<p>&nbsp;</p>\r\n<p><img style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/06/vaanhviendakhoc_01.jpg" alt="&Aacute;nh Vi&ecirc;n bá» t&uacute;i bao nhi&ecirc;u tiá»n thÆ°á»Ÿng sau khi gi&agrave;nh 7 HCV, 8 láº§n ph&aacute; ká»· lá»¥c?" /></p>\r\n<p>Cá»¥ thá»ƒ, theo quy Ä‘á»‹nh thÆ°á»Ÿng tiá»n theo cháº¿ Ä‘á»™ cá»§a ng&agrave;nh thá»ƒ thao, VÄV sáº½ Ä‘Æ°á»£c thÆ°á»Ÿng 45 triá»‡u cho má»—i chiáº¿c HCV (25 triá»‡u/ 1 HCB V&Agrave; 20 triá»‡u/ 1HCÄ). NhÆ° váº­y, &Aacute;nh Vi&ecirc;n sáº½ nháº­n Ä‘Æ°á»£c khoáº£ng hÆ¡n 300 triá»‡u tiá»n thÆ°á»Ÿng tá»« cháº¿ Ä‘á»™.</p>\r\n<p>B&ecirc;n cáº¡nh Ä‘&oacute;, vá»›i má»©c tiá»n thÆ°á»Ÿng&nbsp; quy Ä‘á»‹nh l&agrave; 15 triá»‡u/ 1 ká»· lá»¥c SEA Games 2015. NhÆ° váº­y, c&ocirc; g&aacute;i v&agrave;ng bÆ¡i lá»™i Viá»‡t Nam sáº½ nháº­n th&ecirc;m hÆ¡n 100 triá»‡u tá»« viá»‡c ph&aacute; 8 ká»· lá»¥c SEA Games.</p>\r\n<p style="text-align: center;"><img style="display: block; margin-left: auto; margin-right: auto;" src="http://i.tinvn.info/m/2015/06/anh.jpg" alt="" /><br /><em>&Aacute;nh Vi&ecirc;n v&ocirc; Ä‘á»‘i tr&ecirc;n Ä‘Æ°á»ng bÆ¡i d&agrave;nh cho c&aacute;c VÄV ná»¯ táº¡i SEA Games 2015. áº¢nh: Quá»‘c Kh&aacute;nh</em><br /><br />Th&ecirc;m v&agrave;o Ä‘&oacute;, má»—i chiáº¿c HCV sáº½ Ä‘Æ°á»£c thÆ°á»Ÿng n&oacute;ng tá»›i gáº§n 50 triá»‡u. Sá»‘ tiá»n n&agrave;y Ä‘áº¿n tá»«&nbsp; nhiá»u nguá»“n t&agrave;i trá»£, Cá»¥ thá»ƒ, má»—i chiáº¿c HCV SEA Games 2015 sáº½ nháº­n thÆ°á»Ÿng 1 chiáº¿c xe m&aacute;y trá»‹ gi&aacute; khoáº£ng 20 triá»‡u, 1 Tivi 40 inch m&agrave;n h&igrave;nh LED v&agrave; sá»‘ tiá»n&nbsp; thÆ°á»Ÿng n&oacute;ng 5 triá»‡u/ 1 HCV.</p>\r\n<p>Ä&oacute; l&agrave; chÆ°a ká»ƒ nhá»¯ng pháº§n thÆ°á»Ÿng c&oacute; gi&aacute; trá»‹ kh&aacute;c nhÆ° Ä‘iá»‡n thoáº¡i, v&eacute; m&aacute;y bay&hellip; Ch&iacute;nh v&igrave; tháº¿, &Aacute;nh Vi&ecirc;n sáº½ nháº­n thÆ°á»Ÿng 7 chiáº¿c xe m&aacute;y, 7 chiáº¿c tivi v&agrave; nhiá»u táº·ng pháº©m kh&aacute;c c&oacute; tá»•ng gi&aacute; trá»‹ rÆ¡i v&agrave;o khoáº£ng gáº§n 300 triá»‡u.</p>\r\n<p>T&iacute;nh tá»›i thá»i Ä‘iá»ƒm n&agrave;y, &Aacute;nh Vi&ecirc;n c&oacute; thá»ƒ nháº­n Ä‘Æ°á»£c má»©c tiá»n thÆ°á»Ÿng l&ecirc;n tá»›i hÆ¡n 700 triá»‡u Ä‘á»“ng cho th&agrave;nh t&iacute;ch xuáº¥t sáº¯c sau 5 ng&agrave;y thi Ä‘áº¥u táº¡i SEA Games 2015. Ngo&agrave;i 7 HCV &Aacute;nh Vi&ecirc;n Ä‘&atilde; gi&agrave;nh Ä‘Æ°á»£c, k&igrave;nh ngÆ° ngÆ°á»i Cáº§n ThÆ¡ c&ograve;n Ä‘oáº¡t th&ecirc;m 1 HCB v&agrave; 1HCÄ.</p>\r\n<p>Táº¡i SEA Games 27 vá»›i th&agrave;nh t&iacute;ch 3 HCV, 2 HCB, 1 HCÄ v&agrave; ph&aacute; 2 ká»· lá»¥c. &Aacute;nh Vi&ecirc;n Ä‘&atilde; nháº­n Ä‘Æ°á»£c sá»‘ tiá»n thÆ°á»Ÿng v&agrave; c&aacute;c váº­t pháº©m c&oacute; tá»•ng gi&aacute; trá»‹ Æ°á»›c t&iacute;nh l&ecirc;n tá»›i khoáº£ng 500 triá»‡u.</p>\r\n</div>', '/BTVN/public/templates/backend/upload/image/anhvien.jpg', 1, '2015-06-11 19:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`) VALUES
(1, 'pvtamh2bg', '123456', '', 'Pham Van Tam', '2015-06-09 00:00:00'),
(2, 'Customer', '123456', '', 'Nguyễn Văn A', '2015-06-09 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`), ADD KEY `catname` (`catname`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
