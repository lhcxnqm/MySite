/*
Navicat MySQL Data Transfer

Source Server         : MyTest
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : mysite

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-06-19 02:46:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add blog', '7', 'add_blog');
INSERT INTO `auth_permission` VALUES ('26', 'Can change blog', '7', 'change_blog');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete blog', '7', 'delete_blog');
INSERT INTO `auth_permission` VALUES ('28', 'Can view blog', '7', 'view_blog');
INSERT INTO `auth_permission` VALUES ('29', 'Can add blog type', '8', 'add_blogtype');
INSERT INTO `auth_permission` VALUES ('30', 'Can change blog type', '8', 'change_blogtype');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete blog type', '8', 'delete_blogtype');
INSERT INTO `auth_permission` VALUES ('32', 'Can view blog type', '8', 'view_blogtype');
INSERT INTO `auth_permission` VALUES ('33', 'Can add read detail', '9', 'add_readdetail');
INSERT INTO `auth_permission` VALUES ('34', 'Can change read detail', '9', 'change_readdetail');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete read detail', '9', 'delete_readdetail');
INSERT INTO `auth_permission` VALUES ('36', 'Can view read detail', '9', 'view_readdetail');
INSERT INTO `auth_permission` VALUES ('37', 'Can add read num', '10', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('38', 'Can change read num', '10', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete read num', '10', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('40', 'Can view read num', '10', 'view_readnum');
INSERT INTO `auth_permission` VALUES ('41', 'Can add read_ num', '11', 'add_read_num');
INSERT INTO `auth_permission` VALUES ('42', 'Can change read_ num', '11', 'change_read_num');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete read_ num', '11', 'delete_read_num');
INSERT INTO `auth_permission` VALUES ('44', 'Can view read_ num', '11', 'view_read_num');
INSERT INTO `auth_permission` VALUES ('45', 'Can add read num', '12', 'add_readnum');
INSERT INTO `auth_permission` VALUES ('46', 'Can change read num', '12', 'change_readnum');
INSERT INTO `auth_permission` VALUES ('47', 'Can delete read num', '12', 'delete_readnum');
INSERT INTO `auth_permission` VALUES ('48', 'Can view read num', '12', 'view_readnum');
INSERT INTO `auth_permission` VALUES ('49', 'Can add read detail', '13', 'add_readdetail');
INSERT INTO `auth_permission` VALUES ('50', 'Can change read detail', '13', 'change_readdetail');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete read detail', '13', 'delete_readdetail');
INSERT INTO `auth_permission` VALUES ('52', 'Can view read detail', '13', 'view_readdetail');
INSERT INTO `auth_permission` VALUES ('53', 'Can add comment', '14', 'add_comment');
INSERT INTO `auth_permission` VALUES ('54', 'Can change comment', '14', 'change_comment');
INSERT INTO `auth_permission` VALUES ('55', 'Can delete comment', '14', 'delete_comment');
INSERT INTO `auth_permission` VALUES ('56', 'Can view comment', '14', 'view_comment');
INSERT INTO `auth_permission` VALUES ('57', 'Can add good movie', '15', 'add_goodmovie');
INSERT INTO `auth_permission` VALUES ('58', 'Can change good movie', '15', 'change_goodmovie');
INSERT INTO `auth_permission` VALUES ('59', 'Can delete good movie', '15', 'delete_goodmovie');
INSERT INTO `auth_permission` VALUES ('60', 'Can view good movie', '15', 'view_goodmovie');
INSERT INTO `auth_permission` VALUES ('61', 'Can add json movie', '16', 'add_jsonmovie');
INSERT INTO `auth_permission` VALUES ('62', 'Can change json movie', '16', 'change_jsonmovie');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete json movie', '16', 'delete_jsonmovie');
INSERT INTO `auth_permission` VALUES ('64', 'Can view json movie', '16', 'view_jsonmovie');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$150000$SaaLkhN0kqnA$96O2Z2GqhSwLnpa92xMUVQO/AGo6Bi1hA9Tm3r3LOxI=', '2019-05-19 02:25:38.655000', '1', 'Lhc', '', '', '', '1', '1', '2019-05-13 14:52:25.377000');
INSERT INTO `auth_user` VALUES ('2', 'pbkdf2_sha256$150000$d3pBkCk9nLLR$JXjU5dbE4d9Eb+SNXQW8f01RxSvirF/+ckp0ijJ4KkU=', '2019-06-18 16:23:28.931389', '1', 'linhaichao', '', '', '', '1', '1', '2019-05-15 16:21:12.580000');
INSERT INTO `auth_user` VALUES ('5', 'pbkdf2_sha256$150000$CdVNiDzUkxh7$LrNFoQ1zqFAvqlj96plmUMPhfRZVLufCd9D74kNbPPU=', '2019-05-18 14:07:53.222000', '0', 'caixukun3', '', '', 'kunkun@qq.com', '0', '1', '2019-05-18 10:33:56.731000');
INSERT INTO `auth_user` VALUES ('6', 'pbkdf2_sha256$150000$eQ9r593xulMx$ltfuYYbvHNmJNuuixB1N07p8ozr/FHoFh4kLHdDYS2s=', '2019-06-17 10:12:11.361000', '0', '蔡徐坤我老公', '', '', 'CXKLoveyou@163.com', '0', '1', '2019-05-19 01:07:18.051000');
INSERT INTO `auth_user` VALUES ('7', 'pbkdf2_sha256$150000$LffPQchwOwZQ$Kh8WcXbBpXyMAfMXWh/OHsMquHd68+PONZxfGdYwKvQ=', '2019-05-19 06:35:39.836000', '0', 'caixukun', '', '', 'happycai@qq.com', '0', '1', '2019-05-19 06:35:39.081000');
INSERT INTO `auth_user` VALUES ('8', 'pbkdf2_sha256$150000$2XWiWSo4jsPX$fNpXKG/VVeXxO1c0o+SOQWtOCfAew8Fe3uHQoqBwtxE=', '2019-05-19 08:06:23.699000', '0', '蔡徐坤我老婆', '', '', 'happykun@qq.com', '0', '1', '2019-05-19 08:06:22.993000');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blog`;
CREATE TABLE `blog_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `blog_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_blog_author_id_8791af69_fk_auth_user_id` (`author_id`),
  KEY `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` (`blog_type_id`),
  CONSTRAINT `blog_blog_author_id_8791af69_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `blog_blog_blog_type_id_de11bd65_fk_blog_blogtype_id` FOREIGN KEY (`blog_type_id`) REFERENCES `blog_blogtype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_blog
-- ----------------------------
INSERT INTO `blog_blog` VALUES ('1', '蔡徐坤邀你打篮球', '<p>全民制作人们，大家好，我是练习时长两年半的个人练习生蔡徐坤，喜欢唱、跳、Rap、篮球，Muisc~</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2019/05/16/default.gif\" style=\"height:224px; width:224px\" /></p>', '2019-05-13 15:00:00.000000', 'blog_images/kunkun.jpg', '1', '1');
INSERT INTO `blog_blog` VALUES ('2', '蔡徐坤粉丝退B站，B站网友拍手称快！', '<p>蔡徐坤粉丝退B站怎么回事？</p>\r\n\r\n<p>偶像练习生出道的人气偶像蔡徐坤打篮球视频被众多博主恶意剪辑，做成了鬼畜视频。蔡徐坤方随后向b站寄出律师函，控诉此次恶意行为，b站虽然及时作出了回应但并未针对此行为道歉。此举激怒了蔡徐坤方粉丝，随后蔡徐坤粉丝官微宣布退出b站，并表示关于蔡徐坤的各种视频永远都不会再更新。本人还没有出来回应，粉丝倒是先坐不住了，这是明确抵制B站。</p>\r\n\r\n<p>b站关于蔡徐坤鬼畜视频的确不少，粉丝表示属于严重侮辱行为，但部分网友表示这只是一种二次元文化而已，双方各执一词。当初就连成龙大哥都有鬼畜视频《我的洗发水》，还有许多明星都是在B站有着不少的&ldquo;鬼畜视频&rdquo;，张家辉，黎耀祥等等明星对于这些&ldquo;鬼畜&rdquo;视频都是没什么意见，只要观众粉丝们开心就好！</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2019/05/18/caixukun.jpg\" style=\"height:350px; width:350px\" /></p>', '2019-05-13 15:00:00.000000', 'blog_images/caixukun.jpg', '1', '1');
INSERT INTO `blog_blog` VALUES ('3', 'Django学习之redirect', '<p>用django实现redirect的几种方法总结：</p>\r\n\r\n<p>用django开发web应用, 经常会遇到从一个旧的url转向一个新的url。这种隐射也许有规则，也许没有。但都是为了实现业务的需要。总体说来，有如下几种方法实现 django的 redirect。<br />\r\n1. 在url 中配置 redirect_to 或者 RedirectView（django 1.3 版本以上）<br />\r\n2. 在view 中 通过 HttpResponseRedirect 实现 redirect</p>\r\n\r\n<p>3. 利用 django 的 redirects app实现</p>\r\n\r\n<p>&nbsp;</p>', '2019-05-13 15:00:00.000000', 'blog_images/django_redirect.JPG', '1', '2');
INSERT INTO `blog_blog` VALUES ('4', 'Django学习之模板页的应用', '<p>当我们html页面越来越多的时候，会有相当一部分代码都相似，这时候可以应用继承母板页的方法，使得代码量简介而清爽<img alt=\"cheeky\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/tongue_smile.png\" style=\"height:23px; width:23px\" title=\"cheeky\" /></p>\r\n\r\n<p>使用方法：</p>\r\n\r\n<p>1.创建一个&quot;base.html&quot;,写上公共部分的代码，然后在需要特定添加内容弄的地方设置{%block 区域名%}{% endblock %}</p>\r\n\r\n<p>2.重新创建一个html,通过{% extends &quot;base.html&quot; %}引用刚才的母板页，然后在通过区域名进行内容的填充</p>\r\n\r\n<p>没错，就是这么简单！<img alt=\"wink\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/wink_smile.png\" style=\"height:23px; width:23px\" title=\"wink\" /></p>', '2019-05-14 03:31:00.000000', 'blog_images/django_extends.JPG', '1', '2');
INSERT INTO `blog_blog` VALUES ('5', 'SKT失去幸运女神眷顾，大魔王C不动了', '<p>Bo5一直以来是衡量一支队伍实力的标准，与Bo1的一锤定音，Bo3的针锋相对不同，</p>\r\n\r\n<p>Bo5考验的不仅有队伍的实力，心态调整、版本理解、队内氛围等缺一不可。FW曾被称为&ldquo;Bo1之王&rdquo;，</p>\r\n\r\n<p>但这支队伍几乎从未登上过世界级强队的行列。</p>\r\n\r\n<p>SKT战队作为LOL历史上唯一一支三冠王队伍，在对阵G2前Bo5决胜局之前，SKT的胜率胜率达到了恐怖的82%，仅输掉过两场比赛。</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2019/05/18/faker2.jpg\" style=\"height:350px; width:550px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>在季中冠军赛上SKT虽然前半段表现低迷，但在后半段再度展现出自己极强的统治力，将iG战队的完美9连胜悍然打破。</p>\r\n\r\n<p>但与iG战队类似，SKT在本次季中冠军赛的道路仅此为止了，G2战队展现出自己&ldquo;赛场艺术家&rdquo;的实力与套路，</p>\r\n\r\n<p>用完美的黑科技阵容与赛场决策将SKT的崛起之路彻底击碎。</p>\r\n\r\n<p>曾经的荣誉已成过眼云烟，在世界赛上SKT的统治力也远没有此前那么强势。</p>\r\n\r\n<p>Faker也已然是英雄垂暮，大魔王在赛场上无力回天，却再没有人来拉他一把。</p>', '2019-05-14 03:31:00.000000', 'blog_images/faker2.jpg', '1', '3');
INSERT INTO `blog_blog` VALUES ('6', 'ig不败金身被破-SKT国内粉丝陷入狂欢！', '<p>5月14日，这天是MSI季中冠军赛小组赛的最后一天，咱们LPL的队伍iG战队虽然是已经确定小组第一出线，</p>\r\n\r\n<p>但是大家都期待iG能全胜的姿态挺进淘汰赛，很可惜的是，在最后对阵SKT的比赛中，</p>\r\n\r\n<p>以人头比18-4的比分输给了SKT，而Faker的瑞兹拿下本场MVP<img alt=\"yes\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/media/upload/2019/05/18/faker.jpg\" style=\"height:300px; width:450px\" /></p>\r\n\r\n<p>在SKT痛快的拿下这场比赛之后，国内的SKT粉丝也陷入了狂欢，纷纷表示终于扬眉吐气了，</p>\r\n\r\n<p>这几天在弹幕上很多人调侃SKT被iG16分钟打败把这些SKT粉丝气到了，憋屈几天的气终于在此刻得到了宣泄，感觉犹如过年一般。</p>', '2019-05-14 15:56:00.000000', 'blog_images/faker.jpg', '1', '3');
INSERT INTO `blog_blog` VALUES ('7', 'Django2.2 报错信息无法正常在页面显示', '<p>Django2.2 安装后，使用runserver进行开发，出错时错误信息只显示于控制台命令行，而在前端页面只显示一行</p>\r\n\r\n<pre>\r\n<code> &ldquo;A server error occurred. Please contact the administrator.&rdquo;</code></pre>\r\n\r\n<p>排错很不方便，仔细查看控制台的错误信息，提示</p>\r\n\r\n<pre>\r\n<code>UnicodeDecodeError: &#39;gbk&#39; codec can&#39;t decode byte 0xa6 in position 9737: ill....</code></pre>\r\n\r\n<p>判断这个版本django由于出错信息的代码有编码读取问题 造成无法正常显示。<br />\r\n根据提示找到 python安装路径\\Lib\\site-packages\\django\\views\\debug.py ，打开后，修改约在 332 行处，将：</p>\r\n\r\n<pre>\r\n<code>        with Path(CURRENT_DIR, &#39;templates&#39;, &#39;technical_500.html&#39;).open() as fh:</code></pre>\r\n\r\n<p>修改为</p>\r\n\r\n<pre>\r\n<code>        with Path(CURRENT_DIR, &#39;templates&#39;, &#39;technical_500.html&#39;).open(encoding=&#39;utf-8&#39;) as fh:</code></pre>\r\n\r\n<p>也就是进行编码设置 ，然后再重新 启动runserver，出错信息即可正常显示在页面显示。</p>', '2019-06-16 11:39:00.000000', 'blog_images/Django.jpg', '2', '2');
INSERT INTO `blog_blog` VALUES ('8', 'Django数据迁移（sqlite和mysql）', '<p>分享一下从sqlite迁移数据到mysql的步骤</p>\r\n\r\n<hr />\r\n<p>一、终端输入python manage.py dumpdata &gt; data.json&nbsp; 导出json格式的数据</p>\r\n\r\n<p>二、修改settings.py文件，大致如下</p>\r\n\r\n<pre>\r\nDATABASES = {\r\n    &#39;default&#39;: {\r\n        &#39;ENGINE&#39;: &#39;django.db.backends.mysql&#39;,\r\n        &#39;NAME&#39;: &#39;mysite&#39;,\r\n        &#39;USER&#39;: &#39;root&#39;,\r\n        &#39;PASSWORD&#39;: &#39;admin&#39;,\r\n        &#39;HOST&#39;: &#39;127.0.0.1&#39;,\r\n        &#39;PORT&#39;: &#39;3306&#39;,\r\n    }\r\n}\r\n</pre>\r\n\r\n<p>三、执行python manage.py migrate 发现数据库中创建了，但是还没有数据，（这里要先把content_type 和auth_permission表中的数据清空）。继续终端输入python manage.py loaddata data.json&nbsp; 导入数据</p>\r\n\r\n<p>四、上一步骤中可能会出现中文变字符现象，这是因为在转换过程中默认为Unicode字符集，可以通过json.load转换或者其他在线编码转换工具后即可</p>\r\n\r\n<p>五、runserver，发现数据已经迁移过来了，BingGo！</p>', '2019-06-18 16:22:00.000000', 'blog_images/Django_53xYedC.jpg', '1', '2');

-- ----------------------------
-- Table structure for `blog_blogtype`
-- ----------------------------
DROP TABLE IF EXISTS `blog_blogtype`;
CREATE TABLE `blog_blogtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_blogtype
-- ----------------------------
INSERT INTO `blog_blogtype` VALUES ('1', '娱乐休闲');
INSERT INTO `blog_blogtype` VALUES ('2', '教育频道');
INSERT INTO `blog_blogtype` VALUES ('3', '电子竞技');

-- ----------------------------
-- Table structure for `comment_comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned DEFAULT NULL,
  `text` longtext NOT NULL,
  `comment_time` datetime(6) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_comment_content_type_id_fbfb9793_fk_django_co` (`content_type_id`),
  KEY `comment_comment_user_id_6078e57b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `comment_comment_content_type_id_fbfb9793_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment_comment
-- ----------------------------
INSERT INTO `comment_comment` VALUES ('26', '4', '<p>评论测试</p>', '2019-05-22 09:01:34.049000', '7', '2');
INSERT INTO `comment_comment` VALUES ('27', '4', '<p>测试一下</p>', '2019-05-22 10:33:25.489000', '7', '2');
INSERT INTO `comment_comment` VALUES ('28', '4', '<p>测试一下</p>', '2019-05-22 10:33:45.893000', '7', '2');
INSERT INTO `comment_comment` VALUES ('29', '4', '<p>你好</p>', '2019-05-22 10:43:37.468000', '7', '2');
INSERT INTO `comment_comment` VALUES ('30', '4', '<p>hello world</p>', '2019-05-22 10:45:59.474000', '7', '2');
INSERT INTO `comment_comment` VALUES ('31', '4', '<p>测试一下</p>', '2019-05-22 11:01:06.423000', '7', '2');
INSERT INTO `comment_comment` VALUES ('32', '4', '<p><img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" />写的真棒</p>', '2019-05-22 11:09:08.614000', '7', '2');
INSERT INTO `comment_comment` VALUES ('33', '1', '<p>蔡徐坤你太帅了！<img alt=\"yes\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/thumbs_up.png\" title=\"yes\" width=\"23\" /></p>', '2019-05-22 11:09:28.380000', '7', '2');
INSERT INTO `comment_comment` VALUES ('34', '4', '<p>这个是干货</p>', '2019-05-22 11:21:01.947000', '7', '2');
INSERT INTO `comment_comment` VALUES ('35', '4', '<p>&nbsp; &nbsp; 啊</p>', '2019-05-22 11:21:58.578000', '7', '2');
INSERT INTO `comment_comment` VALUES ('36', '1', '<p>坤坤我男神！</p>', '2019-05-22 11:23:01.566000', '7', '2');
INSERT INTO `comment_comment` VALUES ('37', '1', '<p>坤坤 我又来看你了<img alt=\"heart\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/heart.png\" title=\"heart\" width=\"23\" /></p>', '2019-05-22 11:32:43.293000', '7', '2');
INSERT INTO `comment_comment` VALUES ('38', '1', '<p>呵呵哒<img alt=\"kiss\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/kiss.png\" title=\"kiss\" width=\"23\" /></p>', '2019-05-22 11:32:54.694000', '7', '2');
INSERT INTO `comment_comment` VALUES ('39', '6', '<p>李哥不哭站起来撸</p>', '2019-05-22 11:34:27.716000', '7', '2');
INSERT INTO `comment_comment` VALUES ('40', '5', '<p>大魔王牛逼！<img alt=\"devil\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/devil_smile.png\" title=\"devil\" width=\"23\" /></p>', '2019-05-22 11:35:15.842000', '7', '2');
INSERT INTO `comment_comment` VALUES ('41', '1', '<p>打球像蔡徐坤！<img alt=\"cheeky\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/tongue_smile.png\" title=\"cheeky\" width=\"23\" /></p>', '2019-05-22 11:36:00.042000', '7', '2');
INSERT INTO `comment_comment` VALUES ('42', '7', '<p>不错，问题已解决！</p>', '2019-06-16 11:46:07.937000', '7', '2');
INSERT INTO `comment_comment` VALUES ('43', '5', '<p>测试一下</p>', '2019-06-16 11:46:54.273000', '7', '2');
INSERT INTO `comment_comment` VALUES ('44', '5', '<p>我也来测试一下</p>', '2019-06-16 11:50:35.840000', '7', '2');
INSERT INTO `comment_comment` VALUES ('45', '7', '<p>测试一下</p>', '2019-06-16 11:54:32.120000', '7', '2');
INSERT INTO `comment_comment` VALUES ('46', '7', '<p>我再测试一下</p>', '2019-06-16 14:48:53.791000', '7', '6');
INSERT INTO `comment_comment` VALUES ('47', '7', '<p><img alt=\"laugh\" height=\"23\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" title=\"laugh\" width=\"23\" /></p>', '2019-06-17 08:22:20.044000', '7', '2');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2019-05-13 14:58:46.456000', '1', 'Django', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2019-05-13 14:59:05.989000', '2', '博客', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2019-05-13 14:59:57.535000', '3', 'python', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2019-05-13 15:01:27.569000', '1', '文章一', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2019-05-13 15:01:44.847000', '2', '文章二', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2019-05-13 15:02:00.736000', '3', '文章三', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2019-05-14 03:32:21.356000', '4', 'Django文章一', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2019-05-14 03:32:39.501000', '5', 'Django文章二', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2019-05-14 03:56:13.788000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2019-05-14 03:56:27.092000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2019-05-14 03:56:50.021000', '2', 'Django文章二', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\", \"blog_type\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2019-05-14 03:57:27.278000', '2', 'Java', '2', '[{\"changed\": {\"fields\": [\"type_name\"]}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2019-05-14 03:57:52.323000', '3', 'Java文章一', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\", \"blog_type\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2019-05-14 03:58:07.901000', '4', 'Java文章二', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\", \"blog_type\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('15', '2019-05-14 03:58:25.557000', '5', 'Python文章一', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\", \"blog_type\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('16', '2019-05-14 16:22:41.212000', '6', 'Python文章二', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('17', '2019-05-14 16:22:52.414000', '6', 'Python文章二', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('18', '2019-05-15 16:33:25.998000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('19', '2019-05-15 16:34:14.863000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('20', '2019-05-15 16:41:14.056000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('21', '2019-05-15 16:45:50.000000', '1', 'Django文章一', '2', '[]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('22', '2019-05-15 17:10:36.337000', '1', 'Django文章一', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('23', '2019-05-16 14:24:35.196000', '1', 'ReadDetail object (1)', '1', '[{\"added\": {}}]', '9', '2');
INSERT INTO `django_admin_log` VALUES ('24', '2019-05-17 06:39:07.914000', '1', 'ReadDetail object (1)', '1', '[{\"added\": {}}]', '13', '2');
INSERT INTO `django_admin_log` VALUES ('25', '2019-05-17 08:37:53.714000', '5', 'ReadDetail object (5)', '1', '[{\"added\": {}}]', '13', '2');
INSERT INTO `django_admin_log` VALUES ('26', '2019-05-17 08:38:10.942000', '6', 'ReadDetail object (6)', '1', '[{\"added\": {}}]', '13', '2');
INSERT INTO `django_admin_log` VALUES ('27', '2019-05-17 16:55:50.945000', '2', 'linhaichao', '2', '[{\"changed\": {\"fields\": [\"password\"]}}]', '4', '2');
INSERT INTO `django_admin_log` VALUES ('28', '2019-05-18 02:32:26.347000', '1', 'Comment object (1)', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('29', '2019-05-18 02:45:07.353000', '2', 'Comment object (2)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('30', '2019-05-18 03:08:00.538000', '3', 'Comment object (3)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('31', '2019-05-18 03:09:14.040000', '4', 'Comment object (4)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('32', '2019-05-18 03:10:09.468000', '5', 'Comment object (5)', '1', '[{\"added\": {}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('33', '2019-05-18 03:17:03.584000', '6', 'Comment object (6)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('34', '2019-05-18 10:32:26.920000', '3', 'caixukun', '3', '', '4', '2');
INSERT INTO `django_admin_log` VALUES ('35', '2019-05-18 10:32:27.065000', '4', 'caixukun2', '3', '', '4', '2');
INSERT INTO `django_admin_log` VALUES ('36', '2019-05-18 10:34:57.467000', '5', 'Comment object (5)', '2', '[{\"changed\": {\"fields\": [\"user\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('37', '2019-05-18 10:35:12.933000', '7', 'Comment object (7)', '2', '[{\"changed\": {\"fields\": [\"text\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('38', '2019-05-18 10:35:29.059000', '8', 'Comment object (8)', '2', '[{\"changed\": {\"fields\": [\"text\", \"user\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('39', '2019-05-18 10:35:37.260000', '10', 'Comment object (10)', '2', '[{\"changed\": {\"fields\": [\"user\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('40', '2019-05-18 10:35:43.764000', '11', 'Comment object (11)', '2', '[{\"changed\": {\"fields\": [\"user\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('41', '2019-05-18 10:35:52.124000', '13', 'Comment object (13)', '2', '[{\"changed\": {\"fields\": [\"user\"]}}]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('42', '2019-05-18 10:36:03.782000', '14', 'Comment object (14)', '2', '[]', '14', '2');
INSERT INTO `django_admin_log` VALUES ('43', '2019-05-18 12:54:27.077000', '1', '娱乐', '2', '[{\"changed\": {\"fields\": [\"type_name\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('44', '2019-05-18 12:54:55.043000', '2', '教育频道', '2', '[{\"changed\": {\"fields\": [\"type_name\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('45', '2019-05-18 12:55:03.333000', '1', '娱乐休闲', '2', '[{\"changed\": {\"fields\": [\"type_name\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('46', '2019-05-18 12:56:10.099000', '3', '电子竞技', '2', '[{\"changed\": {\"fields\": [\"type_name\"]}}]', '8', '2');
INSERT INTO `django_admin_log` VALUES ('47', '2019-05-18 12:58:31.144000', '1', '蔡徐坤邀你打篮球', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('48', '2019-05-18 12:59:18.393000', '1', '蔡徐坤邀你打篮球', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('49', '2019-05-18 12:59:33.976000', '1', '蔡徐坤邀你打篮球', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('50', '2019-05-18 13:24:41.659000', '2', '蔡徐坤粉丝退B站，B站网友拍手称快！', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('51', '2019-05-18 13:32:33.132000', '3', 'Django学习之redirect', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('52', '2019-05-18 13:32:58.355000', '4', 'Django学习之模板页的应用', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('53', '2019-05-18 13:33:20.548000', '1', '蔡徐坤邀你打篮球', '2', '[]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('54', '2019-05-18 13:37:50.691000', '4', 'Django学习之模板页的应用', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('55', '2019-05-18 13:38:18.715000', '2', '蔡徐坤粉丝退B站，B站网友拍手称快！', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('56', '2019-05-18 13:38:30.702000', '3', 'Django学习之redirect', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('57', '2019-05-18 14:06:28.655000', '6', 'ig不败金身被破-SKT国内粉丝陷入狂欢！', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('58', '2019-05-18 14:07:10.732000', '6', 'ig不败金身被破-SKT国内粉丝陷入狂欢！', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('59', '2019-05-18 14:13:20.144000', '5', 'SKT不再有幸运女神眷顾，大魔王也C不动了', '2', '[{\"changed\": {\"fields\": [\"title\", \"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('60', '2019-05-19 01:56:48.295000', '1', '蔡徐坤邀你打篮球', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('61', '2019-05-19 02:03:54.658000', '2', '蔡徐坤粉丝退B站，B站网友拍手称快！', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('62', '2019-05-19 02:05:20.282000', '3', 'Django学习之redirect', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('63', '2019-05-19 02:06:32.872000', '4', 'Django学习之模板页的应用', '2', '[{\"changed\": {\"fields\": [\"content\", \"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('64', '2019-05-19 02:06:41.719000', '5', 'SKT不再有幸运女神眷顾，大魔王也C不动了', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('65', '2019-05-19 02:06:49.785000', '6', 'ig不败金身被破-SKT国内粉丝陷入狂欢！', '2', '[{\"changed\": {\"fields\": [\"image\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('66', '2019-05-19 02:17:54.664000', '5', 'SKT失去幸运女神眷顾，大魔王C不动了', '2', '[{\"changed\": {\"fields\": [\"title\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('67', '2019-05-19 02:21:59.377000', '2', '蔡徐坤粉丝退B站，B站网友拍手称快！', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('68', '2019-05-22 11:22:34.427000', '25', 'Comment object (25)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('69', '2019-05-22 11:22:34.531000', '24', 'Comment object (24)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('70', '2019-05-22 11:22:34.629000', '23', 'Comment object (23)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('71', '2019-05-22 11:22:34.754000', '22', 'Comment object (22)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('72', '2019-05-22 11:22:34.866000', '21', 'Comment object (21)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('73', '2019-05-22 11:22:34.977000', '20', 'Comment object (20)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('74', '2019-05-22 11:22:35.123000', '19', 'Comment object (19)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('75', '2019-05-22 11:22:35.231000', '18', 'Comment object (18)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('76', '2019-05-22 11:22:35.344000', '17', 'Comment object (17)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('77', '2019-05-22 11:22:35.486000', '16', 'Comment object (16)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('78', '2019-05-22 11:22:35.598000', '15', 'Comment object (15)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('79', '2019-05-22 11:22:35.721000', '14', 'Comment object (14)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('80', '2019-05-22 11:22:35.819000', '13', 'Comment object (13)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('81', '2019-05-22 11:22:35.919000', '12', 'Comment object (12)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('82', '2019-05-22 11:22:36.032000', '11', 'Comment object (11)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('83', '2019-05-22 11:22:36.143000', '10', 'Comment object (10)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('84', '2019-05-22 11:22:36.266000', '9', 'Comment object (9)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('85', '2019-05-22 11:22:36.430000', '8', 'Comment object (8)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('86', '2019-05-22 11:22:36.542000', '7', 'Comment object (7)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('87', '2019-05-22 11:22:36.687000', '5', 'Comment object (5)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('88', '2019-05-22 11:22:36.788000', '1', 'Comment object (1)', '3', '', '14', '2');
INSERT INTO `django_admin_log` VALUES ('89', '2019-06-16 11:45:25.037000', '7', 'Django2.2 报错信息无法正常在页面显示', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('90', '2019-06-18 01:12:02.028000', '109', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('91', '2019-06-18 01:12:02.133000', '108', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('92', '2019-06-18 01:12:02.249000', '107', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('93', '2019-06-18 01:12:02.344000', '106', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('94', '2019-06-18 01:12:02.483000', '105', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('95', '2019-06-18 01:12:02.593000', '104', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('96', '2019-06-18 01:12:02.696000', '103', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('97', '2019-06-18 01:12:02.816000', '102', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('98', '2019-06-18 01:12:02.921000', '101', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('99', '2019-06-18 01:12:03.097000', '100', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('100', '2019-06-18 01:12:03.289000', '99', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('101', '2019-06-18 01:12:03.418000', '98', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('102', '2019-06-18 01:12:03.529000', '97', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('103', '2019-06-18 01:12:03.641000', '96', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('104', '2019-06-18 01:12:03.774000', '95', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('105', '2019-06-18 01:12:03.941000', '94', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('106', '2019-06-18 01:12:04.164000', '93', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('107', '2019-06-18 01:12:04.315000', '92', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('108', '2019-06-18 01:12:04.429000', '91', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('109', '2019-06-18 01:12:04.518000', '90', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('110', '2019-06-18 01:12:04.687000', '89', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('111', '2019-06-18 01:12:04.817000', '88', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('112', '2019-06-18 01:12:04.918000', '87', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('113', '2019-06-18 01:12:05.060000', '86', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('114', '2019-06-18 01:12:05.177000', '85', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('115', '2019-06-18 01:12:05.318000', '84', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('116', '2019-06-18 01:12:05.438000', '83', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('117', '2019-06-18 01:12:05.518000', '82', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('118', '2019-06-18 01:12:05.618000', '81', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('119', '2019-06-18 01:12:05.733000', '80', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('120', '2019-06-18 01:12:05.852000', '79', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('121', '2019-06-18 01:12:05.975000', '78', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('122', '2019-06-18 01:12:06.181000', '77', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('123', '2019-06-18 01:12:06.328000', '76', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('124', '2019-06-18 01:12:06.474000', '75', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('125', '2019-06-18 01:12:06.607000', '74', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('126', '2019-06-18 01:12:06.717000', '73', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('127', '2019-06-18 01:12:06.826000', '72', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('128', '2019-06-18 01:12:06.918000', '71', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('129', '2019-06-18 01:12:07.027000', '70', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('130', '2019-06-18 01:12:07.128000', '69', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('131', '2019-06-18 01:12:07.241000', '68', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('132', '2019-06-18 01:12:07.407000', '67', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('133', '2019-06-18 01:12:07.529000', '66', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('134', '2019-06-18 01:12:07.672000', '65', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('135', '2019-06-18 01:12:07.784000', '64', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('136', '2019-06-18 01:12:07.911000', '63', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('137', '2019-06-18 01:12:08.028000', '62', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('138', '2019-06-18 01:12:08.295000', '61', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('139', '2019-06-18 01:12:08.423000', '60', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('140', '2019-06-18 01:12:08.517000', '59', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('141', '2019-06-18 01:12:08.654000', '58', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('142', '2019-06-18 01:12:08.817000', '57', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('143', '2019-06-18 01:12:08.928000', '56', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('144', '2019-06-18 01:12:09.039000', '55', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('145', '2019-06-18 01:12:09.151000', '54', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('146', '2019-06-18 01:12:09.274000', '53', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('147', '2019-06-18 01:12:09.381000', '52', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('148', '2019-06-18 01:12:09.484000', '51', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('149', '2019-06-18 01:12:09.625000', '50', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('150', '2019-06-18 01:12:09.751000', '49', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('151', '2019-06-18 01:12:09.851000', '48', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('152', '2019-06-18 01:12:09.961000', '47', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('153', '2019-06-18 01:12:10.108000', '46', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('154', '2019-06-18 01:12:10.228000', '45', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('155', '2019-06-18 01:12:10.328000', '44', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('156', '2019-06-18 01:12:10.430000', '43', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('157', '2019-06-18 01:12:10.540000', '42', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('158', '2019-06-18 01:12:10.664000', '41', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('159', '2019-06-18 01:12:10.761000', '40', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('160', '2019-06-18 01:12:10.861000', '39', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('161', '2019-06-18 01:12:10.973000', '38', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('162', '2019-06-18 01:12:11.113000', '37', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('163', '2019-06-18 01:12:11.218000', '36', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('164', '2019-06-18 01:12:11.318000', '35', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('165', '2019-06-18 01:12:11.440000', '34', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('166', '2019-06-18 01:12:11.562000', '33', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('167', '2019-06-18 01:12:11.695000', '32', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('168', '2019-06-18 01:12:11.814000', '31', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('169', '2019-06-18 01:12:11.917000', '30', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('170', '2019-06-18 01:12:12.017000', '29', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('171', '2019-06-18 01:12:12.162000', '28', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('172', '2019-06-18 01:12:12.318000', '27', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('173', '2019-06-18 01:12:12.417000', '26', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('174', '2019-06-18 01:12:12.529000', '25', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('175', '2019-06-18 01:12:12.646000', '24', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('176', '2019-06-18 01:12:12.789000', '23', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('177', '2019-06-18 01:12:12.896000', '22', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('178', '2019-06-18 01:12:13.019000', '21', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('179', '2019-06-18 01:12:13.128000', '20', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('180', '2019-06-18 01:12:13.236000', '19', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('181', '2019-06-18 01:12:13.361000', '18', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('182', '2019-06-18 01:12:13.450000', '17', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('183', '2019-06-18 01:12:13.573000', '16', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('184', '2019-06-18 01:12:13.706000', '15', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('185', '2019-06-18 01:12:13.840000', '14', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('186', '2019-06-18 01:12:13.971000', '13', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('187', '2019-06-18 01:12:14.052000', '12', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('188', '2019-06-18 01:12:14.151000', '11', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('189', '2019-06-18 01:12:14.262000', '10', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('190', '2019-06-18 01:12:20.647000', '9', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('191', '2019-06-18 01:12:20.774000', '8', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('192', '2019-06-18 01:12:20.948000', '7', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('193', '2019-06-18 01:12:21.110000', '6', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('194', '2019-06-18 01:12:21.199000', '5', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('195', '2019-06-18 01:12:21.299000', '4', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('196', '2019-06-18 01:12:21.422000', '3', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('197', '2019-06-18 01:12:21.532000', '2', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('198', '2019-06-18 01:12:21.644000', '1', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('199', '2019-06-18 01:18:29.140000', '218', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('200', '2019-06-18 01:18:29.242000', '217', '“我的老片库”之修复 “六公主”助影迷感受电影魅力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('201', '2019-06-18 01:18:29.348000', '216', '“我的老片库”之使命 “六公主”坚守电影人光影初心', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('202', '2019-06-18 01:18:29.460000', '215', '法律给盗版电影一个说法：做盗版，你的未来就是进监狱', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('203', '2019-06-18 01:18:29.559000', '214', '12岁男孩为何状告父母？《何以为家》带你走近你不愿相信的真实', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('204', '2019-06-18 01:18:29.715000', '213', '从《港珠澳大桥》看纪录片中国化：国之重器，巧夺天工', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('205', '2019-06-18 01:18:29.828000', '212', '京剧重获新生？专家带你解读京剧电影《进京城》的价值与意义', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('206', '2019-06-18 01:18:29.926000', '211', '金砖五国合作《半边天》 如何用电影为女性发声？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('207', '2019-06-18 01:18:30.025000', '210', '浅评《罗马》：科幻导演拍出家庭片，何以成为奖项收割机？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('208', '2019-06-18 01:18:30.137000', '209', '《周恩来回延安》前瞻：伟人贴近生活，平实的表现感人至深', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('209', '2019-06-18 01:18:30.248000', '208', '聚焦“亚洲影视周”：文明与时偕行，商业文艺共发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('210', '2019-06-18 01:18:30.349000', '207', '聚焦2019亚洲电影展：佳片云集文明互鉴，共筑亚洲命运共同体', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('211', '2019-06-18 01:18:30.459000', '206', '聚焦亚洲影视周：贾樟柯领衔电影大师对话，群贤毕至异彩纷呈', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('212', '2019-06-18 01:18:30.572000', '205', '经久不衰的老电影：英雄史诗永不褪色，经典堪为时代赞歌', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('213', '2019-06-18 01:18:30.660000', '204', '从《海蒂和爷爷》看隔代亲：爱非溺爱，陪伴沟通架构亲子桥梁', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('214', '2019-06-18 01:18:30.760000', '203', '亚洲文明对话大会：思维碰撞文化互鉴，挑战与机遇并行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('215', '2019-06-18 01:18:30.871000', '202', '落下帷幕的影视周：文明大会盛况空前，博采众长方能携伴而行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('216', '2019-06-18 01:18:30.970000', '201', '解析《企鹅公路》的多种解读 如何带您找回童年感觉？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('217', '2019-06-18 01:18:31.073000', '200', '刘昊然《双生》口碑遇冷？大胆创新的背后，是亟待完善的细节', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('218', '2019-06-18 01:18:31.171000', '199', '当动漫成为文化潮流：35年《龙珠》，背后是两代人的青春', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('219', '2019-06-18 01:18:31.280000', '198', '当五月天走上影院银幕：是青春的出口，也是文化的记载传递', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('220', '2019-06-18 01:18:31.393000', '197', '浅评《大大哒》：当美被他人严格定义，快乐终将成为伪命题', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('221', '2019-06-18 01:18:31.514000', '196', '职场电影缺席市场的背后：为何国内职场电影与实际相去甚远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('222', '2019-06-18 01:18:31.626000', '195', '《比悲伤更悲伤的故事》好在哪儿 “鸡精汤”怎样才能更高级？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('223', '2019-06-18 01:18:31.727000', '194', '在国产青春片不被看好的当下 《老师·好》如何成功逆袭？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('224', '2019-06-18 01:18:31.827000', '193', '用光影向消防队员致敬 作为电影人还能为英雄做些什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('225', '2019-06-18 01:18:31.947000', '192', '从《人间·喜剧》出发看喜剧电影究竟该如何营销？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('226', '2019-06-18 01:18:32.056000', '191', '清明节缅怀英烈铭记历史 如何在光影中传承英雄精神？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('227', '2019-06-18 01:18:32.155000', '190', '《麦兜我和我妈妈》重映记 除了感动还有什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('228', '2019-06-18 01:18:32.267000', '189', '《海市蜃楼》破谜案 通过道具解锁导演的小心思', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('229', '2019-06-18 01:18:32.475000', '188', '透过《反贪风暴4》看系列港片如何延续竞争力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('230', '2019-06-18 01:18:32.576000', '187', '《调音师》解析 由短片改编成电影是否走了捷径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('231', '2019-06-18 01:18:32.678000', '186', '“AI换脸”技术来了别担心 常用美颜、滤镜更安全', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('232', '2019-06-18 01:18:32.778000', '185', '当“黑洞”遇上“脑洞” 科幻电影可以怎么拍？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('233', '2019-06-18 01:18:32.934000', '184', '第九届北影节为什么会选择《音乐家》作为开幕影片？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('234', '2019-06-18 01:18:33.057000', '183', '《如影随心》关照现实生活 主角名字暗藏玄机等你揭晓', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('235', '2019-06-18 01:18:33.312000', '182', '独家解析《狗眼看人心》带给观众怎样的思考？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('236', '2019-06-18 01:18:33.682000', '181', '“北京大妞”不端着 北京国际电影节竟是这种人设？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('237', '2019-06-18 01:18:34.102000', '180', '聊聊第九届北京国际电影节的“家·国”情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('238', '2019-06-18 01:18:34.280000', '179', '《撞死了一只羊》有何底气正面冲撞《复仇者联盟4：终局之战》？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('239', '2019-06-18 01:18:34.482000', '178', '专业电影翻译人带你从全新的视角解读《复仇者联盟》', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('240', '2019-06-18 01:18:34.648000', '177', '“复联4”作为漫威影业旧系列的终结与新系列的开始意义何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('241', '2019-06-18 01:18:34.857000', '176', '《雪暴》剧本有何魅力可以集结张震、廖凡、黄觉齐加盟？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('242', '2019-06-18 01:18:35.030000', '175', '“我的老片库”之缘起 “六公主”的那些宝藏电影都是怎么来的？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('243', '2019-06-18 01:18:35.388000', '174', '“我的老片库”之归档 “六公主”那么多宝藏电影如何快速查找', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('244', '2019-06-18 01:18:35.623000', '173', '两会前夕全国电影工作座谈会召开 传递出哪些重要信号', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('245', '2019-06-18 01:18:35.778000', '172', '关注全国“两会” 探讨“新时代电影”的发展方向', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('246', '2019-06-18 01:18:35.931000', '171', '关注全国“两会” 探讨中国电影如何提升国际影响力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('247', '2019-06-18 01:18:36.056000', '170', '关注全国“两会” 如何通过电影提升国家文化软实力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('248', '2019-06-18 01:18:36.178000', '169', '关注全国“两会” 探讨新时代下的中国电影评论', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('249', '2019-06-18 01:18:36.288000', '168', '关注全国“两会” 委员成龙分享电影人的扶贫心得', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('250', '2019-06-18 01:18:36.401000', '167', '关注全国“两会” 中国电影的行业规范需进一步完善管理机制', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('251', '2019-06-18 01:18:36.628000', '166', '关注全国“两会” 导演管虎为中国电影创作建言献策', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('252', '2019-06-18 01:18:36.768000', '165', '关注全国“两会” 冯远征为中国电影“兴文化”发声', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('253', '2019-06-18 01:18:36.901000', '164', '关注全国“两会” 探讨新时代中国电影人如何凝心聚力举旗帜', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('254', '2019-06-18 01:18:37.056000', '163', '认认真真活自己 演员撕掉“人设”还剩下什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('255', '2019-06-18 01:18:37.191000', '162', '走一趟真的能够荡涤灵魂？ 电影人请你放过西藏景区', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('256', '2019-06-18 01:18:37.356000', '161', '独家解析：《流浪地球》的视觉特效能值多少票房？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('257', '2019-06-18 01:18:37.469000', '160', '独家解析《阳台上》到底是不是一部“圈钱”的电影？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('258', '2019-06-18 01:18:37.756000', '159', '数据造假现象肆虐 影视行业何时能“脱水”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('259', '2019-06-18 01:18:37.922000', '158', '教你手撕“冒牌”经纪团队 营造良性行业氛围', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('260', '2019-06-18 01:18:38.169000', '157', '《地久天长》没有热映却引来热议的原因在哪儿？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('261', '2019-06-18 01:18:38.390000', '156', '《波西米亚狂想曲》大奖拿不停 却为何依旧争议颇多？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('262', '2019-06-18 01:18:38.527000', '155', '中国银幕上映外片为何总有时差？解读批片市场“众生相”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('263', '2019-06-18 01:18:38.657000', '154', '独家解析《小飞象》：当迪士尼童话遇到蒂姆·波顿', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('264', '2019-06-18 01:18:38.880000', '153', '映前解析《神探蒲松龄》 新鲜元素重塑经典助力团圆年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('265', '2019-06-18 01:18:39.057000', '152', '2019新春电影年夜饭品鉴：繁花似锦 百花盛开', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('266', '2019-06-18 01:18:39.168000', '151', '《疯狂的外星人》映后解读 宁浩带您亲密接触外星人', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('267', '2019-06-18 01:18:39.329000', '150', '与韩寒一起开启飞驰之旅 解读《飞驰人生》何以驰骋春节档', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('268', '2019-06-18 01:18:39.458000', '149', '鄂靖文带您解析《新喜剧之王》 经典回归背后的意义和探索', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('269', '2019-06-18 01:18:39.591000', '148', '独家解析《流浪地球》中国表达带给科幻的独特情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('270', '2019-06-18 01:18:39.768000', '147', '三探《神探蒲松龄》 电影顽童成龙重焕经典玩出古装新花样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('271', '2019-06-18 01:18:39.895000', '146', '从中国功夫到世界先生 成龙如何得到了世界认可？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('272', '2019-06-18 01:18:40.054000', '145', '《小猪佩奇过大年》解析 带您重新认识佩奇和它的家人们', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('273', '2019-06-18 01:18:40.168000', '144', '情人节观影指南：看这些电影是找糖吃还是找罪受？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('274', '2019-06-18 01:18:40.294000', '143', '《飞驰人生》客观试驾 用真实的速度展现热血的故事', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('275', '2019-06-18 01:18:40.412000', '142', '短视频营销别“玩”过了 货不对板当心出现反作用', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('276', '2019-06-18 01:18:40.534000', '141', '透过春节档看中国科幻片如何在科技助力下高速腾飞？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('277', '2019-06-18 01:18:40.645000', '140', '《阿丽塔：战斗天使》能否燃爆市场？ 女版孙悟空受期待', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('278', '2019-06-18 01:18:40.757000', '139', '《朝花夕誓》不只是二次元 突破局限才能不被埋没', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('279', '2019-06-18 01:18:40.900000', '138', '《流浪地球》过后 我们距离《三体》究竟有多远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('280', '2019-06-18 01:18:41.124000', '137', '《绿皮书》缘何打败《罗马》成为奥斯卡最后赢家？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('281', '2019-06-18 01:18:41.247000', '136', '扶贫纪录片《三变山变》如何拉近与青年观众的距离？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('282', '2019-06-18 01:18:41.356000', '135', '《惊奇队长》变“惊奇大妈”？ 这次漫威就是要给你不一样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('283', '2019-06-18 01:18:41.479000', '134', '《驯龙高手3》：如何用他国文化为好莱坞“带货”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('284', '2019-06-18 01:18:41.594000', '133', '开启2019中国电影新篇章 期待在光影的高原上有多高峰挺立', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('285', '2019-06-18 01:18:41.723000', '132', '如果把生活比作电影 你会给2018年取一个什么片名呢？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('286', '2019-06-18 01:18:41.824000', '131', '2019春节档喜剧电影仍占主力 科幻电影异军突起', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('287', '2019-06-18 01:18:41.923000', '130', '《大黄蜂》伴你同行 “改头换面”之后还你真童年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('288', '2019-06-18 01:18:42.010000', '129', '2018中国电影年度调查报告 用数据洞悉中国电影市场发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('289', '2019-06-18 01:18:42.102000', '128', '《来电狂响》不止是电影 还有隐藏在手机中的啼笑人生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('290', '2019-06-18 01:18:42.210000', '127', '《地球最后的夜晚》选错档期？ 好坏定论还需留给时间', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('291', '2019-06-18 01:18:42.347000', '126', '“葛大爷”的新尝试有点跑偏 小岳岳醉酒卖海豚莫名其妙', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('292', '2019-06-18 01:18:42.524000', '125', '《四个春天》用影像记录生活 让平凡日子开出花', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('293', '2019-06-18 01:18:42.641000', '124', '寒假档“动画电影大礼包”拆解：不再是孩子们的专利', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('294', '2019-06-18 01:18:42.812000', '123', '《奎迪：英雄再起》独家解析 走进电影史上的拳击传奇', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('295', '2019-06-18 01:18:42.923000', '122', '《中国推销员》李东学化身打不死的小强 用力过猛略显遗憾', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('296', '2019-06-18 01:18:43.046000', '121', '这里的警察不太冷！《“大”人物》打开警察形象新大门', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('297', '2019-06-18 01:18:43.160000', '120', '《白蛇：缘起》独家解析 畅聊白娘子和许仙的前世今生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('298', '2019-06-18 01:18:43.262000', '119', '独家解析《养家之人》传递出怎样的人文关怀？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('299', '2019-06-18 01:18:43.368000', '118', '《密室逃生》一起破解谜题 似曾相识却又新意满满', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('300', '2019-06-18 01:18:43.491000', '117', '《掠食城市》战斗场面值回票价 燃料不足还需加把火', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('301', '2019-06-18 01:18:43.589000', '116', '《战斗民族养成记》应景又应情 教如何“拜见岳父大人”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('302', '2019-06-18 01:18:43.777000', '115', '《新喜剧之王》回归本心 “粗制滥造”的预告片是障眼法吗？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('303', '2019-06-18 01:18:43.935000', '114', '“麦庄”重拳出击春节档 《廉政风云》能否另辟蹊径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('304', '2019-06-18 01:18:44.058000', '113', '《死侍2：我爱我家》为春节档暖场 “话痨”英雄魅力何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('305', '2019-06-18 01:18:44.201000', '112', '映前解析《疯狂的外星人》 能否带来春节档的疯狂？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('306', '2019-06-18 01:18:44.334000', '111', '映前解析《飞驰人生》 能否赢在“春节档”起跑线上？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('307', '2019-06-18 01:18:44.446000', '110', '映前解析《流浪地球》 中国科幻电影最大的一次冒险', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('308', '2019-06-18 03:12:00.448000', '327', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('309', '2019-06-18 03:12:00.646000', '326', '“我的老片库”之修复 “六公主”助影迷感受电影魅力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('310', '2019-06-18 03:12:00.798000', '325', '“我的老片库”之使命 “六公主”坚守电影人光影初心', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('311', '2019-06-18 03:12:00.909000', '324', '法律给盗版电影一个说法：做盗版，你的未来就是进监狱', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('312', '2019-06-18 03:12:01.009000', '323', '12岁男孩为何状告父母？《何以为家》带你走近你不愿相信的真实', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('313', '2019-06-18 03:12:01.131000', '322', '从《港珠澳大桥》看纪录片中国化：国之重器，巧夺天工', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('314', '2019-06-18 03:12:01.242000', '321', '京剧重获新生？专家带你解读京剧电影《进京城》的价值与意义', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('315', '2019-06-18 03:12:01.339000', '320', '金砖五国合作《半边天》 如何用电影为女性发声？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('316', '2019-06-18 03:12:01.442000', '319', '浅评《罗马》：科幻导演拍出家庭片，何以成为奖项收割机？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('317', '2019-06-18 03:12:01.542000', '318', '《周恩来回延安》前瞻：伟人贴近生活，平实的表现感人至深', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('318', '2019-06-18 03:12:01.654000', '317', '聚焦“亚洲影视周”：文明与时偕行，商业文艺共发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('319', '2019-06-18 03:12:01.764000', '316', '聚焦2019亚洲电影展：佳片云集文明互鉴，共筑亚洲命运共同体', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('320', '2019-06-18 03:12:01.886000', '315', '聚焦亚洲影视周：贾樟柯领衔电影大师对话，群贤毕至异彩纷呈', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('321', '2019-06-18 03:12:01.985000', '314', '经久不衰的老电影：英雄史诗永不褪色，经典堪为时代赞歌', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('322', '2019-06-18 03:12:02.118000', '313', '从《海蒂和爷爷》看隔代亲：爱非溺爱，陪伴沟通架构亲子桥梁', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('323', '2019-06-18 03:12:02.211000', '312', '亚洲文明对话大会：思维碰撞文化互鉴，挑战与机遇并行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('324', '2019-06-18 03:12:02.310000', '311', '落下帷幕的影视周：文明大会盛况空前，博采众长方能携伴而行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('325', '2019-06-18 03:12:02.408000', '310', '解析《企鹅公路》的多种解读 如何带您找回童年感觉？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('326', '2019-06-18 03:12:02.519000', '309', '刘昊然《双生》口碑遇冷？大胆创新的背后，是亟待完善的细节', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('327', '2019-06-18 03:12:02.618000', '308', '当动漫成为文化潮流：35年《龙珠》，背后是两代人的青春', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('328', '2019-06-18 03:12:02.732000', '307', '当五月天走上影院银幕：是青春的出口，也是文化的记载传递', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('329', '2019-06-18 03:12:02.830000', '306', '浅评《大大哒》：当美被他人严格定义，快乐终将成为伪命题', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('330', '2019-06-18 03:12:02.932000', '305', '职场电影缺席市场的背后：为何国内职场电影与实际相去甚远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('331', '2019-06-18 03:12:03.059000', '304', '《比悲伤更悲伤的故事》好在哪儿 “鸡精汤”怎样才能更高级？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('332', '2019-06-18 03:12:03.180000', '303', '在国产青春片不被看好的当下 《老师·好》如何成功逆袭？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('333', '2019-06-18 03:12:03.310000', '302', '用光影向消防队员致敬 作为电影人还能为英雄做些什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('334', '2019-06-18 03:12:03.452000', '301', '从《人间·喜剧》出发看喜剧电影究竟该如何营销？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('335', '2019-06-18 03:12:03.558000', '300', '清明节缅怀英烈铭记历史 如何在光影中传承英雄精神？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('336', '2019-06-18 03:12:03.675000', '299', '《麦兜我和我妈妈》重映记 除了感动还有什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('337', '2019-06-18 03:12:03.773000', '298', '《海市蜃楼》破谜案 通过道具解锁导演的小心思', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('338', '2019-06-18 03:12:03.842000', '297', '透过《反贪风暴4》看系列港片如何延续竞争力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('339', '2019-06-18 03:12:03.930000', '296', '《调音师》解析 由短片改编成电影是否走了捷径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('340', '2019-06-18 03:12:04.016000', '295', '“AI换脸”技术来了别担心 常用美颜、滤镜更安全', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('341', '2019-06-18 03:12:04.130000', '294', '当“黑洞”遇上“脑洞” 科幻电影可以怎么拍？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('342', '2019-06-18 03:12:04.332000', '293', '第九届北影节为什么会选择《音乐家》作为开幕影片？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('343', '2019-06-18 03:12:04.528000', '292', '《如影随心》关照现实生活 主角名字暗藏玄机等你揭晓', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('344', '2019-06-18 03:12:04.631000', '291', '独家解析《狗眼看人心》带给观众怎样的思考？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('345', '2019-06-18 03:12:04.731000', '290', '“北京大妞”不端着 北京国际电影节竟是这种人设？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('346', '2019-06-18 03:12:04.842000', '289', '聊聊第九届北京国际电影节的“家·国”情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('347', '2019-06-18 03:12:04.965000', '288', '《撞死了一只羊》有何底气正面冲撞《复仇者联盟4：终局之战》？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('348', '2019-06-18 03:12:05.202000', '287', '专业电影翻译人带你从全新的视角解读《复仇者联盟》', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('349', '2019-06-18 03:12:05.341000', '286', '“复联4”作为漫威影业旧系列的终结与新系列的开始意义何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('350', '2019-06-18 03:12:05.541000', '285', '《雪暴》剧本有何魅力可以集结张震、廖凡、黄觉齐加盟？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('351', '2019-06-18 03:12:05.685000', '284', '“我的老片库”之缘起 “六公主”的那些宝藏电影都是怎么来的？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('352', '2019-06-18 03:12:05.796000', '283', '“我的老片库”之归档 “六公主”那么多宝藏电影如何快速查找', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('353', '2019-06-18 03:12:05.919000', '282', '两会前夕全国电影工作座谈会召开 传递出哪些重要信号', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('354', '2019-06-18 03:12:06.042000', '281', '关注全国“两会” 探讨“新时代电影”的发展方向', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('355', '2019-06-18 03:12:06.227000', '280', '关注全国“两会” 探讨中国电影如何提升国际影响力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('356', '2019-06-18 03:12:06.340000', '279', '关注全国“两会” 如何通过电影提升国家文化软实力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('357', '2019-06-18 03:12:06.459000', '278', '关注全国“两会” 探讨新时代下的中国电影评论', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('358', '2019-06-18 03:12:06.586000', '277', '关注全国“两会” 委员成龙分享电影人的扶贫心得', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('359', '2019-06-18 03:12:06.710000', '276', '关注全国“两会” 中国电影的行业规范需进一步完善管理机制', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('360', '2019-06-18 03:12:06.819000', '275', '关注全国“两会” 导演管虎为中国电影创作建言献策', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('361', '2019-06-18 03:12:06.919000', '274', '关注全国“两会” 冯远征为中国电影“兴文化”发声', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('362', '2019-06-18 03:12:07.031000', '273', '关注全国“两会” 探讨新时代中国电影人如何凝心聚力举旗帜', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('363', '2019-06-18 03:12:07.130000', '272', '认认真真活自己 演员撕掉“人设”还剩下什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('364', '2019-06-18 03:12:07.231000', '271', '走一趟真的能够荡涤灵魂？ 电影人请你放过西藏景区', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('365', '2019-06-18 03:12:07.351000', '270', '独家解析：《流浪地球》的视觉特效能值多少票房？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('366', '2019-06-18 03:12:07.464000', '269', '独家解析《阳台上》到底是不是一部“圈钱”的电影？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('367', '2019-06-18 03:12:07.574000', '268', '数据造假现象肆虐 影视行业何时能“脱水”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('368', '2019-06-18 03:12:07.676000', '267', '教你手撕“冒牌”经纪团队 营造良性行业氛围', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('369', '2019-06-18 03:12:07.827000', '266', '《地久天长》没有热映却引来热议的原因在哪儿？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('370', '2019-06-18 03:12:07.930000', '265', '《波西米亚狂想曲》大奖拿不停 却为何依旧争议颇多？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('371', '2019-06-18 03:12:08.084000', '264', '中国银幕上映外片为何总有时差？解读批片市场“众生相”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('372', '2019-06-18 03:12:08.259000', '263', '独家解析《小飞象》：当迪士尼童话遇到蒂姆·波顿', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('373', '2019-06-18 03:12:08.382000', '262', '映前解析《神探蒲松龄》 新鲜元素重塑经典助力团圆年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('374', '2019-06-18 03:12:08.475000', '261', '2019新春电影年夜饭品鉴：繁花似锦 百花盛开', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('375', '2019-06-18 03:12:08.605000', '260', '《疯狂的外星人》映后解读 宁浩带您亲密接触外星人', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('376', '2019-06-18 03:12:08.784000', '259', '与韩寒一起开启飞驰之旅 解读《飞驰人生》何以驰骋春节档', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('377', '2019-06-18 03:12:08.898000', '258', '鄂靖文带您解析《新喜剧之王》 经典回归背后的意义和探索', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('378', '2019-06-18 03:12:09.075000', '257', '独家解析《流浪地球》中国表达带给科幻的独特情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('379', '2019-06-18 03:12:09.196000', '256', '三探《神探蒲松龄》 电影顽童成龙重焕经典玩出古装新花样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('380', '2019-06-18 03:12:09.308000', '255', '从中国功夫到世界先生 成龙如何得到了世界认可？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('381', '2019-06-18 03:12:09.408000', '254', '《小猪佩奇过大年》解析 带您重新认识佩奇和它的家人们', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('382', '2019-06-18 03:12:09.508000', '253', '情人节观影指南：看这些电影是找糖吃还是找罪受？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('383', '2019-06-18 03:12:09.708000', '252', '《飞驰人生》客观试驾 用真实的速度展现热血的故事', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('384', '2019-06-18 03:12:09.820000', '251', '短视频营销别“玩”过了 货不对板当心出现反作用', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('385', '2019-06-18 03:12:09.905000', '250', '透过春节档看中国科幻片如何在科技助力下高速腾飞？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('386', '2019-06-18 03:12:10.008000', '249', '《阿丽塔：战斗天使》能否燃爆市场？ 女版孙悟空受期待', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('387', '2019-06-18 03:12:10.108000', '248', '《朝花夕誓》不只是二次元 突破局限才能不被埋没', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('388', '2019-06-18 03:12:10.262000', '247', '《流浪地球》过后 我们距离《三体》究竟有多远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('389', '2019-06-18 03:12:10.519000', '246', '《绿皮书》缘何打败《罗马》成为奥斯卡最后赢家？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('390', '2019-06-18 03:12:10.641000', '245', '扶贫纪录片《三变山变》如何拉近与青年观众的距离？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('391', '2019-06-18 03:12:10.752000', '244', '《惊奇队长》变“惊奇大妈”？ 这次漫威就是要给你不一样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('392', '2019-06-18 03:12:10.885000', '243', '《驯龙高手3》：如何用他国文化为好莱坞“带货”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('393', '2019-06-18 03:12:10.997000', '242', '开启2019中国电影新篇章 期待在光影的高原上有多高峰挺立', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('394', '2019-06-18 03:12:11.108000', '241', '如果把生活比作电影 你会给2018年取一个什么片名呢？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('395', '2019-06-18 03:12:11.290000', '240', '2019春节档喜剧电影仍占主力 科幻电影异军突起', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('396', '2019-06-18 03:12:11.397000', '239', '《大黄蜂》伴你同行 “改头换面”之后还你真童年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('397', '2019-06-18 03:12:11.517000', '238', '2018中国电影年度调查报告 用数据洞悉中国电影市场发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('398', '2019-06-18 03:12:11.631000', '237', '《来电狂响》不止是电影 还有隐藏在手机中的啼笑人生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('399', '2019-06-18 03:12:11.731000', '236', '《地球最后的夜晚》选错档期？ 好坏定论还需留给时间', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('400', '2019-06-18 03:12:11.843000', '235', '“葛大爷”的新尝试有点跑偏 小岳岳醉酒卖海豚莫名其妙', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('401', '2019-06-18 03:12:11.953000', '234', '《四个春天》用影像记录生活 让平凡日子开出花', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('402', '2019-06-18 03:12:12.053000', '233', '寒假档“动画电影大礼包”拆解：不再是孩子们的专利', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('403', '2019-06-18 03:12:12.153000', '232', '《奎迪：英雄再起》独家解析 走进电影史上的拳击传奇', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('404', '2019-06-18 03:12:12.252000', '231', '《中国推销员》李东学化身打不死的小强 用力过猛略显遗憾', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('405', '2019-06-18 03:12:12.365000', '230', '这里的警察不太冷！《“大”人物》打开警察形象新大门', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('406', '2019-06-18 03:12:12.484000', '229', '《白蛇：缘起》独家解析 畅聊白娘子和许仙的前世今生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('407', '2019-06-18 03:12:12.605000', '228', '独家解析《养家之人》传递出怎样的人文关怀？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('408', '2019-06-18 03:12:12.719000', '227', '《密室逃生》一起破解谜题 似曾相识却又新意满满', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('409', '2019-06-18 03:12:12.819000', '226', '《掠食城市》战斗场面值回票价 燃料不足还需加把火', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('410', '2019-06-18 03:12:12.896000', '225', '《战斗民族养成记》应景又应情 教如何“拜见岳父大人”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('411', '2019-06-18 03:12:12.975000', '224', '《新喜剧之王》回归本心 “粗制滥造”的预告片是障眼法吗？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('412', '2019-06-18 03:12:13.084000', '223', '“麦庄”重拳出击春节档 《廉政风云》能否另辟蹊径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('413', '2019-06-18 03:12:13.164000', '222', '《死侍2：我爱我家》为春节档暖场 “话痨”英雄魅力何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('414', '2019-06-18 03:12:13.264000', '221', '映前解析《疯狂的外星人》 能否带来春节档的疯狂？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('415', '2019-06-18 03:12:13.360000', '220', '映前解析《飞驰人生》 能否赢在“春节档”起跑线上？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('416', '2019-06-18 03:12:13.461000', '219', '映前解析《流浪地球》 中国科幻电影最大的一次冒险', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('417', '2019-06-18 03:27:25.510000', '436', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('418', '2019-06-18 03:27:25.643000', '435', '“我的老片库”之修复 “六公主”助影迷感受电影魅力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('419', '2019-06-18 03:27:25.762000', '434', '“我的老片库”之使命 “六公主”坚守电影人光影初心', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('420', '2019-06-18 03:27:25.889000', '433', '法律给盗版电影一个说法：做盗版，你的未来就是进监狱', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('421', '2019-06-18 03:27:26.319000', '432', '12岁男孩为何状告父母？《何以为家》带你走近你不愿相信的真实', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('422', '2019-06-18 03:27:26.439000', '431', '从《港珠澳大桥》看纪录片中国化：国之重器，巧夺天工', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('423', '2019-06-18 03:27:26.553000', '430', '京剧重获新生？专家带你解读京剧电影《进京城》的价值与意义', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('424', '2019-06-18 03:27:26.662000', '429', '金砖五国合作《半边天》 如何用电影为女性发声？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('425', '2019-06-18 03:27:26.744000', '428', '浅评《罗马》：科幻导演拍出家庭片，何以成为奖项收割机？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('426', '2019-06-18 03:27:26.858000', '427', '《周恩来回延安》前瞻：伟人贴近生活，平实的表现感人至深', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('427', '2019-06-18 03:27:26.957000', '426', '聚焦“亚洲影视周”：文明与时偕行，商业文艺共发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('428', '2019-06-18 03:27:27.068000', '425', '聚焦2019亚洲电影展：佳片云集文明互鉴，共筑亚洲命运共同体', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('429', '2019-06-18 03:27:27.231000', '424', '聚焦亚洲影视周：贾樟柯领衔电影大师对话，群贤毕至异彩纷呈', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('430', '2019-06-18 03:27:27.361000', '423', '经久不衰的老电影：英雄史诗永不褪色，经典堪为时代赞歌', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('431', '2019-06-18 03:27:27.531000', '422', '从《海蒂和爷爷》看隔代亲：爱非溺爱，陪伴沟通架构亲子桥梁', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('432', '2019-06-18 03:27:27.680000', '421', '亚洲文明对话大会：思维碰撞文化互鉴，挑战与机遇并行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('433', '2019-06-18 03:27:27.790000', '420', '落下帷幕的影视周：文明大会盛况空前，博采众长方能携伴而行', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('434', '2019-06-18 03:27:27.889000', '419', '解析《企鹅公路》的多种解读 如何带您找回童年感觉？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('435', '2019-06-18 03:27:27.980000', '418', '刘昊然《双生》口碑遇冷？大胆创新的背后，是亟待完善的细节', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('436', '2019-06-18 03:27:28.078000', '417', '当动漫成为文化潮流：35年《龙珠》，背后是两代人的青春', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('437', '2019-06-18 03:27:28.180000', '416', '当五月天走上影院银幕：是青春的出口，也是文化的记载传递', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('438', '2019-06-18 03:27:28.280000', '415', '浅评《大大哒》：当美被他人严格定义，快乐终将成为伪命题', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('439', '2019-06-18 03:27:28.379000', '414', '职场电影缺席市场的背后：为何国内职场电影与实际相去甚远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('440', '2019-06-18 03:27:28.478000', '413', '《比悲伤更悲伤的故事》好在哪儿 “鸡精汤”怎样才能更高级？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('441', '2019-06-18 03:27:28.580000', '412', '在国产青春片不被看好的当下 《老师·好》如何成功逆袭？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('442', '2019-06-18 03:27:28.702000', '411', '用光影向消防队员致敬 作为电影人还能为英雄做些什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('443', '2019-06-18 03:27:28.791000', '410', '从《人间·喜剧》出发看喜剧电影究竟该如何营销？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('444', '2019-06-18 03:27:28.901000', '409', '清明节缅怀英烈铭记历史 如何在光影中传承英雄精神？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('445', '2019-06-18 03:27:29.002000', '408', '《麦兜我和我妈妈》重映记 除了感动还有什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('446', '2019-06-18 03:27:29.113000', '407', '《海市蜃楼》破谜案 通过道具解锁导演的小心思', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('447', '2019-06-18 03:27:29.213000', '406', '透过《反贪风暴4》看系列港片如何延续竞争力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('448', '2019-06-18 03:27:29.324000', '405', '《调音师》解析 由短片改编成电影是否走了捷径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('449', '2019-06-18 03:27:29.401000', '404', '“AI换脸”技术来了别担心 常用美颜、滤镜更安全', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('450', '2019-06-18 03:27:29.500000', '403', '当“黑洞”遇上“脑洞” 科幻电影可以怎么拍？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('451', '2019-06-18 03:27:29.603000', '402', '第九届北影节为什么会选择《音乐家》作为开幕影片？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('452', '2019-06-18 03:27:29.713000', '401', '《如影随心》关照现实生活 主角名字暗藏玄机等你揭晓', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('453', '2019-06-18 03:27:29.801000', '400', '独家解析《狗眼看人心》带给观众怎样的思考？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('454', '2019-06-18 03:27:29.902000', '399', '“北京大妞”不端着 北京国际电影节竟是这种人设？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('455', '2019-06-18 03:27:30.026000', '398', '聊聊第九届北京国际电影节的“家·国”情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('456', '2019-06-18 03:27:30.112000', '397', '《撞死了一只羊》有何底气正面冲撞《复仇者联盟4：终局之战》？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('457', '2019-06-18 03:27:30.222000', '396', '专业电影翻译人带你从全新的视角解读《复仇者联盟》', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('458', '2019-06-18 03:27:30.324000', '395', '“复联4”作为漫威影业旧系列的终结与新系列的开始意义何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('459', '2019-06-18 03:27:30.423000', '394', '《雪暴》剧本有何魅力可以集结张震、廖凡、黄觉齐加盟？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('460', '2019-06-18 03:27:30.535000', '393', '“我的老片库”之缘起 “六公主”的那些宝藏电影都是怎么来的？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('461', '2019-06-18 03:27:30.647000', '392', '“我的老片库”之归档 “六公主”那么多宝藏电影如何快速查找', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('462', '2019-06-18 03:27:30.780000', '391', '两会前夕全国电影工作座谈会召开 传递出哪些重要信号', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('463', '2019-06-18 03:27:30.867000', '390', '关注全国“两会” 探讨“新时代电影”的发展方向', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('464', '2019-06-18 03:27:30.957000', '389', '关注全国“两会” 探讨中国电影如何提升国际影响力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('465', '2019-06-18 03:27:31.068000', '388', '关注全国“两会” 如何通过电影提升国家文化软实力', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('466', '2019-06-18 03:27:31.180000', '387', '关注全国“两会” 探讨新时代下的中国电影评论', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('467', '2019-06-18 03:27:31.279000', '386', '关注全国“两会” 委员成龙分享电影人的扶贫心得', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('468', '2019-06-18 03:27:31.379000', '385', '关注全国“两会” 中国电影的行业规范需进一步完善管理机制', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('469', '2019-06-18 03:27:31.468000', '384', '关注全国“两会” 导演管虎为中国电影创作建言献策', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('470', '2019-06-18 03:27:31.568000', '383', '关注全国“两会” 冯远征为中国电影“兴文化”发声', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('471', '2019-06-18 03:27:31.668000', '382', '关注全国“两会” 探讨新时代中国电影人如何凝心聚力举旗帜', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('472', '2019-06-18 03:27:31.800000', '381', '认认真真活自己 演员撕掉“人设”还剩下什么？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('473', '2019-06-18 03:27:31.914000', '380', '走一趟真的能够荡涤灵魂？ 电影人请你放过西藏景区', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('474', '2019-06-18 03:27:32.023000', '379', '独家解析：《流浪地球》的视觉特效能值多少票房？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('475', '2019-06-18 03:27:32.134000', '378', '独家解析《阳台上》到底是不是一部“圈钱”的电影？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('476', '2019-06-18 03:27:32.234000', '377', '数据造假现象肆虐 影视行业何时能“脱水”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('477', '2019-06-18 03:27:32.346000', '376', '教你手撕“冒牌”经纪团队 营造良性行业氛围', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('478', '2019-06-18 03:27:32.457000', '375', '《地久天长》没有热映却引来热议的原因在哪儿？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('479', '2019-06-18 03:27:32.567000', '374', '《波西米亚狂想曲》大奖拿不停 却为何依旧争议颇多？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('480', '2019-06-18 03:27:32.667000', '373', '中国银幕上映外片为何总有时差？解读批片市场“众生相”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('481', '2019-06-18 03:27:32.779000', '372', '独家解析《小飞象》：当迪士尼童话遇到蒂姆·波顿', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('482', '2019-06-18 03:27:32.880000', '371', '映前解析《神探蒲松龄》 新鲜元素重塑经典助力团圆年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('483', '2019-06-18 03:27:32.979000', '370', '2019新春电影年夜饭品鉴：繁花似锦 百花盛开', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('484', '2019-06-18 03:27:33.101000', '369', '《疯狂的外星人》映后解读 宁浩带您亲密接触外星人', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('485', '2019-06-18 03:27:33.201000', '368', '与韩寒一起开启飞驰之旅 解读《飞驰人生》何以驰骋春节档', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('486', '2019-06-18 03:27:33.301000', '367', '鄂靖文带您解析《新喜剧之王》 经典回归背后的意义和探索', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('487', '2019-06-18 03:27:33.412000', '366', '独家解析《流浪地球》中国表达带给科幻的独特情怀', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('488', '2019-06-18 03:27:33.523000', '365', '三探《神探蒲松龄》 电影顽童成龙重焕经典玩出古装新花样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('489', '2019-06-18 03:27:33.634000', '364', '从中国功夫到世界先生 成龙如何得到了世界认可？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('490', '2019-06-18 03:27:33.734000', '363', '《小猪佩奇过大年》解析 带您重新认识佩奇和它的家人们', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('491', '2019-06-18 03:27:33.835000', '362', '情人节观影指南：看这些电影是找糖吃还是找罪受？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('492', '2019-06-18 03:27:33.945000', '361', '《飞驰人生》客观试驾 用真实的速度展现热血的故事', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('493', '2019-06-18 03:27:34.045000', '360', '短视频营销别“玩”过了 货不对板当心出现反作用', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('494', '2019-06-18 03:27:34.146000', '359', '透过春节档看中国科幻片如何在科技助力下高速腾飞？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('495', '2019-06-18 03:27:34.259000', '358', '《阿丽塔：战斗天使》能否燃爆市场？ 女版孙悟空受期待', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('496', '2019-06-18 03:27:34.389000', '357', '《朝花夕誓》不只是二次元 突破局限才能不被埋没', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('497', '2019-06-18 03:27:34.597000', '356', '《流浪地球》过后 我们距离《三体》究竟有多远？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('498', '2019-06-18 03:27:34.780000', '355', '《绿皮书》缘何打败《罗马》成为奥斯卡最后赢家？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('499', '2019-06-18 03:27:34.878000', '354', '扶贫纪录片《三变山变》如何拉近与青年观众的距离？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('500', '2019-06-18 03:27:34.989000', '353', '《惊奇队长》变“惊奇大妈”？ 这次漫威就是要给你不一样', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('501', '2019-06-18 03:27:35.125000', '352', '《驯龙高手3》：如何用他国文化为好莱坞“带货”？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('502', '2019-06-18 03:27:35.223000', '351', '开启2019中国电影新篇章 期待在光影的高原上有多高峰挺立', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('503', '2019-06-18 03:27:35.334000', '350', '如果把生活比作电影 你会给2018年取一个什么片名呢？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('504', '2019-06-18 03:27:35.456000', '349', '2019春节档喜剧电影仍占主力 科幻电影异军突起', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('505', '2019-06-18 03:27:35.557000', '348', '《大黄蜂》伴你同行 “改头换面”之后还你真童年', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('506', '2019-06-18 03:27:35.657000', '347', '2018中国电影年度调查报告 用数据洞悉中国电影市场发展', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('507', '2019-06-18 03:27:35.745000', '346', '《来电狂响》不止是电影 还有隐藏在手机中的啼笑人生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('508', '2019-06-18 03:27:35.842000', '345', '《地球最后的夜晚》选错档期？ 好坏定论还需留给时间', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('509', '2019-06-18 03:27:35.967000', '344', '“葛大爷”的新尝试有点跑偏 小岳岳醉酒卖海豚莫名其妙', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('510', '2019-06-18 03:27:36.046000', '343', '《四个春天》用影像记录生活 让平凡日子开出花', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('511', '2019-06-18 03:27:36.146000', '342', '寒假档“动画电影大礼包”拆解：不再是孩子们的专利', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('512', '2019-06-18 03:27:36.257000', '341', '《奎迪：英雄再起》独家解析 走进电影史上的拳击传奇', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('513', '2019-06-18 03:27:36.346000', '340', '《中国推销员》李东学化身打不死的小强 用力过猛略显遗憾', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('514', '2019-06-18 03:27:36.446000', '339', '这里的警察不太冷！《“大”人物》打开警察形象新大门', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('515', '2019-06-18 03:27:36.547000', '338', '《白蛇：缘起》独家解析 畅聊白娘子和许仙的前世今生', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('516', '2019-06-18 03:27:36.657000', '337', '独家解析《养家之人》传递出怎样的人文关怀？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('517', '2019-06-18 03:27:36.757000', '336', '《密室逃生》一起破解谜题 似曾相识却又新意满满', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('518', '2019-06-18 03:27:36.955000', '335', '《掠食城市》战斗场面值回票价 燃料不足还需加把火', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('519', '2019-06-18 03:27:37.056000', '334', '《战斗民族养成记》应景又应情 教如何“拜见岳父大人”', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('520', '2019-06-18 03:27:37.135000', '333', '《新喜剧之王》回归本心 “粗制滥造”的预告片是障眼法吗？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('521', '2019-06-18 03:27:37.237000', '332', '“麦庄”重拳出击春节档 《廉政风云》能否另辟蹊径？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('522', '2019-06-18 03:27:37.345000', '331', '《死侍2：我爱我家》为春节档暖场 “话痨”英雄魅力何在？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('523', '2019-06-18 03:27:37.457000', '330', '映前解析《疯狂的外星人》 能否带来春节档的疯狂？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('524', '2019-06-18 03:27:37.579000', '329', '映前解析《飞驰人生》 能否赢在“春节档”起跑线上？', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('525', '2019-06-18 03:27:37.689000', '328', '映前解析《流浪地球》 中国科幻电影最大的一次冒险', '3', '', '16', '2');
INSERT INTO `django_admin_log` VALUES ('526', '2019-06-18 16:32:29.060394', '8', 'Django数据迁移（sqlite和mysql）', '1', '[{\"added\": {}}]', '7', '2');
INSERT INTO `django_admin_log` VALUES ('527', '2019-06-18 16:33:53.796745', '8', 'Django数据迁移（sqlite和mysql）', '2', '[{\"changed\": {\"fields\": [\"content\"]}}]', '7', '2');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('7', 'blog', 'blog');
INSERT INTO `django_content_type` VALUES ('8', 'blog', 'blogtype');
INSERT INTO `django_content_type` VALUES ('14', 'comment', 'comment');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('15', 'movieIntroduce', 'goodmovie');
INSERT INTO `django_content_type` VALUES ('16', 'movieIntroduce', 'jsonmovie');
INSERT INTO `django_content_type` VALUES ('13', 'MyStatistics', 'readdetail');
INSERT INTO `django_content_type` VALUES ('12', 'MyStatistics', 'readnum');
INSERT INTO `django_content_type` VALUES ('9', 'read_statistics', 'readdetail');
INSERT INTO `django_content_type` VALUES ('10', 'read_statistics', 'readnum');
INSERT INTO `django_content_type` VALUES ('11', 'read_statistics', 'read_num');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2019-06-18 16:14:18.527005');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2019-06-18 16:14:19.847965');
INSERT INTO `django_migrations` VALUES ('3', 'MyStatistics', '0001_initial', '2019-06-18 16:14:20.474251');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0001_initial', '2019-06-18 16:14:24.074438');
INSERT INTO `django_migrations` VALUES ('5', 'admin', '0001_initial', '2019-06-18 16:14:32.096603');
INSERT INTO `django_migrations` VALUES ('6', 'admin', '0002_logentry_remove_auto_add', '2019-06-18 16:14:33.589453');
INSERT INTO `django_migrations` VALUES ('7', 'admin', '0003_logentry_add_action_flag_choices', '2019-06-18 16:14:33.623058');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0002_alter_permission_name_max_length', '2019-06-18 16:14:34.561915');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0003_alter_user_email_max_length', '2019-06-18 16:14:35.814441');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0004_alter_user_username_opts', '2019-06-18 16:14:35.853142');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0005_alter_user_last_login_null', '2019-06-18 16:14:36.392533');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0006_require_contenttypes_0002', '2019-06-18 16:14:36.448919');
INSERT INTO `django_migrations` VALUES ('13', 'auth', '0007_alter_validators_add_error_messages', '2019-06-18 16:14:36.477817');
INSERT INTO `django_migrations` VALUES ('14', 'auth', '0008_alter_user_username_max_length', '2019-06-18 16:14:38.124898');
INSERT INTO `django_migrations` VALUES ('15', 'auth', '0009_alter_user_last_name_max_length', '2019-06-18 16:14:38.869023');
INSERT INTO `django_migrations` VALUES ('16', 'auth', '0010_alter_group_name_max_length', '2019-06-18 16:14:39.501845');
INSERT INTO `django_migrations` VALUES ('17', 'auth', '0011_update_proxy_permissions', '2019-06-18 16:14:39.534261');
INSERT INTO `django_migrations` VALUES ('18', 'blog', '0001_initial', '2019-06-18 16:14:40.380211');
INSERT INTO `django_migrations` VALUES ('19', 'comment', '0001_initial', '2019-06-18 16:14:42.165095');
INSERT INTO `django_migrations` VALUES ('20', 'movieIntroduce', '0001_initial', '2019-06-18 16:14:44.072414');
INSERT INTO `django_migrations` VALUES ('21', 'sessions', '0001_initial', '2019-06-18 16:14:44.638869');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2vur2vdr3umypcghv97p3e7339wttk8y', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 13:26:14.983000');
INSERT INTO `django_session` VALUES ('2ys6bm36e9r4ibsjd8s7fv1cskajy26y', 'ZGI0OWJhYzI4ZDgwZTEyZDFkMjJkMWYyYTlmNmI3YWZhMWVkZDBkOTp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3OGYwZjdhMTMwMWJkZjkxMWUzMmE0MDIzM2UxNDM4ZGVmMTU2M2I2In0=', '2019-07-01 10:12:11.532000');
INSERT INTO `django_session` VALUES ('3n3zuq7coac3ooaca2eidhps911e24en', 'ODQzZGE1ZTQ0YmVjZWQzMTZmMDRhOTVkNWNiMGQzZThjOGRhNWU0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OWUwODBiY2YwNzM5ZTdkZWIwN2U0YTg1Y2Y2OTE1M2Y5MWE2ZmYxIn0=', '2019-06-30 11:40:12.588000');
INSERT INTO `django_session` VALUES ('4vd4jm3vgco81e4yyyql5jxdro3g49o3', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:13:03.186000');
INSERT INTO `django_session` VALUES ('6sw92eskvp0ik7snlxrd41zxej4yuvvq', 'ODQzZGE1ZTQ0YmVjZWQzMTZmMDRhOTVkNWNiMGQzZThjOGRhNWU0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OWUwODBiY2YwNzM5ZTdkZWIwN2U0YTg1Y2Y2OTE1M2Y5MWE2ZmYxIn0=', '2019-07-02 16:23:28.961268');
INSERT INTO `django_session` VALUES ('7bghiw2q7oam6ecgartynlazlrws4zla', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:15:53.788000');
INSERT INTO `django_session` VALUES ('9l5f46ub3bubzaohgac3r4v9hia2ji18', 'ODQzZGE1ZTQ0YmVjZWQzMTZmMDRhOTVkNWNiMGQzZThjOGRhNWU0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OWUwODBiY2YwNzM5ZTdkZWIwN2U0YTg1Y2Y2OTE1M2Y5MWE2ZmYxIn0=', '2019-06-01 09:16:06.663000');
INSERT INTO `django_session` VALUES ('dkz3ub73fzb47gxivvtiiijkciqm18lu', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 10:22:32.411000');
INSERT INTO `django_session` VALUES ('f81vnusdlxflb145j91tguxrunarl9td', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 12:53:10.130000');
INSERT INTO `django_session` VALUES ('j4elj2bxf0zrizrmcmzml8biw5k0e9nm', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:15:23.230000');
INSERT INTO `django_session` VALUES ('kslvlmz2uh7u4qwozzz40mx1i4vd803k', 'ZTg2NmFjNmNiY2RiNWE4Mjc5Yzk5MTI0MzI3MzAyY2JiMTY1ZDA5Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5N2RhMzk4YTFkMmFkMTQ3OGI4NjI5MTEzNmQ5OGFlNWJiZDA0Y2Q3In0=', '2019-05-27 14:56:54.995000');
INSERT INTO `django_session` VALUES ('l88nar51snlesun2lb0vga6kn91izf85', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:15:01.549000');
INSERT INTO `django_session` VALUES ('p8bvdb54zds5ewrvz7nb89lvlugru0zw', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 13:26:53.786000');
INSERT INTO `django_session` VALUES ('vfriy7x1ukf8nuyfl39g48eh59tq1lul', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:13:25.743000');
INSERT INTO `django_session` VALUES ('wozj7csp9rhzhlt8kmy3mc2ojom7d8wr', 'ODQzZGE1ZTQ0YmVjZWQzMTZmMDRhOTVkNWNiMGQzZThjOGRhNWU0YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OWUwODBiY2YwNzM5ZTdkZWIwN2U0YTg1Y2Y2OTE1M2Y5MWE2ZmYxIn0=', '2019-06-04 12:48:36.625000');
INSERT INTO `django_session` VALUES ('xe4yxfljlf2dlb0udp7tkv6xfxfb3qw0', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 08:42:41.094000');
INSERT INTO `django_session` VALUES ('yucwp410ek045acmut6u0vo4ww5wtkd4', 'NTM4NTkzM2ZkMzk1ZDhjYTE5MGQ5YjNlNzFjNzQ1MjNmMjI2MzZiNDp7fQ==', '2019-06-01 09:23:24.996000');

-- ----------------------------
-- Table structure for `movieintroduce_goodmovie`
-- ----------------------------
DROP TABLE IF EXISTS `movieintroduce_goodmovie`;
CREATE TABLE `movieintroduce_goodmovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `introduce` varchar(500) NOT NULL,
  `score` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movieintroduce_goodmovie
-- ----------------------------
INSERT INTO `movieintroduce_goodmovie` VALUES ('1', '\n绿皮书\n/绿簿旅友(港)/幸福绿皮书(台)\n', '2018-09-11(多伦多电影节) / 2018-11-16(美国) / 2019-03-01(中国大陆) / 维果·莫腾森 / 马赫沙拉·阿里 / 琳达·卡德里尼 / 塞巴斯蒂安·马尼斯科 / 迪米特·D·马里诺夫 / 迈克·哈顿 / P·J·伯恩 / 乔·柯蒂斯 / 玛姬·尼克松 / 冯·刘易斯 / 乔恩·索特兰...', '8.9', 'movie_images/0.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('2', '\n我们\n/我们·异(港)\n', '2019-03-08(西南偏南电影节) / 2019-03-22(美国) / 露皮塔·尼永奥 / 温斯顿·杜克 / 伊丽莎白·莫斯 / 蒂姆·海德克 / 莎哈迪·赖特·约瑟夫 / 伊万·艾利克斯 / 叶海亚·阿卜杜勒-迈丁 / 安娜·迪奥普 / 卡莉·谢尔顿 / 诺尔·谢尔顿 / 麦迪逊·柯里...', '6.6', 'movie_images/1.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('3', '\n行骗天下：运势篇\n/信用诈欺师JP：运势篇\n', '2019-05-18(日本) / 长泽雅美 / 东出昌大 / 小日向文世 / 小手伸也 / 织田梨沙 / 北村一辉 / 广末凉子 / 中山美穗 / 日本 / 田中亮 / 105分钟 / 行骗天下：运势篇 / 剧情 / 喜剧 / 古泽良太 Ryota Kosawa / 日语', '8.4', 'movie_images/2.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('4', '\n风中有朵雨做的云\n/地狱恋人/地狱情人\n', '2018-11-09(台北金马影展) / 2019-04-04(中国大陆) / 井柏然 / 宋佳 / 马思纯 / 秦昊 / 陈妍希 / 张颂文 / 陈冠希 / 颜卓灵 / 王维申 / 胡伶 / 黄伊凡 / 陈伟榕 / 单宝中 / 梁致力 / 罗义民 / 郭佳 / 牛钸斯 / 姜昕 / 中国大陆 / 娄烨 / 124分钟(中国大陆)...', '7.3', 'movie_images/3.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('5', '\n比悲伤更悲伤的故事\n/MoreThanBlue\n', '2018-11-30(台湾) / 2019-03-14(中国大陆) / 陈意涵 / 刘以豪 / 张书豪 / 陈庭妮 / 吴映洁 / 禾浩辰 / 游大庆 / 石知田 / 黄丽玲 / 姚爱宁 / 张允曦 / 海芬 / 台湾 / 林孝谦 / 105分钟 / 比悲伤更悲伤的故事 / 爱情 / 吕安弦 Lungshi Lü / 汉语普通话', '4.8', 'movie_images/4.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('6', '\n疾速备战\n/疾速追杀3/疾速逃亡\n', '2019-05-17(美国) / 基努·里维斯 / 哈莉·贝瑞 / 劳伦斯·菲什伯恩 / 安杰丽卡·休斯顿 / 伊恩·麦柯肖恩 / 真田广之 / 马克·达卡斯考斯 / 艾莎·凯特·狄龙 / 兰斯·莱迪克 / 萨伊德·塔格马奥 / 杰罗姆·弗林 / 杰森·曼兹沃克斯 / 托拜厄斯·西格尔...', '8.1', 'movie_images/5.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('7', '\n驯龙高手3\n/驯龙记3(港)/驯龙高手3：隐秘的世界\n', '2019-01-03(澳大利亚) / 2019-02-22(美国) / 2019-03-01(中国大陆) / 杰伊·巴鲁切尔 / 亚美莉卡·费雷拉 / F·默里·亚伯拉罕 / 凯特·布兰切特 / 杰拉德·巴特勒 / 克雷格·费格森 / 乔纳·希尔 / 克里斯托夫·梅兹-普莱瑟 / 克里斯汀·韦格 / 基特·哈灵顿...', '7.5', 'movie_images/6.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('8', '\n如影随心\n/可遇可求/Lostinlove\n', '2019-04-19(中国大陆) / 陈晓 / 杜鹃 / 王嘉 / 马苏 / 华少 / 谢依霖 / 关晓彤 / 高晓攀 / 赵震 / 庞奕欣 / 侯佳伟 / 王毅凡 / 冯波 / 林佳仪  / 孙毓晗 / 柯蓝 / 中国大陆 / 霍建起 / 96分钟 / 剧情 / 爱情 / 霍建起 Jianqi Huo / 汉语普通话', '4.7', 'movie_images/7.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('9', '\n撞死了一只羊\n/Jinpa\n', '2018-09-04(威尼斯电影节) / 2019-04-26(中国大陆) / 金巴 / 更登彭措 / 索朗旺姆 / 中国大陆 / 万玛才旦 / 87分钟 / 剧情 / 万玛才旦 Pema Tseden / 藏语', '7.2', 'movie_images/8.jpg');
INSERT INTO `movieintroduce_goodmovie` VALUES ('10', '\n过春天\n/分隔线/佩佩\n', '2018-09-08(多伦多电影节) / 2019-03-15(中国大陆) / 黄尧 / 孙阳 / 汤加文 / 倪虹洁 / 江美仪 / 廖启智 / 焦刚 / 陈健朗 / 中国大陆 / 白雪 / 99分钟 / 剧情 / 白雪 Xue Bai / 林美如 Meiru Lin / 汉语普通话 / 粤语', '7.8', 'movie_images/9.jpg');

-- ----------------------------
-- Table structure for `movieintroduce_jsonmovie`
-- ----------------------------
DROP TABLE IF EXISTS `movieintroduce_jsonmovie`;
CREATE TABLE `movieintroduce_jsonmovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `period` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movieintroduce_jsonmovie
-- ----------------------------
INSERT INTO `movieintroduce_jsonmovie` VALUES ('437', '映前解析《流浪地球》 中国科幻电影最大的一次冒险', 'http://www.1905.com/video/play/1348081.shtml', 'json_images/2019-01-31.jpg', '2019-01-31期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('438', '映前解析《飞驰人生》 能否赢在“春节档”起跑线上？', 'http://www.1905.com/video/play/1348000.shtml', 'json_images/2019-01-30.jpg', '2019-01-30期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('439', '映前解析《疯狂的外星人》 能否带来春节档的疯狂？', 'http://www.1905.com/video/play/1347706.shtml', 'json_images/2019-01-29.jpg', '2019-01-29期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('440', '《死侍2：我爱我家》为春节档暖场 “话痨”英雄魅力何在？', 'http://www.1905.com/video/play/1347230.shtml', 'json_images/2019-01-28.jpg', '2019-01-28期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('441', '“麦庄”重拳出击春节档 《廉政风云》能否另辟蹊径？', 'http://www.1905.com/video/play/1346607.shtml', 'json_images/2019-01-25.jpg', '2019-01-25期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('442', '《新喜剧之王》回归本心 “粗制滥造”的预告片是障眼法吗？', 'http://www.1905.com/video/play/1346529.shtml', 'json_images/2019-01-24.jpg', '2019-01-24期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('443', '《战斗民族养成记》应景又应情 教如何“拜见岳父大人”', 'http://www.1905.com/video/play/1345987.shtml', 'json_images/2019-01-23.jpg', '2019-01-23期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('444', '《掠食城市》战斗场面值回票价 燃料不足还需加把火', 'http://www.1905.com/video/play/1345719.shtml', 'json_images/2019-01-22.jpg', '2019-01-22期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('445', '《密室逃生》一起破解谜题 似曾相识却又新意满满', 'http://www.1905.com/video/play/1345337.shtml', 'json_images/2019-01-21.jpg', '2019-01-21期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('446', '独家解析《养家之人》传递出怎样的人文关怀？', 'http://www.1905.com/video/play/1344772.shtml', 'json_images/2019-01-18.jpg', '2019-01-18期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('447', '《白蛇：缘起》独家解析 畅聊白娘子和许仙的前世今生', 'http://www.1905.com/video/play/1344456.shtml', 'json_images/2019-01-17.jpg', '2019-01-17期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('448', '这里的警察不太冷！《“大”人物》打开警察形象新大门', 'http://www.1905.com/video/play/1344134.shtml', 'json_images/2019-01-16.jpg', '2019-01-16期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('449', '《中国推销员》李东学化身打不死的小强 用力过猛略显遗憾', 'http://www.1905.com/video/play/1343783.shtml', 'json_images/2019-01-15.jpg', '2019-01-15期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('450', '《奎迪：英雄再起》独家解析 走进电影史上的拳击传奇', 'http://www.1905.com/video/play/1343358.shtml', 'json_images/2019-01-14.jpg', '2019-01-14期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('451', '寒假档“动画电影大礼包”拆解：不再是孩子们的专利', 'http://www.1905.com/video/play/1342695.shtml', 'json_images/2019-01-11.jpg', '2019-01-11期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('452', '《四个春天》用影像记录生活 让平凡日子开出花', 'http://www.1905.com/video/play/1342238.shtml', 'json_images/2019-01-10.jpg', '2019-01-10期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('453', '“葛大爷”的新尝试有点跑偏 小岳岳醉酒卖海豚莫名其妙', 'http://www.1905.com/video/play/1341894.shtml', 'json_images/2019-01-09.jpg', '2019-01-09期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('454', '《地球最后的夜晚》选错档期？ 好坏定论还需留给时间', 'http://www.1905.com/video/play/1341548.shtml', 'json_images/2019-01-08.jpg', '2019-01-08期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('455', '《来电狂响》不止是电影 还有隐藏在手机中的啼笑人生', 'http://www.1905.com/video/play/1341280.shtml', 'json_images/2019-01-07.jpg', '2019-01-07期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('456', '2018中国电影年度调查报告 用数据洞悉中国电影市场发展', 'http://www.1905.com/video/play/1340475.shtml', 'json_images/2019-01-04.jpg', '2019-01-04期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('457', '《大黄蜂》伴你同行 “改头换面”之后还你真童年', 'http://www.1905.com/video/play/1340054.shtml', 'json_images/2019-01-03.jpg', '2019-01-03期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('458', '2019春节档喜剧电影仍占主力 科幻电影异军突起', 'http://www.1905.com/video/play/1339755.shtml', 'json_images/2019-01-02.jpg', '2019-01-02期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('459', '如果把生活比作电影 你会给2018年取一个什么片名呢？', 'http://www.1905.com/video/play/1339447.shtml', 'json_images/2019-01-01.jpg', '2019-01-01期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('460', '开启2019中国电影新篇章 期待在光影的高原上有多高峰挺立', 'http://www.1905.com/video/play/1339563.shtml', 'json_images/2019-01-01.jpg', '2019-01-01期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('461', '《驯龙高手3》：如何用他国文化为好莱坞“带货”？', 'http://www.1905.com/video/play/1353336.shtml', 'json_images/2019-02-28.jpg', '2019-02-28期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('462', '《惊奇队长》变“惊奇大妈”？ 这次漫威就是要给你不一样', 'http://www.1905.com/video/play/1353027.shtml', 'json_images/2019-02-27.jpg', '2019-02-27期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('463', '扶贫纪录片《三变山变》如何拉近与青年观众的距离？', 'http://www.1905.com/video/play/1352885.shtml', 'json_images/2019-02-26.jpg', '2019-02-26期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('464', '《绿皮书》缘何打败《罗马》成为奥斯卡最后赢家？', 'http://www.1905.com/video/play/1352495.shtml', 'json_images/2019-02-25.jpg', '2019-02-25期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('465', '《流浪地球》过后 我们距离《三体》究竟有多远？', 'http://www.1905.com/video/play/1351906.shtml', 'json_images/2019-02-22.jpg', '2019-02-22期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('466', '《朝花夕誓》不只是二次元 突破局限才能不被埋没', 'http://www.1905.com/video/play/1351132.shtml', 'json_images/2019-02-21.jpg', '2019-02-21期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('467', '《阿丽塔：战斗天使》能否燃爆市场？ 女版孙悟空受期待', 'http://www.1905.com/video/play/1351146.shtml', 'json_images/2019-02-20.jpg', '2019-02-20期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('468', '透过春节档看中国科幻片如何在科技助力下高速腾飞？', 'http://www.1905.com/video/play/1350981.shtml', 'json_images/2019-02-19.jpg', '2019-02-19期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('469', '短视频营销别“玩”过了 货不对板当心出现反作用', 'http://www.1905.com/video/play/1350730.shtml', 'json_images/2019-02-18.jpg', '2019-02-18期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('470', '《飞驰人生》客观试驾 用真实的速度展现热血的故事', 'http://www.1905.com/video/play/1350274.shtml', 'json_images/2019-02-15.jpg', '2019-02-15期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('471', '情人节观影指南：看这些电影是找糖吃还是找罪受？', 'http://www.1905.com/video/play/1350011.shtml', 'json_images/2019-02-14.jpg', '2019-02-14期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('472', '《小猪佩奇过大年》解析 带您重新认识佩奇和它的家人们', 'http://www.1905.com/video/play/1349814.shtml', 'json_images/2019-02-13.jpg', '2019-02-13期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('473', '从中国功夫到世界先生 成龙如何得到了世界认可？', 'http://www.1905.com/video/play/1349522.shtml', 'json_images/2019-02-12.jpg', '2019-02-12期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('474', '三探《神探蒲松龄》 电影顽童成龙重焕经典玩出古装新花样', 'http://www.1905.com/video/play/1349341.shtml', 'json_images/2019-02-11.jpg', '2019-02-11期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('475', '独家解析《流浪地球》中国表达带给科幻的独特情怀', 'http://www.1905.com/video/play/1348999.shtml', 'json_images/2019-02-08.jpg', '2019-02-08期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('476', '鄂靖文带您解析《新喜剧之王》 经典回归背后的意义和探索', 'http://www.1905.com/video/play/1348939.shtml', 'json_images/2019-02-07.jpg', '2019-02-07期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('477', '与韩寒一起开启飞驰之旅 解读《飞驰人生》何以驰骋春节档', 'http://www.1905.com/video/play/1348890.shtml', 'json_images/2019-02-06.jpg', '2019-02-06期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('478', '《疯狂的外星人》映后解读 宁浩带您亲密接触外星人', 'http://www.1905.com/video/play/1348043.shtml', 'json_images/2019-02-05.jpg', '2019-02-05期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('479', '2019新春电影年夜饭品鉴：繁花似锦 百花盛开', 'http://www.1905.com/video/play/1348589.shtml', 'json_images/2019-02-04.jpg', '2019-02-04期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('480', '映前解析《神探蒲松龄》 新鲜元素重塑经典助力团圆年', 'http://www.1905.com/video/play/1348041.shtml', 'json_images/2019-02-01.jpg', '2019-02-01期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('481', '独家解析《小飞象》：当迪士尼童话遇到蒂姆·波顿', 'http://www.1905.com/video/play/1361711.shtml', 'json_images/2019-03-29.jpg', '2019-03-29期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('482', '中国银幕上映外片为何总有时差？解读批片市场“众生相”', 'http://www.1905.com/video/play/1361339.shtml', 'json_images/2019-03-28.jpg', '2019-03-28期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('483', '《波西米亚狂想曲》大奖拿不停 却为何依旧争议颇多？', 'http://www.1905.com/video/play/1361180.shtml', 'json_images/2019-03-28.jpg', '2019-03-28期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('484', '《地久天长》没有热映却引来热议的原因在哪儿？', 'http://www.1905.com/video/play/1360541.shtml', 'json_images/2019-03-26.jpg', '2019-03-26期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('485', '教你手撕“冒牌”经纪团队 营造良性行业氛围', 'http://www.1905.com/video/play/1360281.shtml', 'json_images/2019-03-25.jpg', '2019-03-25期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('486', '数据造假现象肆虐 影视行业何时能“脱水”？', 'http://www.1905.com/video/play/1359576.shtml', 'json_images/2019-03-22.jpg', '2019-03-22期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('487', '独家解析《阳台上》到底是不是一部“圈钱”的电影？', 'http://www.1905.com/video/play/1359339.shtml', 'json_images/2019-03-21.jpg', '2019-03-21期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('488', '独家解析：《流浪地球》的视觉特效能值多少票房？', 'http://www.1905.com/video/play/1358632.shtml', 'json_images/2019-03-20.jpg', '2019-03-20期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('489', '走一趟真的能够荡涤灵魂？ 电影人请你放过西藏景区', 'http://www.1905.com/video/play/1358246.shtml', 'json_images/2019-03-19.jpg', '2019-03-19期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('490', '认认真真活自己 演员撕掉“人设”还剩下什么？', 'http://www.1905.com/video/play/1357988.shtml', 'json_images/2019-03-18.jpg', '2019-03-18期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('491', '关注全国“两会” 探讨新时代中国电影人如何凝心聚力举旗帜', 'http://www.1905.com/video/play/1357272.shtml', 'json_images/2019-03-15.jpg', '2019-03-15期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('492', '关注全国“两会” 冯远征为中国电影“兴文化”发声', 'http://www.1905.com/video/play/1356875.shtml', 'json_images/2019-03-14.jpg', '2019-03-14期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('493', '关注全国“两会” 导演管虎为中国电影创作建言献策', 'http://www.1905.com/video/play/1356563.shtml', 'json_images/2019-03-13.jpg', '2019-03-13期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('494', '关注全国“两会” 中国电影的行业规范需进一步完善管理机制', 'http://www.1905.com/video/play/1356250.shtml', 'json_images/2019-03-12.jpg', '2019-03-12期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('495', '关注全国“两会” 委员成龙分享电影人的扶贫心得', 'http://www.1905.com/video/play/1356105.shtml', 'json_images/2019-03-12.jpg', '2019-03-12期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('496', '关注全国“两会” 探讨新时代下的中国电影评论', 'http://www.1905.com/video/play/1355074.shtml', 'json_images/2019-03-07.jpg', '2019-03-07期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('497', '关注全国“两会” 如何通过电影提升国家文化软实力', 'http://www.1905.com/video/play/1354721.shtml', 'json_images/2019-03-06.jpg', '2019-03-06期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('498', '关注全国“两会” 探讨中国电影如何提升国际影响力', 'http://www.1905.com/video/play/1354427.shtml', 'json_images/2019-03-05.jpg', '2019-03-05期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('499', '关注全国“两会” 探讨“新时代电影”的发展方向', 'http://www.1905.com/video/play/1354115.shtml', 'json_images/2019-03-04.jpg', '2019-03-04期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('500', '两会前夕全国电影工作座谈会召开 传递出哪些重要信号', 'http://www.1905.com/video/play/1353648.shtml', 'json_images/2019-03-01.jpg', '2019-03-01期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('501', '“我的老片库”之归档 “六公主”那么多宝藏电影如何快速查找', 'http://www.1905.com/video/play/1371963.shtml', 'json_images/2019-04-30.jpg', '2019-04-30期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('502', '“我的老片库”之缘起 “六公主”的那些宝藏电影都是怎么来的？', 'http://www.1905.com/video/play/1371599.shtml', 'json_images/2019-04-29.jpg', '2019-04-29期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('503', '《雪暴》剧本有何魅力可以集结张震、廖凡、黄觉齐加盟？', 'http://www.1905.com/video/play/1370759.shtml', 'json_images/2019-04-26.jpg', '2019-04-26期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('504', '“复联4”作为漫威影业旧系列的终结与新系列的开始意义何在？', 'http://www.1905.com/video/play/1370523.shtml', 'json_images/2019-04-26.jpg', '2019-04-26期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('505', '专业电影翻译人带你从全新的视角解读《复仇者联盟》', 'http://www.1905.com/video/play/1370186.shtml', 'json_images/2019-04-25.jpg', '2019-04-25期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('506', '《撞死了一只羊》有何底气正面冲撞《复仇者联盟4：终局之战》？', 'http://www.1905.com/video/play/1369632.shtml', 'json_images/2019-04-23.jpg', '2019-04-23期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('507', '聊聊第九届北京国际电影节的“家·国”情怀', 'http://www.1905.com/video/play/1369485.shtml', 'json_images/2019-04-22.jpg', '2019-04-22期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('508', '“北京大妞”不端着 北京国际电影节竟是这种人设？', 'http://www.1905.com/video/play/1368644.shtml', 'json_images/2019-04-20.jpg', '2019-04-20期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('509', '独家解析《狗眼看人心》带给观众怎样的思考？', 'http://www.1905.com/video/play/1368110.shtml', 'json_images/2019-04-18.jpg', '2019-04-18期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('510', '《如影随心》关照现实生活 主角名字暗藏玄机等你揭晓', 'http://www.1905.com/video/play/1367762.shtml', 'json_images/2019-04-17.jpg', '2019-04-17期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('511', '第九届北影节为什么会选择《音乐家》作为开幕影片？', 'http://www.1905.com/video/play/1367521.shtml', 'json_images/2019-04-16.jpg', '2019-04-16期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('512', '当“黑洞”遇上“脑洞” 科幻电影可以怎么拍？', 'http://www.1905.com/video/play/1367173.shtml', 'json_images/2019-04-15.jpg', '2019-04-15期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('513', '“AI换脸”技术来了别担心 常用美颜、滤镜更安全', 'http://www.1905.com/video/play/1366451.shtml', 'json_images/2019-04-12.jpg', '2019-04-12期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('514', '《调音师》解析 由短片改编成电影是否走了捷径？', 'http://www.1905.com/video/play/1366086.shtml', 'json_images/2019-04-11.jpg', '2019-04-11期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('515', '透过《反贪风暴4》看系列港片如何延续竞争力', 'http://www.1905.com/video/play/1365732.shtml', 'json_images/2019-04-10.jpg', '2019-04-10期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('516', '《海市蜃楼》破谜案 通过道具解锁导演的小心思', 'http://www.1905.com/video/play/1365425.shtml', 'json_images/2019-04-09.jpg', '2019-04-09期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('517', '《麦兜我和我妈妈》重映记 除了感动还有什么？', 'http://www.1905.com/video/play/1364584.shtml', 'json_images/2019-04-08.jpg', '2019-04-08期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('518', '清明节缅怀英烈铭记历史 如何在光影中传承英雄精神？', 'http://www.1905.com/video/play/1364017.shtml', 'json_images/2019-04-06.jpg', '2019-04-06期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('519', '从《人间·喜剧》出发看喜剧电影究竟该如何营销？', 'http://www.1905.com/video/play/1363586.shtml', 'json_images/2019-04-04.jpg', '2019-04-04期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('520', '用光影向消防队员致敬 作为电影人还能为英雄做些什么？', 'http://www.1905.com/video/play/1363308.shtml', 'json_images/2019-04-03.jpg', '2019-04-03期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('521', '在国产青春片不被看好的当下 《老师·好》如何成功逆袭？', 'http://www.1905.com/video/play/1362850.shtml', 'json_images/2019-04-02.jpg', '2019-04-02期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('522', '《比悲伤更悲伤的故事》好在哪儿 “鸡精汤”怎样才能更高级？', 'http://www.1905.com/video/play/1362721.shtml', 'json_images/2019-04-01.jpg', '2019-04-01期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('523', '职场电影缺席市场的背后：为何国内职场电影与实际相去甚远？', 'http://www.1905.com/video/play/1380379.shtml', 'json_images/2019-05-31.jpg', '2019-05-31期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('524', '浅评《大大哒》：当美被他人严格定义，快乐终将成为伪命题', 'http://www.1905.com/video/play/1379872.shtml', 'json_images/2019-05-30.jpg', '2019-05-30期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('525', '当五月天走上影院银幕：是青春的出口，也是文化的记载传递', 'http://www.1905.com/video/play/1379620.shtml', 'json_images/2019-05-29.jpg', '2019-05-29期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('526', '当动漫成为文化潮流：35年《龙珠》，背后是两代人的青春', 'http://www.1905.com/video/play/1379258.shtml', 'json_images/2019-05-28.jpg', '2019-05-28期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('527', '刘昊然《双生》口碑遇冷？大胆创新的背后，是亟待完善的细节', 'http://www.1905.com/video/play/1378930.shtml', 'json_images/2019-05-27.jpg', '2019-05-27期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('528', '解析《企鹅公路》的多种解读 如何带您找回童年感觉？', 'http://www.1905.com/video/play/1378430.shtml', 'json_images/2019-05-25.jpg', '2019-05-25期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('529', '落下帷幕的影视周：文明大会盛况空前，博采众长方能携伴而行', 'http://www.1905.com/video/play/1378026.shtml', 'json_images/2019-05-23.jpg', '2019-05-23期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('530', '亚洲文明对话大会：思维碰撞文化互鉴，挑战与机遇并行', 'http://www.1905.com/video/play/1377746.shtml', 'json_images/2019-05-22.jpg', '2019-05-22期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('531', '从《海蒂和爷爷》看隔代亲：爱非溺爱，陪伴沟通架构亲子桥梁', 'http://www.1905.com/video/play/1377523.shtml', 'json_images/2019-05-21.jpg', '2019-05-21期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('532', '经久不衰的老电影：英雄史诗永不褪色，经典堪为时代赞歌', 'http://www.1905.com/video/play/1377231.shtml', 'json_images/2019-05-20.jpg', '2019-05-20期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('533', '聚焦亚洲影视周：贾樟柯领衔电影大师对话，群贤毕至异彩纷呈', 'http://www.1905.com/video/play/1376604.shtml', 'json_images/2019-05-17.jpg', '2019-05-17期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('534', '聚焦2019亚洲电影展：佳片云集文明互鉴，共筑亚洲命运共同体', 'http://www.1905.com/video/play/1376280.shtml', 'json_images/2019-05-16.jpg', '2019-05-16期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('535', '聚焦“亚洲影视周”：文明与时偕行，商业文艺共发展', 'http://www.1905.com/video/play/1375943.shtml', 'json_images/2019-05-15.jpg', '2019-05-15期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('536', '《周恩来回延安》前瞻：伟人贴近生活，平实的表现感人至深', 'http://www.1905.com/video/play/1375515.shtml', 'json_images/2019-05-14.jpg', '2019-05-14期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('537', '浅评《罗马》：科幻导演拍出家庭片，何以成为奖项收割机？', 'http://www.1905.com/video/play/1375294.shtml', 'json_images/2019-05-14.jpg', '2019-05-14期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('538', '金砖五国合作《半边天》 如何用电影为女性发声？', 'http://www.1905.com/video/play/1374579.shtml', 'json_images/2019-05-11.jpg', '2019-05-11期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('539', '京剧重获新生？专家带你解读京剧电影《进京城》的价值与意义', 'http://www.1905.com/video/play/1374357.shtml', 'json_images/2019-05-09.jpg', '2019-05-09期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('540', '从《港珠澳大桥》看纪录片中国化：国之重器，巧夺天工', 'http://www.1905.com/video/play/1374067.shtml', 'json_images/2019-05-08.jpg', '2019-05-08期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('541', '12岁男孩为何状告父母？《何以为家》带你走近你不愿相信的真实', 'http://www.1905.com/video/play/1373522.shtml', 'json_images/2019-05-07.jpg', '2019-05-07期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('542', '法律给盗版电影一个说法：做盗版，你的未来就是进监狱', 'http://www.1905.com/video/play/1373269.shtml', 'json_images/2019-05-06.jpg', '2019-05-06期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('543', '“我的老片库”之使命 “六公主”坚守电影人光影初心', 'http://www.1905.com/video/play/1371947.shtml', 'json_images/2019-05-03.jpg', '2019-05-03期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('544', '“我的老片库”之修复 “六公主”助影迷感受电影魅力', 'http://www.1905.com/video/play/1371974.shtml', 'json_images/2019-05-02.jpg', '2019-05-02期');
INSERT INTO `movieintroduce_jsonmovie` VALUES ('545', '“我的老片库”之保存 “六公主”的电影磁带都放哪了？', 'http://www.1905.com/video/play/1371936.shtml', 'json_images/2019-05-01.jpg', '2019-05-01期');

-- ----------------------------
-- Table structure for `mystatistics_readdetail`
-- ----------------------------
DROP TABLE IF EXISTS `mystatistics_readdetail`;
CREATE TABLE `mystatistics_readdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `MyStatistics_readdet_content_type_id_c2c59f2e_fk_django_co` (`content_type_id`),
  CONSTRAINT `MyStatistics_readdet_content_type_id_c2c59f2e_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mystatistics_readdetail
-- ----------------------------
INSERT INTO `mystatistics_readdetail` VALUES ('1', '2019-05-16', '4', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('2', '2019-05-17', '2', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('3', '2019-05-17', '2', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('4', '2019-05-17', '2', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('5', '2019-05-15', '20', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('6', '2019-05-14', '16', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('7', '2019-05-17', '1', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('8', '2019-05-17', '1', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('9', '2019-05-17', '1', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('10', '2019-05-18', '2', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('11', '2019-05-18', '5', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('12', '2019-05-18', '4', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('13', '2019-05-18', '11', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('14', '2019-05-18', '2', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('15', '2019-05-18', '4', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('16', '2019-05-19', '2', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('17', '2019-05-19', '1', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('18', '2019-05-19', '1', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('19', '2019-05-19', '1', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('20', '2019-05-19', '1', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('21', '2019-05-19', '2', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('22', '2019-05-21', '1', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('23', '2019-05-22', '2', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('24', '2019-05-22', '1', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('25', '2019-05-22', '2', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('26', '2019-05-22', '1', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('27', '2019-05-22', '2', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('28', '2019-06-15', '2', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('29', '2019-06-15', '2', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('30', '2019-06-15', '2', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('31', '2019-06-15', '2', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('32', '2019-06-15', '2', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('33', '2019-06-15', '2', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('34', '2019-06-16', '3', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('35', '2019-06-16', '3', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('36', '2019-06-16', '4', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('37', '2019-06-16', '3', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('38', '2019-06-16', '3', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('39', '2019-06-16', '1', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('40', '2019-06-16', '4', '7', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('41', '2019-06-17', '3', '7', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('42', '2019-06-17', '4', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('43', '2019-06-17', '3', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('44', '2019-06-17', '3', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('45', '2019-06-17', '3', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('46', '2019-06-17', '1', '2', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('47', '2019-06-17', '1', '3', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('48', '2019-06-18', '2', '7', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('49', '2019-06-18', '1', '6', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('50', '2019-06-18', '1', '4', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('51', '2019-06-18', '1', '5', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('52', '2019-06-18', '2', '1', '7');
INSERT INTO `mystatistics_readdetail` VALUES ('53', '2019-06-18', '1', '8', '7');

-- ----------------------------
-- Table structure for `mystatistics_readnum`
-- ----------------------------
DROP TABLE IF EXISTS `mystatistics_readnum`;
CREATE TABLE `mystatistics_readnum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `read_num` int(11) NOT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `MyStatistics_readnum_content_type_id_2303be43_fk_django_co` (`content_type_id`),
  CONSTRAINT `MyStatistics_readnum_content_type_id_2303be43_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mystatistics_readnum
-- ----------------------------
INSERT INTO `mystatistics_readnum` VALUES ('1', '29', '1', '7');
INSERT INTO `mystatistics_readnum` VALUES ('2', '18', '4', '7');
INSERT INTO `mystatistics_readnum` VALUES ('3', '12', '2', '7');
INSERT INTO `mystatistics_readnum` VALUES ('4', '9', '3', '7');
INSERT INTO `mystatistics_readnum` VALUES ('5', '19', '5', '7');
INSERT INTO `mystatistics_readnum` VALUES ('6', '21', '6', '7');
INSERT INTO `mystatistics_readnum` VALUES ('7', '9', '7', '7');
INSERT INTO `mystatistics_readnum` VALUES ('8', '1', '8', '7');
