-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: ls-f87d94b1d791caa156b908fe0d47cf76bda626a0.cb4m4yum475r.ap-south-1.rds.amazonaws.com:3306
-- Generation Time: May 10, 2024 at 10:44 PM
-- Server version: 8.0.36
-- PHP Version: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `5d`
--

CREATE TABLE `5d` (
  `id` int NOT NULL,
  `period` bigint DEFAULT '0',
  `result` varchar(5) NOT NULL DEFAULT '0',
  `game` int NOT NULL DEFAULT '1',
  `status` int DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `wingo1` varchar(255) NOT NULL DEFAULT '''-1''',
  `wingo3` varchar(255) NOT NULL DEFAULT '''-1''',
  `wingo5` varchar(255) NOT NULL DEFAULT '''-1''',
  `wingo10` varchar(255) NOT NULL DEFAULT '''-1''',
  `k5d` varchar(255) NOT NULL DEFAULT '''-1''',
  `k5d3` varchar(255) NOT NULL DEFAULT '''-1''',
  `k5d5` varchar(255) DEFAULT '''-1''',
  `k5d10` varchar(255) NOT NULL DEFAULT '''-1''',
  `k3d` varchar(255) NOT NULL DEFAULT '''-1''',
  `k3d3` varchar(255) NOT NULL DEFAULT '''-1''',
  `k3d5` varchar(255) NOT NULL DEFAULT '''-1''',
  `k3d10` varchar(255) NOT NULL DEFAULT '''-1''',
  `win_rate` int NOT NULL DEFAULT '0',
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `cskh` varchar(100) NOT NULL DEFAULT '0',
  `app` varchar(255) DEFAULT '0',
  `recharge_bonus` int DEFAULT NULL,
  `recharge_bonus_2` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `wingo1`, `wingo3`, `wingo5`, `wingo10`, `k5d`, `k5d3`, `k5d5`, `k5d10`, `k3d`, `k3d3`, `k3d5`, `k3d10`, `win_rate`, `telegram`, `cskh`, `app`, `recharge_bonus`, `recharge_bonus_2`) VALUES
