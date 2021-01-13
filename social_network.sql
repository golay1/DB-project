-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 05:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social_network_two`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_text` text,
  `comment_date` datetime DEFAULT NULL,
  `commenter_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `comment_text`, `comment_date`, `commenter_id`, `post_id`) VALUES
(3, 'brilliant stuff!', '2018-11-19 18:01:40', 1, 1),
(5, 'testing', '2018-11-25 19:08:10', 1, 1),
(6, 'asdf', '2018-11-27 14:50:39', 6, 1),
(7, 'u r great', '2018-11-27 21:39:59', 13, 44);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `mtext` text,
  `mdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(50) DEFAULT NULL,
  `description` text,
  `category` varchar(30) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `description`, `category`, `admin_id`) VALUES
(1, 'Lorem Ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Example', 1),
(2, 'What What', 'When you try your best but don\'t succeed.', 'Music', 1),
(3, 'Sports Stuff', 'SOmething and maybe everything about sports and stuff', 'Sports', 1),
(18, 'BeauTy Blog', 'free coupons for Loreal ', 'Beauty ', 9),
(19, 'Music Lovers', 'Musically Fans most welcome', 'Music', 9),
(20, 'Pen Pineapple Apple Pen', 'Diss track Lovers', 'COmic', 17),
(21, 'Comedy101', 'Comic Lovers most welcome', 'Comedy', 18),
(22, 'I love Football', 'world cup 2018 latest stats', 'sports', 13),
(23, 'i love football more', 'latest footballs stats', 'Sports', 11),
(24, 'Spirituality', 'Almighty is Great', 'life ', 7),
(25, 'dsadc', 'dsaasd', 'adsasdasd', 13);

-- --------------------------------------------------------

--
-- Table structure for table `pagemembers`
--

