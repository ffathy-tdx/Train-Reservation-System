-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2023 at 05:54 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sep22_211003291_proj`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `air_conditioning` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `air_conditioning`) VALUES
(1, 'First Class', 1),
(2, 'Second Class', 1),
(3, 'Third Class', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fares`
--

CREATE TABLE `fares` (
  `fare_id` int NOT NULL,
  `train_id` int NOT NULL,
  `class_id` int NOT NULL,
  `original_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `fares`
--

INSERT INTO `fares` (`fare_id`, `train_id`, `class_id`, `original_price`) VALUES
(1, 1, 1, 850),
(2, 2, 1, 200),
(3, 3, 1, 750),
(4, 4, 1, 200),
(5, 5, 1, 200),
(6, 6, 1, 300),
(7, 7, 1, 150),
(8, 8, 1, 380),
(9, 9, 1, 270),
(10, 10, 1, 300),
(11, 11, 1, 300),
(12, 1, 2, 630),
(13, 2, 2, 150),
(14, 3, 2, 590),
(15, 4, 2, 150),
(16, 5, 2, 250),
(17, 6, 2, 140),
(18, 7, 2, 75),
(19, 8, 2, 200),
(20, 9, 2, 190),
(21, 10, 2, 170),
(22, 11, 2, 170),
(23, 1, 3, 525),
(24, 2, 3, 75),
(25, 3, 3, 400),
(26, 4, 3, 75),
(27, 5, 3, 170),
(28, 6, 3, 90),
(29, 7, 3, 50),
(30, 8, 3, 150),
(31, 9, 3, 120),
(32, 10, 3, 60),
(33, 11, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `fname` varchar(255) NOT NULL,
  `minit` char(1) DEFAULT NULL,
  `lname` varchar(255) NOT NULL,
  `street_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `house_number` int NOT NULL,
  `national_id` char(14) NOT NULL,
  `Gender` char(1) NOT NULL,
  `phone_number` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`fname`, `minit`, `lname`, `street_name`, `house_number`, `national_id`, `Gender`, `phone_number`) VALUES
