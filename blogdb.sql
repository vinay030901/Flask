-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 11:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '0', 'first post data', '2022-12-08 13:00:21'),
(2, 'h', 'j@j.com', '8', 'kij', NULL),
(3, 'vinay', 'vinaykumar.main@gmail.com', '7906576887', 'this is my first form', '2022-12-08 13:37:32'),
(6, 'vinay', 'vinaykumar.main@gmail.com', '7906576887', 'this is my first form', '2022-12-08 13:50:04'),
(7, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:01:57'),
(8, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:02:36'),
(9, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:03:03'),
(10, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:03:29'),
(11, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:10:10'),
(12, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:10:32'),
(13, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:11:54'),
(14, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:13:04'),
(15, 'bravo', 'yes@yes.com', '12', 'asjdn', '2022-12-08 14:13:14'),
(16, 'bravo', 'champ.vk91@gmail.com', '12', 'asjdn', '2022-12-08 14:13:45'),
(17, 'hey', 'vinay@jdj.com', '23', 'asdnkjn', '2022-12-15 08:57:20'),
(18, 'hey', 'vinay@jdj.com', '23', 'asdnkjn', '2022-12-15 09:01:03'),
(19, 'hey', 'vinay@jdj.com', '23', 'asdnkjn', '2022-12-15 09:08:37'),
(20, 'sdis', 'hey@gh.com', '232', 'asdsfd', '2022-12-15 09:09:06'),
(21, 'vinay', 'vinaykumar.main@gmail.com', '89723', 'iuasndi', '2022-12-15 09:11:16'),
(22, ' ias', 'recruitvinaykumar2023@gmail.com', '982323', 'hello', '2022-12-15 09:13:10');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Avatar: the way of water', 'Avatar-2', 'Avatar: The Way of Water is a 2022 American epic science fiction film and the sequel to the 2009 film Avatar, both directed by James Cameron. The film is distributed by 20th Century Studios, as the second installment in the Avatar film series. Cameron produced the film with Jon Landau and wrote the screenplay with Rick Jaffa and Amanda Silver, which is based on a story the three wrote with Josh Friedman and Shane Salerno. Cast members Sam Worthington, Zoe Saldaña, Stephen Lang, Joel David Moore, CCH Pounder, Giovanni Ribisi, Dileep Rao, and Matt Gerald reprise their roles from the original film, with Sigourney Weaver returning in a different role.[3] New cast members include Kate Winslet, Cliff Curtis, Edie Falco, Jemaine Clement, and Brendan Cowell.\n\nCameron, who had stated in 2006 that he would like to make sequels to Avatar if it was successful, announced the first two sequels in 2010 following the widespread success of the first film, with The Way of Water aiming for a 2014 release.[4][5] However, the addition of three more sequels (for a total of five Avatar films) and the necessity to develop new technology in order to film performance capture scenes underwater, a feat never accomplished before, led to significant delays to allow the crew more time to work on the writing, preproduction, and visual effects.[6] Preliminary shooting for the film started in Manhattan Beach, California, on August 15, 2017, followed by principal photography simultaneously with Avatar 3 in Wellington on September 25, 2017. Filming concluded in late September 2020 after three years of shooting. With an estimated budget of $350–400 million, it is one of the most expensive films of all time.[2]\n\nThe film\'s theatrical release has been subject to repeated delays, with the latest occurring on July 23, 2020.[7] Avatar: The Way of Water premiered in London on December 6, 2022, and will be theatrically released in the United States on December 16, 2022. Three more sequels are scheduled to arrive in 2024, 2026 and 2028,[8][9] though the latter two would depend on the commercial reception of The Way of Water.[10]\n\nThe film received positive reviews from critics, with praise going to Cameron\'s direction, the visuals, the film\'s characters and emotional weight. Numerous organizations, including the National Board of Review and the American Film Institute, named it one of the top ten films of 2022. At the 80th Golden Globe Awards, the film received nominations for Best Motion Picture – Drama and Best Director.', 'about-bg', '2022-12-15 09:22:36'),
(2, 'Competitive programming', 'competitive-programming', 'Competitive Programming is a mental sport that enables you to code a given problem under provided constraints. The purpose of this article is to guide every individual possessing a desire to excel in this sport. This article provides a detailed syllabus for Competitive Programming designed by industry experts to boost the preparation of the readers.\r\n\r\nCompetitive-Programming-A-Complete-Guide\r\n\r\nRelated Course\r\nCompetitive Programming – Live Course\r\nGet ready to level up your programming skills with this Competitive Programming – Live Course. Learn the Fundamentals of programming, DSA, Mathematical algorithms, and much more. So, why wait? Dive into the world of Programming by enrolling in this course today!', 'home-bg', '2022-12-15 11:34:56'),
(3, 'C++', 'c++', 'C++ is a powerful general-purpose programming language. It can be used to develop operating systems, browsers, games, and so on. C++ supports different ways of programming like procedural, object-oriented, functional, and so on. This makes C++ powerful as well as flexible.\r\n\r\nOur C++ programming tutorial will guide you to learn C++ programming one step at a time.\r\n\r\nDon\'t know how to learn C++ Programming, the right way? Enroll in our Interactive C++ Course for FREE.', 'contact-bg', '2022-12-15 11:46:10'),
(4, 'codemasters website', 'codemasters', 'While attending school in Vancouver, Richard Darling and his elder brother, David Darling, had learned programming with punch cards and had access to the school\'s computer room outside of hours through one of the school\'s janitors.[4] Additionally, on weekends, they were allowed to use the Commodore PET computer owned by their father, James, to create a text version of Dungeons & Dragons.[4] Later on, the two brothers and school friend Michael Heibert, whose family possessed a VIC-20 computer, founded Darbert Computers and created video game clones of popular games, such as Galaxian and Defender.[4]\r\n\r\nThe Darling brothers later returned to England, where they acquired their own VIC-20 and founded Galactic Software, again with the help of Heibert.[4] An advertisement placed in the magazine Popular Computing Weekly caught the attention of Mastertronic, a British software publisher, and the two brothers quit their education to pursue development of budget-priced games for the company.[4] These games included Space Walk, BMX Racers, Jungle Story, Orbitron, Sub Hunt and Pigs in Space.[4] They also developed The Games Creator, a game-making tool that would later be sold commercially.[4] The Darling brothers found success in making these games, gaining £200,000 by the time they were 16 and 17 respectively.[4] In 1985, the two owned a 50% stake in Mastertronic, which they proceeded to sell in March 1986 when they decided to become independent.[4] By October 1986, the Darling brothers, with help from their father, had founded Codemasters.[4] They initially worked out of the Beaumont Business Centre in Banbury, where their elder sister Abigail managed the front desk.[4]', 'home-bg', '2022-12-16 13:37:38'),
(5, 'codeforces', 'codeforces', 'Codeforces is a website that hosts competitive programming contests.[1] It is maintained by a group of competitive programmers from ITMO University led by Mikhail Mirzayanov.[2] Since 2013, Codeforces claims to surpass Topcoder in terms of active contestants.[3] As of 2018, it has over 600,000 registered users.[4] Codeforces along with other similar websites are used by top sport programmers like Gennady Korotkevich, Petr Mitrichev, Benjamin Qi and Makoto Soejima, and by other programmers interested in furthering their careers.[5][6][7]\r\n\r\n\r\nContents\r\n1	Overview\r\n2	Rating system\r\n3	History of Codeforces\r\n4	Academic use\r\n5	See also\r\n6	References\r\n7	External sources\r\nOverview\r\nThe Codeforces platform is typically used when preparing for competitive programming contests[8][9][10][11] and it offers the following features:\r\n\r\nShort (2-hours) contests, called \"Codeforces Rounds\", held about once a week[12][13]\r\nEducational contests (2-2.5 hours, with 12 hours (24 hours before Round 45) hacking period),[14] held 2-3 times per month;\r\nChallenge/hack other contestants\' solutions;\r\nSolve problems from previous contests for training purposes;\r\n\"Polygon\" feature for creating and testing problems;\r\nSocial networking through internal public blogs.\r\n\r\nCodeforces non-official vectorized main logo.(Without sponsors)\r\nRating system\r\nContestants are rated by a system similar to Elo rating system. There are usually no prizes for winners, though several times a year special contests are held, in which top performing contestants receive T-shirts. Some bigger contests are hosted on Codeforces base, among them \"The Lyft Level 5 Challenge 2018\", provided by Lyft[15] or \"Microsoft Q# Coding Contest — Summer 2018\" provided by Microsoft.[16]\r\n\r\nContestants are divided into ranks based on their ratings. Since May 2018, users with ratings between 1900 and 2099 can be rated in both Div. 1 and Div. 2 contests. At the same time, Div. 3 was created for users rated below 1600.\r\n\r\nRating range	Title	Division\r\n≥ 3000	Legendary Grandmaster	1\r\n2600 — 2999	International Grandmaster	1\r\n2400 — 2599	Grandmaster	1\r\n2300 — 2399	International Master	1\r\n2100 — 2299	Master	1\r\n1900 — 2099	Candidate Master	1/2\r\n1600 — 1899	Expert	2\r\n1400 — 1599	Specialist	2/3\r\n1200 — 1399	Pupil	2/3/4\r\n≤ 1199	Newbie	2/3/4\r\nHistory of Codeforces\r\nCodeforces was created by a group of competitive programmers from Saratov State University led by Mike Mirzayanov. It was originally created for those interested in solving tasks and taking part in competitions.[2] The first Codeforces Round was held on the February 19, 2010 with 175 participants. As of the end of August 2022 over 800 rounds were held, with over 9000 registered competitors per round on average. Before 2012 Codeforces Rounds were titled \"Codeforces Beta Rounds\" to indicate that the system was still under development.\r\n\r\nAcademic use\r\nCodeforces is recommended by many universities.[17][18] According to Daniel Sleator, professor of Computer Science at Carnegie Mellon University, competitive programming is valuable in computer science education, because competitors learn to adapt classic algorithms to new problems, thereby improving their understanding of algorithmic concepts. He has used Codeforces problems in his class, 15-295: Competition Programming and Problem Solving.[19]', 'post-bg', '2022-12-15 11:49:00'),
(6, 'Web development', 'web-development', 'Web development refers to the creating, building, and maintaining of websites. It includes aspects such as web design, web publishing, web programming, and database management. It is the creation of an application that works over the internet i.e. websites.\r\n\r\nWeb Development\r\n\r\nThe word Web Development is made up of two words, that is:\r\n\r\nWeb: It refers to websites, web pages or anything that works over the internet.\r\nDevelopment: It refers to building the application from scratch.\r\n \r\n\r\n\r\nWeb Development can be classified into two ways:\r\n\r\nFrontend Development\r\nBackend Development\r\nFrontend Development\r\nThe part of a website that the user interacts directly is termed as front end. It is also referred to as the ‘client side’ of the application.\r\n\r\nFrontend Roadmap:Frontend Development Roadmap\r\nHTML: HTML stands for HyperText Markup Language. It is used to design the front end portion of web pages using markup language. It acts as a skeleton for a website since it is used to make the structure of a website.\r\nCSS: Cascading Style Sheets fondly referred to as CSS is a simply designed language intended to simplify the process of making web pages presentable. It is used to style our website.\r\nJavaScript: JavaScript is a scripting language used to provide a dynamic behavior to our website.\r\nBootstrap: Bootstrap is a free and open-source tool collection for creating responsive websites and web applications. It is the most popular CSS framework for developing responsive, mobile-first websites. Nowadays, the websites are perfect for all the browsers (IE, Firefox, and Chrome) and for all sizes of screens (Desktop, Tablets, Phablets, and Phones).\r\nBootstrap 4\r\nBootstrap 5\r\nFrontend Frameworks and Libraries:\r\n\r\nAngularJS\r\nReact.js\r\nVueJS\r\njQuery\r\nBootstrap\r\nMaterial UI\r\nTailwind CSS\r\njQuery UI\r\nSome other libraries and frameworks are: Handlebar.js Backbone.js, Ember.js etc.\r\nBackend Development\r\nBackend is the server side of a website. It is the part of the website that users cannot see and interact. It is the portion of software that does not come in direct contact with the users. It is used to store and arrange data.\r\n\r\nBackend Roadmap:Backend Design roadmap\r\nPHP: PHP is a server-side scripting language designed specifically for web development.\r\nJava: Java is one of the most popular and widely used programming language. It is highly scalable.\r\nPython: Python is a programming language that lets you work quickly and integrate systems more efficiently.\r\nNode.js: Node.js is an open source and cross-platform runtime environment for executing JavaScript code outside a browser.\r\nBack End Frameworks: The list of back end frameworks are: Express, Django, Rails, Laravel, Spring, etc.\r\nWeb Development Tutorials\r\n\r\nHTML\r\nCSS\r\nJavaScript\r\njQuery\r\nBootStrap\r\nReact JS\r\nAngularJS\r\nPHP\r\nNode.js\r\nSome Important Links on Web Development:\r\n\r\nBegin Web Development with a Head Start\r\nWhy do you need a Responsive Website\r\nTop 10 Frameworks for Web Applications\r\nWeb 1.0, Web 2.0 and Web 3.0 with their difference\r\n10 Web Development and Web Design Facts That You Should Know\r\nHow can I start to learn Web Development ?\r\nThe Future Of Web Development\r\nBest Books to Learn Front-End Web Development\r\nBest Books to Learn Back-End Web Development\r\n10 Things You Should Know As a Web Developer\r\nHow to choose a Technology Stack for Web Application Development ?\r\nTop 10 Tools That Every Web Developer Must Try Once\r\nPlease write comments if you find anything incorrect, or you want to share more information about the topic discussed above', 'post-sample', '2022-12-15 11:50:13'),
(7, 'Android Development', 'android-development', 'Android operating system is the largest installed base among various mobile platforms across the globe. Hundreds of millions of mobile devices are powered by Android in more than 190 countries of the world. It conquered around 71% of the global market share by the end of 2021, and this trend is growing bigger every other day. The company named Open Handset Alliance developed Android for the first time that is based on the modified version of the Linux kernel and other open-source software. Google sponsored the project at initial stages and in the year 2005, it acquired the whole company. In September 2008, the first Android-powered device was launched in the market. Android dominates the mobile OS industry because of the long list of features it provides. It’s user-friendly, has huge community support, provides a greater extent of customization, and a large number of companies build Android-compatible smartphones. As a result, the market observes a sharp increase in the demand for developing Android mobile applications, and with that companies need smart developers with the right skill set. At first, the purpose of Android was thought of as a mobile operating system. However, with the advancement of code libraries and its popularity among developers of the divergent domain, Android becomes an absolute set of software for all devices like tablets, wearables, set-top boxes, smart TVs, notebooks, etc.\r\n\r\nMajor Devices that runs on Android OS\r\n\r\nFeatures of Android\r\nAndroid is a powerful open-source operating system that open-source provides immense features and some of these are listed below.  \r\n\r\nFeatures of Android\r\n\r\n\r\nAndroid Open Source Project so we can customize the OS based on our requirements.\r\nAndroid supports different types of connectivity for GSM, CDMA, Wi-Fi, Bluetooth, etc. for telephonic conversation or data transfer.\r\nUsing wifi technology we can pair with other devices while playing games or using other applications.\r\nIt contains multiple APIs to support location-tracking services such as GPS.\r\nWe can manage all data storage-related activities by using the file manager.\r\nIt contains a wide range of media supports like AVI, MKV, FLV, MPEG4, etc. to play or record a variety of audio/video.\r\nIt also supports different image formats like JPEG, PNG, GIF, BMP, MP3, etc.\r\nIt supports multimedia hardware control to perform playback or recording using a camera and microphone.\r\nAndroid has an integrated open-source WebKit layout-based web browser to support User Interfaces like HTML5, and CSS3.\r\nAndroid supports multi-tasking means we can run multiple applications at a time and can switch between them.\r\nIt provides support for virtual reality or 2D/3D Graphics.\r\nAndroid Versions\r\nGoogle first publicly announced Android in November 2007 but was released on 23 SEPTEMBER 2008 to be exact. The first device to bring Android into the market was the HTC Dream with the version Android 1.0. Since then, Google released a lot of android versions such as Apple Pie, Banana Bread, Cupcake, Donut, Éclair, Froyo, Gingerbread, Jellybeans, Kitkat, Lollipop, marshmallow, Nougat, Oreo, etc. with extra functionalities and new features.\r\n\r\nAndroid Versions\r\n\r\nThe following table shows the version details of android which is released by Google from 2007 to date. \r\n\r\nCode Name\r\n\r\nVersion\r\n\r\nAPI level\r\n\r\nRelease date\r\n\r\n–\r\n\r\nAndroid 1.0	1	September 23, 2008\r\n–\r\n\r\nAndroid 1.1	2	February 9, 2009\r\nCupcake	Android 1.5	3	April 30, 2009\r\nDonut	Android 1.6	4	September 15, 2009\r\nEclair	Android 2.0 – 2.1	5-7	October 26, 2009\r\nFroyo	Android 2.2 – 2.2.3	8	May 20, 2010\r\nGingerbread	Android 2.3 – 2.3.4	9-10	December 6, 2010\r\nHoneycomb	Android 3.0.x – 3.2.x	11 – 13	February 22, 2011\r\nIce Cream Sandwich	Android 4.0 – 4.0.4	14 – 15	October 18, 2011\r\nJelly Bean	Android 4.1 – 4.1.2	16 – 18	July 9, 2012\r\nKitkat	Android 4.4 – 4.4.4	19	July 9, 2012\r\nLollipop	Android 5.0 – 5.1	21 – 22	October 17, 2014\r\nMarshmallow	Android 6.0 – 6.0.1	23	October 5, 2015\r\nNougat	Android 7.0 – 7.1	24 – 25	August 22, 2016\r\nOreo	Android 8.0	26	August 21, 2017\r\nPie	Android 9.0	27	August 6, 2018\r\nAndroid Q	Android 10.0	29	September 3, 2019\r\nAndroid 11	Android 11.0	30	September 8, 2020\r\nSnow Cone	Android 12.0 – 12.1	31-32	October 4, 2021\r\nTiramisu	Android 13	 	UPCOMING\r\nProgramming Languages used in Developing Android Applications\r\nJava\r\nKotlin\r\nDeveloping the Android Application using Kotlin is preferred by Google, as Kotlin is made an official language for Android Development, which is developed and maintained by JetBrains. Previously before Java is considered the official language for Android Development. Kotlin is made official for Android Development in Google I/O 2017.\r\n\r\nAdvantages of Android Development\r\nThe Android is an open-source Operating system and hence possesses a vast community for support.\r\nThe design of the Android Application has guidelines from Google, which becomes easier for developers to produce more intuitive user applications.\r\nFragmentation gives more power to Android Applications. This means the application can run two activities on a single screen.\r\nReleasing the Android application in the Google play store is easier when it is compared to other platforms.\r\nDisadvantages of Android Development\r\nFragmentation provides a very intuitive approach to user experience but it has some drawbacks, where the development team needs time to adjust to the various screen sizes of mobile smartphones that are now available in the market and invoke the particular features in the application.\r\nThe Android devices might vary broadly. So the testing of the application becomes more difficult.\r\nAs the development and testing consume more time, the cost of the application may increase, depending on the application’s complexity and features.', 'about', '2022-12-15 11:51:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
