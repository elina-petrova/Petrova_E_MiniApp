-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2020 г., 03:48
-- Версия сервера: 5.7.31
-- Версия PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mini_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `minicars_tb`
--

DROP TABLE IF EXISTS `minicars_tb`;
CREATE TABLE IF NOT EXISTS `minicars_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `price` int(6) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(40) NOT NULL,
  `video` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `minicars_tb`
--

INSERT INTO `minicars_tb` (`id`, `name`, `price`, `description`, `thumbnail`, `video`) VALUES
(1, 'MINI JOHN COOPER COUNTRYMAN', 48156, 'Get in, strap up, and prepare to hold on tight. A MINI John Cooper Works is unlike anything you have ever experienced. Even before you’ve touched the accelerator, the throaty growl beneath the bonnet is enough to set your pulse racing. And when you do put your foot down and harness all the power at your disposal – up to 301 hp of it – you will instantly realize that this is MINI on a whole new level. This is MINI, dialled up to the maximum. This is pure driving passion, in its most powerful form.', 'cooperthumb.png', 'coopervideo.mp4'),
(2, 'THE ALL-ELECTRIC MINI COOPER', 39990, 'The first all-electric MINI ushers in an exciting new era for the iconic urban car. It\'s MINI at its most evolved – fusing our hallmark design and handling with instantaneous acceleration, emission-free mobility, and an energy that\'s more electrifying than ever. Get set to switch on to an electric urban lifestyle. Discover the all-electric MINI Cooper SE 3 door today and charge grille-first into a sustainable future.', 'electrothumb.png', 'electrovideo.mp4'),
(3, 'MINI CONVERTIBLE', 30090, 'Open top. Open road. Open-ended possibilities. The MINI Convertible brings together three generations of MINI design, but boasts a personality that is all its own. With comfortable seating for four and a 3-in-1 Soft Top that can function as a sunroof or a full-fledged drop-top, it’s always ready for your next open-air adventure. And with a lively Twin Power Turbo engine capable of hitting 100 km/h in a blistering 6.6 seconds (in the John Cooper Works variant), it’s sure to offer a few hair-raising thrills along the way.', 'convertiblethumb.jpg', 'convertiblevideo.mp4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
