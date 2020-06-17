-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-06-17 10:56:05
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `lu_tale`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_attach`
--

CREATE TABLE `t_attach` (
  `id` int(11) UNSIGNED NOT NULL,
  `fname` varchar(100) NOT NULL DEFAULT '',
  `ftype` varchar(50) DEFAULT '',
  `fkey` text NOT NULL,
  `authorId` int(10) DEFAULT NULL,
  `created` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `t_comments`
--

CREATE TABLE `t_comments` (
  `coid` int(10) UNSIGNED NOT NULL,
  `cid` int(10) UNSIGNED DEFAULT '0',
  `created` int(10) UNSIGNED DEFAULT '0',
  `author` varchar(200) DEFAULT NULL,
  `authorId` int(10) UNSIGNED DEFAULT '0',
  `ownerId` int(10) UNSIGNED DEFAULT '0',
  `mail` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `ip` varchar(64) DEFAULT NULL,
  `agent` varchar(200) DEFAULT NULL,
  `content` text,
  `type` varchar(16) DEFAULT 'comment',
  `status` varchar(16) DEFAULT 'approved',
  `parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的结构 `t_contents`
--

CREATE TABLE `t_contents` (
  `cid` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `titlePic` varchar(55) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT '0',
  `modified` int(10) UNSIGNED DEFAULT '0',
  `content` text COMMENT '内容文字',
  `authorId` int(10) UNSIGNED DEFAULT '0',
  `type` varchar(16) DEFAULT 'post',
  `status` varchar(16) DEFAULT 'publish',
  `tags` varchar(200) DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `hits` int(10) UNSIGNED DEFAULT '0',
  `commentsNum` int(10) UNSIGNED DEFAULT '0',
  `allowComment` tinyint(1) DEFAULT '1',
  `allowPing` tinyint(1) DEFAULT '1',
  `allowFeed` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_contents`
--

INSERT INTO `t_contents` (`cid`, `title`, `titlePic`, `slug`, `created`, `modified`, `content`, `authorId`, `type`, `status`, `tags`, `categories`, `hits`, `commentsNum`, `allowComment`, `allowPing`, `allowFeed`) VALUES
(34, 'java开发必备', NULL, NULL, 1592301215, 0, 'Java很牛逼哦', NULL, 'post', 'publish', 'java 开发 必备', 'java', 1, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_logs`
--

CREATE TABLE `t_logs` (
  `id` int(11) UNSIGNED NOT NULL COMMENT '主键编号',
  `action` varchar(100) DEFAULT NULL COMMENT '事件',
  `data` varchar(2000) DEFAULT NULL COMMENT '数据',
  `authorId` int(10) DEFAULT NULL COMMENT '作者编号',
  `ip` varchar(20) DEFAULT NULL COMMENT 'ip地址',
  `created` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_logs`
--

INSERT INTO `t_logs` (`id`, `action`, `data`, `authorId`, `ip`, `created`) VALUES
(184, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592301025),
(185, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592301786),
(186, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592301958),
(187, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592302737),
(188, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592303175),
(189, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592361748),
(190, '登录后台', 'admin用户', 1, '0:0:0:0:0:0:0:1', 1592361892);

-- --------------------------------------------------------

--
-- 表的结构 `t_metas`
--

CREATE TABLE `t_metas` (
  `mid` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `type` varchar(32) NOT NULL DEFAULT '',
  `contentType` varchar(32) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `sort` int(10) UNSIGNED DEFAULT '0',
  `parent` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_metas`
--

INSERT INTO `t_metas` (`mid`, `name`, `slug`, `type`, `contentType`, `description`, `sort`, `parent`) VALUES
(49, 'java', NULL, 'category', NULL, NULL, NULL, NULL),
(50, 'vuex', NULL, 'category', NULL, NULL, NULL, NULL),
(51, 'java 开发 必备', 'java 开发 必备', 'tag', NULL, NULL, NULL, NULL),
(52, 'vue商城', 'http://localhost.com:8888', 'link', NULL, '', 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_options`
--

CREATE TABLE `t_options` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` varchar(1000) DEFAULT '',
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_options`
--

INSERT INTO `t_options` (`name`, `value`, `description`) VALUES
('baidu_site_verification', '', NULL),
('google_site_verification', '', NULL),
('site_description', '', NULL),
('site_record', '', NULL),
('site_theme', '', NULL),
('site_title', '', NULL),
('social_csdn', '', NULL),
('social_github', '', NULL),
('social_jianshu', '', NULL),
('social_resume', '', NULL),
('social_twitter', '', NULL),
('social_weibo', '', NULL),
('social_zhihu', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_relationships`
--

CREATE TABLE `t_relationships` (
  `cid` int(10) UNSIGNED NOT NULL,
  `mid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_relationships`
--

INSERT INTO `t_relationships` (`cid`, `mid`) VALUES
(27, 41),
(27, 42),
(27, 43),
(27, 46),
(28, 41),
(28, 43),
(29, 41),
(29, 42),
(29, 43),
(30, 48),
(31, 48),
(32, 41),
(32, 43),
(33, 48),
(34, 49),
(34, 51);

-- --------------------------------------------------------

--
-- 表的结构 `t_users`
--

CREATE TABLE `t_users` (
  `uid` int(10) UNSIGNED NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `homeUrl` varchar(200) DEFAULT NULL,
  `screenName` varchar(32) DEFAULT NULL,
  `created` int(10) UNSIGNED DEFAULT '0',
  `activated` int(10) UNSIGNED DEFAULT '0',
  `logged` int(10) UNSIGNED DEFAULT '0',
  `groupName` varchar(16) DEFAULT 'visitor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- 转存表中的数据 `t_users`
--

INSERT INTO `t_users` (`uid`, `username`, `password`, `email`, `homeUrl`, `screenName`, `created`, `activated`, `logged`, `groupName`) VALUES
(1, 'admin', 'a66abb5684c45962d887564f08346e8d', 'censhine@qq.com', NULL, 'admin', 1490756162, 0, 0, 'visitor');

--
-- 转储表的索引
--

--
-- 表的索引 `t_attach`
--
ALTER TABLE `t_attach`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `t_comments`
--
ALTER TABLE `t_comments`
  ADD PRIMARY KEY (`coid`) USING BTREE,
  ADD KEY `cid` (`cid`) USING BTREE,
  ADD KEY `created` (`created`) USING BTREE;

--
-- 表的索引 `t_contents`
--
ALTER TABLE `t_contents`
  ADD PRIMARY KEY (`cid`) USING BTREE,
  ADD UNIQUE KEY `slug` (`slug`) USING BTREE,
  ADD KEY `created` (`created`) USING BTREE;

--
-- 表的索引 `t_logs`
--
ALTER TABLE `t_logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `t_metas`
--
ALTER TABLE `t_metas`
  ADD PRIMARY KEY (`mid`) USING BTREE,
  ADD KEY `slug` (`slug`) USING BTREE;

--
-- 表的索引 `t_options`
--
ALTER TABLE `t_options`
  ADD PRIMARY KEY (`name`) USING BTREE;

--
-- 表的索引 `t_relationships`
--
ALTER TABLE `t_relationships`
  ADD PRIMARY KEY (`cid`,`mid`) USING BTREE;

--
-- 表的索引 `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`uid`) USING BTREE,
  ADD UNIQUE KEY `name` (`username`) USING BTREE,
  ADD UNIQUE KEY `mail` (`email`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `t_attach`
--
ALTER TABLE `t_attach`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `t_comments`
--
ALTER TABLE `t_comments`
  MODIFY `coid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `t_contents`
--
ALTER TABLE `t_contents`
  MODIFY `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- 使用表AUTO_INCREMENT `t_logs`
--
ALTER TABLE `t_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键编号', AUTO_INCREMENT=191;

--
-- 使用表AUTO_INCREMENT `t_metas`
--
ALTER TABLE `t_metas`
  MODIFY `mid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `t_users`
--
ALTER TABLE `t_users`
  MODIFY `uid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
