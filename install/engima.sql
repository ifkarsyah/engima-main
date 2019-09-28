-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2019 at 05:44 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `engima`
--

-- --------------------------------------------------------

--
-- Table structure for table `cookie`
--

CREATE TABLE `cookie` (
  `cookie_string` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(8, 'action'),
(7, 'adventure'),
(15, 'animation'),
(17, 'biography'),
(3, 'comedy'),
(9, 'crime'),
(11, 'documentary'),
(1, 'drama'),
(18, 'history'),
(4, 'horror'),
(19, 'musical'),
(14, 'mystery'),
(13, 'noir'),
(5, 'romance'),
(6, 'sci-fi'),
(20, 'sport'),
(16, 'superhero'),
(2, 'thriller'),
(12, 'war'),
(10, 'western');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `released_date` date NOT NULL,
  `plot` varchar(2000) NOT NULL,
  `poster` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `duration`, `released_date`, `plot`, `poster`) VALUES
(1, 'Midsommar', 138, '2019-09-07', 'With their relationship in trouble, a young American couple travel to a fabled Swedish midsummer festival where a seemingly pastoral paradise transforms into a sinister, dread-soaked nightmare as the locals reveal their terrifying agenda.', 'http://t2.gstatic.com/images?q=tbn:ANd9GcS7TC3aqR6kv9_4b9P6DZWqJPkuhPJAC26omhgaWvPlfkVqJbdj'),
(2, 'IT Chapter Two', 170, '2019-09-04', 'Defeated by members of the Losers\' Club, the evil clown Pennywise returns 27 years later to terrorize the town of Derry, Maine, once again. Now adults, the childhood friends have long since gone their separate ways. But when people start disappearing, Mike Hanlon calls the others home for one final stand. Damaged by scars from the past, the united Losers must conquer their deepest fears to destroy the shape-shifting Pennywise -- now more powerful than ever.', 'http://t2.gstatic.com/images?q=tbn:ANd9GcS8CgVrYIrgpPHy43690IT2yFbNaSDUg_FJK44f2W5bZwa-VqNA'),
(3, 'Rambo: Last Blood', 99, '2019-09-18', 'When a friend\'s daughter is kidnapped, Rambo crosses the U.S.-Mexico border to bring her home but finds himself up against one of Mexico\'s most ruthless cartels.', 'http://t3.gstatic.com/images?q=tbn:ANd9GcTqsZyQAmAMH1qTKuMjNXCNy5V7_aGesfRC6xc2LeF6y_UlWwAt'),
(4, 'One Piece: Stampede', 161, '2019-09-18', 'The world\'s boldest buccaneers set sail for the great Pirate Festival, where the Straw Hats join a mad-dash race to find Gol D.Roger\'s treasure. There\'s just one little problem. An old member of Roger\'s crew has a sinister score to settle. All bets are off when the most iconic pirates of One Piece history band together for a swashbuckling showdown, the likes of which have never been seen!', 'http://t1.gstatic.com/images?q=tbn:ANd9GcQ1eI3kHVTwCPeY3RtlFcNs8NFwSY3W4IN8t8JAY8znDEjBrmuY'),
(5, 'Weathering with You', 172, '2019-08-21', 'A boy runs away to Tokyo and befriends a girl who appears to be able to manipulate the weather.', 'http://t1.gstatic.com/images?q=tbn:ANd9GcS9IqW1wi7_hucKitq50axaDSPUC5yhngShz-4OzXBcdJStwrl1'),
(6, 'Dua Garis Biru', 173, '2019-07-11', 'Dara (Zara JKT48) and Bima (Angga Yunanda) violated the boundary without knowing the consequences. They try to take responsibility for their choices.', 'https://i.ytimg.com/vi/b0NS7FP1loU/maxresdefault.jpg'),
(7, 'Gundala', 123, '2019-08-29', 'Gundala is a 2019 Indonesian superhero film based on the comics character Gundala created by Harya “Hasmi” Suraminata in 1969, co-produced by Screenplay Films and BumiLangit Studios, and distributed by Legacy Pictures. It is the first installment in the BumiLangit Cinematic Universe.', 'https://www.bioskoptoday.com/wp-content/uploads/2018/04/poster-gundala.jpg'),
(8, 'Ready or Not', 94, '2019-08-24', 'Grace couldn\'t be happier after she marries the man of her dreams at his family\'s luxurious estate. There\'s just one catch -- she must now hide from midnight until dawn while her new in-laws hunt her down with guns, crossbows and other weapons. As Grace desperately tries to survive the night, she soon finds a way to turn the tables on her not-so-lovable relatives.', 'http://t2.gstatic.com/images?q=tbn:ANd9GcSMFGbLTtXPRjxjbMBV5HvxHm-0kQjzr3P2Q0TbOaB4R0RdcUKm'),
(9, 'Joker', 122, '2019-10-02', 'Failed comedian Arthur Fleck encounters violent thugs while wandering the streets of Gotham City dressed as a clown. Disregarded by society, Fleck begins a slow dissent into madness as he transforms into the criminal mastermind known as the Joker.', 'http://t0.gstatic.com/images?q=tbn:ANd9GcSJKLiEyyz1Q9RC8EBYl3ijr3nuGeyO2ETmwy6Kdq0AQtD0elWD'),
(10, 'DANUR 3: SUNYARURI', 90, '2019-09-26', 'After years of being friendly with her little ghosts, Risa begins to feel that she must have a normal life like other women. Especially now Risa has a boyfriend named Dimas, a radio announcer. Risa does not tell Dimas about her ability to see ghosts, and that she has five little friends who were not human. Risa\'s friendship with Peter cs shaken, after she feels Peter cs begin teasing Dimas. Risa finally chose to close her inner eyes so she could live a normal life. But a strange thing happens. He could no longer see Peter cs, but again smells danur (liquid that comes out of decayed corpses). It is an evil ghost who enters the house through heavy rain: the ghost of an evil woman who not only threatens her life, but also Peter cs.', 'https://cdn2.tstatic.net/tribunnews/foto/bank/images/filmdanur-3-sunyaruri.jpg'),
(11, 'Ad Astra', 122, '2019-09-20', 'Astronaut Roy McBride undertakes a mission across an unforgiving solar system to uncover the truth about his missing father and his doomed expedition that now, 30 years later, threatens the universe.', 'https://m.media-amazon.com/images/M/MV5BZTllZTdlOGEtZTBmMi00MGQ5LWFjN2MtOGEyZTliNGY1MzFiXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(12, 'Angel Has Fallen', 121, '2019-08-23', 'Secret Service Agent Mike Banning is framed for the attempted assassination of the President and must evade his own agency and the FBI as he tries to uncover the real threat.', 'https://m.media-amazon.com/images/M/MV5BYmRmMWZhZGItYzA4MC00ZDYyLWE0OTMtYmM0MWRiN2Q4NGU2XkEyXkFqcGdeQXVyMjMxOTE0ODA@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(13, 'The Lion King', 118, '2019-08-19', 'After the murder of his father, a young lion prince flees his kingdom only to learn the true meaning of responsibility and bravery.', 'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_UY209_CR0,0,140,209_AL_.jpg'),
(14, 'Fast & Furious Presents: Hobbs & Shaw', 137, '2019-08-02', 'Lawman Luke Hobbs and outcast Deckard Shaw form an unlikely alliance when a cyber-genetically enhanced villain threatens the future of humanity.', 'https://m.media-amazon.com/images/M/MV5BOTIzYmUyMmEtMWQzNC00YzExLTk3MzYtZTUzYjMyMmRiYzIwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_UY209_CR1,0,140,209_AL_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movie_genres`
--

CREATE TABLE `movie_genres` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_genres`
--

INSERT INTO `movie_genres` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 14),
(2, 4),
(3, 2),
(3, 8),
(6, 1),
(7, 16),
(8, 2),
(8, 14),
(9, 1),
(9, 9),
(3, 12),
(10, 4),
(11, 6),
(12, 2),
(12, 8),
(13, 1),
(5, 15),
(5, 1),
(4, 15),
(4, 7),
(14, 8),
(14, 9);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp(),
  `available_seats` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `movie_id`, `date_time`, `available_seats`) VALUES
(1, 1, '2019-09-05 12:00:00', 0),
(2, 1, '2019-09-25 12:00:00', 0),
(3, 1, '2019-09-25 16:00:00', 0),
(4, 1, '2019-09-25 20:00:00', 0),
(5, 2, '2019-09-25 13:00:00', 0),
(6, 2, '2019-09-25 17:00:00', 0),
(7, 2, '2019-09-25 21:00:00', 0),
(8, 3, '2019-09-25 14:00:00', 0),
(9, 3, '2019-09-25 18:00:00', 0),
(10, 3, '2019-09-25 22:00:00', 0),
(11, 4, '2019-09-25 15:00:00', 0),
(12, 4, '2019-09-25 19:00:00', 0),
(13, 4, '2019-09-25 23:00:00', 0),
(14, 5, '2019-09-25 12:00:00', 0),
(15, 5, '2019-09-25 16:00:00', 0),
(16, 5, '2019-09-25 20:00:00', 0),
(17, 6, '2019-09-25 13:00:00', 0),
(18, 6, '2019-09-25 17:00:00', 0),
(19, 6, '2019-09-25 21:00:00', 0),
(20, 7, '2019-09-25 14:00:00', 0),
(21, 7, '2019-09-25 18:00:00', 0),
(22, 7, '2019-09-25 22:00:00', 0),
(23, 8, '2019-09-25 15:00:00', 0),
(24, 8, '2019-09-25 19:00:00', 0),
(25, 8, '2019-09-25 23:00:00', 0),
(26, 9, '2019-10-02 14:00:00', 0),
(27, 9, '2019-10-02 18:00:00', 0),
(28, 9, '2019-10-02 22:00:00', 0),
(29, 9, '2019-10-02 14:00:00', 0),
(30, 9, '2019-10-02 18:00:00', 0),
(31, 9, '2019-10-02 22:00:00', 0),
(32, 9, '2019-10-03 14:00:00', 0),
(33, 9, '2019-10-03 18:00:00', 0),
(34, 9, '2019-10-03 22:00:00', 0),
(35, 9, '2019-10-04 14:00:00', 0),
(36, 9, '2019-10-04 18:00:00', 0),
(37, 9, '2019-10-04 22:00:00', 0),
(38, 9, '2019-10-05 14:00:00', 0),
(39, 9, '2019-10-05 18:00:00', 0),
(40, 9, '2019-10-05 22:00:00', 0),
(41, 9, '2019-10-06 14:00:00', 0),
(42, 9, '2019-10-06 18:00:00', 0),
(43, 9, '2019-10-06 22:00:00', 0),
(44, 9, '2019-10-07 14:00:00', 0),
(45, 9, '2019-10-07 18:00:00', 0),
(46, 9, '2019-10-07 22:00:00', 0),
(47, 9, '2019-10-08 14:00:00', 0),
(48, 9, '2019-10-08 18:00:00', 0),
(49, 9, '2019-10-08 22:00:00', 0),
(50, 9, '2019-10-09 14:00:00', 0),
(51, 9, '2019-10-09 18:00:00', 0),
(52, 9, '2019-10-09 22:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `schedule_id` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`schedule_id`, `seat_number`) VALUES
(1, 1),
(1, 3),
(1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seat_number` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(320) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(64) NOT NULL,
  `profile_pic` varchar(2048) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `password`, `profile_pic`) VALUES
(1, 'uchiha.madara', 'madara@uchiha.com', '0838555227', 'tobiramasia', 'https://imgix.ranker.com/user_node_img/50081/1001612045/original/reality-photo-u2?w=650&q=50&fm=pjpg&fit=crop&crop=faces'),
(2, 'senju.tobirama', 'tobirama@senju.com', '0896555546', 'madarasia', 'https://i.ytimg.com/vi/-1-HIWSwmaQ/maxresdefault.jpg'),
(3, 'namikaze.minato', 'minato@konoha.com', '088029555567', 'kushinaku', 'https://vignette.wikia.nocookie.net/naruto/images/7/71/Minato_Namikaze.png/revision/latest?cb=20160125175116'),
(4, 'uchiha.sasuke', 'sasuke@uchiha.com', '0227219212', 'sakuraku', 'https://vignette.wikia.nocookie.net/naruto/images/2/21/Sasuke_Part_1.png/revision/latest?cb=20170716092103'),
(5, 'Saitama', 'saitama@wanpanman.com', '0214702204', 'lohelohelohe', 'https://vignette.wikia.nocookie.net/onepunchman/images/0/07/Saitama_serious_profile.png/revision/latest?cb=20161002154538'),
(6, 'miyazano.kaori', 'kaori@miyazano.com', '0215844919', 'arimakeun', 'https://vignette.wikia.nocookie.net/shigatsu-wa-kimi-no-uso/images/3/3d/Ep03.jpg/revision/latest?cb=20150306235014'),
(7, 'kirishima.touka', 'touka@kirishima.com', '0214524325', 'kanekikun', 'https://imgix.ranker.com/user_node_img/50087/1001738957/original/can-and-_39_t-even-protect-himself-photo-u2?w=650&q=50&fm=pjpg&fit=crop&crop=faces');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cookie`
--
ALTER TABLE `cookie`
  ADD KEY `cookie_string` (`cookie_string`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD KEY `movie_genres_movies_id_fk` (`movie_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_movies_id_fk` (`movie_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`schedule_id`,`seat_number`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cookie`
--
ALTER TABLE `cookie`
  ADD CONSTRAINT `cookie_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`),
  ADD CONSTRAINT `movie_genres_movies_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `movies_movies_id_fk` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`schedule_id`) REFERENCES `schedules` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;