-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 10:50 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Hyper Text Markup Language', 1),
(2, 'Hyperlink Markup Language', 1),
(3, 'Hyperlink and text Makeup Language', 1),
(4, 'None of the above', 1),
(5, 'The first div element', 2),
(6, 'All div elements', 2),
(7, 'The last div element ', 2),
(8, 'None of the above', 2),
(9, 'The head Section', 3),
(10, 'The body section', 3),
(11, 'Both the head section and the body section', 3),
(12, 'None of the above', 3),
(13, 'function myFunction()', 4),
(14, 'function:myFunction()', 4),
(15, 'function.myFunction()', 4),
(16, 'None of these', 4),
(17, '.container', 5),
(18, '.container-fixed', 5),
(19, '.container-fluid', 5),
(20, '.none of these', 5);

-- --------------------------------------------------------

--
-- Table structure for table `c_answers`
--

CREATE TABLE `c_answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_answers`
--

INSERT INTO `c_answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Dennis Ritchie', 1),
(2, 'Bjarne Stroustrup', 1),
(3, 'James A. Gosling', 1),
(4, 'Dr. E.F. Codd', 1),
(5, 'AT & T\'s Bell Laboratories of USA in 1970', 2),
(6, 'Sun Microsystems in 1973', 2),
(7, 'AT & T\'s Bell Laboratories of USA in 1972', 2),
(8, 'Cambridge University in 1972', 2),
(9, '2', 3),
(10, '4', 3),
(11, '8', 3),
(12, 'Compiler dependent', 3),
(13, 'malloc', 4),
(14, 'calloc', 4),
(15, 'realloc', 4),
(16, 'resize', 4),
(17, 'fremove()', 5),
(18, 'remove()', 5),
(19, 'fclose()', 5),
(20, 'file pointer to be set to NULL', 5);

-- --------------------------------------------------------

--
-- Table structure for table `c_questions`
--

CREATE TABLE `c_questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `c_questions`
--

INSERT INTO `c_questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'Who is father of C language ?', 1),
(2, 'C Language developed at ___ ?', 7),
(3, 'What is the size of `int\'?', 12),
(4, 'What is the built in library function to adjust the allocated dynamic memory size.', 15),
(5, 'Which of the following functions disconnects the stream from the file pointer.', 19);

-- --------------------------------------------------------

--
-- Table structure for table `d_answers`
--

CREATE TABLE `d_answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_answers`
--

INSERT INTO `d_answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Modules', 1),
(2, 'Programs', 1),
(3, 'Data', 1),
(4, 'None of these', 1),
(5, 'Data Structure', 2),
(6, 'Programming language', 2),
(7, 'Database', 2),
(8, 'Database Management System', 2),
(9, 'Protect data from system crash', 3),
(10, 'Safety of the information stored', 3),
(11, 'All of these', 3),
(12, 'Authorized access', 3),
(13, 'Oracle', 4),
(14, 'All of these', 4),
(15, 'Foxpro', 4),
(16, 'Access', 4),
(17, 'Data System', 5),
(18, 'None of these', 5),
(19, 'Cloud Storage', 5),
(20, 'File Management System', 5);

-- --------------------------------------------------------

--
-- Table structure for table `d_questions`
--

CREATE TABLE `d_questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `d_questions`
--

INSERT INTO `d_questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'Database is collection of ____.', 3),
(2, '__________________ is collection of interrelated data and set of program to access them.', 8),
(3, 'DBMS should provide following feature(s) ______.', 11),
(4, 'Which of the following is considered as DBMS ?', 14),
(5, 'Before use of DBMS information was stored using __________.', 20);

-- --------------------------------------------------------

--
-- Table structure for table `java_answers`
--

CREATE TABLE `java_answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `java_answers`
--

INSERT INTO `java_answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Source Code', 1),
(2, 'Bytecode', 1),
(3, '.Exe', 1),
(4, '.Obj', 1),
(5, 'java', 2),
(6, 'jar', 2),
(7, 'javac', 2),
(8, 'javadoc', 2),
(9, 'javac', 3),
(10, 'javadoc', 3),
(11, 'java', 3),
(12, 'rmic', 3),
(13, 'javahelp', 4),
(14, 'javadoc', 4),
(15, 'javamanual', 4),
(16, 'none of these', 4),
(17, 'Perform Operations on the Internet', 5),
(18, 'Create high performance OS', 5),
(19, 'Create Strong Programming alternative to C++', 5),
(20, 'Connect many household machines', 5);

-- --------------------------------------------------------

--
-- Table structure for table `java_questions`
--

CREATE TABLE `java_questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `java_questions`
--

INSERT INTO `java_questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'Java Source Code is compiled into ______________.', 2),
(2, 'Which of the tool is used to compile java code ?', 7),
(3, 'Which of the following tool used to execute java code.', 11),
(4, 'HTML based Java Documentary help can be accessed using ______________.', 14),
(5, 'In the beginning , Java was created in order to -', 20);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'What does HTML stand for ? ', 1),
(2, 'Look at the following selector: $(\"div\"). What does it select ?', 5),
(3, 'Where is the correct place to insert a JavaScript? ', 9),
(4, 'How do you create a function in JavaScript? ', 13),
(5, 'Which class provides a responsive fixed width container? ', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(250) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `totalques` int(250) DEFAULT NULL,
  `answerscorrect` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `username`, `totalques`, `answerscorrect`) VALUES
(32, 'mohini rahi', 5, 2),
(33, 'mohini rahi', 5, 2),
(36, 'mohini rahi', 5, 4),
(37, 'mohini rahi', 5, 4),
(38, 'mohini rahi', 5, 4),
(39, 'mohini rahi', 5, 1),
(61, 'mohini rahi', 5, 2),
(128, 'mohini', 5, 4),
(129, 'mohini', 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `c_answers`
--
ALTER TABLE `c_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `c_questions`
--
ALTER TABLE `c_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `d_answers`
--
ALTER TABLE `d_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `d_questions`
--
ALTER TABLE `d_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `java_answers`
--
ALTER TABLE `java_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `java_questions`
--
ALTER TABLE `java_questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `c_answers`
--
ALTER TABLE `c_answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `c_questions`
--
ALTER TABLE `c_questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d_answers`
--
ALTER TABLE `d_answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `d_questions`
--
ALTER TABLE `d_questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `java_answers`
--
ALTER TABLE `java_answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `java_questions`
--
ALTER TABLE `java_questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
