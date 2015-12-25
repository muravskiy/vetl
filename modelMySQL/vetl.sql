-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 25 2015 г., 17:06
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vetl`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attachmentbrigada`
--

CREATE TABLE IF NOT EXISTS `attachmentbrigada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_attachmentbrigada` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `attachmentbrigada`
--

INSERT INTO `attachmentbrigada` (`id`, `name_attachmentbrigada`) VALUES
(1, 'Звя''зок'),
(2, 'СЦБ'),
(3, 'Не принципово');

-- --------------------------------------------------------

--
-- Структура таблицы `brigada`
--

CREATE TABLE IF NOT EXISTS `brigada` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_brigade` varchar(45) NOT NULL,
  `last_name_SHNS` varchar(45) NOT NULL,
  `attachmentbrigada_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_brigada_attachmentbrigada1_idx` (`attachmentbrigada_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `brigada`
--

INSERT INTO `brigada` (`id`, `room_brigade`, `last_name_SHNS`, `attachmentbrigada_id`) VALUES
(4, '4', 'Покотило', 2),
(5, '5', 'Заяц', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `certificate`
--

CREATE TABLE IF NOT EXISTS `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` varchar(254) NOT NULL,
  `name_certificate` varchar(254) NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `date_issue_certificate` date NOT NULL,
  `valid_to_certificate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `certificate`
--

INSERT INTO `certificate` (`id`, `issued`, `name_certificate`, `number_certificate`, `date_issue_certificate`, `valid_to_certificate`) VALUES
(1, 'Державна служба гірничого нагляду та промислової безпеки', 'Дозвіл на виконання випробування електричного устаткування електричних мереж', '1266.13.30', '2013-11-29', '2018-11-28'),
(2, 'Базова організація метрології та стандартизації', 'Свідоцтво про атестацію Вимірювальної електротехнічної лабораторії', 'БОМС-9/13-2012', '2012-11-22', '2015-11-21'),
(3, 'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Київський області та м.Києві', 'Дозвіл на виконання роботи в діючих електроустановках напругою понад 1000В (до 35кВ включно)', '3045.13.32', '2013-09-02', '2018-09-01'),
(4, 'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Київський області та м.Києві', 'Дозвіл на експлуатацію технологічного електрообладнання напругою понад 1000В (до 60 кВ включно)', '3049.13.32', '2013-09-02', '2018-09-01'),
(15, 'Територіальне управління державної служби гірничого нагляду та промислової безпеки України у Чернігівський області', 'Лист, що Територіальне управління у Чернігівській області не заперечує проти виконнаня робіт підвищенної небезпеки на теріторії Чернігівської області', '204', '2014-02-04', '2018-11-28');

-- --------------------------------------------------------

--
-- Структура таблицы `facility`
--

CREATE TABLE IF NOT EXISTS `facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facility` varchar(45) NOT NULL,
  `hazardcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_facility_hazardcategory1_idx` (`hazardcategory_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `facility`
--

INSERT INTO `facility` (`id`, `facility`, `hazardcategory_id`) VALUES
(1, 'Релейне приміщення', 3),
(3, 'впавпвп', 1),
(4, 'івава', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `hazardcategory`
--

CREATE TABLE IF NOT EXISTS `hazardcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hazard_category` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `hazardcategory`
--

INSERT INTO `hazardcategory` (`id`, `hazard_category`) VALUES
(1, 'Особливо небезпечні'),
(2, 'Вибухонебезпечні'),
(3, 'Пожежонебезпечні'),
(4, 'З масовим перебуваееям людей'),
(5, 'Інши (крім житлових будинків)');

-- --------------------------------------------------------

--
-- Структура таблицы `locality`
--

CREATE TABLE IF NOT EXISTS `locality` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locality` varchar(45) NOT NULL,
  `type_locality_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_locality_tbl_type_locality_idx` (`type_locality_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `locality`
--

INSERT INTO `locality` (`id`, `locality`, `type_locality_id`) VALUES
(1, 'Ніжин - Носівка', 2),
(2, 'Носівка', 1),
(4, 'Ніжин', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `measuringinstrument`
--

CREATE TABLE IF NOT EXISTS `measuringinstrument` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_measuring_instrument` varchar(45) NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `calibration_date` date NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `calibration_interval` varchar(45) NOT NULL,
  `next_calibration` date NOT NULL,
  `notices` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `nameobject`
--

CREATE TABLE IF NOT EXISTS `nameobject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_object` varchar(254) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `nameobject`
--

INSERT INTO `nameobject` (`id`, `name_object`) VALUES
(1, 'Бокорізи'),
(2, 'Викрутка');

-- --------------------------------------------------------

--
-- Структура таблицы `object`
--

CREATE TABLE IF NOT EXISTS `object` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_object_id` int(10) unsigned NOT NULL,
  `tbl_name_object_id` int(10) unsigned NOT NULL,
  `tbl_brigada_id` int(10) unsigned NOT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `tbl_locality_id` int(10) unsigned NOT NULL,
  `facility_id` int(11) NOT NULL,
  `inspection_date` date NOT NULL,
  `inspection_interval` varchar(45) NOT NULL,
  `next_inspection` date NOT NULL,
  `protocol_number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tbl_object_tbl_type_object1_idx` (`type_object_id`),
  KEY `fk_tbl_object_tbl_facility1_idx` (`facility_id`),
  KEY `fk_tbl_object_tbl_locality1_idx` (`tbl_locality_id`),
  KEY `fk_tbl_object_tbl_brigada1_idx` (`tbl_brigada_id`),
  KEY `fk_tbl_object_tbl_name_object1_idx` (`tbl_name_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `typelocality`
--

CREATE TABLE IF NOT EXISTS `typelocality` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_locality` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `typelocality`
--

INSERT INTO `typelocality` (`id`, `type_locality`) VALUES
(1, 'Станція'),
(2, 'Перегін');

-- --------------------------------------------------------

--
-- Структура таблицы `typeobject`
--

CREATE TABLE IF NOT EXISTS `typeobject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_object` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `typeobject`
--

INSERT INTO `typeobject` (`id`, `type_object`) VALUES
(1, 'Засіб захисту'),
(2, 'Інструмент з ізольованими ручками');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `brigada`
--
ALTER TABLE `brigada`
  ADD CONSTRAINT `fk_brigada_attachmentbrigada1` FOREIGN KEY (`attachmentbrigada_id`) REFERENCES `attachmentbrigada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `fk_facility_hazardcategory` FOREIGN KEY (`hazardcategory_id`) REFERENCES `hazardcategory` (`id`) ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `locality`
--
ALTER TABLE `locality`
  ADD CONSTRAINT `fk_locality_typelocality` FOREIGN KEY (`type_locality_id`) REFERENCES `typelocality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `object`
--
ALTER TABLE `object`
  ADD CONSTRAINT `fk_object_type_object` FOREIGN KEY (`type_object_id`) REFERENCES `typeobject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_object_facility` FOREIGN KEY (`facility_id`) REFERENCES `facility` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_object_locality` FOREIGN KEY (`tbl_locality_id`) REFERENCES `locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_object_brigada` FOREIGN KEY (`tbl_brigada_id`) REFERENCES `brigada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_object_nameobject` FOREIGN KEY (`tbl_name_object_id`) REFERENCES `nameobject` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
