-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 06:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystrymenu`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `recipe_id`, `comment`) VALUES
(1, 1, 1, 'This recipe is amazing!');
-- --------------------------------------------------------

--
-- Table structure for table `hearts`
--

CREATE TABLE `hearts` (
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hearts`
--

INSERT INTO `hearts` (`user_id`, `recipe_id`) VALUES
(1, 1);
-- --------------------------------------------------------

--
-- Table structure for table `poisonous_ingredients`
--

CREATE TABLE `poisonous_ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poisonous_ingredients`
--

INSERT INTO `poisonous_ingredients` (`id`, `name`, `description`) VALUES
(1, 'Apple Seeds', 'Contain amygdalin, which converts to cyanide in the body.'),
(2, 'Cherry Pits', 'Contain cyanogenic compounds that release toxic cyanide.'),
(3, 'Peach Pits', 'Similar to cherry pits, they contain amygdalin and can release cyanide.'),
(4, 'Apricot Pits', 'Also contain amygdalin, which can be toxic in large amounts.'),
(5, 'Plum Pits', 'Contain cyanogenic compounds, making them toxic if crushed and ingested.'),
(6, 'Bitter Almonds', 'Raw bitter almonds contain high amounts of cyanide.'),
(7, 'Potatoes (Green or Sprouted)', 'Contain solanine, a neurotoxin that can cause vomiting and paralysis.'),
(8, 'Tomato Leaves & Stems', 'Contain solanine, which is toxic in large amounts.'),
(9, 'Rhubarb Leaves', 'Contain oxalic acid, which can cause kidney damage.'),
(10, 'Elderberries (Unripe, Raw)', 'Contain cyanogenic glycosides, which can lead to cyanide poisoning.'),
(11, 'Cassava (Raw or Improperly Cooked)', 'Contains cyanogenic compounds that release cyanide when not processed properly.'),
(12, 'Ackee (Unripe or Improperly Prepared)', 'Contains hypoglycin A, which can cause vomiting and hypoglycemia.'),
(13, 'FuguPufferfish', 'Contains tetrodotoxin, a deadly neurotoxin with no known antidote.'),
(14, 'Wild Mushrooms (Certain Species)', 'Some species like Amanita phalloides (Death Cap) contain deadly toxins.'),
(15, 'Nutmeg (Large Amounts)', 'Contains myristicin, which can cause hallucinations and convulsions.'),
(16, 'Raw Kidney Beans', 'Contain phytohaemagglutinin, a toxin that causes severe stomach pain.'),
(17, 'Starfruit (For Kidney Patients)', 'Contains neurotoxins that can be harmful to people with kidney disease.'),
(18, 'Lima Beans (Raw or Improperly Cooked)', 'Contain linamarin, which releases cyanide when consumed raw.'),
(19, 'Castor Beans', 'Contain ricin, one of the most potent natural toxins.'),
(20, 'Mango Skin & Sap', 'Contain urushiol, the same toxin found in poison ivy.'),
(21, 'Raw Eggs (Excessive Consumption)', 'Risk of salmonella poisoning and biotin deficiency due to avidin.'),
(22, 'Raw Meat (Certain Types)', 'Can contain harmful bacteria like E. coli and Salmonella.'),
(23, 'Shellfish (Raw or Spoiled)', 'Can contain biotoxins causing paralytic shellfish poisoning.'),
(24, 'Sprouted Red Clover & Alfalfa', 'Can be contaminated with bacteria like Salmonella and E. coli.'),
(25, 'Honey (For Infants)', 'Can contain Clostridium botulinum spores, leading to botulism in infants.'),
(26, 'Raw Milk', 'Can carry harmful bacteria like Listeria and E. coli.'),
(27, 'Raw Cashews (Unprocessed)', 'Contain urushiol, a toxic compound also found in poison ivy.'),
(28, 'Hotdogs (If Not Cooked Properly)', 'Risk of Listeria contamination.'),
(29, 'Moldy Cheese', 'Some molds produce mycotoxins, which are harmful to humans.'),
(30, 'Sannakji (Live Octopus)', 'Risk of choking due to suction cups if not chewed properly.'),
(31, 'Cinnamon (In Excess)', 'Contains coumarin, which can cause liver damage.'),
(32, 'Excessive Salt', 'Can lead to high blood pressure and kidney damage.'),
(33, 'Alcoholic Beverages (Methanol Contaminated)', 'Can cause blindness and even death.'),
(34, 'Silver Stripe Blaasop (Toxic Fish)', 'Contains deadly tetrodotoxin.'),
(35, 'Uncooked Sprouts', 'High risk of bacterial contamination like Salmonella.'),
(36, 'Sushi (Certain Types of Fish)', 'Some fish contain high mercury levels, leading to poisoning.'),
(37, 'Monkfish Liver', 'Can contain dangerous levels of Vitamin A, leading to toxicity.'),
(38, 'Cherry Tomato Stems', 'Contain solanine, which is toxic when consumed in large amounts.'),
(39, 'Black Licorice (In Excess)', 'Contains glycyrrhizin, which can cause heart issues.'),
(40, 'Jackfruit (For Diabetics)', 'Can cause sudden changes in blood sugar levels.'),
(41, 'Raw Oysters', 'Can carry Vibrio bacteria, leading to severe illness.'),
(42, 'Sour Cassava (Unprocessed)', 'Contains cyanogenic glycosides, releasing cyanide.'),
(43, 'Horse Chestnuts', 'Often mistaken for edible chestnuts, but are toxic.'),
(44, 'Foie Gras (Fatty Duck Liver)', 'High purine levels can lead to gout.'),
(45, 'Taro (Raw)', 'Contains calcium oxalate crystals, which can cause throat irritation.'),
(46, 'Eggplant (Unripe and Raw in Excess)', 'Contains solanine, which can be toxic in large amounts.'),
(47, 'Bael Fruit (Unripe & Excessive Consumption)', 'Can cause severe digestive issues.'),
(48, 'Arsenic', 'A toxic heavy metal that can cause vomiting, diarrhea, organ damage, and death. Chronic exposure can lead to skin lesions, cancer, and cardiovascular problems.'),
(49, 'Cyanide', 'A deadly chemical that interferes with the body''s ability to use oxygen, causing rapid breathing, dizziness, and loss of consciousness. It can result in death in high doses.'),
(50, 'Belladonna', 'A highly toxic plant containing atropine and scopolamine. Ingesting any part of the plant can cause dilated pupils, sensitivity to light, blurred vision, tachycardia, and death.'),
(51, 'Aconite', 'A highly toxic plant that contains alkaloids like aconitine. Ingesting it can cause nausea, vomiting, diarrhea, arrhythmia, and death. Even small amounts are lethal.');