('Fatma', 'I', 'Ibrahim', 'El-Tagammu Street', 321, '30403300202042', 'F', '00201221110009'),
('Mohammed', 'A', 'Salem', 'El-Khalifa Street', 789, '30403300202051', 'M', '00201111222333'),
('Ahmed', 'M', 'Ali', 'Elm Street, Cairo', 24, '30403300202057', 'M', '00201156266232'),
('Sara', 'M', 'Mohammed', 'El Ekbal Street, Giza', 456, '30403300202058', 'F', '00201111166231'),
('Samir', 'S', 'Mustafa', 'Shaarawy Street, Alexandria', 902, '30403300202059', 'M', '00201111166230'),
('Hayah', 'E', 'Hassan', 'Safya Zaghloul Street, Alexandria', 3412, '30403300202060', 'F', '00201123665265'),
('Fares', 'F', 'Ali', 'El-Nahda Street', 987, '30403300202064', 'M', '00201443221001'),
('Tariq', 'B', 'Mansour', 'Cassara Street, Suez', 5678, '30403300202065', 'M', '00201111166224'),
('Lena', 'F', 'Kamal', 'Saad Zaghloul Street, Alexandria', 12, '30403300202066', 'F', '00201111166223'),
('Yasmin', 'T', 'Ahmed', 'El-Zamalek Street', 654, '30403300202073', 'F', '00201332211001'),
('Omar', 'R', 'Sami', 'El-Mohandessin Street', 246, '30403300202095', 'M', '00201554321000');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int NOT NULL,
  `travel_date` date NOT NULL,
  `seat_numbers` varchar(255) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `national_id` char(14) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `is_holiday` tinyint(1) NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `train_id` int DEFAULT NULL,
  `class_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `travel_date`, `seat_numbers`, `phone_number`, `address`, `national_id`, `payment_method`, `is_holiday`, `discount`, `train_id`, `class_id`) VALUES
(1, '2023-01-01', '1A, 1B', '00201111166223', '678 ElHoreya Street', '30403300202057', 'Credit Card', 0, '10.00', 1, 1),
(3, '2023-03-01', '3A, 3B', '00201111166225', '456 El Ekbal Street', '30403300202058', 'Cash', 1, '20.00', 2, 3),
(4, '2023-04-01', '4A, 4B', '0020112366526', '789 Shaarawy Street', '30403300202059', 'Credit Card', 0, '25.00', 3, 1),
(5, '2023-08-01', '8A, 8B', '00201111166230', '123 Safya Zaghloul Street', '30403300202060', 'Credit Card', 0, '10.00', 1, 1),
(6, '2023-09-01', '9A, 9B', '00201111166231', '456 Qasr Elnil Street', '30403300202065', 'Debit Card', 0, '15.00', 2, 2),
(7, '2023-10-01', '10A, 10B', '00201156266232', '789 Saad Zaghloul Street', '30403300202066', 'Cash', 1, '20.00', 3, 3),
(8, '2022-12-31', '4A, 5A', '00201554321000', 'El-Mohandessin Street 246', '30403300202095', 'credit card', 0, '0.00', 1, 1),
(9, '2022-12-31', '6A, 7A', '00201554321000', 'El-Mohandessin Street 246', '30403300202095', 'credit card', 0, '0.00', 1, 1),
(10, '2023-07-01', '6B,7B', '00201111166230', 'Shaarawy Street, Alexandria 902', '30403300202059', 'credit card', 0, '0.00', 1, 1),
(41, '2023-02-01', '2A, 2B', '00201111166225', '857 Talaat Harb Street, Cairo', '30403300202066', 'Credit Card', 0, '0.00', 1, 2),
(42, '2023-05-01', '5A, 5B', '00201111166226', '928 El Gomhoria Street, Alexandria', '30403300202065', 'Debit Card', 0, '0.00', 2, 2),
(43, '2023-06-01', '6A, 6B', '00201111166227', '1234 Qasr El Nil Street, Cairo', '30403300202060', 'Cash', 0, '0.00', 3, 2),
(44, '2023-07-01', '7A, 7B', '00201111166228', '567 Saad Zaghloul Street, Alexandria', '30403300202059', 'Credit Card', 1, '10.00', 4, 3),
(45, '2023-08-01', '8A, 8B', '00201111166229', '246 El Mohandessin Street, Cairo', '30403300202058', 'Debit Card', 0, '5.00', 5, 3),
(46, '2023-09-01', '9A, 9B', '00201111122229', '789 El Horreya Street, Alexandria', '30403300202057', 'Cash', 0, '0.00', 6, 3),
(47, '2023-10-01', '10A, 10B', '00201111166223', '321 Safya Zaghloul Street, Alexandria', '30403300202066', 'Credit Card', 1, '20.00', 7, 1),
(48, '2023-11-01', '11A, 11B', '00201111166224', '654 El Ekbal Street, Alexandria', '30403300202065', 'Debit Card', 0, '15.00', 8, 1),
(49, '2023-12-01', '12A, 12B', '00201111166230', '987 Shaarawy Street, Alexandria', '30403300202060', 'Cash', 0, '0.00', 9, 1),
(50, '2023-01-01', '1A, 1B', '00201111166231', '246 El Mohandessin Street, Cairo', '30403300202059', 'Credit Card', 0, '0.00', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_payments`
--

CREATE TABLE `reservation_payments` (
  `payment_id` int NOT NULL,
  `reservation_id` int NOT NULL,
  `payment_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reservation_payments`
--

INSERT INTO `reservation_payments` (`payment_id`, `reservation_id`, `payment_amount`) VALUES
(1, 1, '765.00'),
(2, 3, '52.50'),
(3, 4, '562.50'),
(4, 5, '765.00'),
(5, 6, '127.50'),
(6, 7, '280.00'),
(8, 1, '765.00'),
(9, 3, '52.50'),
(10, 4, '562.50'),
(11, 5, '765.00'),
(12, 6, '127.50'),
(13, 7, '280.00'),
(14, 8, '850.00'),
(15, 9, '850.00'),
(16, 10, '850.00'),
(17, 41, '630.00'),
(18, 42, '150.00'),
(19, 43, '590.00'),
(20, 44, '60.00'),
(21, 45, '161.50'),
(22, 46, '90.00'),
(23, 47, '105.00'),
(24, 48, '323.00'),
(25, 49, '270.00'),
(26, 50, '300.00');

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `station_id` int NOT NULL,
  `station_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`station_id`, `station_name`, `location`) VALUES
(1, 'Cairo Central', 'Cairo'),
(2, 'Aswan Railway Station', 'Aswan'),
(3, 'Luxor Railway Station', 'Luxor'),
(4, 'Abu Simbel', 'Aswan'),
(5, 'Victoria Railway Station', 'Alexandria'),
(6, 'Sidi Gaber Railway Station', 'Alexandria'),
(7, 'Port Said Railway Station', 'Port Said'),
(8, 'Sohag Railway Station', 'Sohag'),
(9, 'Suez Railway Station', 'Suez'),
(10, 'Tanta Railway Station', 'Tanta');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `stop_id` int NOT NULL,
  `train_id` int NOT NULL,
  `station_id` int NOT NULL,
  `arrival_time` time NOT NULL,
  `departure_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`stop_id`, `train_id`, `station_id`, `arrival_time`, `departure_time`) VALUES
