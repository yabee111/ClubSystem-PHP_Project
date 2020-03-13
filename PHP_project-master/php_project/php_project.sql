-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- 主機: localhost
-- 產生時間： 2019-06-22 13:30:21
-- 伺服器版本: 5.7.17-log
-- PHP 版本： 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `php_project`
--

-- --------------------------------------------------------

--
-- 資料表結構 `account`
--

CREATE TABLE `account` (
  `account` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `club` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `login_count` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `account`
--

INSERT INTO `account` (`account`, `password`, `club`, `login_count`) VALUES
('admin', 'qqq', '管理員', 30),
('im', 'qqq', '資訊管理學系系學會', 4),
('music', 'qqq', '熱音社', 54),
('omega', 'qqq', '大眾傳播社', 76),
('play', 'qqq', '康輔社', 13),
('volleyball', 'qqq', '排球社', 10),
('yabee', 'qqq', '吉他社', 139);

-- --------------------------------------------------------

--
-- 資料表結構 `act_app`
--

CREATE TABLE `act_app` (
  `act_id` int(10) NOT NULL,
  `club` varchar(255) NOT NULL,
  `applicant` varchar(255) NOT NULL,
  `app_email` varchar(255) NOT NULL,
  `app_tel` varchar(30) NOT NULL,
  `app_time` varchar(255) NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `act_location` varchar(255) NOT NULL,
  `act_datestart` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `act_dateend` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `act_purpose` varchar(255) NOT NULL,
  `act_num` int(10) NOT NULL,
  `principal` varchar(255) NOT NULL,
  `principal_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `check_act` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `act_app`
--

INSERT INTO `act_app` (`act_id`, `club`, `applicant`, `app_email`, `app_tel`, `app_time`, `act_name`, `act_location`, `act_datestart`, `act_dateend`, `act_purpose`, `act_num`, `principal`, `principal_tel`, `check_act`) VALUES
(1, '資訊管理學系系學會', '八分', 'imim@gmail.com', '0911222333', '2019/06/13', '資管營', '高雄大學', '2019-07-09', '2019-07-12', '歡迎來參加', 120, '阿德', '0911232323', 'Y'),
(10, '吉他社', '年年', 'linda33334333@gmail.com', '0989436318', '2019/06/13', '成果發表', '木造舞台', '2019-06-18', '2019-06-18', '來看我表演!', 50, '年年', '0989436318', 'Y'),
(12, '大眾傳播社', '張芷菱', 'linda33334333@gmail.com', '0989436318', '2019/06/12', '迎新', '高雄大學', '2019-06-14', '2019-06-14', '來認識新朋友吧!!!!', 50, '張芷菱', '0989436318', 'Y');

-- --------------------------------------------------------

--
-- 資料表結構 `announce`
--

CREATE TABLE `announce` (
  `announce_id` int(10) NOT NULL,
  `date` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `club` varchar(255) NOT NULL,
  `club_kind` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `content` varchar(255) NOT NULL,
  `check_ann` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `announce`
--

INSERT INTO `announce` (`announce_id`, `date`, `title`, `club`, `club_kind`, `website`, `date_start`, `date_end`, `content`, `check_ann`) VALUES
(40, '2019/06/06', '畢業影片出爐囉!', '大眾傳播社', '', 'https://www.youtube.com/watch?v=vUxsZZFoAbE', '2019-06-05', '2019-06-12', 'aaaaaAAA', 'Y'),
(46, '2019/06/11', '交接la', '資訊管理學系系學會', '', 'https://www.youtube.com/watch?v=k2Dj3uZVfok&list=RDyjWwfDW9IoA&index=27', '2019-06-15', '2019-06-15', 'aa', 'Y'),
(50, '2019/06/11', '大家都來看成發!!!!', '吉他社', '', 'https://www.youtube.com/watch?v=725WlG1idPc', '2019-06-25', '0000-00-00', '~~~', 'Y'),
(53, '2019/06/11', 'yabee ugly!!!!', '吉他社', '', 'https://www.youtube.com/watch?v=vUxsZZFoAbE', '2019-06-12', '0000-00-00', 'qqqq', 'Y'),
(59, '2019/06/12', '測試', '管理員', '', 'https://www.youtube.com/watch?v=UvU16iAPWNE', '2019-06-19', '2019-06-20', '測試測試', 'Y'),
(60, '2019/06/12', '第一次社課!!!', '大眾傳播社', '', 'https://www.youtube.com/watch?v=vUxsZZFoAbE', '2019-06-15', '2019-06-15', '都來玩~~', 'Y'),
(61, '2019/06/12', 'yabee ugly!!!!', '大眾傳播社', '', 'https://www.youtube.com/watch?v=vUxsZZFoAbE', '2019-06-06', '0000-00-00', '11111', 'N');

-- --------------------------------------------------------

--
-- 資料表結構 `club`
--

CREATE TABLE `club` (
  `club_id` int(10) NOT NULL,
  `club` varchar(255) NOT NULL,
  `club_kind` varchar(255) NOT NULL,
  `president` varchar(255) NOT NULL,
  `office` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `b_account` varchar(255) NOT NULL,
  `tax_id` varchar(10) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `introduction` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `t_tel` varchar(10) NOT NULL,
  `t_email` varchar(255) NOT NULL,
  `principal` varchar(255) NOT NULL,
  `prin_dep` varchar(255) NOT NULL,
  `prin_id` varchar(255) NOT NULL,
  `prin_tel` varchar(10) NOT NULL,
  `prin_email` varchar(255) NOT NULL,
  `check_club` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `club`
--

INSERT INTO `club` (`club_id`, `club`, `club_kind`, `president`, `office`, `website`, `tel`, `email`, `bank`, `b_account`, `tax_id`, `purpose`, `introduction`, `teacher`, `t_tel`, `t_email`, `principal`, `prin_dep`, `prin_id`, `prin_tel`, `prin_email`, `check_club`) VALUES
(1, '資訊管理學系系學會', '自治團體', '七分', '系窩', 'https://www.facebook.com/groups/166507323414152/', '0911222333', 'nukim@gmail.com', '', '', '19880949', '讓資管變更好', '沒啥需要介紹的', '777', '0931576248', 'a1063380@mail.nuk.edu.tw', '七七', '資訊管理學系', 'A1063310', '0911222333', '', ''),
(4, '吉他社', '學藝性', '000', '', 'https://www.youtube.com/watch?v=BlblBvpVgjE&list=RDLX-qN5V1eiE&index=11', '0989436318', 'linda33334333@gmail.com', '', '', '', '吉他社就是一堆熱情熱心愛唱歌愛彈吉他的可愛的人~要唱歌、要彈吉他，來吉他社就對了！！！', '透過社團課、例行表演、與各種比賽來增進唱功與琴藝。集合同好們一起帶給大眾歡樂。', '無', '', '', '年年', '資訊管理學系', 'A1063316', '0925310596', 'j9841842@gmail.com', ''),
(5, '熱音社', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12412423', '2141234', '4231412342412', '21342134', '3412341324', ''),
(6, '大眾傳播社', '聯誼性', '張芷菱', '無', 'https://www.youtube.com/watch?v=vUxsZZFoAbE', '0989436318', 'linda33334333@gmail.com', '無', '無', '無', '開心玩~~', '誰都可以進來玩:>', '無', '無', '', '張芷菱', '資訊管理學系', 'A1063326', '0989436318', 'linda33334333@gmail.com', ''),
(7, '康輔社', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '腿哥', '資訊管理學系', 'A1063322', '0912345678', 'aaa@gmail.com', ''),
(8, '排球社', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '小石', '資訊管理學系', 'A1063332', '0912345678', 'aaa@gmail.com', '');

-- --------------------------------------------------------

--
-- 資料表結構 `club_app`
--

CREATE TABLE `club_app` (
  `no` int(50) NOT NULL,
  `club` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stu_id` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `check_join` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dep` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `club_app`
--

INSERT INTO `club_app` (`no`, `club`, `stu_id`, `stu_name`, `tel`, `email`, `check_join`, `position`, `dep`, `reason`) VALUES
(6, '資訊管理學系系學會', 'A1063310', '廖八分', '', '', 'Y', '幹部', '資訊管理學系', ''),
(7, '資訊管理學系系學會', 'A1063316', '粘庭瑀', '', '', 'Y', '幹部', '資訊管理學系', ''),
(8, '資訊管理學系系學會', 'A1063333', 'roger', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'yabeee'),
(9, '資訊管理學系系學會', 'A1063332', 'stone', '0989436318', 'linda33334333@gmail.com', 'N', '社員', '資訊管理學系', 'qqqqqq'),
(10, '資訊管理學系系學會', 'A1063326', 'chihling', '0989436318', 'linda33334333@gmail.com', 'Y', '幹部', '資訊管理學系', 'aaaaa'),
(11, '資訊管理學系系學會', 'A1063326', 'zzz', '', '', 'N', '社員', '資訊管理學系', ''),
(12, '資訊管理學系系學會', 'A1063326', 'aaa', '', '', 'Y', '社員', '資訊管理學系', ''),
(13, '資訊管理學系系學會', 'A1063326', 'aaa', '', '', 'Y', '幹部', '資訊管理學系', ''),
(16, '資訊管理學系系學會', 'A1063326', 'aa', '', '', 'Y', '社員', '資訊管理學系', ''),
(17, '資訊管理學系系學會', 'A1063326', 'aaa', '', '', 'Y', '社員', '資訊管理學系', ''),
(18, '資訊管理學系系學會', 'a1063326', '七分', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'zzz'),
(19, '資訊管理學系系學會', 'a1063311', '七分', '0989436318', 'linda33334333@gmail.com', 'N', '社員', '資訊管理學系', 'zzzz'),
(20, '資訊管理學系系學會', 'a1063322', 'roger', '0989436318', 'linda33334333@gmail.com', 'N', '', '資訊管理學系', ''),
(21, '資訊管理學系系學會', 'a1063311', 'roger', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', ''),
(22, '資訊管理學系系學會', 'a1063333', 'roger', '0989436318', 'linda33334333@gmail.com', 'N', '', '資訊管理學系', ''),
(23, '資訊管理學系系學會', 'a1063322', '七分', '', '', 'N', '', '', ''),
(24, '資訊管理學系系學會', 'a1063316', '年年', '0989436318', 'linda33334333@gmail.com', 'N', '', '資訊管理學系', 'zzzzzz'),
(26, '吉他社', 'A1063326', 'chihling', '', '', 'Y', '幹部', '資訊管理學系', ''),
(27, '吉他社', 'A1063333', 'roger', '0912345678', '', 'Y', '社員', '資訊管理學系', '我想打社長'),
(28, '吉他社', 'A1063343', '阿芳', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', ''),
(29, '熱音社', '4231412342412', '12412423', '', '3412341324', 'Y', '幹部', '2141234', ''),
(30, '大眾傳播社', 'A1063316', '年年', '', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', ''),
(31, '大眾傳播社', 'a1063311', '七分', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'zzzz'),
(32, '大眾傳播社', 'A1063326', '廖七分', '', '', 'Y', '社員', '資訊管理學系', ''),
(33, '大眾傳播社', 'A1063327', '粘庭瑀', '', '', 'Y', '幹部', '資訊管理學系', ''),
(34, '大眾傳播社', 'qwe', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(35, '大眾傳播社', 'A1063311', 'chihling', '', '', 'Y', '社員', 'im', ''),
(36, '大眾傳播社', 'A1063325', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(37, '大眾傳播社', 'qwe', 'qw', '', '', 'Y', '社員', 'sss', ''),
(38, '大眾傳播社', 'A1063333', 'stone', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'qqqqqqqq'),
(39, '大眾傳播社', 'a102222', 'zzzzzz', 'aaa', 'aaa', 'Y', '社員', 'aa', '121313423'),
(40, '熱音社', 'a1063326', 'chihling', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'qqqq'),
(42, '大眾傳播社', 'a1063326', 'chihling', '0989436318', 'linda33334333@gmail.com', 'Y', '社員', '資訊管理學系', 'qqq'),
(43, '康輔社', 'A1063322', '腿哥', '', 'aaa@gmail.com', 'Y', '社員', '資訊管理學系', ''),
(44, '排球社', 'A1063332', '小石', '', 'aaa@gmail.com', 'Y', '社員', '資訊管理學系', ''),
(45, '資訊管理學系系學會', 'A1063333', 'roger', '0922333444', '', 'Y', '社員', '資訊管理學系', 'qqqq'),
(46, '吉他社', 'A1063310', '七七', '', '', 'Y', '社員', '資訊管理學系', ''),
(47, '吉他社', 'A1063316', '年年', '', '', 'Y', '幹部', '資訊管理學系', ''),
(48, '吉他社', 'A1063332', 'stone', '', '', 'Y', '社員', '資訊管理學系', ''),
(49, '吉他社', 'A1063301', '0000', '', '', 'Y', '社員', '資訊管理學系', ''),
(50, '吉他社', 'A1063329', 'e', '', '', 'N', '社員', '資訊管理學系', ''),
(51, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(52, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(53, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(54, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(55, '熱音社', 'A1063329', 'rrtg', '', '', 'Y', '幹部', 'fsef', ''),
(56, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(57, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(58, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(59, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(60, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(61, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(62, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(63, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(64, '熱音社', 'A1063329', 'rrtg', '', '', 'Y', '幹部', 'fsef', ''),
(65, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(66, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(67, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(68, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(69, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(70, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(71, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(72, '熱音社', 'A1063329', 'rrtg', '', '', 'Y', '幹部', 'fsef', ''),
(73, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(74, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(75, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(76, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(77, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(78, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(79, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(80, '熱音社', 'A1063329', 'rrtg', '', '', 'Y', '幹部', 'fsef', ''),
(81, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(82, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(83, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(84, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(85, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(86, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(87, '熱音社', 'A1063328', 'eqwe', '', '', 'Y', '社員', 'ss', ''),
(88, '熱音社', 'A1063329', 'rrtg', '', '', 'Y', '幹部', 'fsef', ''),
(89, '熱音社', 'A1063326', 'chihling', '', '', 'Y', '社員', 'im', ''),
(90, '熱音社', 'A1063327', 'ling', '', '', 'Y', '幹部', 'asf', ''),
(91, '熱音社', 'A1063324', 'qw', '', '', 'Y', '幹部', 'sss', ''),
(92, '吉他社', 'A1063333', 'stone', '0989436318', 'linda33334333@gmail.com', 'N', '社員', '資訊管理學系', 'AAZZ');

-- --------------------------------------------------------

--
-- 資料表結構 `message`
--

CREATE TABLE `message` (
  `no` int(20) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `club` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 資料表的匯出資料 `message`
--

INSERT INTO `message` (`no`, `message`, `club`, `date`) VALUES
(1, 'hello!!!!!', '管理員', '2019/06/12'),
(2, 'hello!!!!!', '大眾傳播社', '2019/06/12'),
(3, '11111', '熱音社', '2019/06/12'),
(4, '我覺得新的社團管理網站比舊版好看多了', '管理員', '2019/06/13'),
(5, '嗨', '熱音社', '2019/06/13');

-- --------------------------------------------------------

--
-- 資料表結構 `money`
--

CREATE TABLE `money` (
  `act_id` int(10) NOT NULL,
  `app_date` varchar(255) NOT NULL,
  `club` varchar(255) NOT NULL,
  `total_member` int(10) NOT NULL,
  `applicant` varchar(255) NOT NULL,
  `phonenum` varchar(255) NOT NULL,
  `act_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(50) NOT NULL,
  `location` varchar(255) NOT NULL,
  `budget` int(10) NOT NULL,
  `from_self` varchar(255) NOT NULL,
  `total_funding` int(11) NOT NULL,
  `app_funding` int(11) NOT NULL,
  `funding_get` int(10) NOT NULL,
  `filter` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `money`
--

INSERT INTO `money` (`act_id`, `app_date`, `club`, `total_member`, `applicant`, `phonenum`, `act_name`, `date`, `time`, `location`, `budget`, `from_self`, `total_funding`, `app_funding`, `funding_get`, `filter`) VALUES
(100594, '2019/06/13', '吉他社', 7, '年年', '', '成果發表', '2019-06-18', '', '木造舞台', 5000, '2000', 0, 3000, 1000, 'Y'),
(100595, '2019/06/13', '吉他社', 7, '年年', '', '聽音樂會', '2019-06-28', '', '演藝廳', 1000, '500', 0, 500, 150, 'Y'),
(100596, '2019/06/13', '熱音社', 43, '九分', '', '成果發表', '2019-06-30', '', '', 6000, '2500', 0, 3500, 0, 'N'),
(100597, '2019/06/13', '資訊管理學系系學會', 11, '年年', '989436318', '資管營', '2019-07-09', '', '高大', 10000, '2000', 0, 3500, 1000, 'Y');

-- --------------------------------------------------------

--
-- 資料表結構 `properties`
--

CREATE TABLE `properties` (
  `pro_id` int(10) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `depository` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `startdate` varchar(50) NOT NULL,
  `place` varchar(255) NOT NULL,
  `usetime` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `properties`
--

INSERT INTO `properties` (`pro_id`, `kind`, `department`, `depository`, `quantity`, `pro_name`, `unit`, `startdate`, `place`, `usetime`) VALUES
(4, 'self', '資訊管理學系', '廖八分', '10', '電視', '台', '2019-05-26', '這裡', '50'),
(7, 'in', '資訊管理學系', '廖九分', '90', '桌子', '', '2019-08-22', '那裏', '10'),
(13, 'in', '資訊管理學系', '廖七分', '支', '麥克風', '', '2019-07-16', '演講廳', '3'),
(16, 'self', '資訊管理學系', '123', '123', '123', '123', '2019-06-25', '123', '123'),
(19, 'in', '資訊管理學系', '456', '456', '456', '456', '2019-06-18', '456', '456'),
(20, 'in', '資訊管理學系', '789', '789', '789', '', '2019-08-13', '789', '789'),
(34, 'self', '資訊管理學系系學會', '777', '1', 'aa', '4', '2019-06-05', '212', '44'),
(35, '', '資訊管理學系系學會', '', '', '', '', '', '', ''),
(36, '', '資訊管理學系系學會', '', '', '', '', '', '', ''),
(41, 'in', '吉他社', '777', '15', '椅子', '', '2019-06-12', '212', '10'),
(43, 'self', '吉他社', '年年', '5', '長桌', '張', '2019-06-12', '系屋', '10'),
(46, 'self', '', '777', '222', 'zzz', '1', '', '', ''),
(47, 'self', '', '777', '222', 'zzz', '1', '', '', ''),
(48, 'in', '大眾傳播社', '777', '1', 'aa', '', '', '212', '11'),
(50, 'in', '大眾傳播社', '22222', '1', 'a', '111111', '2019-06-06', 'ccccc', 'a'),
(51, 'self', '吉他社', '芷菱', '2', '音箱', '台', '2019-06-01', '系窩', '5');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account`);

--
-- 資料表索引 `act_app`
--
ALTER TABLE `act_app`
  ADD PRIMARY KEY (`act_id`);

--
-- 資料表索引 `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`announce_id`);

--
-- 資料表索引 `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`club_id`);

--
-- 資料表索引 `club_app`
--
ALTER TABLE `club_app`
  ADD PRIMARY KEY (`no`);

--
-- 資料表索引 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`no`);

--
-- 資料表索引 `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`act_id`);

--
-- 資料表索引 `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`pro_id`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `act_app`
--
ALTER TABLE `act_app`
  MODIFY `act_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用資料表 AUTO_INCREMENT `announce`
--
ALTER TABLE `announce`
  MODIFY `announce_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- 使用資料表 AUTO_INCREMENT `club`
--
ALTER TABLE `club`
  MODIFY `club_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用資料表 AUTO_INCREMENT `club_app`
--
ALTER TABLE `club_app`
  MODIFY `no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- 使用資料表 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `no` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用資料表 AUTO_INCREMENT `money`
--
ALTER TABLE `money`
  MODIFY `act_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100598;
--
-- 使用資料表 AUTO_INCREMENT `properties`
--
ALTER TABLE `properties`
  MODIFY `pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