(4, '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', '-1', 80, 'https://t.me/jososir', 'https://t.me/basusev', '#', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `balance_transfer`
--

CREATE TABLE `balance_transfer` (
  `id` int NOT NULL,
  `sender_phone` bigint NOT NULL,
  `receiver_phone` bigint NOT NULL,
  `amount` int NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bank_recharge`
--

CREATE TABLE `bank_recharge` (
  `id` int NOT NULL,
  `name_bank` varchar(50) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `qr_code_image` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'bank',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `bank_recharge`
--

INSERT INTO `bank_recharge` (`id`, `name_bank`, `name_user`, `stk`, `qr_code_image`, `type`, `time`) VALUES
(1, 'sbi', 'aryan', 'yashu12gsusush@ybl', 'rrajaparmar6@paytm', 'bank', '1655689155500'),
(2, 'pnb', 'basu kumar', 'basu@byl', 'basu@paytm', 'momo', '1655689155500');

-- --------------------------------------------------------

--
-- Table structure for table `crashbetrecord`
--

CREATE TABLE `crashbetrecord` (
  `id` int NOT NULL,
  `username` varchar(211) NOT NULL,
  `amount` int NOT NULL,
  `status` varchar(211) NOT NULL DEFAULT 'pending',
  `winpoint` float NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `financial_details`
--

CREATE TABLE `financial_details` (
  `id` int NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `k3`
--

CREATE TABLE `k3` (
  `id` int NOT NULL,
  `period` bigint NOT NULL DEFAULT '0',
  `result` int NOT NULL,
  `game` int NOT NULL DEFAULT '1',
  `status` int NOT NULL DEFAULT '0',
  `time` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int NOT NULL,
  `level` int NOT NULL DEFAULT '0',
  `f1` varchar(50) NOT NULL,
  `f2` varchar(50) NOT NULL,
  `f3` varchar(50) NOT NULL,
  `f4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `f1`, `f2`, `f3`, `f4`) VALUES
(1, 0, '0.6', '0.18', '0.054', '0.0162'),
(2, 1, '0.7', '0.21', '0.063', '0.0189'),
(3, 2, '0.75', '0.225', '0.0675', '0.0203'),
(4, 3, '0.8', '0.24', '0.072', '0.0216'),
(5, 4, '0.85', '0.255', '0.0765', '0.023'),
(6, 5, '0.9', '0.27', '0.081', '0.0243'),
(7, 6, '1', '0.3', '0.09', '0.027');

-- --------------------------------------------------------

--
-- Table structure for table `minutes_1`
--

CREATE TABLE `minutes_1` (
  `id` int NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` varchar(255) NOT NULL DEFAULT '0',
  `result` int NOT NULL DEFAULT '0',
  `more` int NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `fee` int NOT NULL DEFAULT '0',
  `get` int NOT NULL DEFAULT '0',
  `game` varchar(50) NOT NULL DEFAULT '0',
  `bet` varchar(10) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `point_list`
--

CREATE TABLE `point_list` (
  `id` int NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `telegram` varchar(100) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `money_us` int NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `total1` int NOT NULL DEFAULT '20',
  `total2` int NOT NULL DEFAULT '50',
  `total3` int NOT NULL DEFAULT '150',
  `total4` int NOT NULL DEFAULT '350',
  `total5` int NOT NULL DEFAULT '850',
  `total6` int NOT NULL DEFAULT '5000',
  `total7` int NOT NULL DEFAULT '18050',
  `total8` int NOT NULL DEFAULT '20000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `point_list`
--

INSERT INTO `point_list` (`id`, `phone`, `telegram`, `money`, `money_us`, `level`, `total1`, `total2`, `total3`, `total4`, `total5`, `total6`, `total7`, `total8`) VALUES
(172, '8937897675', '0', 0, 0, 0, 20, 50, 150, 350, 850, 5000, 18050, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `id` int NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `transaction_id` varchar(100) DEFAULT '0',
  `utr` bigint DEFAULT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL DEFAULT 'bank',
  `status` int NOT NULL DEFAULT '0',
  `today` varchar(50) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;


-- --------------------------------------------------------

--
-- Table structure for table `redenvelopes`
--

CREATE TABLE `redenvelopes` (
  `id` int NOT NULL,
  `id_redenvelope` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `used` int NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `redenvelopes_used`
--

CREATE TABLE `redenvelopes_used` (
  `id` int NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `phone_used` varchar(50) NOT NULL DEFAULT '0',
  `id_redenvelops` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `result_5d`
--

CREATE TABLE `result_5d` (
  `id` int NOT NULL,
  `id_product` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(20) DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `stage` bigint DEFAULT '0',
  `result` varchar(5) NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `fee` int NOT NULL DEFAULT '0',
  `get` int NOT NULL DEFAULT '0',
  `game` int NOT NULL,
  `join_bet` varchar(10) NOT NULL DEFAULT '0',
  `bet` varchar(20) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `time` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `result_k3`
--

CREATE TABLE `result_k3` (
  `id` int NOT NULL,
  `id_product` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `phone` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `invite` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `stage` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `result` varchar(5) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `price` int NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `fee` int NOT NULL DEFAULT '0',
  `get` int NOT NULL DEFAULT '0',
  `game` varchar(5) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `join_bet` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `typeGame` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `bet` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `time` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roses`
--

CREATE TABLE `roses` (
  `id` int NOT NULL,
  `phone` varchar(50) DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '0',
  `invite` varchar(50) NOT NULL DEFAULT '0',
  `f1` int NOT NULL DEFAULT '0',
  `f2` int NOT NULL DEFAULT '0',
  `f3` int NOT NULL DEFAULT '0',
  `f4` int NOT NULL DEFAULT '0',
  `time` varchar(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int NOT NULL,
  `phone` varchar(20) NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(100) NOT NULL,
  `time` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `turn_over`
--

CREATE TABLE `turn_over` (
  `id` int NOT NULL,
  `phone` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `invite` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `daily_turn_over` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_turn_over` decimal(20,2) NOT NULL DEFAULT '0.00',
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `id_user` varchar(50) NOT NULL DEFAULT '0',
  `phone` varchar(20) NOT NULL DEFAULT '0',
  `token` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  `plain_password` varchar(250) DEFAULT NULL,
  `money` int NOT NULL DEFAULT '0',
  `total_money` int NOT NULL DEFAULT '0',
  `roses_f1` int NOT NULL DEFAULT '0',
  `roses_f` int NOT NULL DEFAULT '0',
  `roses_today` int NOT NULL DEFAULT '0',
  `level` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '0',
  `invite` varchar(30) NOT NULL DEFAULT '0',
  `ctv` varchar(50) NOT NULL DEFAULT '0',
  `veri` int NOT NULL DEFAULT '0',
  `otp` varchar(10) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `today` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `time` varchar(50) NOT NULL DEFAULT '0',
  `time_otp` varchar(50) NOT NULL DEFAULT '0',
  `user_level` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `id_user`, `phone`, `token`, `name_user`, `password`, `plain_password`, `money`, `total_money`, `roses_f1`, `roses_f`, `roses_today`, `level`, `rank`, `code`, `invite`, `ctv`, `veri`, `otp`, `ip_address`, `status`, `today`, `time`, `time_otp`, `user_level`) VALUES
(100, '10000', '1234567890', 'c00a71a682969948e5126738ddcd38a1', 'Member10000', '4de93544234adffbb681ed60ffcfb941', 'Admin@1234', 21000, 21000, 0, 0, 0, 1, 0, 'stLAE23473', 'uVxnY75353', '000000', 1, '436938', '::1', 1, '2024-05-03 09:20:12', '1714753212993', '0', 0),
(285, '75914', '8937897675', '0a0e3bd44c363bc20c5001ee0e3ede75', 'Member86125', '1bbd886460827015e5d605ed44252251', '11111111', 0, 0, 0, 0, 0, 0, 0, 'fFUHq63206', 'stLAE23473', '000000', 1, '813806', '152.58.94.178', 1, '2024-05-10 07:37:11', '1715326631362', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_bank`
--

CREATE TABLE `user_bank` (
  `id` int NOT NULL,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `tp` varchar(100) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL DEFAULT '0',
  `sdt` varchar(20) DEFAULT '0',
  `tinh` varchar(100) NOT NULL DEFAULT '0',
  `chi_nhanh` varchar(100) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `wingo`
--

CREATE TABLE `wingo` (
  `id` int NOT NULL,
  `period` varchar(100) NOT NULL,
  `amount` int NOT NULL DEFAULT '0',
  `game` varchar(10) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int NOT NULL,
  `id_order` varchar(100) NOT NULL DEFAULT '0',
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `money` int NOT NULL DEFAULT '0',
  `stk` varchar(100) NOT NULL DEFAULT '0',
  `name_bank` varchar(100) NOT NULL DEFAULT '0',
  `name_user` varchar(100) NOT NULL DEFAULT '0',
  `ifsc` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL DEFAULT '0',
  `tp` varchar(211) NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '0',
  `today` varchar(50) NOT NULL DEFAULT '0',
  `time` varchar(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `5d`
--
ALTER TABLE `5d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_transfer`
--
ALTER TABLE `balance_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_recharge`
--
ALTER TABLE `bank_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crashbetrecord`
--
ALTER TABLE `crashbetrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financial_details`
--
ALTER TABLE `financial_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `k3`
--
ALTER TABLE `k3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minutes_1`
--
ALTER TABLE `minutes_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point_list`
--
ALTER TABLE `point_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redenvelopes`
--
ALTER TABLE `redenvelopes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_5d`
--
ALTER TABLE `result_5d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_k3`
--
ALTER TABLE `result_k3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roses`
--
ALTER TABLE `roses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turn_over`
--
ALTER TABLE `turn_over`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_bank`
--
ALTER TABLE `user_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wingo`
--
ALTER TABLE `wingo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `5d`
--
ALTER TABLE `5d`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322329;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `balance_transfer`
--
ALTER TABLE `balance_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `bank_recharge`
--
ALTER TABLE `bank_recharge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crashbetrecord`
--
ALTER TABLE `crashbetrecord`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `financial_details`
--
ALTER TABLE `financial_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `k3`
--
ALTER TABLE `k3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322391;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `minutes_1`
--
ALTER TABLE `minutes_1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `point_list`
--
ALTER TABLE `point_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `redenvelopes`
--
ALTER TABLE `redenvelopes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `redenvelopes_used`
--
ALTER TABLE `redenvelopes_used`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `result_5d`
--
ALTER TABLE `result_5d`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `result_k3`
--
ALTER TABLE `result_k3`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `roses`
--
ALTER TABLE `roses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `turn_over`
--
ALTER TABLE `turn_over`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `user_bank`
--
ALTER TABLE `user_bank`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wingo`
--
ALTER TABLE `wingo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324210;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
