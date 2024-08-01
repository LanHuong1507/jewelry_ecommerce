-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2024 at 01:39 PM
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
-- Database: `jewelry_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `material`, `price`, `description`, `image`) VALUES
(1, 'Gold Solitaire Ring', 1, 'Gold', 500.00, 'A classic gold solitaire ring with a single diamond.', 'gold_solitaire_ring.jpg'),
(2, 'Silver Band Ring', 1, 'Silver', 200.00, 'A sleek and simple silver band ring.', 'silver_band_ring.jpg'),
(3, 'Rose Gold Engagement Ring', 1, 'Rose Gold', 750.00, 'A beautiful rose gold engagement ring with a halo of diamonds.', 'rose_gold_engagement_ring.jpg'),
(4, 'Platinum Wedding Band', 1, 'Platinum', 1000.00, 'A durable and elegant platinum wedding band.', 'platinum_wedding_band.jpg'),
(5, 'Emerald Cut Ring', 1, 'Gold', 600.00, 'A stunning emerald cut ring with intricate detailing.', 'emerald_cut_ring.jpg'),
(6, 'Vintage Ruby Ring', 1, 'Gold', 800.00, 'A vintage-inspired ruby ring set in gold.', 'vintage_ruby_ring.jpg'),
(7, 'Sapphire Halo Ring', 1, 'White Gold', 900.00, 'A brilliant sapphire ring surrounded by a halo of diamonds.', 'sapphire_halo_ring.jpg'),
(8, 'Two-Tone Ring', 1, 'Gold and Silver', 350.00, 'A stylish two-tone ring combining gold and silver.', 'two_tone_ring.jpg'),
(9, 'Diamond Eternity Ring', 1, 'Platinum', 1200.00, 'An eternity ring with diamonds all around.', 'diamond_eternity_ring.jpg'),
(10, 'Men\'s Tungsten Ring', 1, 'Tungsten', 250.00, 'A modern tungsten ring for men.', 'mens_tungsten_ring.jpg'),
(11, 'Black Onyx Ring', 1, 'Silver', 300.00, 'A bold black onyx ring set in silver.', 'black_onyx_ring.jpg'),
(12, 'Gold Signet Ring', 1, 'Gold', 400.00, 'A classic gold signet ring with custom engraving.', 'gold_signet_ring.jpg'),
(13, 'Pearl Ring', 1, 'Silver', 220.00, 'A delicate pearl ring set in silver.', 'pearl_ring.jpg'),
(14, 'Opal Ring', 1, 'Gold', 550.00, 'A mesmerizing opal ring set in gold.', 'opal_ring.jpg'),
(15, 'Aquamarine Ring', 1, 'Platinum', 650.00, 'A beautiful aquamarine ring in platinum.', 'aquamarine_ring.jpg'),
(16, 'Garnet Ring', 1, 'Gold', 400.00, 'A stunning garnet ring with gold setting.', 'garnet_ring.jpg'),
(17, 'Peridot Ring', 1, 'Silver', 280.00, 'A lovely peridot ring set in silver.', 'peridot_ring.jpg'),
(18, 'Amethyst Ring', 1, 'Gold', 500.00, 'An elegant amethyst ring with a gold band.', 'amethyst_ring.jpg'),
(19, 'Tanzanite Ring', 1, 'Platinum', 700.00, 'A striking tanzanite ring in platinum.', 'tanzanite_ring.jpg'),
(20, 'Chrysoberyl Ring', 1, 'Gold', 600.00, 'A rare chrysoberyl ring set in gold.', 'chrysoberyl_ring.jpg'),
(21, 'Morganite Ring', 1, 'Rose Gold', 550.00, 'A stunning morganite ring with rose gold setting.', 'morganite_ring.jpg'),
(22, 'Citrine Ring', 1, 'Silver', 320.00, 'A radiant citrine ring set in silver.', 'citrine_ring.jpg'),
(23, 'Diamond Pendant Necklace', 2, 'Gold', 1200.00, 'A stunning diamond pendant on a gold chain.', 'diamond_pendant_necklace.jpg'),
(24, 'Pearl Choker Necklace', 2, 'Pearl', 400.00, 'An elegant pearl choker necklace.', 'pearl_choker_necklace.jpg'),
(25, 'Silver Statement Necklace', 2, 'Silver', 350.00, 'A bold silver statement necklace with intricate design.', 'silver_statement_necklace.jpg'),
(26, 'Gold Plated Necklace', 2, 'Gold Plated', 300.00, 'A beautiful gold-plated necklace with a modern design.', 'gold_plated_necklace.jpg'),
(27, 'Emerald Necklace', 2, 'Gold', 1500.00, 'An exquisite emerald necklace set in gold.', 'emerald_necklace.jpg'),
(28, 'Ruby Pendant Necklace', 2, 'Gold', 800.00, 'A charming ruby pendant on a gold chain.', 'ruby_pendant_necklace.jpg'),
(29, 'Sapphire Necklace', 2, 'White Gold', 1300.00, 'A stunning sapphire necklace with a white gold chain.', 'sapphire_necklace.jpg'),
(30, 'Diamond Tennis Necklace', 2, 'Platinum', 2000.00, 'A luxurious diamond tennis necklace in platinum.', 'diamond_tennis_necklace.jpg'),
(31, 'Pearl Strand Necklace', 2, 'Pearl', 600.00, 'A classic pearl strand necklace with a modern touch.', 'pearl_strand_necklace.jpg'),
(32, 'Amethyst Necklace', 2, 'Silver', 450.00, 'A delicate amethyst necklace set in silver.', 'amethyst_necklace.jpg'),
(33, 'Gold Heart Necklace', 2, 'Gold', 350.00, 'A lovely gold heart-shaped necklace.', 'gold_heart_necklace.jpg'),
(34, 'Tanzanite Pendant Necklace', 2, 'White Gold', 900.00, 'An elegant tanzanite pendant on a white gold chain.', 'tanzanite_pendant_necklace.jpg'),
(35, 'Turquoise Necklace', 2, 'Silver', 300.00, 'A vibrant turquoise necklace set in silver.', 'turquoise_necklace.jpg'),
(36, 'Garnet Necklace', 2, 'Gold', 650.00, 'A striking garnet necklace set in gold.', 'garnet_necklace.jpg'),
(37, 'Onyx Pendant Necklace', 2, 'Gold', 400.00, 'A bold onyx pendant necklace in gold.', 'onyx_pendant_necklace.jpg'),
(38, 'Opal Necklace', 2, 'Platinum', 700.00, 'A mesmerizing opal necklace in platinum.', 'opal_necklace.jpg'),
(39, 'Citrine Necklace', 2, 'Gold', 500.00, 'A radiant citrine necklace set in gold.', 'citrine_necklace.jpg'),
(40, 'Peridot Necklace', 2, 'Silver', 350.00, 'A lovely peridot necklace set in silver.', 'peridot_necklace.jpg'),
(41, 'Morganite Necklace', 2, 'Rose Gold', 600.00, 'An elegant morganite necklace with a rose gold chain.', 'morganite_necklace.jpg'),
(42, 'Diamond Choker Necklace', 2, 'Gold', 1400.00, 'A luxurious diamond choker necklace in gold.', 'diamond_choker_necklace.jpg'),
(43, 'Sapphire and Diamond Necklace', 2, 'White Gold', 1600.00, 'An exquisite sapphire and diamond necklace in white gold.', 'sapphire_diamond_necklace.jpg'),
(44, 'Gold Bangle Bracelet', 3, 'Gold', 450.00, 'A stylish gold bangle bracelet.', 'gold_bangle_bracelet.jpg'),
(45, 'Silver Cuff Bracelet', 3, 'Silver', 300.00, 'A modern silver cuff bracelet.', 'silver_cuff_bracelet.jpg'),
(46, 'Diamond Tennis Bracelet', 3, 'Platinum', 1800.00, 'An elegant diamond tennis bracelet in platinum.', 'diamond_tennis_bracelet.jpg'),
(47, 'Emerald Bracelet', 3, 'Gold', 700.00, 'A beautiful emerald bracelet set in gold.', 'emerald_bracelet.jpg'),
(48, 'Pearl Bracelet', 3, 'Silver', 350.00, 'A delicate pearl bracelet set in silver.', 'pearl_bracelet.jpg'),
(49, 'Ruby Bracelet', 3, 'Gold', 650.00, 'A stunning ruby bracelet in gold.', 'ruby_bracelet.jpg'),
(50, 'Sapphire Bracelet', 3, 'White Gold', 800.00, 'A lovely sapphire bracelet set in white gold.', 'sapphire_bracelet.jpg'),
(51, 'Tanzanite Bracelet', 3, 'Platinum', 750.00, 'A striking tanzanite bracelet in platinum.', 'tanzanite_bracelet.jpg'),
(52, 'Onyx Bracelet', 3, 'Silver', 300.00, 'A bold onyx bracelet set in silver.', 'onyx_bracelet.jpg'),
(53, 'Gold Chain Bracelet', 3, 'Gold', 350.00, 'A classic gold chain bracelet.', 'gold_chain_bracelet.jpg'),
(54, 'Amethyst Bracelet', 3, 'Silver', 400.00, 'A beautiful amethyst bracelet set in silver.', 'amethyst_bracelet.jpg'),
(55, 'Opal Bracelet', 3, 'Gold', 500.00, 'An exquisite opal bracelet set in gold.', 'opal_bracelet.jpg'),
(56, 'Morganite Bracelet', 3, 'Rose Gold', 550.00, 'An elegant morganite bracelet with rose gold.', 'morganite_bracelet.jpg'),
(57, 'Citrine Bracelet', 3, 'Silver', 300.00, 'A radiant citrine bracelet set in silver.', 'citrine_bracelet.jpg'),
(58, 'Peridot Bracelet', 3, 'Gold', 400.00, 'A lovely peridot bracelet set in gold.', 'peridot_bracelet.jpg'),
(59, 'Garnet Bracelet', 3, 'Silver', 350.00, 'A striking garnet bracelet set in silver.', 'garnet_bracelet.jpg'),
(60, 'Chrysoberyl Bracelet', 3, 'Gold', 600.00, 'A rare chrysoberyl bracelet set in gold.', 'chrysoberyl_bracelet.jpg'),
(61, 'Diamond Bangle Bracelet', 3, 'Platinum', 2000.00, 'A luxurious diamond bangle bracelet in platinum.', 'diamond_bangle_bracelet.jpg'),
(62, 'Turquoise Bracelet', 3, 'Silver', 300.00, 'A vibrant turquoise bracelet set in silver.', 'turquoise_bracelet.jpg'),
(63, 'Gold Mesh Bracelet', 3, 'Gold', 400.00, 'A modern gold mesh bracelet.', 'gold_mesh_bracelet.jpg'),
(64, 'Silver Beaded Bracelet', 3, 'Silver', 250.00, 'A charming silver beaded bracelet.', 'silver_beaded_bracelet.jpg'),
(65, 'Gold Hoops', 4, 'Gold', 350.00, 'Elegant gold hoop earrings.', 'gold_hoops.jpg'),
(66, 'Diamond Studs', 4, 'Gold', 700.00, 'Classic diamond stud earrings in gold.', 'diamond_studs.jpg'),
(67, 'Emerald Drop Earrings', 4, 'Gold', 800.00, 'Beautiful emerald drop earrings set in gold.', 'emerald_drop_earrings.jpg'),
(68, 'Pearl Earrings', 4, 'Silver', 400.00, 'Delicate pearl earrings set in silver.', 'pearl_earrings.jpg'),
(69, 'Ruby Earrings', 4, 'Gold', 600.00, 'Striking ruby earrings set in gold.', 'ruby_earrings.jpg'),
(70, 'Sapphire Earrings', 4, 'White Gold', 900.00, 'Stunning sapphire earrings set in white gold.', 'sapphire_earrings.jpg'),
(71, 'Tanzanite Earrings', 4, 'Platinum', 1000.00, 'Elegant tanzanite earrings in platinum.', 'tanzanite_earrings.jpg'),
(72, 'Onyx Stud Earrings', 4, 'Silver', 250.00, 'Bold onyx stud earrings in silver.', 'onyx_stud_earrings.jpg'),
(73, 'Gold Chandelier Earrings', 4, 'Gold', 600.00, 'Beautiful gold chandelier earrings.', 'gold_chandelier_earrings.jpg'),
(74, 'Diamond Hoop Earrings', 4, 'Platinum', 1500.00, 'Luxurious diamond hoop earrings in platinum.', 'diamond_hoop_earrings.jpg'),
(75, 'Amethyst Earrings', 4, 'Gold', 450.00, 'Delicate amethyst earrings set in gold.', 'amethyst_earrings.jpg'),
(76, 'Opal Earrings', 4, 'Silver', 300.00, 'Charming opal earrings set in silver.', 'opal_earrings.jpg'),
(77, 'Morganite Earrings', 4, 'Rose Gold', 500.00, 'Elegant morganite earrings with rose gold.', 'morganite_earrings.jpg'),
(78, 'Citrine Earrings', 4, 'Gold', 400.00, 'Radiant citrine earrings set in gold.', 'citrine_earrings.jpg'),
(79, 'Peridot Earrings', 4, 'Silver', 350.00, 'Lovely peridot earrings set in silver.', 'peridot_earrings.jpg'),
(80, 'Garnet Earrings', 4, 'Gold', 600.00, 'Striking garnet earrings set in gold.', 'garnet_earrings.jpg'),
(81, 'Chrysoberyl Earrings', 4, 'Gold', 550.00, 'Rare chrysoberyl earrings set in gold.', 'chrysoberyl_earrings.jpg'),
(82, 'Diamond Drop Earrings', 4, 'Platinum', 1300.00, 'Elegant diamond drop earrings in platinum.', 'diamond_drop_earrings.jpg'),
(83, 'Turquoise Earrings', 4, 'Silver', 300.00, 'Vibrant turquoise earrings set in silver.', 'turquoise_earrings.jpg'),
(84, 'Gold Stud Earrings', 4, 'Gold', 250.00, 'Classic gold stud earrings.', 'gold_stud_earrings.jpg'),
(85, 'Silver Hoop Earrings', 4, 'Silver', 200.00, 'Simple and elegant silver hoop earrings.', 'silver_hoop_earrings.jpg'),
(86, 'Gold Floral Brooch', 5, 'Gold', 500.00, 'A beautiful floral brooch made of gold.', 'gold_floral_brooch.jpg'),
(87, 'Diamond Butterfly Brooch', 5, 'Platinum', 1500.00, 'A stunning diamond butterfly brooch in platinum.', 'diamond_butterfly_brooch.jpg'),
(88, 'Emerald Leaf Brooch', 5, 'Gold', 700.00, 'Elegant emerald leaf brooch set in gold.', 'emerald_leaf_brooch.jpg'),
(89, 'Pearl Brooch', 5, 'Silver', 400.00, 'A delicate pearl brooch set in silver.', 'pearl_brooch.jpg'),
(90, 'Ruby Brooch', 5, 'Gold', 600.00, 'A striking ruby brooch set in gold.', 'ruby_brooch.jpg'),
(91, 'Sapphire Star Brooch', 5, 'White Gold', 800.00, 'A stunning sapphire star brooch set in white gold.', 'sapphire_star_brooch.jpg'),
(92, 'Tanzanite Brooch', 5, 'Platinum', 1000.00, 'Elegant tanzanite brooch in platinum.', 'tanzanite_brooch.jpg'),
(93, 'Onyx Brooch', 5, 'Silver', 300.00, 'A bold onyx brooch set in silver.', 'onyx_brooch.jpg'),
(94, 'Gold Heart Brooch', 5, 'Gold', 350.00, 'A charming gold heart-shaped brooch.', 'gold_heart_brooch.jpg'),
(95, 'Diamond Leaf Brooch', 5, 'Platinum', 1200.00, 'An exquisite diamond leaf brooch in platinum.', 'diamond_leaf_brooch.jpg'),
(96, 'Amethyst Brooch', 5, 'Gold', 500.00, 'A delicate amethyst brooch set in gold.', 'amethyst_brooch.jpg'),
(97, 'Opal Brooch', 5, 'Silver', 350.00, 'An elegant opal brooch set in silver.', 'opal_brooch.jpg'),
(98, 'Morganite Brooch', 5, 'Rose Gold', 600.00, 'A beautiful morganite brooch with rose gold.', 'morganite_brooch.jpg'),
(99, 'Citrine Brooch', 5, 'Gold', 400.00, 'A radiant citrine brooch set in gold.', 'citrine_brooch.jpg'),
(100, 'Peridot Brooch', 5, 'Silver', 300.00, 'Lovely peridot brooch set in silver.', 'peridot_brooch.jpg'),
(101, 'Garnet Brooch', 5, 'Gold', 600.00, 'A striking garnet brooch set in gold.', 'garnet_brooch.jpg'),
(102, 'Chrysoberyl Brooch', 5, 'Gold', 550.00, 'Rare chrysoberyl brooch set in gold.', 'chrysoberyl_brooch.jpg'),
(103, 'Diamond Butterfly Brooch', 5, 'Platinum', 1400.00, 'A luxurious diamond butterfly brooch in platinum.', 'diamond_butterfly_brooch.jpg'),
(104, 'Turquoise Brooch', 5, 'Silver', 300.00, 'Vibrant turquoise brooch set in silver.', 'turquoise_brooch.jpg'),
(105, 'Gold Feather Brooch', 5, 'Gold', 450.00, 'A stylish gold feather-shaped brooch.', 'gold_feather_brooch.jpg'),
(106, 'Silver Star Brooch', 5, 'Silver', 250.00, 'A charming silver star-shaped brooch.', 'silver_star_brooch.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
