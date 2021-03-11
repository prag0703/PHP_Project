-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2018 at 01:49 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_biz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aId` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contact` decimal(12,0) NOT NULL,
  `password` varchar(20) NOT NULL,
  `registerdate` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aId`, `name`, `emailid`, `contact`, `password`, `registerdate`) VALUES
(2, 'Pragati', 'prag@gmail.com', 8866421450, '1234567', '0000-00-00'),
(4, 'Devanshi Babariya', 'devanshi.babariya007@gmail.com', 8866421450, '1234', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `BId` int(40) NOT NULL,
  `Btitle` varchar(500) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `imageurl` varchar(500) NOT NULL,
  `isActive` tinyint(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`BId`, `Btitle`, `Description`, `imageurl`, `isActive`) VALUES
(1, 'nice', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.										', '23032018072605.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `catId` int(10) NOT NULL,
  `catname` varchar(20) NOT NULL,
  `description` varchar(80) NOT NULL,
  `imageurl` varchar(150) NOT NULL,
  `isactive` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catId`, `catname`, `description`, `imageurl`, `isactive`) VALUES
(1, 'ssswwewed', 'asdfg', '17012018084104.png', 'YES'),
(2, 'sadsada', 'dsadasdasd', '17032018075000.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cmspage`
--

CREATE TABLE IF NOT EXISTS `cmspage` (
  `page` varchar(30) NOT NULL,
  `pagetitle` varchar(30) NOT NULL,
  `pagedescription` varchar(100) NOT NULL,
  `Id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmspage`
--

INSERT INTO `cmspage` (`page`, `pagetitle`, `pagedescription`, `Id`) VALUES
('????', '', 'GTYHUJ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(52) NOT NULL,
  `city` varchar(12) NOT NULL,
  `zipcode` int(12) NOT NULL,
  `contact` decimal(12,0) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `isactive` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `name`, `address`, `city`, `zipcode`, `contact`, `emailid`, `password`, `isactive`) VALUES
(2, 'sdfsdfs', 'sdafsadf', 'sdfsdf', 435345, 32523545, 'abc@gmail.com', '12345', '1'),
(3, 'wrwrwqr', 'werwer', 'ewrwer', 998998, 67890394934, 'abc@gmail.com', '12345', '1');

-- --------------------------------------------------------

--
-- Table structure for table `custometheme`
--

CREATE TABLE IF NOT EXISTS `custometheme` (
  `CtId` int(30) NOT NULL,
  `title` varchar(70) NOT NULL,
  `scriptdetails` varchar(100) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custometheme`
--

INSERT INTO `custometheme` (`CtId`, `title`, `scriptdetails`, `createdate`) VALUES
(2, 'sdfsdfsDF', 'SDFSDFsdf', '2018-02-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `Fid` int(222) NOT NULL,
  `Fname` varchar(222) NOT NULL,
  `Femail` varchar(221) NOT NULL,
  `Fsubject` varchar(323) NOT NULL,
  `Fmsg` varchar(432) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE IF NOT EXISTS `footer` (
  `Fid` int(50) NOT NULL,
  `Ftitle` varchar(70) NOT NULL,
  `Fdescription` varchar(500) NOT NULL,
  `Fphone` decimal(12,0) NOT NULL,
  `Femail` varchar(60) NOT NULL,
  `Fweb` varchar(90) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`Fid`, `Ftitle`, `Fdescription`, `Fphone`, `Femail`, `Fweb`) VALUES
(2, 'Nirma Canteen', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident', 9789898985, 'company@company.com', 'www.youmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `ImageId` int(30) NOT NULL,
  `imagename` varchar(100) NOT NULL,
  `imageurl` varchar(500) NOT NULL,
  `isactive` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`ImageId`, `imagename`, `imageurl`, `isactive`) VALUES
(3, ' hrlloo ', '15032018115353.png', 1),
(4, ' wewet', '15032018111157.png', 1),
(5, ' hjkl;''', '15032018122305.png', 1),
(6, ' dfgbhnjmkl', '15032018121411.png', 1),
(7, ' fghjklkjh', '15032018124013.png', 1),
(8, ' dfyuiol', '15032018122714.png', 1),
(9, ' sadsadsad', '15032018125435.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mainmenu`
--

CREATE TABLE IF NOT EXISTS `mainmenu` (
  `Id` int(10) NOT NULL,
  `Menuname` varchar(20) NOT NULL,
  `Pagetitle` varchar(30) NOT NULL,
  `Description` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mainmenu`
--

INSERT INTO `mainmenu` (`Id`, `Menuname`, `Pagetitle`, `Description`) VALUES
(2, 'Home', 'index page', 'about.php'),
(3, 'Pages', 'Pages', ' use for different '),
(4, 'Blog', 'Blog', ' blog for sharing data '),
(5, 'Contact', 'Contact', ' contact us');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE IF NOT EXISTS `portfolio` (
  `PId` int(100) NOT NULL,
  `Pname` varchar(30) NOT NULL,
  `Pdescription` varchar(50) NOT NULL,
  `Purl` varchar(500) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`PId`, `Pname`, `Pdescription`, `Purl`, `isActive`) VALUES
(5, ' Portfolio 1', ' nice', '22032018041843.png', 0),
(6, ' Portfolio 2', ' pint image', '22032018041950.png', 0),
(7, 'Portfolio 3', 'great  ', '22032018042558.png', 0),
(8, 'Portfolio 4', ' try new', '22032018043159.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `Id` int(10) NOT NULL,
  `slidertitle` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `imageurl` varchar(150) NOT NULL,
  `linkurl` varchar(20) NOT NULL,
  `isactive` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`Id`, `slidertitle`, `description`, `imageurl`, `linkurl`, `isactive`) VALUES
(3, 'ddddddddddd', 'ddddddddddd', '17012018071155.png', 'www.google.com', '1'),
(4, 'fghjnkm', 'drftgyhj', '17012018070956.png', 'www.google.com', '1'),
(5, 'ttygyhujuk', 'fghjnkm', '17012018084120.png', 'www.google.com', '1'),
(6, '23456hgfds', 'fghjkl', '15032018121204.png', 'kfkf.com', '1'),
(7, 'ewfff', 'dsfdsfds', '15032018120534.png', 'wwe.com', '1');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `subcatname` varchar(30) NOT NULL,
  `imageurl` varchar(150) NOT NULL,
  `isactive` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `Id` int(5) NOT NULL,
  `catid` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcatname`, `imageurl`, `isactive`, `description`, `Id`, `catid`) VALUES
('ghjjk', '', '1', '', 1, 0),
('hjkl', '17012018082508.png', '1', '', 2, 0),
('hghjkl', '17012018080119.png', '1', '', 3, 0),
('devanshi', '20012018053025.png', '1', 'rrdtfgyuhji', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE IF NOT EXISTS `submenu` (
  `Id` int(30) NOT NULL,
  `MmId` int(30) NOT NULL,
  `menuname` varchar(70) NOT NULL,
  `pagetitle` varchar(70) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`Id`, `MmId`, `menuname`, `pagetitle`, `description`) VALUES
(4, 2, 'Home main Version', 'home page', 'about.php'),
(5, 7, 'About Us', 'AboutUS', 'about us page - pages'),
(6, 8, '2 Columns', 'portfolio', 'four 2 column');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `ThId` int(30) NOT NULL,
  `themename` varchar(70) NOT NULL,
  `themeurl` varchar(100) NOT NULL,
  `isactive` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`ThId`, `themename`, `themeurl`, `isactive`) VALUES
(1, 'gsfsfs', 'sdfsdsd.wwq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UId` int(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contact` int(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `emailId` varchar(70) NOT NULL,
  `password` varchar(70) NOT NULL,
  `isactive` int(5) NOT NULL,
  `role` varchar(70) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UId`, `name`, `address`, `contact`, `gender`, `emailId`, `password`, `isactive`, `role`) VALUES
(5, 'dolly', '6,Mahasagar app.,\r\nopp. p.t. college bus stop,nara', 1234567890, 'female', 'dolly@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, ''),
(6, 'Pragati', 'A-401,Shree vinayak ', 2147483647, 'female', 'prag@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, ''),
(7, 'Charmi', 'xyz..', 2147483647, 'female', 'char@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, ''),
(8, 'Charmi', '106, dipak school', 1234567897, 'female', 'char@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0, ''),
(9, 'abc', 'xyrj', 2147483647, 'female', 'abc@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `webconfig`
--

CREATE TABLE IF NOT EXISTS `webconfig` (
  `wcId` int(30) NOT NULL,
  `webname` varchar(50) NOT NULL,
  `weburl` varchar(100) NOT NULL,
  `webtitle` varchar(50) NOT NULL,
  `webicon` varchar(100) NOT NULL,
  `weblogo` varchar(100) NOT NULL,
  `keywords` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webconfig`
--

INSERT INTO `webconfig` (`wcId`, `webname`, `weburl`, `webtitle`, `webicon`, `weblogo`, `keywords`, `description`) VALUES
(2, 'sdasdas', 'asdasdas', 'sadasdas', '13032018122701.png', '', 'sadasd', 'sadasd'),
(3, 'jklll', 'sadasda', 'asdasdd', '13032018120825.png', '13032018120825.png', 'asdasdasd', 'asdasdda'),
(4, 'dfghjkl', 'rtyuio', 'rtyuiop', '15032018124506.png', '15032018124506.png', '456789iuj', 'dfgkl'),
(5, 'dfghjkl', 'dfghjkl', 'e5tyuio', '15032018125610.png', '15032018125610.png', 'dfghjkl', 'sdfghjkl'),
(6, 'sdfghjkl', 'dfgh.com', 'wrtytrew', '15032018122435.png', '15032018122435.png', 'trewq', 'gtrew');

-- --------------------------------------------------------

--
-- Table structure for table `webpage`
--

CREATE TABLE IF NOT EXISTS `webpage` (
  `wpId` int(30) NOT NULL,
  `pagetitle` varchar(70) NOT NULL,
  `pagekeyword` varchar(100) NOT NULL,
  `pagedescription` varchar(800) NOT NULL,
  `pagecontent` varchar(200) NOT NULL,
  `pageimages` varchar(500) NOT NULL,
  `uploaddate` date NOT NULL,
  `ispublish` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webpage`
--

INSERT INTO `webpage` (`wpId`, `pagetitle`, `pagekeyword`, `pagedescription`, `pagecontent`, `pageimages`, `uploaddate`, `ispublish`) VALUES
(8, 'About Us', 'About', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\r\n\r\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Sed ut perspiciatis unde omnis iste natus error sit volup accusantium. Lorem ipsum dolor sit amet, consectetur.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', '200320180412321.png', '2018-03-13', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`BId`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `cmspage`
--
ALTER TABLE `cmspage`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `custometheme`
--
ALTER TABLE `custometheme`
  ADD UNIQUE KEY `CtId` (`CtId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`ImageId`),
  ADD UNIQUE KEY `imageId` (`ImageId`);

--
-- Indexes for table `mainmenu`
--
ALTER TABLE `mainmenu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`PId`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `SmId` (`Id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`ThId`),
  ADD UNIQUE KEY `ThId` (`ThId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `UId` (`UId`);

--
-- Indexes for table `webconfig`
--
ALTER TABLE `webconfig`
  ADD PRIMARY KEY (`wcId`),
  ADD UNIQUE KEY `wcId` (`wcId`);

--
-- Indexes for table `webpage`
--
ALTER TABLE `webpage`
  ADD PRIMARY KEY (`wpId`),
  ADD UNIQUE KEY `wpId` (`wpId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `BId` int(40) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cmspage`
--
ALTER TABLE `cmspage`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `custometheme`
--
ALTER TABLE `custometheme`
  MODIFY `CtId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `Fid` int(222) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `Fid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `ImageId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mainmenu`
--
ALTER TABLE `mainmenu`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `PId` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `Id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `ThId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `webconfig`
--
ALTER TABLE `webconfig`
  MODIFY `wcId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `webpage`
--
ALTER TABLE `webpage`
  MODIFY `wpId` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