CREATE TABLE `pagemembers` (
  `table_id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pagemembers`
--

INSERT INTO `pagemembers` (`table_id`, `page_id`, `member_id`) VALUES
(16, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_date` datetime DEFAULT NULL,
  `content` text,
  `post_type` varchar(50) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_date`, `content`, `post_type`, `posted_by`, `page_id`) VALUES
(1, '2018-11-16 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec risus nibh. Sed feugiat mattis turpis ultrices tempus. Donec dapibus eros vel lacus porta, eu cursus tellus interdum. Proin varius justo elit, et dictum tortor ullamcorper vel. Aliquam consequat, nibh vitae eleifend laoreet, mauris augue dignissim tellus, feugiat molestie ex dui ut sapien. Aliquam gravida sodales dolor, sed tempus dui feugiat at. Nullam commodo augue nulla, ut posuere metus congue sed. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed erat dui, posuere ac ex vel, pretium congue enim. Donec pharetra egestas interdum.', 'text', 1, 1),
(3, '2018-11-20 02:58:27', 'Whats on your mind?', 'text', 1, 1),
(4, '2018-11-20 15:57:23', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'text', 1, 1),
(5, '2018-11-27 14:33:30', 'test test test test', 'text', 1, 1),
(6, '2018-11-27 14:33:50', 'yay this social network works', 'text', 1, 1),
(7, '2018-11-27 14:35:16', 'Supplied directly pleasant we ignorant ecstatic of jointure so if. These spoke house of we. Ask put yet excuse person see change. Do inhabiting no stimulated unpleasing of admiration he. Enquire explain another he in brandon enjoyed be service. Given mrs she first china. Table party no or trees an while it since. On oh celebrated at be announcing dissimilar insipidity. Ham marked engage oppose cousin ask add yet. ', 'text', 1, 2),
(8, '2018-11-27 14:35:21', 'Whats on your mind?In to am attended desirous raptures declared diverted confined at. Collected instantly remaining up certainly to necessary as. Over walk dull into son boy door went new. At or happiness commanded daughters as. Is handsome an declared at received in extended vicinity subjects. Into miss on he over been late pain an. Only week bore boy what fat case left use. Match round scale now sex style far times. Your me past an much. ', 'text', 1, 2),
(9, '2018-11-27 14:35:33', 'Do greatest at in learning steepest. Breakfast extremity suffering one who all otherwise suspected. He at no nothing forbade up moments. Wholly uneasy at missed be of pretty whence. John way sir high than law who week. Surrounded prosperous introduced it if is up dispatched. Improved so strictly produced answered elegance is. \n', 'text', 1, 2),
(10, '2018-11-27 14:35:35', 'Whats on your mind?', 'text', 1, 2),
(11, '2018-11-27 14:35:51', 'Excited him now natural saw passage offices you minuter. At by asked being court hopes. Farther so friends am to detract. Forbade concern do private be. Offending residence but men engrossed shy. Pretend am earnest offered arrived company so on. Felicity informed yet had admitted strictly how you. ', 'text', 1, 2),
(12, '2018-11-27 14:36:25', 'did you see Lebron James?', 'text', 1, 3),
(13, '2018-11-27 14:36:35', 'Tom Brady is the GOAT!!!', 'text', 1, 3),
(14, '2018-11-27 14:36:46', 'the refs suck!', 'text', 1, 3),
(15, '2018-11-27 14:37:02', 'why did he get injured?', 'text', 1, 3),
(16, '2018-11-27 14:37:10', 'I don\'t like soccer', 'text', 1, 3),
(17, '2018-11-27 14:41:22', 'wow\n', 'text', 6, 1),
(18, '2018-11-27 14:47:22', 'what are you talking about?\n', 'text', 6, 1),
(19, '2018-11-27 14:47:29', 'so random dude', 'text', 6, 1),
(20, '2018-11-27 14:47:36', 'oh nvm i know what you\'re doing\n', 'text', 6, 1),
(21, '2018-11-27 14:47:46', 'ok cya', 'text', 6, 1),
(22, '2018-11-27 14:47:58', 'dm me later', 'text', 6, 1),
(23, '2018-11-27 15:27:25', 'Loreal cosmetics is the best ', 'text', 9, 18),
(24, '2018-11-27 15:28:13', 'Music Is in my soul \n', 'text', 9, 19),
(25, '2018-11-27 15:28:34', 'To everyone out there \nSufi is in my SOul', 'text', 9, 19),
(26, '2018-11-27 15:29:19', 'Hey John I dont think, every one understands your language !!!!!!!!!!!!', 'text', 9, 1),
(27, '2018-11-27 21:10:42', 'Ive a pen ', 'text', 17, 20),
(28, '2018-11-27 21:12:13', 'ive an apple', 'text', 18, 20),
(29, '2018-11-27 21:12:31', 'Huuh Apple pen', 'text', 18, 20),
(30, '2018-11-27 21:12:48', 'wooooahhh', 'text', 18, 20),
(31, '2018-11-27 21:13:05', 'Bhai Bhai................................................', 'text', 18, 20),
(32, '2018-11-27 21:13:22', 'Crazzzzzzzzzzzzzzzzzzzzzzzzzyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', 'text', 18, 20),
(33, '2018-11-27 21:15:41', 'crazzzzzzzzzzzzzzzzzzzy match', 'text', 13, 22),
(34, '2018-11-27 21:17:15', 'hey I love football', 'text', 11, 23),
(35, '2018-11-27 21:17:32', 'Naaah dude I love it more', 'text', 11, 23),
(36, '2018-11-27 21:17:44', 'Football Argentinaaaaaaaaaaaaaaaaaaaaaaaaa', 'text', 11, 23),
(37, '2018-11-27 21:18:01', 'we gonna win ', 'text', 11, 23),
(38, '2018-11-27 21:18:42', 'lol', 'text', 13, 23),
(39, '2018-11-27 21:18:55', 'lol when was the last time you won\n', 'text', 13, 23),
(40, '2018-11-27 21:19:07', 'losers', 'text', 13, 23),
(41, '2018-11-27 21:19:44', 'go get a life', 'text', 11, 23),
(42, '2018-11-27 21:19:57', 'ive scored more goals than you', 'text', 11, 23),
(43, '2018-11-27 21:20:15', 'Argentina for the win', 'text', 11, 23),
(44, '2018-11-27 21:39:51', 'abhddhodhipadf', 'text', 13, 25),
(45, '2018-11-27 21:59:53', 'How dare you ?\n', 'text', 13, 3),
(46, '2018-11-27 22:00:01', 'i dont respect you\n', 'text', 13, 3),
(47, '2018-11-27 22:00:12', 'admin youre the worst', 'text', 13, 3),
(48, '2018-11-27 22:00:12', 'admin youre the worst', 'text', 13, 3),
(49, '2018-11-27 22:00:17', 'pathetic', 'text', 13, 3),
(50, '2018-11-27 22:00:22', 'brutal', 'text', 13, 3),
(51, '2018-11-27 22:00:22', 'brutal', 'text', 13, 3),
(52, '2018-11-27 22:00:48', 'This is bad', 'text', 13, 18),
(53, '2018-11-27 22:00:49', 'Whats on your mind?', 'text', 13, 18),
(54, '2018-11-27 22:01:04', 'My sponsor is maybelline', 'text', 13, 18),
(55, '2018-11-27 22:01:17', 'haagen Das', 'text', 13, 18),
(56, '2018-11-27 22:01:25', 'Critical', 'text', 13, 18),
(57, '2018-11-27 22:01:34', 'Icecream is love', 'text', 13, 18),
(58, '2018-11-27 22:12:29', 'no', 'text', 11, 24),
(59, '2018-11-27 22:12:32', 'Whats on\n your mind?', 'text', 11, 24),
(60, '2018-11-27 22:12:37', 'neel\n', 'text', 11, 24),
(61, '2018-11-27 22:12:47', 'this is not acceptable', 'text', 11, 24),
(62, '2018-11-27 22:13:15', 'Whats on your mind?', 'text', 11, 24),
(63, '2018-11-27 22:13:24', 'kuch bhi', 'text', 11, 24),
(64, '2018-11-27 22:13:29', 'joshhh', 'text', 11, 24),
(65, '2018-11-27 22:13:33', 'doodel', 'text', 11, 24),
(66, '2018-11-27 22:13:39', 'niealsdopasf', 'text', 11, 24),
(67, '2018-11-27 22:13:53', 'youre done', 'text', 11, 24),
(68, '2018-11-27 22:14:12', 'u know what u rnt funy', 'text', 11, 21),
(69, '2018-11-27 22:14:15', 'loser', 'text', 11, 21),
(70, '2018-11-27 22:14:19', 'doodle', 'text', 11, 21),
(71, '2018-11-27 22:14:27', 'meme', 'text', 11, 21),
(72, '2018-11-27 22:14:33', 'webmaster', 'text', 11, 21),
(73, '2018-11-27 22:14:39', 'eapen is smart', 'text', 11, 21),
(74, '2018-11-27 22:14:49', 'eapen is funny and ketaki agrees', 'text', 11, 21),
(75, '2018-11-27 22:15:08', 'eapen is funny ketaki agrees golay super agress', 'text', 11, 21),
(76, '2018-11-27 22:15:17', 'databases is fun', 'text', 11, 21),
(77, '2018-11-27 22:15:23', 'like this project', 'text', 11, 21),
(78, '2018-11-27 22:16:38', 'my favorit song is kaali kaali akhe', 'text', 17, 19),
(79, '2018-11-27 22:16:47', 'urs', 'text', 17, 19),
(80, '2018-11-27 22:16:57', 'care to reply', 'text', 17, 19),
(81, '2018-11-27 22:16:57', 'care to reply', 'text', 17, 19),
(82, '2018-11-27 22:17:02', 'reply fater', 'text', 17, 19),
(83, '2018-11-27 22:17:14', 'i like spamming ur blog', 'text', 17, 19),
(84, '2018-11-27 22:17:19', 'Whats ond? your min', 'text', 17, 19),
(85, '2018-11-27 22:17:24', 'Whats on your mind?asddddddddddddddddddd sdfsdabfdbffdbfdbdfsbdfb', 'text', 17, 19),
(86, '2018-11-27 22:17:30', 'asndooafndsdfns]masfasfgb', 'text', 17, 19),
(87, '2018-11-27 22:18:08', 'asdmjpafjpo', 'text', 17, 2),
(88, '2018-11-27 22:18:09', 'Whats on your mind?', 'text', 17, 2),
(89, '2018-11-27 22:18:14', 'asdnoasfoafnoi', 'text', 17, 2),
(90, '2018-11-27 22:18:19', 'crappdoodle', 'text', 17, 2),
(91, '2018-11-27 22:18:26', 'soccoer', 'text', 17, 2),
(92, '2018-11-27 22:18:31', 'basketball', 'text', 17, 2),
(93, '2018-11-27 22:19:03', 'asnd', 'text', 17, 25),
(94, '2018-11-27 22:19:10', 'anu malik', 'text', 17, 25),
(95, '2018-11-27 22:19:17', 'sounds of kolachi', 'text', 17, 25),
(96, '2018-11-27 22:19:21', 'beiber', 'text', 17, 25),
(97, '2018-11-27 22:19:27', 'momo', 'text', 17, 25),
(98, '2018-11-27 22:19:32', 'solo', 'text', 17, 25),
(99, '2018-11-27 22:19:39', 'pritam', 'text', 17, 25),
(100, '2018-11-27 22:19:46', 'arijit songs are the best', 'text', 17, 25),
(101, '2018-11-27 22:19:46', 'arijit songs are the best', 'text', 17, 25),
(102, '2018-11-27 22:19:58', 'atif is great', 'text', 17, 25);

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `post_like_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `liked_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`post_like_id`, `post_id`, `page_id`, `liked_by`) VALUES
(1, 1, 1, 2),
(2, 1, 1, 3),
(43, 1, 1, 1),
(44, 4, 1, 1),
(45, 6, 1, 1),
(46, 7, 2, 1),
(47, 24, 19, 9),
(48, 44, 25, 13);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profile_id` int(11) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `mobile_no` bigint(20) DEFAULT NULL,
  `prof_create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`profile_id`, `fname`, `lname`, `email`, `pwd`, `username`, `mobile_no`, `prof_create_date`) VALUES