-- --------------------------------------------------------

--
-- Table structure for table `poisonous_recipes`
--

CREATE TABLE `poisonous_recipes` (
  `poisonous_recipe_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `ingredient` text NOT NULL,
  `method` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `poisonous` enum('yes','no','unknown') DEFAULT 'unknown',
  `status` enum('pending','approved','rejected') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poisonous_recipes`
--

INSERT INTO `poisonous_recipes` (`poisonous_recipe_id`, `name`, `type`, `ingredient`, `method`, `image`, `user_id`, `poisonous`, `status`) VALUES
(1, 'Apple Seeds', 'Breakfast', 'Apple Seeds', 'Mix apple seeds with water and drink.', 'apple_seeds.jpg', 1, 'yes', 'pending');
-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('Breakfast','Lunch','Dinner','Vegetarian','Sweets','Drinks','Cakes') NOT NULL,
  `ingredient` text NOT NULL,
  `method` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `poisonous` enum('yes','no','unknown') DEFAULT 'unknown'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `name`, `type`, `ingredient`, `method`, `image`, `user_id`, `poisonous`) VALUES
(1, 'Apple Seeds', 'Breakfast', 'Apple Seeds', 'Mix apple seeds with water and drink.', 'apple_seeds.jpg', 1, 'unknown');
-- --------------------------------------------------------

--
-- Table structure for table `saved_recipes`
--

CREATE TABLE `saved_recipes` (
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `saved_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saved_recipes`
--

INSERT INTO `saved_recipes` (`user_id`, `recipe_id`, `saved_at`) VALUES
(1, 1, '2024-12-25 15:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `profession` enum('Chef','Baker','Cake Decorator','Bartender') DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `user_type` enum('admin','user','visitor') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otp` varchar(6) DEFAULT NULL,
  `otp_expire` int(11) DEFAULT NULL,
  `profilePicture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `gender`, `profession`, `email`, `password_hash`, `user_type`, `created_at`, `updated_at`, `otp`, `otp_expire`, `profilePicture`) VALUES
(1, 'admin', 'one', 'male', '', 'admin@example.com', '$2y$10$epIBdjwANQ9LTzuHe3gsHurqf2yDbRGDowuRTsfwQQMQneiChxLkS', 'admin', '2024-12-13 13:39:05', '2025-03-06 04:56:33', NULL, NULL, NULL),
(2, 'user', 'one', 'female', '', 'user@example.com', '$2y$10$epIBdjwANQ9LTzuHe3gsHurqf2yDbRGDowuRTsfwQQMQneiChxLkS', 'user', '2024-12-13 13:39:05', '2025-03-06 04:56:33', NULL, NULL, NULL);;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `hearts`
--
ALTER TABLE `hearts`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `poisonous_ingredients`
--
ALTER TABLE `poisonous_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `poisonous_recipes`
--
ALTER TABLE `poisonous_recipes`
  ADD PRIMARY KEY (`poisonous_recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD PRIMARY KEY (`user_id`,`recipe_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `poisonous_ingredients`
--
ALTER TABLE `poisonous_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `poisonous_recipes`
--
ALTER TABLE `poisonous_recipes`
  MODIFY `poisonous_recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE;

--
-- Constraints for table `hearts`
--
ALTER TABLE `hearts`
  ADD CONSTRAINT `hearts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `hearts_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`);

--
-- Constraints for table `poisonous_recipes`
--
ALTER TABLE `poisonous_recipes`
  ADD CONSTRAINT `poisonous_recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `saved_recipes`
--
ALTER TABLE `saved_recipes`
  ADD CONSTRAINT `saved_recipes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `saved_recipes_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipe` (`recipe_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
