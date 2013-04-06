/*
MySQL Data Transfer
Source Host: localhost
Source Database: chongqingguoxue
Target Host: localhost
Target Database: chongqingguoxue
Date: 2013/4/6 15:18:31
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for baomingbiao_11456201291915294621
-- ----------------------------
DROP TABLE IF EXISTS `baomingbiao_11456201291915294621`;
CREATE TABLE `baomingbiao_11456201291915294621` (
  `id` int(16) NOT NULL auto_increment,
  `people_number` varchar(64) default NULL,
  `name` varchar(64) default NULL,
  `company` varchar(128) default NULL,
  `xingzhi` varchar(64) default NULL,
  `peixunfangan` varchar(64) default NULL,
  `phone_number` varchar(64) default NULL,
  `e_mail` varchar(128) default NULL,
  `jiaoyuchengdu` varchar(64) default NULL,
  `biyeyuanxiao` varchar(128) default NULL,
  `biyeshijian` varchar(64) default NULL,
  `tongxundizhi` varchar(256) default NULL,
  `fukuangfangshi` varchar(128) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `shenhe_state` int(3) default NULL,
  `minzhu` varchar(128) default NULL,
  `xingbie` varchar(64) default NULL,
  `born_year_month_day` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for baomingbiao_8141201291915323917
-- ----------------------------
DROP TABLE IF EXISTS `baomingbiao_8141201291915323917`;
CREATE TABLE `baomingbiao_8141201291915323917` (
  `id` int(16) NOT NULL auto_increment,
  `people_number` varchar(64) default NULL,
  `name` varchar(64) default NULL,
  `company` varchar(128) default NULL,
  `xingzhi` varchar(64) default NULL,
  `peixunfangan` varchar(64) default NULL,
  `phone_number` varchar(64) default NULL,
  `e_mail` varchar(128) default NULL,
  `jiaoyuchengdu` varchar(64) default NULL,
  `biyeyuanxiao` varchar(128) default NULL,
  `biyeshijian` varchar(64) default NULL,
  `tongxundizhi` varchar(256) default NULL,
  `fukuangfangshi` varchar(128) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `shenhe_state` int(3) default NULL,
  `minzhu` varchar(128) default NULL,
  `xingbie` varchar(64) default NULL,
  `born_year_month_day` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for baomingbiao_table
-- ----------------------------
DROP TABLE IF EXISTS `baomingbiao_table`;
CREATE TABLE `baomingbiao_table` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `create_people` varchar(64) default NULL,
  `table_name` varchar(64) default NULL,
  `state` int(2) default NULL,
  `xingzhi` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guoxueguanzhi_guocuiguoyi
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_guocuiguoyi`;
CREATE TABLE `guoxueguanzhi_guocuiguoyi` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_guoxuegongju
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_guoxuegongju`;
CREATE TABLE `guoxueguanzhi_guoxuegongju` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_guoxuerenwu
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_guoxuerenwu`;
CREATE TABLE `guoxueguanzhi_guoxuerenwu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_jingshiziji
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_jingshiziji`;
CREATE TABLE `guoxueguanzhi_jingshiziji` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_mengxue
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_mengxue`;
CREATE TABLE `guoxueguanzhi_mengxue` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_picture
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_picture`;
CREATE TABLE `guoxueguanzhi_picture` (
  `id` int(10) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `picture_route` varchar(256) default NULL,
  `picture_belong` varchar(64) default NULL,
  `mark` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_tuijianduwu
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_tuijianduwu`;
CREATE TABLE `guoxueguanzhi_tuijianduwu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueguanzhi_xiaoxue
-- ----------------------------
DROP TABLE IF EXISTS `guoxueguanzhi_xiaoxue`;
CREATE TABLE `guoxueguanzhi_xiaoxue` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuejiaoyu_fuxiuerzhuanjiaoyu
-- ----------------------------
DROP TABLE IF EXISTS `guoxuejiaoyu_fuxiuerzhuanjiaoyu`;
CREATE TABLE `guoxuejiaoyu_fuxiuerzhuanjiaoyu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuejiaoyu_picture
-- ----------------------------
DROP TABLE IF EXISTS `guoxuejiaoyu_picture`;
CREATE TABLE `guoxuejiaoyu_picture` (
  `id` int(10) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `picture_route` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuejiaoyu_wangluojiaoyu
-- ----------------------------
DROP TABLE IF EXISTS `guoxuejiaoyu_wangluojiaoyu`;
CREATE TABLE `guoxuejiaoyu_wangluojiaoyu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuejiaoyu_xuelijiaoyu
-- ----------------------------
DROP TABLE IF EXISTS `guoxuejiaoyu_xuelijiaoyu`;
CREATE TABLE `guoxuejiaoyu_xuelijiaoyu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuenews
-- ----------------------------
DROP TABLE IF EXISTS `guoxuenews`;
CREATE TABLE `guoxuenews` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(128) default NULL,
  `author` varchar(128) default NULL,
  `title` varchar(512) default NULL,
  `image` varchar(512) default NULL,
  `webaddress` varchar(512) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(128) default NULL,
  `visits` int(16) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuenews_guonei
-- ----------------------------
DROP TABLE IF EXISTS `guoxuenews_guonei`;
CREATE TABLE `guoxuenews_guonei` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(128) default NULL,
  `author` varchar(128) default NULL,
  `title` varchar(512) default NULL,
  `image` varchar(512) default NULL,
  `webaddress` varchar(512) default NULL,
  `text` text,
  `add_user` varchar(128) default NULL,
  `visits` int(16) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guoxuenews_guowai
-- ----------------------------
DROP TABLE IF EXISTS `guoxuenews_guowai`;
CREATE TABLE `guoxuenews_guowai` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(128) default NULL,
  `author` varchar(128) default NULL,
  `title` varchar(512) default NULL,
  `image` varchar(512) default NULL,
  `webaddress` varchar(512) default NULL,
  `text` text,
  `add_user` varchar(128) default NULL,
  `visits` int(16) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guoxuepeixun_aihaozhepeixun
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_aihaozhepeixun`;
CREATE TABLE `guoxuepeixun_aihaozhepeixun` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_gongwuyuanpeixun
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_gongwuyuanpeixun`;
CREATE TABLE `guoxuepeixun_gongwuyuanpeixun` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_guoxueshizipeixun
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_guoxueshizipeixun`;
CREATE TABLE `guoxuepeixun_guoxueshizipeixun` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_peixunchengguo
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_peixunchengguo`;
CREATE TABLE `guoxuepeixun_peixunchengguo` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_peixunjihua
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_peixunjihua`;
CREATE TABLE `guoxuepeixun_peixunjihua` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_picture
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_picture`;
CREATE TABLE `guoxuepeixun_picture` (
  `id` int(10) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `picture_route` varchar(256) default NULL,
  `picture_belong` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuepeixun_qishiyeguanliganbupeixun
-- ----------------------------
DROP TABLE IF EXISTS `guoxuepeixun_qishiyeguanliganbupeixun`;
CREATE TABLE `guoxuepeixun_qishiyeguanliganbupeixun` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuetuiguang_nongchuntuiguang
-- ----------------------------
DROP TABLE IF EXISTS `guoxuetuiguang_nongchuntuiguang`;
CREATE TABLE `guoxuetuiguang_nongchuntuiguang` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuetuiguang_picture
-- ----------------------------
DROP TABLE IF EXISTS `guoxuetuiguang_picture`;
CREATE TABLE `guoxuetuiguang_picture` (
  `id` int(10) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `picture_route` varchar(256) default NULL,
  `picture_belong` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuetuiguang_shequtuiguang
-- ----------------------------
DROP TABLE IF EXISTS `guoxuetuiguang_shequtuiguang`;
CREATE TABLE `guoxuetuiguang_shequtuiguang` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxuetuiguang_xuexiaotuiguang
-- ----------------------------
DROP TABLE IF EXISTS `guoxuetuiguang_xuexiaotuiguang`;
CREATE TABLE `guoxuetuiguang_xuexiaotuiguang` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueyanjiu_haiwaiyanjiu
-- ----------------------------
DROP TABLE IF EXISTS `guoxueyanjiu_haiwaiyanjiu`;
CREATE TABLE `guoxueyanjiu_haiwaiyanjiu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueyanjiu_jingdianyanjiu
-- ----------------------------
DROP TABLE IF EXISTS `guoxueyanjiu_jingdianyanjiu`;
CREATE TABLE `guoxueyanjiu_jingdianyanjiu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueyanjiu_picture
-- ----------------------------
DROP TABLE IF EXISTS `guoxueyanjiu_picture`;
CREATE TABLE `guoxueyanjiu_picture` (
  `id` int(10) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `picture_route` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for guoxueyanjiu_zuixinyanjiu
-- ----------------------------
DROP TABLE IF EXISTS `guoxueyanjiu_zuixinyanjiu`;
CREATE TABLE `guoxueyanjiu_zuixinyanjiu` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for ordinary_users_log
-- ----------------------------
DROP TABLE IF EXISTS `ordinary_users_log`;
CREATE TABLE `ordinary_users_log` (
  `id` int(16) NOT NULL auto_increment,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `username` varchar(128) default NULL,
  `caozuo` varchar(10000) default NULL,
  `result` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for other_quweiguoxue
-- ----------------------------
DROP TABLE IF EXISTS `other_quweiguoxue`;
CREATE TABLE `other_quweiguoxue` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `author` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `title` varchar(256) default NULL,
  `text` varchar(2000) default NULL,
  `add_user` varchar(64) default NULL,
  `visits` int(16) default NULL,
  `tiyao` varchar(256) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for other_youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `other_youqinglianjie`;
CREATE TABLE `other_youqinglianjie` (
  `id` int(16) NOT NULL auto_increment,
  `name` varchar(128) default NULL,
  `url` varchar(512) default NULL,
  `add_user` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for peixunfangan_aihaozhe
-- ----------------------------
DROP TABLE IF EXISTS `peixunfangan_aihaozhe`;
CREATE TABLE `peixunfangan_aihaozhe` (
  `id` int(16) NOT NULL auto_increment,
  `course_name` varchar(64) default NULL,
  `course_teacher` varchar(64) default NULL,
  `course_kaike_time` varchar(64) default NULL,
  `course_place` varchar(64) default NULL,
  `course_cishu` varchar(32) default NULL,
  `course_shangke_time` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for peixunfangan_gongwuyuan
-- ----------------------------
DROP TABLE IF EXISTS `peixunfangan_gongwuyuan`;
CREATE TABLE `peixunfangan_gongwuyuan` (
  `id` int(16) NOT NULL auto_increment,
  `course_name` varchar(64) default NULL,
  `course_teacher` varchar(64) default NULL,
  `course_kaike_time` varchar(64) default NULL,
  `course_place` varchar(64) default NULL,
  `course_cishu` varchar(32) default NULL,
  `course_shangke_time` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for peixunfangan_guoxueshizi
-- ----------------------------
DROP TABLE IF EXISTS `peixunfangan_guoxueshizi`;
CREATE TABLE `peixunfangan_guoxueshizi` (
  `id` int(16) NOT NULL auto_increment,
  `course_name` varchar(64) default NULL,
  `course_teacher` varchar(64) default NULL,
  `course_kaike_time` varchar(64) default NULL,
  `course_place` varchar(64) default NULL,
  `course_cishu` varchar(32) default NULL,
  `course_shangke_time` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for peixunfangan_qishiyeguanli
-- ----------------------------
DROP TABLE IF EXISTS `peixunfangan_qishiyeguanli`;
CREATE TABLE `peixunfangan_qishiyeguanli` (
  `id` int(16) NOT NULL auto_increment,
  `course_name` varchar(64) default NULL,
  `course_teacher` varchar(64) default NULL,
  `course_kaike_time` varchar(64) default NULL,
  `course_place` varchar(64) default NULL,
  `course_cishu` varchar(32) default NULL,
  `course_shangke_time` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pictureshow
-- ----------------------------
DROP TABLE IF EXISTS `pictureshow`;
CREATE TABLE `pictureshow` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(128) default NULL,
  `picture_route` varchar(512) default NULL,
  `time_yearmonth` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `author` varchar(128) default NULL,
  `add_user` varchar(128) default NULL,
  `xiangce` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for pictureshow_xiangce
-- ----------------------------
DROP TABLE IF EXISTS `pictureshow_xiangce`;
CREATE TABLE `pictureshow_xiangce` (
  `id` int(16) NOT NULL auto_increment,
  `xiangce_name` varchar(512) default NULL,
  `author` varchar(128) default NULL,
  `add_user` varchar(128) default NULL,
  `time1` varchar(64) default NULL,
  `time2` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for system_users
-- ----------------------------
DROP TABLE IF EXISTS `system_users`;
CREATE TABLE `system_users` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(512) default NULL,
  `password` varchar(512) default NULL,
  `rights` int(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for system_users_log
-- ----------------------------
DROP TABLE IF EXISTS `system_users_log`;
CREATE TABLE `system_users_log` (
  `id` int(32) NOT NULL auto_increment,
  `time_yearmonthday` varchar(64) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `username` varchar(128) default NULL,
  `rights` varchar(128) default NULL,
  `caozuo` varchar(10000) default NULL,
  `result` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(3) NOT NULL default '0',
  `text` varchar(10000) default NULL,
  `add_user` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information` (
  `id` int(16) NOT NULL auto_increment,
  `user_number` varchar(128) default NULL,
  `user_login` varchar(128) default NULL,
  `user_real_name` varchar(128) default NULL,
  `e_mail` varchar(256) default NULL,
  `born_year_month_day` varchar(128) default NULL,
  `jiguan` varchar(512) default NULL,
  `now_living_place` varchar(512) default NULL,
  `phone_number` varchar(64) default NULL,
  `sex` varchar(8) default NULL,
  `gongzuozhiwei` varchar(64) default NULL,
  `company` varchar(128) default NULL,
  `minzhu` varchar(128) default NULL,
  `jiaoyuchengdu` varchar(64) default NULL,
  `biyeyuanxiao` varchar(128) default NULL,
  `biyeshijian` varchar(128) default NULL,
  `tongxundizhi` varchar(512) default NULL,
  `youbian` varchar(64) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for users_table
-- ----------------------------
DROP TABLE IF EXISTS `users_table`;
CREATE TABLE `users_table` (
  `id` int(16) NOT NULL auto_increment,
  `username` varchar(512) default NULL,
  `password` varchar(512) default NULL,
  `e_mail` varchar(512) default NULL,
  `time_hourminute` varchar(64) default NULL,
  `time_yearmonthday` varchar(64) default NULL,
  `user_number` varchar(512) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for web_detail
-- ----------------------------
DROP TABLE IF EXISTS `web_detail`;
CREATE TABLE `web_detail` (
  `id` int(16) NOT NULL auto_increment,
  `total_visits` int(16) default NULL,
  `time` varchar(64) default NULL,
  `day_visits` int(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for xueyuan_tongzhi
-- ----------------------------
DROP TABLE IF EXISTS `xueyuan_tongzhi`;
CREATE TABLE `xueyuan_tongzhi` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(64) default NULL,
  `content` varchar(10000) default NULL,
  `author` varchar(128) default NULL,
  `time` varchar(128) default NULL,
  `add_user` varchar(128) default NULL,
  `kinds` varchar(64) default NULL,
  `state` varchar(2) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for xueyuan_xinwen
-- ----------------------------
DROP TABLE IF EXISTS `xueyuan_xinwen`;
CREATE TABLE `xueyuan_xinwen` (
  `id` int(16) NOT NULL auto_increment,
  `number` varchar(256) default NULL,
  `author` varchar(256) default NULL,
  `time` varchar(256) default NULL,
  `title` varchar(512) default NULL,
  `image` varchar(512) default NULL,
  `webaddress` varchar(512) default NULL,
  `text` varchar(20000) default NULL,
  `add_user` varchar(512) default NULL,
  `visits` int(16) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for xueyuanjigou_shezhi
-- ----------------------------
DROP TABLE IF EXISTS `xueyuanjigou_shezhi`;
CREATE TABLE `xueyuanjigou_shezhi` (
  `id` int(8) NOT NULL auto_increment,
  `name` varchar(256) default NULL,
  `leibie` varchar(128) default NULL,
  `jieshao` text,
  `time_yearmonth` varchar(64) default NULL,
  `time_hourminutes` varchar(64) default NULL,
  `houtai_user` varchar(128) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `baomingbiao_11456201291915294621` VALUES ('1', '6676201291413258816', '许鹏飞', '西南大学', '国学培训', '公务员培训', '15123245787', '111@111', '硕士', '西南大学', '2014-07-01', '重庆市北碚区西南大学计信院', '现金', '2012-10-2', '17:45', '2', '汉族', '男', '1989-04-26');
INSERT INTO `baomingbiao_8141201291915323917` VALUES ('1', '9258201291414157760', 'ff', 'feaf', '公益活动', '===请选择===', 'afe', 'hsupangfei1989@gmail.com', '本科', 'feaf', '2012-09-19', 'eafe', '===请选择===', '2012-9-19', '15:32', '1', 'feaf', '男', '2012-09-19');
INSERT INTO `baomingbiao_table` VALUES ('1', '11456201291915294621', '2012-9-19', '15:29', '1', 'xyz', '1', '国学培训');
INSERT INTO `baomingbiao_table` VALUES ('2', '8141201291915323917', '2012-9-19', '15:32', '12', '123', '1', '公益活动');
INSERT INTO `guoxueguanzhi_guocuiguoyi` VALUES ('1', '201291122531150', '国粹过亿', '2012-9-11', '22:53', '国粹过亿', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225302_306.jpg\" width=\"900\" height=\"612\" alt=\"\" />', 'xx', '2', '国粹过亿');
INSERT INTO `guoxueguanzhi_guocuiguoyi` VALUES ('2', '201291122538748', '玉清', '2012-9-11', '22:53', '玉清', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225334_47.jpg\" width=\"900\" height=\"675\" alt=\"\" />', 'xx', '2', '玉清gg');
INSERT INTO `guoxueguanzhi_guoxuegongju` VALUES ('1', '201291122569941', '国学工具', '2012-9-11', '22:56', '国学工具', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225603_347.jpg\" width=\"900\" height=\"563\" alt=\"\" />', 'xx', '1', '国学工具');
INSERT INTO `guoxueguanzhi_guoxuegongju` VALUES ('2', '201291122587205', '国学工具', '2012-9-11', '22:58', '国学工具2', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225838_920.jpg\" width=\"670\" height=\"663\" alt=\"\" /><br />', 'xx', '3', '国学工具');
INSERT INTO `guoxueguanzhi_guoxuerenwu` VALUES ('1', '20129112305966', '848', '2012-9-11', '23:00', '845', '48f8<img src=\"/CQguoxue2/attached/image/20120911/20120911230007_231.jpg\" alt=\"\" />', 'xx', '1', '48');
INSERT INTO `guoxueguanzhi_guoxuerenwu` VALUES ('2', '20129112308511', '饿啊', '2012-9-11', '23:00', '饿啊', '<p>\r\n	饿啊\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911230027_895.jpg\" width=\"500\" height=\"375\" align=\"left\" alt=\"\" /> \r\n</p>', 'xx', '3', '饿啊');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('1', '201291122518701', '重庆', '2012-9-11', '22:51', '经史子集有哪些', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225123_73.jpg\" width=\"800\" height=\"567\" alt=\"\" />', 'xx', '0', '经史子集有哪些');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('2', '201291122527141', '东东', '2012-9-11', '22:52', '经史子集东东', '<p>\r\n	经史子集\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911225203_581.jpg\" alt=\"\" /> \r\n</p>', 'xx', '2', '经史子集ffaf');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('3', '201210171736557', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('4', '201210171739601', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('5', '201210171731276', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('6', '201210171738482', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清玉玉清玉清玉清清玉清v玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清清玉清');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('7', '201210171742814', '玉玉清玉清玉清清玉清', '2012-10-17', '17:04', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清v玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_jingshiziji` VALUES ('8', '201210171749301', '玉玉清玉清玉清清玉清', '2012-10-17', '17:04', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('1', '201291122479265', '重庆国学院', '2012-9-11', '22:47', '蒙学？', '<img src=\"/CQguoxue2/attached/image/20120911/20120911224733_482.jpg\" width=\"800\" height=\"480\" alt=\"\" />', 'xx', '3', '蒙学是什么？');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('2', '201291122493714', '重庆国学院', '2012-9-11', '22:49', '蒙学是这样的！', '<img src=\"/CQguoxue2/attached/image/20120911/20120911224933_418.jpg\" alt=\"\" />', 'xx', '7', '蒙学是这样的');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('3', '2012101715344394', 'xxx', '2012-10-17', '15:34', 'xxx', 'xxxxx', 'root', '0', 'xxx');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('4', '2012101715343897', '初创', '2012-10-17', '15:34', '踩踩踩', '初创', 'root', '0', '初创');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('5', '2012101715343785', 'ccvv', '2012-10-17', '15:34', 'xxcc', 'vvvvv', 'root', '0', 'vvvvvv');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('6', '2012101715345773', '恶风', '2012-10-17', '15:34', '二二八', '法尔', 'root', '0', '法尔');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('7', '2012101715355988', '二二八', '2012-10-17', '15:35', '二二八', '<a href=\"http://localhost:8080/CQguoxue/guoxueguanzhi_mengxuedetail.jsp?id=2012101715345773\" target=\"_top\">二二八</a>', 'root', '0', '二二八');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('8', '2012101715356723', '法尔', '2012-10-17', '15:35', '分啊', '法尔', 'root', '0', '法尔');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('9', '2012101715353332', '你你你', '2012-10-17', '15:35', '你你你', '那你', 'root', '0', '那你');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('10', '2012101715352618', 'mm们', '2012-10-17', '15:35', 'mm们', 'mm们', 'root', '0', 'mm们');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('11', '2012101715362946', 'mm们mm们', '2012-10-17', '15:36', 'mm们mm们', '麻木mm们mm们', 'root', '0', 'mm们mm们');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('12', '2012101715367659', '么么么么', '2012-10-17', '15:36', '们么么么么', 'mm们', 'root', '1', 'mm们');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('13', '2012101715368356', '们么么么么', '2012-10-17', '15:36', '么么么么', '们么么么么', 'root', '2', '们么么么么');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('14', '2012101717269585', '玉清玉清清玉清玉玉清', '2012-10-17', '17:26', '玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清</span>', 'root', '4', '玉清玉清清玉清玉玉清');
INSERT INTO `guoxueguanzhi_mengxue` VALUES ('15', '2012101717286741', '玉清玉清清玉清玉玉清', '2012-10-17', '17:28', '玉清玉清清玉清玉玉清玉清玉清玉清玉清清玉清玉玉清清玉清玉玉清玉清玉清清玉清玉玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清</span></span></span></span></span></span></span></span>', 'root', '2', '玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清');
INSERT INTO `guoxueguanzhi_picture` VALUES ('1', '201211142032214', 'guoxueguanzhiimages/2012-11-14/07057608_e3e6f22244e557f1758d397a98734145.jpg', '蒙学', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('2', '201211142069354', 'guoxueguanzhiimages/2012-11-14/12913484_e25418821200a0f7c8f9f81b22d21691.jpg', '小学', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('3', '201291122482261', 'guoxueguanzhiimages/2012-9-11/7f56771e42b066711ad576a1.jpg', '经史子集', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('4', '201291122487328', 'guoxueguanzhiimages/2012-9-11/90880_200811291944443DHtd.jpg', '国粹国艺', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('5', '2012101816571146', 'guoxueguanzhiimages/2012-10-18/d4b048a77fc4a010d3435875.jpg', '国学工具', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('6', '201291122485345', 'guoxueguanzhiimages/2012-9-11/708390_1282580640DMBk.jpg', '推荐读物', '1');
INSERT INTO `guoxueguanzhi_picture` VALUES ('7', '201291122527213', 'guoxueguanzhiimages/2012-10-18/a_61534769.jpg', '国学人物', '1');
INSERT INTO `guoxueguanzhi_tuijianduwu` VALUES ('1', '201291122596909', '一样', '2012-9-11', '22:59', '一样 ', '<p>\r\n	发你帮\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911225911_462.jpg\" width=\"800\" height=\"600\" alt=\"\" />\r\n</p>', 'xx', '1', '一样');
INSERT INTO `guoxueguanzhi_tuijianduwu` VALUES ('2', '201291122592757', 'uuan', '2012-9-11', '22:59', 'uu', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225941_714.jpg\" width=\"700\" height=\"496\" alt=\"\" />', 'xx', '2', 'ian');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('1', '201291122501916', '重庆国学院', '2012-9-11', '22:50', '小学是什么', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225013_84.jpg\" width=\"800\" height=\"600\" alt=\"\" />', 'xx', '0', '小学是这样的');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('2', '201291122506977', '重庆', '2012-9-11', '22:50', '小学古代的', '<img src=\"/CQguoxue2/attached/image/20120911/20120911225043_958.jpg\" width=\"793\" height=\"1133\" alt=\"\" />', 'xx', '4', '古代的小学');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('3', '20129220137631', 'aea', '2012-9-22', '00:13', 'eeea', 'aeaea', 'xx', '0', 'eaeea');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('4', '20129220341649', 'dafafe', '2012-9-22', '00:34', 'fadfafd', 'adfafe', '630', '2', 'adf');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('5', '2012101715364123', '么么么么', '2012-10-17', '15:36', '么么么么', 'mm们', 'root', '0', 'mm们');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('6', '2012101715367289', 'mm们', '2012-10-17', '15:36', '么么么么', 'mm们', 'root', '0', 'mm们');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('7', '2012101715375586', 'mm们', '2012-10-17', '15:37', 'mm们', '么么么么', 'root', '0', '么么么么');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('8', '2012101715377605', '么么么么', '2012-10-17', '15:37', '么么么么', '么么么么', 'root', '0', '们么么么么');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('9', '2012101715377257', 'mm们 ', '2012-10-17', '15:37', 'mm们mm们', '&lt;div&gt;xxxxx&lt;/div&gt;', 'root', '1', '');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('10', '201210171724433', '玉玉清玉清玉清清玉清', '2012-10-17', '17:02', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('11', '201210171733636', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('12', '201210171733848', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueguanzhi_xiaoxue` VALUES ('13', '201210171731833', '玉玉清玉清玉清清玉清', '2012-10-17', '17:03', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuejiaoyu_fuxiuerzhuanjiaoyu` VALUES ('1', '20129112388824', '玉清', '2012-9-11', '23:08', '玉清玉清玉清', '玉清玉清', 'xx', '1', '玉清玉清');
INSERT INTO `guoxuejiaoyu_fuxiuerzhuanjiaoyu` VALUES ('2', '20129112384058', '玉清', '2012-9-11', '23:08', '饿啊玉清', '玉清', 'xx', '4', '玉清');
INSERT INTO `guoxuejiaoyu_wangluojiaoyu` VALUES ('1', '20129112385684', '玉清', '2012-9-11', '23:08', '人托人', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxuejiaoyu_wangluojiaoyu` VALUES ('2', '20129112393919', '一', '2012-9-11', '23:09', '应用', '&nbsp; 应用', 'xx', '1', ' 应用');
INSERT INTO `guoxuejiaoyu_xuelijiaoyu` VALUES ('1', '20129112382637', '玉清', '2012-9-11', '23:08', '玉清', '玉清', 'xx', '1', '玉清');
INSERT INTO `guoxuejiaoyu_xuelijiaoyu` VALUES ('2', '20129112383374', '玉清', '2012-9-11', '23:08', '玉清玉清玉清玉清玉清', '', 'xx', '4', '玉清');
INSERT INTO `guoxuenews_guonei` VALUES ('1', '201291121465570', '重庆国学院', '国学新闻', 'guoxuenewsimages/2012-9-11/134127rbbj2v9tzwvtp7v2.jpg', '201291121465570.html', '<p style=\"text-align:center;\">\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911214616_232.jpg\" width=\"600\" height=\"425\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	古典吧\r\n</p>', 'xx', '2', '2012-9-11', '21:46');
INSERT INTO `guoxuenews_guonei` VALUES ('2', '201291121473715', '重庆国学院', '甲骨文', 'guoxuenewsimages/2012-9-11/7f56771e42b066711ad576a1.jpg', '201291121473715.html', '<img src=\"/CQguoxue2/attached/image/20120911/20120911214720_752.jpg\" width=\"800\" height=\"600\" alt=\"\" />', 'xx', '0', '2012-9-11', '21:47');
INSERT INTO `guoxuenews_guonei` VALUES ('3', '201291121525531', '国学', '经典', 'guoxuenewsimages/2012-9-11/original_NqeZ_6fde00000485125c.jpg', '201291121525531.html', '<img src=\"/CQguoxue2/attached/image/20120911/20120911215151_968.jpg\" width=\"700\" height=\"495\" alt=\"\" />', 'xx', '1', '2012-9-11', '21:52');
INSERT INTO `guoxuenews_guonei` VALUES ('4', '201292120469523', '56747', '8e567', 'guoxuenewsimages/2012-9-21/2627819_1272548153F0Gq.jpg', '201292120469523.html', '75476547', 'xx', '0', '2012-9-21', '20:46');
INSERT INTO `guoxuenews_guonei` VALUES ('5', '201292120484959', 'fffa', 'jhjfjffhjfjfhjfhjfhj', 'guoxuenewsimages/2012-9-21/5b83d61618486351962b43fe.jpg', '201292120484959.html', 'jfghjfghjfh', 'xx', '1', '2012-9-21', '20:48');
INSERT INTO `guoxuenews_guonei` VALUES ('6', '201292120511477', 'fa', '004524', 'guoxuenewsimages/2012-9-21/5357862_122916058860_2.jpg', '201292120511477.html', 'fafasd', 'root', '0', '2012-9-21', '20:51');
INSERT INTO `guoxuenews_guonei` VALUES ('7', '201292120527384', 'eafa', 'eaef', 'guoxuenewsimages/2012-9-21/3290206_014852403635_2.jpg', '201292120527384.html', 'feaf', '630', '0', '2012-9-21', '20:52');
INSERT INTO `guoxuenews_guonei` VALUES ('8', '201292120526188', 'feaf', 'feaf', 'guoxuenewsimages/2012-9-21/4014934_212915004583_2.jpg', '201292120526188.html', 'aefaef', '630', '3', '2012-9-21', '20:52');
INSERT INTO `guoxuenews_guonei` VALUES ('9', '2012101715316653', '发', '发', 'guoxuenewsimages/2012-10-17/a_70745889.jpg', '2012101715316653.html', '<img src=\"http://localhost:8080/CQguoxue/kindeditor/plugins/emoticons/images/3.gif\" border=\"0\" alt=\"\" />', 'root', '1', '2012-10-17', '15:31');
INSERT INTO `guoxuenews_guonei` VALUES ('10', '2012101715323314', 'e', 'eee', 'guoxuenewsimages/2012-10-17/a_61466109.jpg', '2012101715323314.html', '鹅鹅鹅', 'root', '1', '2012-10-17', '15:32');
INSERT INTO `guoxuenews_guonei` VALUES ('11', '2012101715324656', 'x', 'xxx', 'guoxuenewsimages/2012-10-17/a_61532703.jpg', '2012101715324656.html', '小小小', 'root', '2', '2012-10-17', '15:32');
INSERT INTO `guoxuenews_guowai` VALUES ('1', '201291121487201', '重庆国学院', '甲骨文搞定小日本', 'guoxuenewsimages/2012-9-11/14_726020_d086404b4704840.jpg', '201291121487201.html', '<img src=\"/CQguoxue2/attached/image/20120911/20120911214810_482.jpg\" width=\"800\" height=\"707\" alt=\"\" />', 'xx', '103', '2012-9-11', '21:48');
INSERT INTO `guoxuenews_guowai` VALUES ('2', '201292120135116', '5', '55555555', 'guoxuenewsimages/2012-9-21/0612225229839.jpg', '201292120135116.html', '55555', 'xx', '100', '2012-9-21', '20:13');
INSERT INTO `guoxuenews_guowai` VALUES ('3', '201292120477594', 'yuiouio', 'uiouio', 'guoxuenewsimages/2012-9-21/3659666_234905046461_2.jpg', '201292120477594.html', 'yiouo', 'root', '100', '2012-9-21', '20:47');
INSERT INTO `guoxuenews_guowai` VALUES ('4', '201292120519589', 'afea', 'eqf', 'guoxuenewsimages/2012-9-21/3319135_164527387069_2.jpg', '201292120519589.html', 'faefaef', 'root', '101', '2012-9-21', '20:51');
INSERT INTO `guoxuenews_guowai` VALUES ('5', '201292120529138', 'faefefe', 'fadfefeafawefe', 'guoxuenewsimages/2012-9-21/20061116211433.jpg', '201292120529138.html', 'faefaef', '630', '103', '2012-9-21', '20:52');
INSERT INTO `guoxuenews_guowai` VALUES ('6', '2012101715339167', '版本', '版本', 'guoxuenewsimages/2012-10-17/4d43aa9ctcba5fdacafff&690.jpg', '2012101715339167.html', '版本', 'root', '0', '2012-10-17', '15:33');
INSERT INTO `guoxuenews_guowai` VALUES ('7', '2012101715337562', '版本', '八佰伴', 'guoxuenewsimages/2012-10-17/a_61534769.jpg', '2012101715337562.html', '版本', 'root', '0', '2012-10-17', '15:33');
INSERT INTO `guoxuepeixun_aihaozhepeixun` VALUES ('1', '20129112331774', '玉清', '2012-9-11', '23:03', '玉清', '玉清', 'xx', '5', '玉清');
INSERT INTO `guoxuepeixun_aihaozhepeixun` VALUES ('2', '20129112334821', '玉清2玉清', '2012-9-11', '23:03', '玉清2', '玉清', 'xx', '7', '玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('1', '20129112329511', '玉清', '2012-9-11', '23:02', '玉清', '玉清', 'xx', '1', '玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('2', '20129112326274', '玉清', '2012-9-11', '23:02', '玉清2', '玉清', 'xx', '3', '玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('3', '201210171744716', '玉玉清玉清玉清清玉清', '2012-10-17', '17:04', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span>', 'root', '1', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('4', '201210171747175', '玉玉清玉清玉清清玉清', '2012-10-17', '17:04', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清v</span></span>', 'root', '1', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('5', '201210171756932', '玉玉清玉清玉清清玉清', '2012-10-17', '17:05', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('6', '201210171754764', '玉玉清玉清玉清清玉清', '2012-10-17', '17:05', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('7', '201210171754899', '玉玉清玉清玉清清玉清', '2012-10-17', '17:05', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('8', '201210171752089', '玉玉清玉清玉清清玉清vv', '2012-10-17', '17:05', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span>', 'root', '3', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuepeixun_gongwuyuanpeixun` VALUES ('9', '2012101717207364', '玉清玉清清玉清玉玉清', '2012-10-17', '17:20', '玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清</span></span></span></span></span></span></span></span></span></span></span>', 'root', '0', '玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清');
INSERT INTO `guoxuepeixun_guoxueshizipeixun` VALUES ('1', '20129112333897', '玉清', '2012-9-11', '23:03', '玉清', '玉清', 'xx', '2', '玉清');
INSERT INTO `guoxuepeixun_guoxueshizipeixun` VALUES ('2', '20129112332545', '玉清2', '2012-9-11', '23:03', '玉清2', '玉清', 'xx', '3', '玉清');
INSERT INTO `guoxuepeixun_peixunchengguo` VALUES ('1', '20129112344196', '玉清', '2012-9-11', '23:04', '玉清2', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxuepeixun_peixunchengguo` VALUES ('2', '20129112341388', '玉清', '2012-9-11', '23:04', '玉清2玉清玉清', '玉清', 'xx', '3', '玉清玉清');
INSERT INTO `guoxuepeixun_peixunjihua` VALUES ('1', '20129112342902', '玉清2', '2012-9-11', '23:04', '玉清2', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxuepeixun_peixunjihua` VALUES ('2', '20129112344374', '玉清2玉清', '2012-9-11', '23:04', '玉清2玉清', '玉清', 'xx', '4', '玉清');
INSERT INTO `guoxuepeixun_peixunjihua` VALUES ('3', '201291512203036', 'aa', '2012-9-15', '12:20', 'rrr', '<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\" style=\"border:none;\">\r\n	<tbody>\r\n		<tr>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n			<td width=\"114\" valign=\"top\" style=\"border:solid black 1.0pt;\">\r\n				<p>\r\n					<span>ff</span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<span>&nbsp;</span> \r\n</p>', 'xx', '3', 'aaa');
INSERT INTO `guoxuepeixun_picture` VALUES ('1', '2012111420118887', 'guoxuepeixunimages/2012-11-14/2011426112818864.jpg', '公务员培训');
INSERT INTO `guoxuepeixun_picture` VALUES ('2', '20129112354363', 'guoxuepeixunimages/2012-9-11/4887ba7eee770dbd0ed7da75.jpg', '企事业管理干部培训');
INSERT INTO `guoxuepeixun_picture` VALUES ('3', '2012111420114400', 'guoxuepeixunimages/2012-11-14/64832898_615f58a4072d525b89081fc1b6b6382a.jpg', '国学师资培训');
INSERT INTO `guoxuepeixun_picture` VALUES ('4', '2012111420129947', 'guoxuepeixunimages/2012-11-14/33281489_e25418821200a0f7c8f9f81b22d21691.jpg', '爱好者培训');
INSERT INTO `guoxuepeixun_picture` VALUES ('5', '2012101816468778', 'guoxuepeixunimages/2012-10-18/4d43aa9ctcba5fdacafff&690.jpg', '培训计划');
INSERT INTO `guoxuepeixun_picture` VALUES ('6', '2012101816453447', 'guoxuepeixunimages/2012-10-18/4d43aa9ctcba5ee43c9b5&690.jpg', '培训成果');
INSERT INTO `guoxuepeixun_qishiyeguanliganbupeixun` VALUES ('1', '20129112338628', '玉清', '2012-9-11', '23:03', '玉清', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxuepeixun_qishiyeguanliganbupeixun` VALUES ('2', '20129112333603', '玉清2', '2012-9-11', '23:03', '玉清2', '玉清fafdsf', 'xx', '1', '玉清2');
INSERT INTO `guoxuetuiguang_nongchuntuiguang` VALUES ('1', '20129112367309', '玉清', '2012-9-11', '23:06', '玉清玉清玉清', '玉清玉清玉清', 'xx', '4', '玉清玉清');
INSERT INTO `guoxuetuiguang_picture` VALUES ('1', '2012101816545529', 'guoxuetuiguangimages/2012-10-18/a_61534767.jpg', '学校推广');
INSERT INTO `guoxuetuiguang_picture` VALUES ('2', '2012101816557378', 'guoxuetuiguangimages/2012-10-18/a_70745889.jpg', '社区推广');
INSERT INTO `guoxuetuiguang_picture` VALUES ('3', '20129112371988', 'guoxuetuiguangimages/2012-9-11/00129652e981ba470df3e3b6.jpg', '农村推广');
INSERT INTO `guoxuetuiguang_shequtuiguang` VALUES ('1', '20129112366719', '玉清', '2012-9-11', '23:06', '玉清玉清玉清玉清玉清', '玉清', 'xx', '5', '玉清');
INSERT INTO `guoxuetuiguang_shequtuiguang` VALUES ('2', '20129112366781', '玉清', '2012-9-11', '23:06', '玉清玉清玉清玉清玉清玉清玉清', '玉清玉清玉清', 'xx', '2', '玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('1', '20129112365405', '玉清', '2012-9-11', '23:06', '玉清玉清玉清', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('2', '20129112361528', '玉清', '2012-9-11', '23:06', '玉清玉清', '玉清', 'xx', '3', '玉清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('3', '201210171761032', '玉玉清玉清玉清清玉清', '2012-10-17', '17:06', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('4', '201210171764701', '玉玉清玉清玉清清玉清', '2012-10-17', '17:06', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('5', '201210171773556', '玉玉清玉清玉清清玉清', '2012-10-17', '17:07', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('6', '201210171778821', '玉玉清玉清玉清清玉清', '2012-10-17', '17:07', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span>', 'root', '0', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('7', '201210171777013', '玉玉清玉清玉清清玉清', '2012-10-17', '17:07', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span></span></span></span></span></span></span></span></span>', 'root', '1', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('8', '201210171779524', '玉玉清玉清玉清清玉清', '2012-10-17', '17:07', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('9', '201210171786754', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '2012-10-17', '17:08', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span></span>', 'root', '2', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `guoxuetuiguang_xuexiaotuiguang` VALUES ('10', '201210171786266', '玉玉清玉清玉清清玉清', '2012-10-17', '17:08', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_haiwaiyanjiu` VALUES ('1', '20129112382270', '玉清', '2012-9-11', '23:08', '玉清', '玉清', 'xx', '1', '玉清');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('1', '20129112376864', '玉清', '2012-9-11', '23:07', '玉清玉清玉清', '玉清', 'xx', '1', '玉清');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('2', '20129112373975', '玉清', '2012-9-11', '23:07', '玉清玉清玉清玉清玉清', '玉清玉清玉清玉清', 'xx', '2', '玉清');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('3', '2012101716508116', 'ff', '2012-10-17', '16:50', 'ffff', 'ff', 'root', '0', 'ff');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('4', '2012101716508263', 'gg', '2012-10-17', '16:50', 'gg', 'gg', 'root', '0', 'gg');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('5', '2012101716502283', 'ee', '2012-10-17', '16:50', 'ee', 'eee', 'root', '0', 'ee');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('6', '2012101716507979', 'aa', '2012-10-17', '16:50', 'aa', 'aa', 'root', '0', 'aa');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('7', '2012101716503555', 'bb', '2012-10-17', '16:50', 'bb', 'bbb', 'root', '0', 'bb');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('8', '2012101716506322', 'afe', '2012-10-17', '16:50', 'eeeaaae', 'afea', 'root', '0', 'afe');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('9', '2012101716505635', 'r', '2012-10-17', '16:50', 'nn', 'fef', 'root', '0', 'fe');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('10', '2012101716517518', 'rer', '2012-10-17', '16:51', 'ter', 'rer', 'root', '0', 'er');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('11', '2012101716511881', 'te', '2012-10-17', '16:51', 'yte', 'ert', 'root', '0', 'rty');
INSERT INTO `guoxueyanjiu_jingdianyanjiu` VALUES ('12', '2012101716514307', 'gth', '2012-10-17', '16:51', 'hgt', 'fe', 'root', '0', 'fe');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('1', '20129112374607', '玉清', '2012-9-11', '23:07', '玉玉清清玉清', '玉清', 'xx', '0', '玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('2', '20129112376226', '', '2012-9-11', '23:07', '玉玉清玉清玉清清玉清', '玉清', 'xx', '3', '玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('3', '2012101716579262', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('4', '2012101716577462', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('5', '2012101716575398', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('6', '2012101716578284', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('7', '2012101716579060', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('8', '2012101716571972', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `guoxueyanjiu_zuixinyanjiu` VALUES ('9', '2012101716573282', '玉玉清玉清玉清清玉清', '2012-10-17', '16:57', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `ordinary_users_log` VALUES ('1', '2012-9-24', '12:42', '111', '修改了用户信息', '成功');
INSERT INTO `ordinary_users_log` VALUES ('2', '2012-9-24', '12:42', '111', '在国学培训报名', '成功');
INSERT INTO `ordinary_users_log` VALUES ('3', '2012-9-24', '12:53', 'fpx12', '登陆了用户报名系统', '成功');
INSERT INTO `ordinary_users_log` VALUES ('4', '2012-10-2', '17:44', '111', '登陆了用户报名系统', '成功');
INSERT INTO `ordinary_users_log` VALUES ('5', '2012-10-2', '17:45', '111', '在国学培训报名', '成功');
INSERT INTO `ordinary_users_log` VALUES ('6', '2012-10-17', '22:22', '111', '登陆了用户报名系统', '成功');
INSERT INTO `other_quweiguoxue` VALUES ('1', '20129112387921', '让人', '2012-9-11', '23:08', '玉清玉清让人', '让人', 'xx', '559', '让人');
INSERT INTO `other_quweiguoxue` VALUES ('2', '20129112395347', '让人', '2012-9-11', '23:09', '让人v', 'KindEditor', 'xx', '558', 'v');
INSERT INTO `other_quweiguoxue` VALUES ('3', '2012101715433719', '八佰伴', '2012-10-17', '15:43', '你你你', '方法', 'root', '0', '方法');
INSERT INTO `other_quweiguoxue` VALUES ('4', '2012101715439369', 'ffffff', '2012-10-17', '15:43', 'ffffff', 'ffffff', 'root', '0', 'ffffff');
INSERT INTO `other_quweiguoxue` VALUES ('5', '2012101715435257', '凤飞飞', '2012-10-17', '15:43', '方法方法鹅鹅鹅', '份额份额恶风', 'root', '0', '份额份额');
INSERT INTO `other_quweiguoxue` VALUES ('6', '201210171702100', '玉玉清玉清玉清清玉清', '2012-10-17', '17:00', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '0', '玉玉清玉清玉清清玉清');
INSERT INTO `other_quweiguoxue` VALUES ('7', '201210171703224', '玉玉清玉清玉清清玉清', '2012-10-17', '17:00', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '1', '玉玉清玉清玉清清玉清');
INSERT INTO `other_quweiguoxue` VALUES ('8', '201210171707309', '玉玉清玉清玉清清玉清', '2012-10-17', '17:00', '玉玉清玉清玉清清玉清', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清玉清玉清清玉清</span>', 'root', '2', '玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清');
INSERT INTO `other_youqinglianjie` VALUES ('1', '西南大学', 'http://www.swu.edu.cn', 'xx');
INSERT INTO `other_youqinglianjie` VALUES ('2', '新浪', 'http://www.sina.com', 'xx');
INSERT INTO `other_youqinglianjie` VALUES ('4', '百度', 'http://baidu.com', 'xx');
INSERT INTO `other_youqinglianjie` VALUES ('5', '凤凰', 'http://www.ifeng.com', 'xx');
INSERT INTO `other_youqinglianjie` VALUES ('6', '淘宝', 'http://www.taobao.com', 'xx');
INSERT INTO `peixunfangan_gongwuyuan` VALUES ('2', '国学概论', '应淑英', '寒假', '国学院', '10', '14点');
INSERT INTO `peixunfangan_qishiyeguanli` VALUES ('1', '国学概论', '许鹏飞', '暑假', '国学院', '10', '8点');
INSERT INTO `peixunfangan_qishiyeguanli` VALUES ('4', '国学概论', '阿飞', '暑假', '国学院', '10', '8点');
INSERT INTO `pictureshow` VALUES ('1', '201291121555337', 'pictureshowimages/2012-9-11/21-55/0909292115ed2aeab96ae9bf34.jpg', '2012-9-11', '21:55', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow` VALUES ('2', '201291121555827', 'pictureshowimages/2012-9-11/21-55/1001091406feacd84a902f521a.jpg', '2012-9-11', '21:55', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('3', '201291121556561', 'pictureshowimages/2012-9-11/21-55/1001091406bce3304d9cf45930.jpg', '2012-9-11', '21:55', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow` VALUES ('5', '20129112233163', 'pictureshowimages/2012-9-11/22-03/104_14783056_94cbb2aa0078961.jpg', '2012-9-11', '22:03', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('8', '201291122323944', 'pictureshowimages/2012-9-11/22-32/538bd6f6hbdea634f083e&690.jpg', '2012-9-11', '22:32', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('9', '201291122331605', 'pictureshowimages/2012-9-11/22-33/2009227111958887_2.jpg', '2012-9-11', '22:33', 'xx', 'xxx', '重庆国学院');
INSERT INTO `pictureshow` VALUES ('11', '201291122333198', 'pictureshowimages/2012-9-11/22-33/09092921151a491793512c6daa.jpg', '2012-9-11', '22:33', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('12', '201291122348897', 'pictureshowimages/2012-9-11/22-34/1001091406feacd84a902f521a.jpg', '2012-9-11', '22:34', 'xx', 'xxx', '重庆国学院');
INSERT INTO `pictureshow` VALUES ('13', '201291122361309', 'pictureshowimages/2012-9-11/22-36/4014934_212915004583_2.jpg', '2012-9-11', '22:36', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('14', '201291122363761', 'pictureshowimages/2012-9-11/22-36/708390_1282580640DMBk.jpg', '2012-9-11', '22:36', 'xx', 'xxx', '重庆国学');
INSERT INTO `pictureshow` VALUES ('19', '201291122371924', 'pictureshowimages/2012-9-11/22-37/201191817950858.jpg', '2012-9-11', '22:37', 'xx', 'xxx', '重庆国学院');
INSERT INTO `pictureshow` VALUES ('20', '201291122371122', 'pictureshowimages/2012-9-11/22-37/2008121013236571_2.jpg', '2012-9-11', '22:37', 'xx', 'xxx', '重庆国学院');
INSERT INTO `pictureshow` VALUES ('21', '201291318175323', 'pictureshowimages/2012-9-13/18-17/104_14783056_94cbb2aa0078961.jpg', '2012-9-13', '18:17', 'xx', 'xxx', '西南大学重庆国学院');
INSERT INTO `pictureshow` VALUES ('22', '201291318292416', 'pictureshowimages/2012-9-13/18-29/4887ba7eee770dbd0ed7da75.jpg', '2012-9-13', '18:29', 'xx', 'xxx', '2222');
INSERT INTO `pictureshow` VALUES ('23', '201292121512230', 'pictureshowimages/2012-9-21/21-51/7f56771e42b066711ad576a1.jpg', '2012-9-21', '21:51', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow` VALUES ('25', '201292121562264', 'pictureshowimages/2012-9-21/21-56/f5e69445d71c1c76869473a6.jpg', '2012-9-21', '21:56', 'xx', 'xxx', '重庆国学院');
INSERT INTO `pictureshow` VALUES ('26', '20129220529574', 'pictureshowimages/2012-9-22/00-52/090929211581a95193053b06f2.jpg', '2012-9-22', '00:52', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow` VALUES ('27', '2012111918535390', 'pictureshowimages/2012-11-19/18-53/0.jpg', '2012-11-19', '18:53', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow` VALUES ('28', '2012111919465402', 'pictureshowimages/2012-11-19/19-46/5d760184g7b0037dcf980&690.jpg', '2012-11-19', '19:46', 'xx', 'xxx', 'afadfadfa');
INSERT INTO `pictureshow_xiangce` VALUES ('2', '重庆国学院', '重庆国学院', 'xxx', '2012-9-11', '21:54');
INSERT INTO `pictureshow_xiangce` VALUES ('3', '重庆国学', '重庆国学院', 'xxx', '2012-9-11', '21:54');
INSERT INTO `pictureshow_xiangce` VALUES ('5', '2222', '重庆国学f', 'xxx', '2012-9-11', '22:34');
INSERT INTO `pictureshow_xiangce` VALUES ('6', 'afadfadfa', 'fafdafa', '630', '2012-9-21', '21:27');
INSERT INTO `system_users` VALUES ('1', 'root', 'root', '1');
INSERT INTO `system_users` VALUES ('5', 'seava', 'seava', '2');
INSERT INTO `system_users` VALUES ('6', '630', '630', '3');
INSERT INTO `system_users` VALUES ('9', 'ggg', '0122', '2');
INSERT INTO `system_users` VALUES ('10', 'afeafe', 'aeafe', '2');
INSERT INTO `system_users_log` VALUES ('1', '2012-9-20', '22:14', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('2', '2012-9-20', '22:17', 'seava', '普通权限/发布 修改 删除', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('3', '2012-9-21', '13:03', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('4', '2012-9-21', '13:21', 'root', '超级权限/操作所有', '添加了权限为 普通权限拥有发布/修改/删除内容权限的系统用户456', '成功');
INSERT INTO `system_users_log` VALUES ('5', '2012-9-21', '13:47', 'root', '超级权限/操作所有', '对系统用户456的密码或者权限做了修改', '成功');
INSERT INTO `system_users_log` VALUES ('6', '2012-9-21', '13:48', 'root', '超级权限/操作所有', '将系统用户456的用户名改为589对密码和权限也可能做了修改', '成功');
INSERT INTO `system_users_log` VALUES ('7', '2012-9-21', '13:49', 'root', '超级权限/操作所有', '删除普通权限(拥有发布/修改/删除内容权限)的系统用户589', '成功');
INSERT INTO `system_users_log` VALUES ('8', '2012-9-21', '13:50', 'root', '超级权限/操作所有', '对系统用户123的密码或者权限做了修改', '成功');
INSERT INTO `system_users_log` VALUES ('9', '2012-9-21', '13:52', 'root', '超级权限/操作所有', '删除普通权限(拥有发布内容权限)的系统用户123', '成功');
INSERT INTO `system_users_log` VALUES ('10', '2012-9-21', '14:45', null, '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('11', '2012-9-21', '15:12', '630', '普通权限/发布 ', '在学院新闻版块发布新闻:0101', '成功');
INSERT INTO `system_users_log` VALUES ('12', '2012-9-21', '15:13', 'seava', '普通权限/发布 修改 删除', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('13', '2012-9-21', '15:15', null, '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('14', '2012-9-21', '15:19', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('15', '2012-9-21', '15:55', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：国学院新闻 ', '成功');
INSERT INTO `system_users_log` VALUES ('16', '2012-9-21', '15:55', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:202002', '成功');
INSERT INTO `system_users_log` VALUES ('17', '2012-9-21', '15:56', 'root', '超级权限/操作所有', '在学院新闻版块删除新闻:null', '成功');
INSERT INTO `system_users_log` VALUES ('18', '2012-9-21', '15:57', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:898484', '成功');
INSERT INTO `system_users_log` VALUES ('19', '2012-9-21', '15:58', 'root', '超级权限/操作所有', '在学院新闻版块删除新闻:yyy ', '成功');
INSERT INTO `system_users_log` VALUES ('20', '2012-9-21', '16:02', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('21', '2012-9-21', '16:15', 'root', '超级权限/操作所有', '在通知版块发布:重要通知', '成功');
INSERT INTO `system_users_log` VALUES ('22', '2012-9-21', '16:15', '630', '普通权限/发布 ', '在通知版块发布:紧急通知', '成功');
INSERT INTO `system_users_log` VALUES ('23', '2012-9-21', '17:15', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('24', '2012-9-21', '17:16', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('25', '2012-9-21', '20:11', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('26', '2012-9-21', '20:12', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('27', '2012-9-21', '20:13', '630', '普通权限/发布 ', '在国学新闻版块发布国内新闻:2222222', '成功');
INSERT INTO `system_users_log` VALUES ('28', '2012-9-21', '20:13', '630', '普通权限/发布 ', '在国学新闻版块发布国外新闻:55555555', '成功');
INSERT INTO `system_users_log` VALUES ('29', '2012-9-21', '20:34', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：898484 ', '成功');
INSERT INTO `system_users_log` VALUES ('30', '2012-9-21', '20:35', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：202002 ', '成功');
INSERT INTO `system_users_log` VALUES ('31', '2012-9-21', '20:40', 'root', '超级权限/操作所有', '在国学新闻版块发布国外新闻:01404', '成功');
INSERT INTO `system_users_log` VALUES ('32', '2012-9-21', '20:40', 'root', '超级权限/操作所有', '在国学新闻版块删除国内新闻:null', '成功');
INSERT INTO `system_users_log` VALUES ('33', '2012-9-21', '20:40', 'root', '超级权限/操作所有', '在国学新闻版块删除国外新闻:null', '成功');
INSERT INTO `system_users_log` VALUES ('34', '2012-9-21', '20:40', 'root', '超级权限/操作所有', '在国学新闻版块修改国外新闻:55555555', '成功');
INSERT INTO `system_users_log` VALUES ('35', '2012-9-21', '20:44', 'root', '超级权限/操作所有', '在国学新闻版块删除国内新闻:null', '成功');
INSERT INTO `system_users_log` VALUES ('36', '2012-9-21', '20:44', 'root', '超级权限/操作所有', '在学院新闻版块删除新闻:hhh', '成功');
INSERT INTO `system_users_log` VALUES ('37', '2012-9-21', '20:46', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:957578', '成功');
INSERT INTO `system_users_log` VALUES ('38', '2012-9-21', '20:46', 'root', '超级权限/操作所有', '在国学新闻版块发布国内新闻:8e567', '成功');
INSERT INTO `system_users_log` VALUES ('39', '2012-9-21', '20:47', 'root', '超级权限/操作所有', '在国学新闻版块发布国外新闻:uiouio', '成功');
INSERT INTO `system_users_log` VALUES ('40', '2012-9-21', '20:48', '630', '普通权限/发布 ', '在国学新闻版块发布国内新闻:jhjfjffhjfjfhjfhjfhj', '成功');
INSERT INTO `system_users_log` VALUES ('41', '2012-9-21', '20:50', 'root', '超级权限/操作所有', '在国学新闻版块修改国内新闻:jhjfjffhjfjfhjfhjfhj', '成功');
INSERT INTO `system_users_log` VALUES ('42', '2012-9-21', '20:51', 'root', '超级权限/操作所有', '在国学新闻版块发布国内新闻:004524', '成功');
INSERT INTO `system_users_log` VALUES ('43', '2012-9-21', '20:51', 'root', '超级权限/操作所有', '在国学新闻版块发布国外新闻:eqf', '成功');
INSERT INTO `system_users_log` VALUES ('44', '2012-9-21', '20:52', '630', '普通权限/发布 ', '在国学新闻版块发布国内新闻:eaef', '成功');
INSERT INTO `system_users_log` VALUES ('45', '2012-9-21', '20:52', '630', '普通权限/发布 ', '在国学新闻版块发布国内新闻:feaf', '成功');
INSERT INTO `system_users_log` VALUES ('46', '2012-9-21', '20:52', '630', '普通权限/发布 ', '在国学新闻版块发布国外新闻:fadfefeafawefe', '成功');
INSERT INTO `system_users_log` VALUES ('47', '2012-9-21', '21:27', '630', '普通权限/发布 ', '在图片版块创建相册:afadfadfa', '成功');
INSERT INTO `system_users_log` VALUES ('48', '2012-9-22', '00:12', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('49', '2012-9-22', '00:12', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('50', '2012-9-22', '00:13', 'root', '超级权限/操作所有', '在国学观止版块发布文章:ggggggg', '成功');
INSERT INTO `system_users_log` VALUES ('51', '2012-9-22', '00:16', 'root', '超级权限/操作所有', '在国学观止版块修改文章:ggggggg', '成功');
INSERT INTO `system_users_log` VALUES ('52', '2012-9-22', '00:16', 'root', '超级权限/操作所有', '在国学观止版块修改文章:蒙学是这样的！', '成功');
INSERT INTO `system_users_log` VALUES ('53', '2012-9-22', '00:34', '630', '普通权限/发布 ', '在国学观止版块小学栏目发布文章:fad', '成功');
INSERT INTO `system_users_log` VALUES ('54', '2012-9-22', '00:34', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:fadfafd', '成功');
INSERT INTO `system_users_log` VALUES ('55', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('56', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('57', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('58', '2012-9-22', '00:37', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目删除文章:ggggggg', '成功');
INSERT INTO `system_users_log` VALUES ('59', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('60', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('61', '2012-9-22', '00:51', 'seava', '普通权限/发布 修改 删除', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('62', '2012-9-22', '01:00', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目修改文章:经史子集东东', '成功');
INSERT INTO `system_users_log` VALUES ('63', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('64', '2012-9-22', '01:23', 'root', '超级权限/操作所有', '在国学观止版块国粹国艺栏目修改文章:玉清', '成功');
INSERT INTO `system_users_log` VALUES ('65', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('66', '2012-9-22', '14:27', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('67', '2012-9-22', '14:28', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目修改文章:蒙学是这样的！', '成功');
INSERT INTO `system_users_log` VALUES ('68', '2012-9-22', '14:29', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:fadfafd', '成功');
INSERT INTO `system_users_log` VALUES ('69', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('70', '2012-9-22', '14:30', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:fadfafd', '成功');
INSERT INTO `system_users_log` VALUES ('71', '2012-9-22', '14:30', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目修改文章:蒙学？', '成功');
INSERT INTO `system_users_log` VALUES ('72', '2012-9-22', '14:31', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:fadfafd', '成功');
INSERT INTO `system_users_log` VALUES ('73', '2012-9-22', '14:31', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:eeea', '成功');
INSERT INTO `system_users_log` VALUES ('74', '2012-9-22', '14:32', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:eeea', '成功');
INSERT INTO `system_users_log` VALUES ('75', null, null, null, null, null, null);
INSERT INTO `system_users_log` VALUES ('76', '2012-9-22', '14:32', 'root', '超级权限/操作所有', '在国学观止版块小学栏目修改文章:小学古代的', '成功');
INSERT INTO `system_users_log` VALUES ('77', '2012-9-22', '14:35', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目修改文章:经史子集东东', '成功');
INSERT INTO `system_users_log` VALUES ('78', '2012-9-22', '14:35', 'root', '超级权限/操作所有', '在国学观止版块国粹国艺栏目修改文章:国粹过亿', '成功');
INSERT INTO `system_users_log` VALUES ('79', '2012-9-22', '14:36', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('80', '2012-9-22', '14:54', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('81', '2012-9-22', '14:55', 'root', '超级权限/操作所有', '在国学观止版块国学工具栏目修改文章:国学工具2', '成功');
INSERT INTO `system_users_log` VALUES ('82', '2012-9-22', '15:08', 'root', '超级权限/操作所有', '在国学观止版块推荐读物栏目修改文章:uu', '成功');
INSERT INTO `system_users_log` VALUES ('83', '2012-9-22', '15:20', 'root', '超级权限/操作所有', '在国学观止版块国学人物栏目修改文章:饿啊', '成功');
INSERT INTO `system_users_log` VALUES ('84', '2012-9-22', '15:54', 'root', '超级权限/操作所有', '在国学培训版块公务员栏目修改文章:玉清2', '成功');
INSERT INTO `system_users_log` VALUES ('85', '2012-9-22', '16:12', 'root', '超级权限/操作所有', '在国学培训版块企事业管理干部培训栏目修改文章:玉清2', '成功');
INSERT INTO `system_users_log` VALUES ('86', '2012-9-22', '16:29', 'root', '超级权限/操作所有', '在国学培训版块国学师资培训栏目修改文章:玉清2', '成功');
INSERT INTO `system_users_log` VALUES ('87', '2012-9-22', '16:43', 'root', '超级权限/操作所有', '在国学培训版块爱好者培训栏目修改文章:玉清2', '成功');
INSERT INTO `system_users_log` VALUES ('88', '2012-9-23', '13:56', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('89', '2012-9-23', '13:57', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('90', '2012-9-23', '14:14', 'root', '超级权限/操作所有', '在国学版块推广学校推广栏目修改文章:玉清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('91', '2012-9-23', '14:37', 'root', '超级权限/操作所有', '在国学版块推广社区推广栏目修改文章:玉清玉清玉清玉清玉清玉清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('92', '2012-9-23', '14:56', 'root', '超级权限/操作所有', '在国学版块推广农村推广栏目修改文章:玉清玉清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('93', '2012-9-23', '15:24', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('94', '2012-9-23', '16:11', 'root', '超级权限/操作所有', '在国学研究版块海外研究栏目修改文章:玉清', '成功');
INSERT INTO `system_users_log` VALUES ('95', '2012-9-23', '16:32', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('96', '2012-9-23', '16:52', 'root', '超级权限/操作所有', '在国学教育版块网络教育栏目修改文章:应用', '成功');
INSERT INTO `system_users_log` VALUES ('97', '2012-9-23', '16:52', 'root', '超级权限/操作所有', '在国学教育版块辅修二专教育栏目修改文章:玉清玉清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('98', '2012-9-23', '17:32', 'root', '超级权限/操作所有', '添加了友情链接:淘宝网址： http://www.taobao.com', '成功');
INSERT INTO `system_users_log` VALUES ('99', '2012-9-23', '17:32', 'root', '超级权限/操作所有', '删除友情链接:淘宝 的网址:http://www.taobao.com', '成功');
INSERT INTO `system_users_log` VALUES ('100', '2012-9-23', '17:32', 'root', '超级权限/操作所有', '删除友情链接:淘宝 的网址:http://www.taobao.com2', '成功');
INSERT INTO `system_users_log` VALUES ('101', '2012-9-23', '17:32', 'root', '超级权限/操作所有', '删除友情链接:拜拜', '成功');
INSERT INTO `system_users_log` VALUES ('102', '2012-9-23', '17:32', 'root', '超级权限/操作所有', '删除友情链接:淘宝 的网址:http://www.taobao.com', '成功');
INSERT INTO `system_users_log` VALUES ('103', '2012-9-23', '17:39', 'root', '超级权限/操作所有', '修改友情链接:新浪 的网址:http://www.sina.com', '成功');
INSERT INTO `system_users_log` VALUES ('104', '2012-9-23', '19:34', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('105', '2012-9-23', '19:35', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('106', '2012-9-23', '20:08', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('107', '2012-9-23', '21:57', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('108', '2012-9-23', '22:10', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('109', '2012-9-24', '12:18', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('110', '2012-9-24', '12:57', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('111', '2012-9-24', '13:03', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('112', '2012-9-24', '13:20', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('113', '2012-9-24', '13:21', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('114', '2012-9-24', '13:21', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('115', '2012-9-24', '13:22', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('116', '2012-9-24', '13:22', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('117', '2012-9-24', '13:23', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('118', '2012-9-24', '13:24', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('119', '2012-9-24', '13:25', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('120', '2012-9-24', '13:26', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('121', '2012-9-24', '13:26', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('122', '2012-9-24', '13:27', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('123', '2012-9-24', '13:27', 'seava', '普通权限/发布 修改 删除', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('124', '2012-9-24', '17:34', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('125', '2012-9-24', '21:25', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('126', '2012-9-24', '22:21', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('127', '2012-9-25', '12:05', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('128', '2012-9-25', '19:44', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('129', '2012-9-25', '20:55', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('130', '2012-9-25', '20:59', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('131', '2012-9-25', '21:01', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的办公室', '成功');
INSERT INTO `system_users_log` VALUES ('132', '2012-9-25', '21:02', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的fdsaf', '成功');
INSERT INTO `system_users_log` VALUES ('133', '2012-9-25', '21:03', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的fdsaf', '成功');
INSERT INTO `system_users_log` VALUES ('134', '2012-9-25', '21:05', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是行政机构的学院介绍', '成功');
INSERT INTO `system_users_log` VALUES ('135', '2012-9-25', '21:05', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是行政机构的办公室', '成功');
INSERT INTO `system_users_log` VALUES ('136', '2012-9-25', '21:05', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是行政机构的研究部', '成功');
INSERT INTO `system_users_log` VALUES ('137', '2012-9-25', '21:05', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是行政机构的推广部', '成功');
INSERT INTO `system_users_log` VALUES ('138', '2012-9-25', '21:06', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是行政机构的培训部', '成功');
INSERT INTO `system_users_log` VALUES ('139', '2012-9-25', '21:06', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的重庆文化研究所', '成功');
INSERT INTO `system_users_log` VALUES ('140', '2012-9-25', '21:06', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的重庆非遗研究所 ', '成功');
INSERT INTO `system_users_log` VALUES ('141', '2012-9-25', '21:07', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的历史地理研究所', '成功');
INSERT INTO `system_users_log` VALUES ('142', '2012-9-25', '21:07', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的国学文献研究所', '成功');
INSERT INTO `system_users_log` VALUES ('143', '2012-9-25', '21:07', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的宗教研究所', '成功');
INSERT INTO `system_users_log` VALUES ('144', '2012-9-25', '21:07', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的古典诗词研究所', '成功');
INSERT INTO `system_users_log` VALUES ('145', '2012-9-25', '21:08', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的中国古代社会思潮与文化研究所', '成功');
INSERT INTO `system_users_log` VALUES ('146', '2012-9-25', '21:08', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的中国书法研究所', '成功');
INSERT INTO `system_users_log` VALUES ('147', '2012-9-25', '21:08', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的吴宓研究所', '成功');
INSERT INTO `system_users_log` VALUES ('148', '2012-9-25', '21:09', 'root', '超级权限/操作所有', '在行政机构/研究单位该板块添加类别是研究单位的中华经典诵读研究所', '成功');
INSERT INTO `system_users_log` VALUES ('149', '2012-9-25', '21:09', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的重庆文化研究所', '成功');
INSERT INTO `system_users_log` VALUES ('150', '2012-9-25', '21:09', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的推广部', '成功');
INSERT INTO `system_users_log` VALUES ('151', '2012-9-25', '22:15', 'null', 'null', '修改行政机构/研究单位中的学院介绍', '成功');
INSERT INTO `system_users_log` VALUES ('152', '2012-9-25', '22:15', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('153', '2012-9-25', '22:15', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的学院介绍', '成功');
INSERT INTO `system_users_log` VALUES ('154', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的办公室', '成功');
INSERT INTO `system_users_log` VALUES ('155', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的研究部', '成功');
INSERT INTO `system_users_log` VALUES ('156', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的推广部', '成功');
INSERT INTO `system_users_log` VALUES ('157', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的推广部', '成功');
INSERT INTO `system_users_log` VALUES ('158', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的培训部', '成功');
INSERT INTO `system_users_log` VALUES ('159', '2012-9-25', '22:16', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的重庆文化研究所', '成功');
INSERT INTO `system_users_log` VALUES ('160', '2012-9-25', '22:45', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的历史地理研究所', '成功');
INSERT INTO `system_users_log` VALUES ('161', '2012-9-25', '23:00', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的学院介绍', '成功');
INSERT INTO `system_users_log` VALUES ('162', '2012-9-25', '23:00', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的学院介绍', '成功');
INSERT INTO `system_users_log` VALUES ('163', '2012-9-25', '23:03', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的办公室', '成功');
INSERT INTO `system_users_log` VALUES ('164', '2012-9-26', '12:21', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('165', '2012-9-26', '12:21', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的办公室', '成功');
INSERT INTO `system_users_log` VALUES ('166', '2012-9-26', '12:21', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的研究部', '成功');
INSERT INTO `system_users_log` VALUES ('167', '2012-9-26', '12:21', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的推广部', '成功');
INSERT INTO `system_users_log` VALUES ('168', '2012-9-26', '12:21', 'root', '超级权限/操作所有', '修改行政机构/研究单位中的培训部', '成功');
INSERT INTO `system_users_log` VALUES ('169', '2012-10-2', '15:49', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('170', '2012-10-2', '15:54', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('171', '2012-10-2', '17:41', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('172', '2012-10-2', '17:42', 'seava', '普通权限/发布 修改 删除', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('173', '2012-10-2', '17:43', '630', '普通权限/发布', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('174', '2012-10-2', '17:44', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('175', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('176', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('177', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('178', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('179', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('180', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('181', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('182', '2012-10-2', '17:45', 'root', '超级权限/操作所有', '审核未通过了编号为:6676201291413258816的用户报名', '成功');
INSERT INTO `system_users_log` VALUES ('183', '2012-10-3', '20:24', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('184', '2012-10-3', '20:25', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:大大大', '成功');
INSERT INTO `system_users_log` VALUES ('185', '2012-10-3', '20:25', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:额发', '成功');
INSERT INTO `system_users_log` VALUES ('186', '2012-10-3', '20:25', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:阿尔', '成功');
INSERT INTO `system_users_log` VALUES ('187', '2012-10-3', '20:25', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:饿啊', '成功');
INSERT INTO `system_users_log` VALUES ('188', '2012-10-4', '10:35', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('189', '2012-10-4', '11:10', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('190', '2012-10-4', '13:09', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('191', '2012-10-7', '21:52', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('192', '2012-10-16', '00:43', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('193', '2012-10-17', '15:00', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('194', '2012-10-17', '15:01', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:448444555', '成功');
INSERT INTO `system_users_log` VALUES ('195', '2012-10-17', '15:31', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('196', '2012-10-17', '15:31', 'root', '超级权限/操作所有', '在国学新闻版块发布国内新闻:发', '成功');
INSERT INTO `system_users_log` VALUES ('197', '2012-10-17', '15:32', 'root', '超级权限/操作所有', '在国学新闻版块发布国内新闻:eee', '成功');
INSERT INTO `system_users_log` VALUES ('198', '2012-10-17', '15:32', 'root', '超级权限/操作所有', '在国学新闻版块发布国内新闻:xxx', '成功');
INSERT INTO `system_users_log` VALUES ('199', '2012-10-17', '15:33', 'root', '超级权限/操作所有', '在国学新闻版块发布国外新闻:版本', '成功');
INSERT INTO `system_users_log` VALUES ('200', '2012-10-17', '15:33', 'root', '超级权限/操作所有', '在国学新闻版块发布国外新闻:八佰伴', '成功');
INSERT INTO `system_users_log` VALUES ('201', '2012-10-17', '15:34', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:xxx', '成功');
INSERT INTO `system_users_log` VALUES ('202', '2012-10-17', '15:34', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:踩踩踩', '成功');
INSERT INTO `system_users_log` VALUES ('203', '2012-10-17', '15:34', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:xxcc', '成功');
INSERT INTO `system_users_log` VALUES ('204', '2012-10-17', '15:34', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:二二八', '成功');
INSERT INTO `system_users_log` VALUES ('205', '2012-10-17', '15:35', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:二二八', '成功');
INSERT INTO `system_users_log` VALUES ('206', '2012-10-17', '15:35', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:分啊', '成功');
INSERT INTO `system_users_log` VALUES ('207', '2012-10-17', '15:35', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:你你你', '成功');
INSERT INTO `system_users_log` VALUES ('208', '2012-10-17', '15:35', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:mm们', '成功');
INSERT INTO `system_users_log` VALUES ('209', '2012-10-17', '15:36', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:mm们mm们', '成功');
INSERT INTO `system_users_log` VALUES ('210', '2012-10-17', '15:36', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:们么么么么', '成功');
INSERT INTO `system_users_log` VALUES ('211', '2012-10-17', '15:36', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:么么么么', '成功');
INSERT INTO `system_users_log` VALUES ('212', '2012-10-17', '15:36', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:么么么么', '成功');
INSERT INTO `system_users_log` VALUES ('213', '2012-10-17', '15:36', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:么么么么', '成功');
INSERT INTO `system_users_log` VALUES ('214', '2012-10-17', '15:37', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:mm们', '成功');
INSERT INTO `system_users_log` VALUES ('215', '2012-10-17', '15:37', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:么么么么', '成功');
INSERT INTO `system_users_log` VALUES ('216', '2012-10-17', '15:37', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:mm们mm们', '成功');
INSERT INTO `system_users_log` VALUES ('217', '2012-10-17', '15:43', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:你你你', '成功');
INSERT INTO `system_users_log` VALUES ('218', '2012-10-17', '15:43', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:ffffff', '成功');
INSERT INTO `system_users_log` VALUES ('219', '2012-10-17', '15:43', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:方法方法鹅鹅鹅', '成功');
INSERT INTO `system_users_log` VALUES ('220', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:ffff', '成功');
INSERT INTO `system_users_log` VALUES ('221', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:gg', '成功');
INSERT INTO `system_users_log` VALUES ('222', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:ee', '成功');
INSERT INTO `system_users_log` VALUES ('223', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:aa', '成功');
INSERT INTO `system_users_log` VALUES ('224', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:bb', '成功');
INSERT INTO `system_users_log` VALUES ('225', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:eeeaaae', '成功');
INSERT INTO `system_users_log` VALUES ('226', '2012-10-17', '16:50', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:nn', '成功');
INSERT INTO `system_users_log` VALUES ('227', '2012-10-17', '16:51', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:ter', '成功');
INSERT INTO `system_users_log` VALUES ('228', '2012-10-17', '16:51', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:yte', '成功');
INSERT INTO `system_users_log` VALUES ('229', '2012-10-17', '16:51', 'root', '超级权限/操作所有', '在国学研究版块经典研究栏目发布文章:hgt', '成功');
INSERT INTO `system_users_log` VALUES ('230', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('231', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('232', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('233', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('234', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('235', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('236', '2012-10-17', '16:57', 'root', '超级权限/操作所有', '在国学研究版块最新研究栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('237', '2012-10-17', '17:00', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('238', '2012-10-17', '17:00', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('239', '2012-10-17', '17:00', 'root', '超级权限/操作所有', '在趣味国学版块发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('240', '2012-10-17', '17:02', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('241', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('242', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('243', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('244', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块小学栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('245', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('246', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('247', '2012-10-17', '17:03', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('248', '2012-10-17', '17:04', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('249', '2012-10-17', '17:04', 'root', '超级权限/操作所有', '在国学观止版块经史子集栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('250', '2012-10-17', '17:04', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('251', '2012-10-17', '17:04', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('252', '2012-10-17', '17:05', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('253', '2012-10-17', '17:05', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('254', '2012-10-17', '17:05', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('255', '2012-10-17', '17:05', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('256', '2012-10-17', '17:06', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('257', '2012-10-17', '17:06', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('258', '2012-10-17', '17:07', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('259', '2012-10-17', '17:07', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('260', '2012-10-17', '17:07', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('261', '2012-10-17', '17:07', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('262', '2012-10-17', '17:08', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('263', '2012-10-17', '17:08', 'root', '超级权限/操作所有', '在国学推广版块学校推广栏目发布文章:玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('264', '2012-10-17', '17:20', 'root', '超级权限/操作所有', '在国学培训版块公务员培训栏目发布文章:玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '成功');
INSERT INTO `system_users_log` VALUES ('265', '2012-10-17', '17:24', 'root', '超级权限/操作所有', '在学院新闻版块发布新闻:玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '成功');
INSERT INTO `system_users_log` VALUES ('266', '2012-10-17', '17:26', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '成功');
INSERT INTO `system_users_log` VALUES ('267', '2012-10-17', '17:28', 'root', '超级权限/操作所有', '在国学观止版块蒙学栏目发布文章:玉清玉清清玉清玉玉清玉清玉清玉清玉清清玉清玉玉清清玉清玉玉清玉清玉清清玉清玉玉清', '成功');
INSERT INTO `system_users_log` VALUES ('268', '2012-10-17', '19:10', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('269', '2012-10-17', '22:34', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('270', '2012-10-17', '22:34', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：你好好好', '成功');
INSERT INTO `system_users_log` VALUES ('271', '2012-10-17', '22:35', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：你好好', '成功');
INSERT INTO `system_users_log` VALUES ('272', '2012-10-17', '22:35', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：你好好', '成功');
INSERT INTO `system_users_log` VALUES ('273', '2012-10-17', '22:35', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：你好好', '成功');
INSERT INTO `system_users_log` VALUES ('274', '2012-10-17', '22:35', 'root', '超级权限/操作所有', '在学院新闻版块修改新闻：你好好', '成功');
INSERT INTO `system_users_log` VALUES ('275', '2012-10-18', '15:40', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('276', '2012-10-18', '16:13', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('277', '2012-10-18', '16:49', 'root', '超级权限/操作所有', '在趣味国学版块修改文章:玉玉清玉清玉清清玉清', '成功');
INSERT INTO `system_users_log` VALUES ('278', '2012-10-18', '16:56', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('279', '2012-10-18', '16:59', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('280', '2012-10-19', '10:12', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('281', '2012-11-14', '20:03', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('282', '2012-11-14', '20:10', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('283', '2012-11-19', '18:52', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('284', '2012-11-19', '19:46', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `system_users_log` VALUES ('285', '2013-2-13', '21:24', 'root', '超级权限/操作所有', '登陆到重庆国学院网站后台', '成功');
INSERT INTO `test` VALUES ('1', '<p>\r\n	&lt;script&gt;\r\n</p>\r\n<p>\r\n	&nbsp; &nbsp; alert(\"xx\");\r\n</p>\r\n<p>\r\n	&lt;/script&gt; &nbsp;\r\n</p>', null);
INSERT INTO `user_information` VALUES ('1', '6676201291413258816', '111', '许鹏飞', '111@111', '1989-04-26', '浙江省', '重庆市北碚区', '15123245787', '男', '学生', '西南大学', '汉族', '硕士', '西南大学', '2014-07-01', '重庆市北碚区西南大学计信院', '322125');
INSERT INTO `user_information` VALUES ('2', '9258201291414157760', 'fpx12', 'ff', 'hsupangfei1989@gmail.com', '2012-09-19', 'efa', 'eaf', 'afe', '男', 'aeffa', 'feaf', 'feaf', '本科', 'feaf', '2012-09-19', 'eafe', 'afe');
INSERT INTO `users_table` VALUES ('1', 'fpx', '123', 'fpx@123.com', '13:18', '2012-9-14', '7212201291413189160');
INSERT INTO `users_table` VALUES ('2', 'fffap', '111', '111@111', '13:20', '2012-9-14', '9274201291413203907');
INSERT INTO `users_table` VALUES ('3', 'ffffaaa', '111', '111@111', '13:25', '2012-9-14', '9177201291413257754');
INSERT INTO `users_table` VALUES ('4', '111', '111', '111@111', '13:25', '2012-9-14', '6676201291413258816');
INSERT INTO `users_table` VALUES ('5', 'fpx12', '475356336', 'hsupangfei1989@gmail.com', '14:15', '2012-9-14', '9258201291414157760');
INSERT INTO `web_detail` VALUES ('1', '40', '2012-9-11', '40');
INSERT INTO `web_detail` VALUES ('2', '46', '2012-9-12', '6');
INSERT INTO `web_detail` VALUES ('3', '55', '2012-9-13', '9');
INSERT INTO `web_detail` VALUES ('4', '77', '2012-9-14', '22');
INSERT INTO `web_detail` VALUES ('5', '84', '2012-9-15', '7');
INSERT INTO `web_detail` VALUES ('6', '88', '2012-9-17', '4');
INSERT INTO `web_detail` VALUES ('7', '97', '2012-9-18', '9');
INSERT INTO `web_detail` VALUES ('8', '113', '2012-9-19', '16');
INSERT INTO `web_detail` VALUES ('9', '122', '2012-9-20', '9');
INSERT INTO `web_detail` VALUES ('10', '136', '2012-9-21', '14');
INSERT INTO `web_detail` VALUES ('11', '142', '2012-9-22', '6');
INSERT INTO `web_detail` VALUES ('12', '162', '2012-9-23', '20');
INSERT INTO `web_detail` VALUES ('13', '162', '2012-9-23', '20');
INSERT INTO `web_detail` VALUES ('14', '193', '2012-9-24', '31');
INSERT INTO `web_detail` VALUES ('15', '200', '2012-9-25', '7');
INSERT INTO `web_detail` VALUES ('16', '205', '2012-9-26', '5');
INSERT INTO `web_detail` VALUES ('17', '210', '2012-9-27', '5');
INSERT INTO `web_detail` VALUES ('18', '241', '2012-10-2', '31');
INSERT INTO `web_detail` VALUES ('19', '246', '2012-10-3', '5');
INSERT INTO `web_detail` VALUES ('20', '254', '2012-10-4', '8');
INSERT INTO `web_detail` VALUES ('21', '255', '2012-10-5', '1');
INSERT INTO `web_detail` VALUES ('22', '258', '2012-10-7', '3');
INSERT INTO `web_detail` VALUES ('23', '259', '2012-10-12', '1');
INSERT INTO `web_detail` VALUES ('24', '264', '2012-10-15', '5');
INSERT INTO `web_detail` VALUES ('25', '268', '2012-10-16', '4');
INSERT INTO `web_detail` VALUES ('26', '287', '2012-10-17', '19');
INSERT INTO `web_detail` VALUES ('27', '297', '2012-10-18', '10');
INSERT INTO `web_detail` VALUES ('28', '302', '2012-10-19', '5');
INSERT INTO `web_detail` VALUES ('29', '303', '2012-10-23', '1');
INSERT INTO `web_detail` VALUES ('30', '313', '2012-11-7', '10');
INSERT INTO `web_detail` VALUES ('31', '318', '2012-11-14', '5');
INSERT INTO `web_detail` VALUES ('32', '320', '2012-11-19', '2');
INSERT INTO `web_detail` VALUES ('33', '321', '2012-12-4', '1');
INSERT INTO `web_detail` VALUES ('34', '322', '2012-12-14', '1');
INSERT INTO `web_detail` VALUES ('35', '323', '2013-2-13', '1');
INSERT INTO `web_detail` VALUES ('36', '324', '2013-4-6', '1');
INSERT INTO `xueyuan_tongzhi` VALUES ('2', '2012914178148', '   						eaf	\r\n   							', 'fae', '2012-9-14 01:07', 'xx', '通知', '2');
INSERT INTO `xueyuan_tongzhi` VALUES ('3', '20129211634510', '踏平日本！  							\r\n   							', '中华民族', '2012-9-21 16:03', 'xx', '紧急通知', '2');
INSERT INTO `xueyuan_tongzhi` VALUES ('4', '201292116157198', '   							\r\n   	11111						', '1111', '2012-9-21 16:15', 'root', '重要通知', '2');
INSERT INTO `xueyuan_tongzhi` VALUES ('5', '201292116159805', '   							\r\n   	0000						', '0000', '2012-9-21 16:15', '630', '紧急通知', '1');
INSERT INTO `xueyuan_xinwen` VALUES ('1', '201291121281359', '重庆国学院 ', '2012-9-11 21:28', '国学院新闻 ', 'newsimages/2012-9-11/0dfdda4948837d5f4a90a7a5.jpg', '201291121281359.html', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:32px;color:#E53333;\"><strong>重庆国学院</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:32px;color:#E53333;\"><strong><img src=\"/CQguoxue2/attached/image/20120911/20120911212736_591.jpg\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:32px;color:#E53333;\"><strong><img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" /><br />\r\n</strong></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-size:32px;color:#E53333;\"><strong><br />\r\n</strong></span> \r\n</p>', 'xx', '7');
INSERT INTO `xueyuan_xinwen` VALUES ('2', '201291121314537', '重庆国学院', '2012-9-11 21:31', '重庆国学院新闻', 'newsimages/2012-9-11/3d7e053bd21c01a314cecbbc.jpg', '201291121314537.html', '<p style=\"text-align:center;\">\r\n	<span style=\"font-size:24px;color:#337FE5;\"><strong>重庆国学院</strong></span>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911212858_855.jpg\" width=\"500\" height=\"375\" align=\"left\" alt=\"\" />这可是个标准的美女啊！！<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" /><img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911213006_264.jpg\" width=\"400\" height=\"300\" title=\"淑女\" align=\"right\" alt=\"淑女\" />这个可是标准的淑女哦！！<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	<img src=\"/CQguoxue2/attached/image/20120911/20120911213055_499.jpg\" width=\"400\" height=\"440\" alt=\"\" />\r\n</p>\r\n<p style=\"text-align:center;\">\r\n	这个也不错<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" />!\r\n</p>', 'xx', '7');
INSERT INTO `xueyuan_xinwen` VALUES ('9', '201292114169321', '发放', '2012-9-21 14:16', '答复', 'newsimages/2012-9-21/7f56771e42b066711ad576a1.jpg', '201292114169321.html', '<span style=\"color:#E56600;font-size:24px;\">发发</span><span style=\"color:#E56600;font-size:24px;\"></span>', 'xx', '2');
INSERT INTO `xueyuan_xinwen` VALUES ('10', '201292114248652', 'adfadf ', '2012-9-21 14:24', '你好好好', 'newsimages/2012-9-21/9f510fb30f2442a7dd032c1ad143ad4bd113027b.jpg', '201292114248652.html', 'afdafd', 'xx', '3');
INSERT INTO `xueyuan_xinwen` VALUES ('11', '201292115557601', '0021  ', '2012-9-21 15:55', '你好好', 'newsimages/2012-9-21/201191817950858.jpg', '201292115557601.html', '0011122', 'root', '1');
INSERT INTO `xueyuan_xinwen` VALUES ('12', '201292115575611', '488  ', '2012-9-21 15:57', '你好好', 'newsimages/2012-9-21/3319135_164527387069_2.jpg', '201292115575611.html', '<span style=\"background-color:#E56600;\">0211154</span><span style=\"background-color:#E56600;\"></span>', 'root', '0');
INSERT INTO `xueyuan_xinwen` VALUES ('13', '201292120465548', '578578 ', '2012-9-21 20:46', '你好好', 'newsimages/2012-9-21/7f56771e42b066711ad576a1.jpg', '201292120465548.html', '758578578', 'root', '4');
INSERT INTO `xueyuan_xinwen` VALUES ('14', '201210320258818', '安抚', '2012-10-3 20:25', '大大大', 'newsimages/2012-10-3/large_UMfQ_66950000051e1260.jpg', '201210320258818.html', '发放', 'root', '1');
INSERT INTO `xueyuan_xinwen` VALUES ('15', '201210320258511', '额发', '2012-10-3 20:25', '额发', 'newsimages/2012-10-3/large_UMfQ_66950000051e1260.jpg', '201210320258511.html', '额发', 'root', '1');
INSERT INTO `xueyuan_xinwen` VALUES ('16', '201210320255342', '饿啊', '2012-10-3 20:25', '阿尔', 'newsimages/2012-10-3/large_UMfQ_66950000051e1260.jpg', '201210320255342.html', '啊', 'root', '0');
INSERT INTO `xueyuan_xinwen` VALUES ('17', '201210320255441', '阿尔', '2012-10-3 20:25', '饿啊', 'newsimages/2012-10-3/large_UMfQ_66950000051e1260.jpg', '201210320255441.html', '阿尔', 'root', '3');
INSERT INTO `xueyuan_xinwen` VALUES ('18', '201210171516258', '555 ', '2012-10-17 15:01', '你好好', '', '201210171516258.html', '<span style=\"background-color:#99BB00;font-family:NSimSun;\"><strong>份额鹅鹅鹅</strong></span>', 'root', '2');
INSERT INTO `xueyuan_xinwen` VALUES ('19', '2012101717243800', '玉清玉清清玉清玉玉清', '2012-10-17 17:24', '玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清玉清玉清清玉清玉玉清', '', '2012101717243800.html', '<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清<span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉清玉清清玉清</span><span style=\"font-family:Tahoma;font-size:30px;line-height:normal;\">玉玉清</span></span>', 'root', '7');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('1', '学院介绍', '行政机构', '<p style=\"text-align:center;\">\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-family:Simsun;font-size:32px;line-height:normal;color:#E53333;\">行政机构</span><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称</span></span></span></span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120925/20120925225806_86.jpg\" width=\"400\" height=\"300\" align=\"right\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<img src=\"/CQguoxue2/attached/image/20120925/20120925230000_346.jpg\" width=\"400\" height=\"300\" align=\"left\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span></span></span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span>构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构</span></span></span></span></span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"/CQguoxue2/attached/image/20120925/20120925230041_660.jpg\" width=\"500\" height=\"442\" alt=\"\" /> \r\n</p>', '2012-9-25', '21:05', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('2', '办公室', '行政机构', '<p style=\"text-align:center;\">\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">fafdadfaf </span>\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://localhost:8080/CQguoxue2/attached/image/20120925/20120925225806_86.jpg\" width=\"400\" height=\"300\" align=\"right\" alt=\"\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称行政机构/研究单位名称</span><span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构/研究单位名称行政机构/研究单位名称</span> \r\n</p>\r\n<br />\r\n<img src=\"http://localhost:8080/CQguoxue2/attached/image/20120925/20120925230000_346.jpg\" width=\"400\" height=\"300\" align=\"left\" alt=\"\" /> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构行政机构行政机构行政机构</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构行政机构行政机构</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构行政机构</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构行政机构行政机构行政机构</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机行政机构构行政机构</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<span style=\"font-family:Simsun;font-size:medium;line-height:normal;\">行政机构行政机构行政机构行政机构行政机构</span> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://localhost:8080/CQguoxue2/attached/image/20120925/20120925230041_660.jpg\" width=\"500\" height=\"442\" alt=\"\" /> \r\n</p>', '2012-9-25', '21:05', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('3', '研究部', '行政机构', '研究部', '2012-9-25', '21:05', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('4', '推广部', '行政机构', '推广部', '2012-9-25', '21:05', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('5', '培训部', '行政机构', '培训部', '2012-9-25', '21:06', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('6', '重庆文化研究所', '研究单位', '重庆文化研究所', '2012-9-25', '21:06', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('7', '重庆非遗研究所 ', '研究单位', '重庆非遗研究所&nbsp;<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:06', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('8', '历史地理研究所', '研究单位', '历史地理研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:07', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('9', '国学文献研究所', '研究单位', '国学文献研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:07', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('10', '宗教研究所', '研究单位', '宗教研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:07', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('11', '古典诗词研究所', '研究单位', '古典诗词研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:07', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('12', '中国古代社会思潮与文化研究所', '研究单位', '中国古代社会思潮与文化研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:08', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('13', '中国书法研究所', '研究单位', '中国书法研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/4.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:08', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('14', '吴宓研究所', '研究单位', '吴宓研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/2.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:08', 'root');
INSERT INTO `xueyuanjigou_shezhi` VALUES ('15', '中华经典诵读研究所', '研究单位', '中华经典诵读研究所<img src=\"http://localhost:8080/CQguoxue2/kindeditor/plugins/emoticons/images/1.gif\" border=\"0\" alt=\"\" />', '2012-9-25', '21:09', 'root');