(1, 1, 1, '07:00:00', '07:30:00'),
(2, 1, 2, '10:00:00', '10:15:00'),
(4, 2, 1, '10:00:00', '11:00:00'),
(5, 2, 2, '12:00:00', '13:00:00'),
(6, 2, 3, '14:00:00', '15:00:00'),
(7, 3, 1, '10:00:00', '11:00:00'),
(8, 3, 2, '12:00:00', '13:00:00'),
(9, 3, 3, '14:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `train_id` int NOT NULL,
  `train_name` varchar(255) NOT NULL,
  `departure_station_id` int NOT NULL,
  `arrival_station_id` int NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`train_id`, `train_name`, `departure_station_id`, `arrival_station_id`, `departure_time`, `arrival_time`) VALUES
(1, 'Abu Simbel Express', 6, 4, '06:00:00', '09:00:00'),
(2, 'Aswan Express', 3, 2, '09:00:00', '11:00:00'),
(3, 'Luxor Express', 1, 3, '12:00:00', '15:00:00'),
(4, 'Alexandria local', 5, 6, '06:00:00', '06:30:00'),
(5, 'Alexandria local', 6, 5, '15:00:00', '15:15:00'),
(6, 'Alexandria Express', 1, 6, '15:00:00', '17:30:00'),
(7, 'Port Said Express', 1, 7, '06:00:00', '09:00:00'),
(8, 'Sohag Express', 1, 8, '09:00:00', '14:00:00'),
(9, 'Suez Express', 1, 9, '12:00:00', '14:00:00'),
(10, 'Tanta Express', 1, 10, '15:00:00', '17:30:00'),
(11, 'Tanta Express', 6, 10, '05:00:00', '07:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `fares`
--
ALTER TABLE `fares`
  ADD PRIMARY KEY (`fare_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`national_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `national_id` (`national_id`);

--
-- Indexes for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `reservation_id` (`reservation_id`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`stop_id`),
  ADD KEY `train_id` (`train_id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`train_id`),
  ADD KEY `departure_station_id` (`departure_station_id`),
  ADD KEY `arrival_station_id` (`arrival_station_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fares`
--
ALTER TABLE `fares`
  MODIFY `fare_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  MODIFY `payment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `station_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `stop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trains`
--
ALTER TABLE `trains`
  MODIFY `train_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fares`
--
ALTER TABLE `fares`
  ADD CONSTRAINT `fares_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  ADD CONSTRAINT `fares_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`),
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`national_id`) REFERENCES `passengers` (`national_id`);

--
-- Constraints for table `reservation_payments`
--
ALTER TABLE `reservation_payments`
  ADD CONSTRAINT `reservation_payments_ibfk_1` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`);

--
-- Constraints for table `stops`
--
ALTER TABLE `stops`
  ADD CONSTRAINT `stops_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `trains` (`train_id`),
  ADD CONSTRAINT `stops_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `stations` (`station_id`);

--
-- Constraints for table `trains`
--
ALTER TABLE `trains`
  ADD CONSTRAINT `trains_ibfk_1` FOREIGN KEY (`departure_station_id`) REFERENCES `stations` (`station_id`),
  ADD CONSTRAINT `trains_ibfk_2` FOREIGN KEY (`arrival_station_id`) REFERENCES `stations` (`station_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
