-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 09, 2023 at 05:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'welcome to my blog', 'Step-By-Step Tips to Craft the Perfect Welcome Article for Your Blog Name Your Business Blog. ... Identify Your Blog\'s Target Audience. ... Use Voice and Tone to Invite the Reader. ... Find Common Ground With Your Audience. ... Be Personal and Relatable. ... Explain What The Blog Is About and Its Purpose. ... Lead With a Story.', 2, '2023-04-08 22:42:47', '2023-04-09 19:59:49'),
(33, 'CPP ', 'C   is an enhanced and extended version of C programming language, developed by Bjarne Stroustrup in 1979 as part of his Ph.D. project. Bjarne developed what he called ‘C with Classes’ (later renamed C  ) because he felt limited by the existing programming languages that were not ideal for large scale projects. He used C to build what he wanted because C was already a general-purpose language that was efficient and fast in its operations. Thank you!!', 3, '2023-04-09 11:54:24', '2023-04-09 20:58:05'),
(34, 'Springboot - My Experience', 'Standalone applications—Spring Boot helps create apps that aren\'t tied to a specific platform and that can run locally on a device without an internet connection or other installed services to be functional. Embedded servers—Spring Boot allows you to embed servers such as Tomcat, Jetty, or Undertow directly.       ', 1, '2023-04-09 19:55:36', '2023-04-09 19:55:36'),
(35, 'PHP - Why i love it?', 'Why i love  using PHP?\n\nmany available specialists;\na large base of reference and educational materials;\nbetter loading speed of websites;\nmore options for database connectivity;\na large collection of open-source addons;\ninexpensive website hosting;\ngreat synergy with HTML;\nexcellent flexibility and combinability;\nvarious benefits provided by cloud solutions.\n', 1, '2023-04-09 19:56:59', '2023-04-09 19:56:59'),
(36, 'Me and HTML5', 'HTML5 is a markup language used for structuring and presenting content on the World Wide Web. It is the fifth and final major HTML version that is a World Wide Web Consortium (W3C) recommendation. The current specification is known as the HTML Living Standard.\n\nThe term HTML5 means not only HTML, it is a combination of HTML, CSS and Javascript with APIs . For example, drawing and animation using canvas, offline storage, microdata, audio and video, drag and drop, geolocation, embedded fonts, web APIs etc. HTML5 includes new semantic tags and some old tags( with redefinition ).', 3, '2023-04-09 20:02:53', '2023-04-09 20:02:53'),
(37, 'Java Programming is the Best', 'The application development landscape is filled with software development tools written in Java -- by Java developers -- that are designed to simplify and streamline the development, deployment and even decommissioning of Java applications. A few examples of tools written in Java include:\n\nGradle: an incredibly powerful, open source build tool\nMaven: an open source tool designed to solve dependency management problems\nJenkins: a Java-based continuous integration and delivery tool\n        \nEvery programming language comes with a learning curve, but Java shares many similarities with C, C   and JavaScript. Anyone with experience in any of those languages will pick up Java syntax quickly.\n\nJava also has a very rigid and predictable set of rules that govern code structure. This contrasts starkly with other, untyped scripting languages where it seems like anything goes. When you try to master a new programming language, a clear set of consistently enforced rules makes learning easier.', 5, '2023-04-09 20:53:51', '2023-04-09 20:53:51'),
(38, 'Top 5 programming Languages', 'Top 5 Programming Languages to Learn Development Skills in 2023\nPython. \nC# \nJavaScript. ...\nPHP. ...\nJava. .', 5, '2023-04-09 20:57:10', '2023-04-09 20:57:10'),
(39, 'Front End Stacks', 'The following are the popular front end stacks:\n\n1. MEAN\n\n2. MERN\n\n3. HTML5\n\n4. Vue.ja\n\n5. React.js\n\n6. Angular        \n\n\n', 1, '2023-04-09 21:00:10', '2023-04-09 21:00:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`) VALUES
(1, 'anshulsood', 'anshul@sood.com', '$2y$10$aFGoN0Scg5Frvo.ig0oIleIYGGAmukCncmsm.UD2VSYq48RsWcAGq', 'user'),
(2, 'asdf', 'asdf@asdf.com', '$2y$10$L5dTJuW7emMSp5IF77ri2ubB/onp0X0mj8iX1ZkiXNrpRV.DkhkWS', 'user'),
(3, 'sood', 'sood@anshul.com', '$2y$10$L5dTJuW7emMSp5IF77ri2ubB/onp0X0mj8iX1ZkiXNrpRV.DkhkWS', 'admin'),
(4, 'qwerty', 'qwerty@ssr.com', '$2y$10$CZMxky4LDwUuUIQIc45Tbu7d3UneUiv2dqEzzG5qFxFse0sFQJAee', 'user'),
(5, 'anshul', 'anshul@live.com', '$2y$10$igruAXenPI6F3rFlqDSm1Osz4Mvmv/O5lS7rVA2dr15gqc9IJiQLi', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
