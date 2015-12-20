-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 20 2015 г., 18:54
-- Версия сервера: 5.6.27-0ubuntu1
-- Версия PHP: 5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vetl`
--

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_brigada`
--

CREATE TABLE IF NOT EXISTS `tbl_brigada` (
  `id` int(10) unsigned NOT NULL,
  `room_brigade` varchar(45) NOT NULL,
  `last_name_SHNS` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_brigada`
--

INSERT INTO `tbl_brigada` (`id`, `room_brigade`, `last_name_SHNS`) VALUES
(4, '4', 'Покотило'),
(5, '5', 'Заяц');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_certificate`
--

CREATE TABLE IF NOT EXISTS `tbl_certificate` (
  `id` int(11) NOT NULL,
  `issued` varchar(254) NOT NULL,
  `name_certificate` varchar(254) NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `date_issue_certificate` date NOT NULL,
  `valid_to_certificate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_certificate`
--

INSERT INTO `tbl_certificate` (`id`, `issued`, `name_certificate`, `number_certificate`, `date_issue_certificate`, `valid_to_certificate`) VALUES
(1, 'Дозвіл Державної служби гірничого нагляду та промислової безпеки', 'випробування електричного устаткування електричних мереж', '1266.13.30', '2013-11-29', '2018-11-28'),
(2, 'БОМС', 'Свідоцтво про атестацію ВЕТЛ', 'БОМС-9/13-2012', '2012-11-22', '2015-11-21');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_facility`
--

CREATE TABLE IF NOT EXISTS `tbl_facility` (
  `id` int(10) unsigned NOT NULL,
  `facility` varchar(45) NOT NULL,
  `hazard_category_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_facility`
--

INSERT INTO `tbl_facility` (`id`, `facility`, `hazard_category_id`) VALUES
(3, 'Релейне приміщення', 1),
(4, 'Маневрова Вишка', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_hazard_category`
--

CREATE TABLE IF NOT EXISTS `tbl_hazard_category` (
  `id` int(10) unsigned NOT NULL,
  `hazard_category` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_hazard_category`
--

INSERT INTO `tbl_hazard_category` (`id`, `hazard_category`) VALUES
(1, 'Небезпечні'),
(2, 'Підвищенної небезпеки');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_locality`
--

CREATE TABLE IF NOT EXISTS `tbl_locality` (
  `id` int(10) unsigned NOT NULL,
  `locality` varchar(45) NOT NULL,
  `type_locality_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_locality`
--

INSERT INTO `tbl_locality` (`id`, `locality`, `type_locality_id`) VALUES
(1, 'Ніжин - Носівка', 2),
(2, 'Носівка', 1),
(4, 'Ніжин', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_name_object`
--

CREATE TABLE IF NOT EXISTS `tbl_name_object` (
  `id` int(10) unsigned NOT NULL,
  `name_object` varchar(254) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_name_object`
--

INSERT INTO `tbl_name_object` (`id`, `name_object`) VALUES
(1, 'Бокорізи'),
(2, 'Викрутка');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_object`
--

CREATE TABLE IF NOT EXISTS `tbl_object` (
  `id` int(10) unsigned NOT NULL,
  `type_object_id` int(10) unsigned NOT NULL,
  `tbl_name_object_id` int(10) unsigned NOT NULL,
  `tbl_brigada_id` int(10) unsigned NOT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `tbl_locality_id` int(10) unsigned NOT NULL,
  `facility_id` int(10) unsigned NOT NULL,
  `inspection_date` date NOT NULL,
  `inspection_interval` varchar(45) NOT NULL,
  `next_inspection` date NOT NULL,
  `protocol_number` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_object`
--

INSERT INTO `tbl_object` (`id`, `type_object_id`, `tbl_name_object_id`, `tbl_brigada_id`, `inventory_number`, `tbl_locality_id`, `facility_id`, `inspection_date`, `inspection_interval`, `next_inspection`, `protocol_number`) VALUES
(1, 2, 1, 4, NULL, 4, 4, '2015-12-20', '12', '2016-12-20', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_type_locality`
--

CREATE TABLE IF NOT EXISTS `tbl_type_locality` (
  `id` int(10) unsigned NOT NULL,
  `type_locality` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_type_locality`
--

INSERT INTO `tbl_type_locality` (`id`, `type_locality`) VALUES
(1, 'Станція'),
(2, 'Перегін');

-- --------------------------------------------------------

--
-- Структура таблицы `tbl_type_object`
--

CREATE TABLE IF NOT EXISTS `tbl_type_object` (
  `id` int(10) unsigned NOT NULL,
  `type_object` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tbl_type_object`
--

INSERT INTO `tbl_type_object` (`id`, `type_object`) VALUES
(1, 'Засіб захисту'),
(2, 'Інструмент з ізольованими ручками');

-- --------------------------------------------------------

--
-- Структура таблицы `tdl_measuring_instrument`
--

CREATE TABLE IF NOT EXISTS `tdl_measuring_instrument` (
  `id` int(10) unsigned NOT NULL,
  `type_measuring_instrument` varchar(45) NOT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `inventory_number` varchar(45) DEFAULT NULL,
  `calibration_date` date NOT NULL,
  `number_certificate` varchar(45) NOT NULL,
  `calibration_interval` varchar(45) NOT NULL,
  `next_calibration` date NOT NULL,
  `notices` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `tbl_brigada`
--
ALTER TABLE `tbl_brigada`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_certificate`
--
ALTER TABLE `tbl_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_facility`
--
ALTER TABLE `tbl_facility`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_facility_tbl_hazard_category_idx` (`hazard_category_id`);

--
-- Индексы таблицы `tbl_hazard_category`
--
ALTER TABLE `tbl_hazard_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_locality`
--
ALTER TABLE `tbl_locality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_locality_tbl_type_locality_idx` (`type_locality_id`);

--
-- Индексы таблицы `tbl_name_object`
--
ALTER TABLE `tbl_name_object`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_object`
--
ALTER TABLE `tbl_object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tbl_object_tbl_type_object1_idx` (`type_object_id`),
  ADD KEY `fk_tbl_object_tbl_facility1_idx` (`facility_id`),
  ADD KEY `fk_tbl_object_tbl_locality1_idx` (`tbl_locality_id`),
  ADD KEY `fk_tbl_object_tbl_brigada1_idx` (`tbl_brigada_id`),
  ADD KEY `fk_tbl_object_tbl_name_object1_idx` (`tbl_name_object_id`);

--
-- Индексы таблицы `tbl_type_locality`
--
ALTER TABLE `tbl_type_locality`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tbl_type_object`
--
ALTER TABLE `tbl_type_object`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tdl_measuring_instrument`
--
ALTER TABLE `tdl_measuring_instrument`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `tbl_brigada`
--
ALTER TABLE `tbl_brigada`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `tbl_certificate`
--
ALTER TABLE `tbl_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tbl_facility`
--
ALTER TABLE `tbl_facility`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `tbl_hazard_category`
--
ALTER TABLE `tbl_hazard_category`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tbl_locality`
--
ALTER TABLE `tbl_locality`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `tbl_name_object`
--
ALTER TABLE `tbl_name_object`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tbl_object`
--
ALTER TABLE `tbl_object`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `tbl_type_locality`
--
ALTER TABLE `tbl_type_locality`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tbl_type_object`
--
ALTER TABLE `tbl_type_object`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `tdl_measuring_instrument`
--
ALTER TABLE `tdl_measuring_instrument`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `tbl_facility`
--
ALTER TABLE `tbl_facility`
  ADD CONSTRAINT `fk_tbl_facility_tbl_hazard_category` FOREIGN KEY (`hazard_category_id`) REFERENCES `tbl_hazard_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `tbl_locality`
--
ALTER TABLE `tbl_locality`
  ADD CONSTRAINT `fk_tbl_locality_tbl_type_locality` FOREIGN KEY (`type_locality_id`) REFERENCES `tbl_type_locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `tbl_object`
--
ALTER TABLE `tbl_object`
  ADD CONSTRAINT `fk_tbl_object_tbl_brigada1` FOREIGN KEY (`tbl_brigada_id`) REFERENCES `tbl_brigada` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_object_tbl_facility1` FOREIGN KEY (`facility_id`) REFERENCES `tbl_facility` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_object_tbl_locality1` FOREIGN KEY (`tbl_locality_id`) REFERENCES `tbl_locality` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_object_tbl_name_object1` FOREIGN KEY (`tbl_name_object_id`) REFERENCES `tbl_name_object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_object_tbl_type_object1` FOREIGN KEY (`type_object_id`) REFERENCES `tbl_type_object` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
