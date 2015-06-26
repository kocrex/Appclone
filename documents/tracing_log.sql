-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 產生日期: 2015 年 05 月 14 日 19:24
-- 伺服器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫: `islab22222`
--

-- --------------------------------------------------------

--
-- 表的結構 `tracing_log`
--

CREATE TABLE IF NOT EXISTS `tracing_log` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '流水號',
  `app_id` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT 'app編號(防apk竄改攻擊)',
  `app_id2` varchar(40) DEFAULT NULL COMMENT 'app編號(測試用)',
  `deviceid` varchar(255) DEFAULT NULL COMMENT 'UUID',
  `load_file_name` varchar(255) DEFAULT NULL COMMENT '載入的分離程式檔',
  `personal_key` varchar(255) DEFAULT NULL COMMENT '個人金鑰',
  `marks` int(100) NOT NULL COMMENT '標記次數',
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '追蹤時間',
  PRIMARY KEY (`t_id`),
  KEY `deviceid` (`deviceid`),
  KEY `app_id2` (`app_id2`),
  KEY `app_id` (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='追蹤記錄' AUTO_INCREMENT=32 ;

--
-- 轉存資料表中的資料 `tracing_log`
--

INSERT INTO `tracing_log` (`t_id`, `app_id`, `app_id2`, `deviceid`, `load_file_name`, `personal_key`, `marks`, `post_time`) VALUES
(1, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted20150514.jar', '0123456789abcdef', 0, '2015-05-14 16:08:53'),
(2, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 16:09:38'),
(3, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 16:13:34'),
(4, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 16:25:33'),
(5, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted20150514.jar', '0123456789abcdef', 0, '2015-05-14 16:25:58'),
(6, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 18:50:32'),
(7, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 18:50:56'),
(8, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 18:55:32'),
(9, '1D4F48188E233EFBF0DEE7491098CD7BAB76BC76C258A26D482236F3D9FE3774', '7d070d811e4fe1167622cbcc03e3cebc73347242', 'fb70ea33d5f40a81', 'encrypted.jar', '0123456789abcdef', 0, '2015-05-14 18:57:00'),
(10, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:00'),
(11, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:17'),
(12, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:26'),
(13, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:36'),
(14, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:46'),
(15, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:58:56'),
(16, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:05'),
(17, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:15'),
(18, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:25'),
(19, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:34'),
(20, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:44'),
(21, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 18:59:54'),
(22, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 19:00:03'),
(23, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 19:00:16'),
(24, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 19:00:25'),
(25, '87DB5C140ED3FADE9079DC90B6D1A0E15DBB35510784B53ECBFFA8398278EC3D', '827ad617dc3bb9e96f2f251550545cbcf3601568', 'fb70ea33d5f40a81', 'encrypted20150515.jar', '0123456789abcdef', 0, '2015-05-14 19:00:35'),
(26, 'A472273F1FEF44AD7D642AA5409983231616FE6A523406F4A3A451831DA76DF9', 'efac62a612ce10800608f721fc3a02c417e53699', 'fb70ea33d5f40a81', 'encrypted20150515_3.jar', '0123456789abcdef', 0, '2015-05-14 19:01:15'),
(27, 'ECA6AD143F034B03B3F6400CB73203177E2370B7740CC8FAA2AB895839207C05', 'ce33917a2639757472da33abf9a999e462addb04', 'fb70ea33d5f40a81', 'encrypted20150515_4.jar', '0123456789abcdef', 0, '2015-05-14 19:02:48'),
(28, '982BEF2ED36180A2969B0179DFB8CDE674D2F1E79E7D311360B0D8455B6A89B1', 'd976b367ace10ce1960f06f3f0baa164501595c3', 'fb70ea33d5f40a81', 'encrypted20150515_5.jar', '0123456789abcdef', 0, '2015-05-14 19:03:50'),
(29, '090303012E1CCBF9B78E24775421257B65D83D55622EB20024D8779C1E0194A9', '133d2ce1b18ad7ace533a1a194d8bfe23251b0ae', 'fb70ea33d5f40a81', 'encrypted20150515_2.jar', '0123456789abcdef', 0, '2015-05-14 19:05:46'),
(30, '090303012E1CCBF9B78E24775421257B65D83D55622EB20024D8779C1E0194A9', '133d2ce1b18ad7ace533a1a194d8bfe23251b0ae', 'fb70ea33d5f40a81', 'encrypted20150515_2.jar', '0123456789abcdef', 0, '2015-05-14 19:06:00'),
(31, '090303012E1CCBF9B78E24775421257B65D83D55622EB20024D8779C1E0194A9', '133d2ce1b18ad7ace533a1a194d8bfe23251b0ae', 'fb70ea33d5f40a81', 'encrypted20150515_2.jar', '0123456789abcdef', 0, '2015-05-14 19:06:15');

--
-- 匯出資料表的 Constraints
--

--
-- 資料表的 Constraints `tracing_log`
--
ALTER TABLE `tracing_log`
  ADD CONSTRAINT `fk_tracing_log_deviceid` FOREIGN KEY (`deviceid`) REFERENCES `member` (`deviceid`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tracing_log_app_id2` FOREIGN KEY (`app_id2`) REFERENCES `app` (`app_id2`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;