(1, 'John', 'Doe', 'john.doe@gmail.com', '1q2w3e', 'jDoe', 1234567890, '2018-11-12 00:00:00'),
(6, 'Jane', 'Doe', 'jane.doe@gmail.com', '1q2w3e', 'mojojo', 987654123, '2018-11-26 00:00:00'),
(7, 'user', 'name', 'user@gmail.com', '1q2w3e', 'username1', 9988674536, '2018-11-26 00:00:00'),
(8, 'golay', 'nie', 'golay@gmail.com', '1qaz2wsx', 'gnie', 1231234123, '2018-11-27 00:00:00'),
(9, 'ketaki', 's', 'ketaki@gmail.com', '1qaz2wsx', 'kiki', 987654367, '2018-11-27 00:00:00'),
(10, 'eapen', 'ittiyera', 'eapen@gmail.com', '1qaz2wsx', 'eaps', 675849301, '2018-11-27 00:00:00'),
(11, 'leo', 'messi', 'messi@gmail.com', '1q2w3e', 'messi', 7658943021, '2018-11-27 00:00:00'),
(12, 'mesut', 'ozil', 'ozil@gmail.com', '1q2w3e', 'm10', 8877995566, '2018-11-27 00:00:00'),
(13, 'cristiano', 'ronaldo', 'ronaldo@gmail.com', '1q2w3e', 'cr7', 8899776655, '2018-11-27 00:00:00'),
(14, 'lucas', 'torreira', 'torreira@gmail.com', '1qaz2wsx', 'lion', 4455667788, '2018-11-27 00:00:00'),
(15, 'jack', 'smith', 'jack@gmail.com', '1qaz2wsx', 'jsmith', 9988778899, '2018-11-27 00:00:00'),
(16, 'emma', 'watson', 'emma@gmail.com', '1qaz2wsx', 'emma', 6677558844, '2018-11-27 00:00:00'),
(17, 'Murray', 'Gene', 'murray@gmail.com', 'password123', 'Murray', 1231241234, '2018-11-27 00:00:00'),
(18, 'america', 'gene', 'america@gmail.com', 'password1234', 'america', 4321234543, '2018-11-27 00:00:00'),
(19, 'max', 'amity', 'max@gmail.com', '23ewrew', 'max', 5432345123, '2018-11-27 00:00:00'),
(20, 'reuben', 'virgee', 'reuben@gmail.com', 'wr23re', 'reuben', 5432341234, '2018-11-27 00:00:00'),
(21, 'sinjin', 'sunday', 'sinjin@gmail.com', 'ewuifheu3', 'sinjuin', 4324324325, '2018-11-27 00:00:00'),
(22, 'penny', 'cornelius', 'penny@gmail.com', 'fpwoeif33', 'penny', 3495941345, '2018-11-27 00:00:00'),
(23, 'phoenix', 'alise', 'phoenix@gmail.com', 'foief3', 'phoenix', 3949594392, '2018-11-27 00:00:00'),
(24, 'adelis', 'granville', 'adelis@gmail.com', 'fueh3f', 'adelis', 5969541234, '2018-11-27 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pagemembers`
--
ALTER TABLE `pagemembers`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`post_like_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profile_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `pagemembers`
--
ALTER TABLE `pagemembers`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `post_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
