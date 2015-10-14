-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 14 2015 г., 13:00
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `resource_registry`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `user_data_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`user_data_id`),
  KEY `role_id_2` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`user_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `user_data_id`, `role_id`) VALUES
(1, 'demo', 'mPLobHQJkMV7pdw6JM5azks9n-Fkx9EY', '$2y$13$BlX7rTSKcUaluomULVXgRec/1H.y2yJG.K7jSXZArCq4OkzhJ9S/y', NULL, 'demo@mail.net', 1, 3),
(3, 'mof', 'pdw6JM5azks9n-Fkx9EYmPLobHQJkMV7', '$2y$13$XSNOyLiil07pBhh5RnNsxuHsvr21cO3HoqGtMs9rPe4xGr2L.RdUu', NULL, 'zhenyast@yandex.ru', 2, 2),
(7, 'mof2', 'sBZlLkpEbikELmURWCopgN-lYiqU7UYu', '$2y$13$yLUJbUf98IMuPBuGO2lkwu87KYF0lJM.q0s8cA2wvNxOyPCT1p/92', NULL, 'zhenyast@yandex.ru', 1, 4),
(8, 'mof23', 'LTrS-nd6GOp4NAuWsqLPMGRmTXyhnRoR', '$2y$13$Ttwe62ORjJUriGFQoT9jkeFwzaQjXlAMEmPtKiy7JYbbjEmCf09V2', NULL, 'test@gmail.com', 1, 1),
(9, 'mof234', 'v0HLQsttxqamwDDszxTmGrio0KjVFASu', '$2y$13$sVfWSaKYBjCXRG.ipdGnBOG7IWZ5epKuRxcj43I.5TLlWaxU1Tfiq', NULL, 'test@gmail.com', 1, 1),
(10, 'mof4', 'nzns3KZbmVNEERTeqbyWSmiA8iIsZCuy', '$2y$13$x4P0BcqVrFjVSE8tVfbaZuFEHpwX9Llt6MEDWtpT3H35m/35I7xhq', NULL, 'test@gmail.com', 1, 1),
(11, 'mof5', 'D3Hwd61ihElNoSZqYdbm6tY7MiR9TKMN', '$2y$13$apiaxjG5M3k1MQ/IdxYM1ubbyaOglIdNoOymvuzkITKShbqhP.EW6', NULL, 'test@gmail.com', 1, 1),
(12, 'mof6', 'FEdVtOX6YBUSBDkGwBmlkRs7MvKS1rNS', '$2y$13$UW1VZ9hHTX5Vhnzw.uoQ7OUMu/GInWxGUN8CKFqE11hHkyE0VQuxe', NULL, 'test@gmail.com', 1, 1),
(14, 'mof9', 'CnJoAGaGgNUzWFs1douSRUhI-7nCQofg', '$2y$13$NGtRJrUMsGHIrqrKdWq2kercGlmyyjwOgpm8ZxYfSey6Y0Gk0Dtfu', NULL, 'test@gmail.com', 1, 1),
(15, 'mof10', 'iWVndxR_sQaVRTNgvgKNsgLlJB1pNzDk', '$2y$13$GyFd0cLsWEqsoY31QSynBexJhzntmrB6yGu.Tk2kTsSsq09uybWwC', NULL, 'test@gmail.com', 100, 1),
(16, 'mof11', 'J9pL0T5YDbPSK7mn0O0FRYndbFFxAgEX', '$2y$13$O4Hid6PLW2BGi.Y4IlX2c.XBVWk.SPul8pWrD6XgYxxQgRXtRHdpC', NULL, 'test@gmail.com', 101, 1),
(17, 'mof12', '2b1-_u4Gb-BcDIlQTwwxOFSXypfeLuMP', '$2y$13$ffgOz/IhD8Jb2r0vX/Z44uA9u0QP2aRDlxdxokeVdK18z76yPo7RO', NULL, 'personalDataModel@ya.ru', 108, 1),
(18, 'mof17', 'ecuUkIjIbI-a_JL3dk5clnLTBu6NMPxm', '$2y$13$Wqc8FH7coO.n/iyc/l4nHecWTJlQQujSFcnBeX1n7MhwmcsvPZ00m', NULL, 'test@mail.ru', 117, 1),
(20, 'mof18', 'vLNM1wxWKgQN27Ggot6mt2i08QxEI1dk', '$2y$13$LcGAfRrqIZDUwtdECiOKreh5XUAL106odA5Zj89sd034r3WJxdvBe', NULL, 'vasya@ya.ru', 156, 1);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_data_id`) REFERENCES `personal_data` (`personal_data_id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
