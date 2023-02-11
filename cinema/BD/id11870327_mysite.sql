-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 15 2020 г., 16:00
-- Версия сервера: 10.3.16-MariaDB
-- Версия PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `id11870327_mysite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `film_id` int(10) UNSIGNED NOT NULL,
  `film_name` varchar(255) NOT NULL,
  `film_duration` int(10) UNSIGNED NOT NULL,
  `film_description` text NOT NULL,
  `film_origin` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`film_id`, `film_name`, `film_duration`, `film_description`, `film_origin`) VALUES
(80, 'Фильм 1', 120, 'какой-то фильм', 'США'),
(81, 'Фильм 3', 100, 'Какой-то фильм', 'США'),
(82, 'Фильм 2', 124, 'Какой-то фильм', 'Россия');

--
-- Триггеры `films`
--
DELIMITER $$
CREATE TRIGGER `update_seances_film` BEFORE DELETE ON `films` FOR EACH ROW DELETE FROM `seances` WHERE `seance_filmid`=OLD.`film_id`
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `halls`
--

CREATE TABLE `halls` (
  `hall_id` int(10) UNSIGNED NOT NULL,
  `hall_name` varchar(30) NOT NULL,
  `hall_rows` int(11) NOT NULL DEFAULT 10,
  `hall_places` int(11) NOT NULL DEFAULT 10,
  `hall_config` text NOT NULL,
  `hall_price_standart` int(11) NOT NULL DEFAULT 100,
  `hall_price_vip` int(11) NOT NULL DEFAULT 350,
  `hall_open` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `halls`
--

INSERT INTO `halls` (`hall_id`, `hall_name`, `hall_rows`, `hall_places`, `hall_config`, `hall_price_standart`, `hall_price_vip`, `hall_open`) VALUES
(66, 'Зал3', 10, 10, '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__hall-wrapper__save-status\"></div>', 100, 350, 0),
(59, 'Зал2', 10, 10, '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_disabled\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__hall-wrapper__save-status\"></div>', 100, 350, 0),
(71, 'Зал1', 10, 10, '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__hall-wrapper__save-status\"></div>', 100, 350, 1),
(72, 'Зал4', 10, 10, '<div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__row\"><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span><span class=\"conf-step__chair conf-step__chair_standart\"></span></div><div class=\"conf-step__hall-wrapper__save-status\"></div>', 100, 350, 0);

--
-- Триггеры `halls`
--
DELIMITER $$
CREATE TRIGGER `updateSales_deleteHall` AFTER DELETE ON `halls` FOR EACH ROW DELETE FROM `sales` WHERE `sale_hallid`=OLD.`hall_id`
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateSales_updateHall` BEFORE UPDATE ON `halls` FOR EACH ROW if (NEW.`hall_config` <> OLD.`hall_config`) then
DELETE FROM `sales` WHERE `sale_hallid`=OLD.`hall_id`;
end if
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `updateSeances_deleteHall` BEFORE DELETE ON `halls` FOR EACH ROW DELETE FROM `seances` WHERE `seance_hallid`=OLD.`hall_id`
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(10) UNSIGNED NOT NULL,
  `sale_timestamp` int(10) UNSIGNED NOT NULL,
  `sale_hallid` int(10) UNSIGNED NOT NULL,
  `sale_seanceid` int(10) NOT NULL,
  `sale_configuration` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sales`
--

INSERT INTO `sales` (`sale_id`, `sale_timestamp`, `sale_hallid`, `sale_seanceid`, `sale_configuration`) VALUES
(28, 1581800400, 71, 56, '\n          <div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart buying-scheme__chair_taken\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart buying-scheme__chair_taken\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart buying-scheme__chair_taken\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__row\"><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span><span class=\"buying-scheme__chair buying-scheme__chair_standart\"></span></div><div class=\"buying-scheme__hall-wrapper__save-status\"></div>        ');

-- --------------------------------------------------------

--
-- Структура таблицы `seances`
--

CREATE TABLE `seances` (
  `seance_id` int(10) UNSIGNED NOT NULL,
  `seance_hallid` int(10) UNSIGNED NOT NULL,
  `seance_filmid` int(10) UNSIGNED NOT NULL,
  `seance_time` varchar(5) NOT NULL,
  `seance_start` int(10) UNSIGNED NOT NULL,
  `seance_end` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seances`
--

INSERT INTO `seances` (`seance_id`, `seance_hallid`, `seance_filmid`, `seance_time`, `seance_start`, `seance_end`) VALUES
(56, 71, 82, '00:00', 0, 124),
(58, 71, 81, '11:10', 670, 770),
(60, 59, 81, '12:00', 720, 820);

--
-- Триггеры `seances`
--
DELIMITER $$
CREATE TRIGGER `update_sales_seance` BEFORE DELETE ON `seances` FOR EACH ROW DELETE FROM `sales` WHERE `sale_seanceid`=OLD.`seance_id`
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`) VALUES
(1, 'qamid@qamid.ru', 'qamid');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`film_id`);

--
-- Индексы таблицы `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`hall_id`),
  ADD UNIQUE KEY `hall_name` (`hall_name`);

--
-- Индексы таблицы `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`);

--
-- Индексы таблицы `seances`
--
ALTER TABLE `seances`
  ADD PRIMARY KEY (`seance_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_login` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `film_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT для таблицы `halls`
--
ALTER TABLE `halls`
  MODIFY `hall_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `seances`
--
ALTER TABLE `seances`
  MODIFY `seance_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
