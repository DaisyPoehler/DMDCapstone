-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2016 at 02:24 PM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_posts`
--

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(20) NOT NULL,
  `authority` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authorities`
--

INSERT INTO `authorities` (`username`, `authority`) VALUES
('Cliente', 'ROLE_USER'),
('Cliente', 'ROLE_ADMIN'),
('Roberto', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `Posts`
--

CREATE TABLE `Posts` (
  `PostID` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `ContentBody` text NOT NULL,
  `Media` varchar(50) DEFAULT NULL,
  `Date` date NOT NULL,
  `IsLive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Posts`
--

INSERT INTO `Posts` (`PostID`, `Title`, `ContentBody`, `Media`, `Date`, `IsLive`) VALUES
(12, 'Okay', '<p>The disappearing header is KIND of annoying. I&#39;ll figure it out later.</p>\n', NULL, '2016-08-12', 1),
(13, 'Steven Universe: Gems\' Holiday', '<p>Fusion! HIJINKS!</p>\n', NULL, '2016-08-12', 1),
(14, 'Things to fix', '<p>1. Tags loading into CKEditor (too many spaces).</p>\n\n<p><s>2. The title-hiding on click which is SUPER ANNOYING</s>&nbsp;Daisy just commented out the navbar affix, which is much less annoying than the clicking thing, so it works!</p>\n\n<p><s>3. Tags being loaded w/each new post instead of from Tags table.</s></p>\n\n<p>4. Tag sidebar being overlapped--may need to entirely overhaul page columns etc. <em><strong>AGAIN</strong></em>.</p>\n', NULL, '2016-08-12', 1),
(15, 'Things to add', '<p>1. Current search terms (deselect individually).</p>\n\n<p>&nbsp;</p>\n', NULL, '2016-08-12', 1),
(16, 'Testing form-filling', '<p>Does this load in a every new post today?</p>\n', NULL, '2016-08-15', 1),
(22, 'fight me', '<p>TAGGING SYSTEM &gt;:(</p>\n', NULL, '2016-08-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PostTags`
--

CREATE TABLE `PostTags` (
  `PostID` int(11) NOT NULL,
  `TagName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PostTags`
--

INSERT INTO `PostTags` (`PostID`, `TagName`) VALUES
(4, 'asd'),
(4, 'fds'),
(5, 'else'),
(5, 'something'),
(6, 'terrible'),
(7, 'ihuCatalina'),
(7, 'tags'),
(8, 'tags'),
(8, 'terrible'),
(9, 'terrible'),
(10, 'are'),
(10, 'as'),
(10, 'see'),
(10, 'tags'),
(10, 'terrible'),
(10, 'the'),
(10, 'worst'),
(11, 'notTerrible'),
(11, 'tags'),
(12, 'fixed'),
(12, 'navbar'),
(12, 'sidebar'),
(12, 'sticky'),
(12, 'tags'),
(12, 'tinkering'),
(13, 'filler'),
(13, 'tinkering'),
(14, 'bugs'),
(14, 'plugins'),
(14, 'tinkering'),
(15, 'tags'),
(16, 'are'),
(16, 'fine'),
(16, 'tags'),
(17, ' fine'),
(17, 'tags'),
(18, 'fine'),
(19, ' bite me'),
(19, ' tags'),
(20, 'bugs'),
(20, 'tags'),
(20, 'thing with space'),
(21, 'maybe'),
(21, 'tags'),
(21, 'they just wont'),
(22, 'fight me'),
(22, 'ihu'),
(22, 'tags'),
(22, 'why');

-- --------------------------------------------------------

--
-- Table structure for table `StaticPages`
--

CREATE TABLE `StaticPages` (
  `PageID` int(11) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `ContentBody` text NOT NULL,
  `IsLive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StaticPages`
--

INSERT INTO `StaticPages` (`PageID`, `Title`, `ContentBody`, `IsLive`) VALUES
(1, 'Testing static', '<p>Here is a static page!</p>\n\n<p><img alt="luna" src="https://s-media-cache-ak0.pinimg.com/564x/ff/0b/42/ff0b42b5d5a1f8ad960bdee4ae3c1b9c.jpg" style="height:237px; width:250px" /></p>\n\n<p>That is a cat.</p>\n\n<p>This is already more work than I wanted it to be.</p>\n', 1),
(2, 'Testing unpublished', '<p>irritation levels...rising...</p>\n\n<p>&nbsp;</p>\n', 0),
(3, 'STOP TALKING', '<p>Body of static page/content stays in form when trying to create a new one?</p>\n', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Tags`
--

CREATE TABLE `Tags` (
  `TagName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Tags`
--

INSERT INTO `Tags` (`TagName`) VALUES
(' bite me'),
(' fine'),
('are'),
('bugs'),
('fight me'),
('filler'),
('fine'),
('fixed'),
('ihu'),
('maybe'),
('navbar'),
('plugins'),
('sidebar'),
('sticky'),
('tag with space'),
('tags'),
('they just won\'t'),
('tinkering'),
('why');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `enabled`) VALUES
(5, 'Cliente', '$2a$10$kom4P4TOLvIy40P9K9w2Ru.0KY5WB6OCSHhD0MCN/dx.nFu1sUHFW', 1),
(6, 'Roberto', '$2a$10$wuWPpSHa1RyrH7Z1HeMqJejVcfvoNGwH3LBudU/c3ZRsUZbnTNZpa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authorities`
--
ALTER TABLE `authorities`
  ADD KEY `username` (`username`);

--
-- Indexes for table `Posts`
--
ALTER TABLE `Posts`
  ADD PRIMARY KEY (`PostID`);

--
-- Indexes for table `PostTags`
--
ALTER TABLE `PostTags`
  ADD PRIMARY KEY (`PostID`,`TagName`);

--
-- Indexes for table `StaticPages`
--
ALTER TABLE `StaticPages`
  ADD PRIMARY KEY (`PageID`);

--
-- Indexes for table `Tags`
--
ALTER TABLE `Tags`
  ADD PRIMARY KEY (`TagName`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Posts`
--
ALTER TABLE `Posts`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `StaticPages`
--
ALTER TABLE `StaticPages`
  MODIFY `PageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authorities`
--
ALTER TABLE `authorities`
  ADD CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
