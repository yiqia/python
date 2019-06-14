# Host: localhost  (Version: 5.5.53)
# Date: 2019-06-08 21:21:18
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "yq_dh_class"
#

DROP TABLE IF EXISTS `yq_dh_class`;
CREATE TABLE `yq_dh_class` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "yq_dh_class"
#

/*!40000 ALTER TABLE `yq_dh_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `yq_dh_class` ENABLE KEYS */;

#
# Structure for table "yq_dh_content"
#

DROP TABLE IF EXISTS `yq_dh_content`;
CREATE TABLE `yq_dh_content` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `time` varchar(50) DEFAULT NULL COMMENT '时间',
  `from` text COMMENT '来自',
  `user` varchar(255) DEFAULT NULL COMMENT '对应用户',
  `class` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='导航信息';

#
# Data for table "yq_dh_content"
#

/*!40000 ALTER TABLE `yq_dh_content` DISABLE KEYS */;
INSERT INTO `yq_dh_content` VALUES (291,'安卓指尖特效v2.7.0破解版','06-08','https://www.xd0.com/i-wz-38928702.html','admin',1),(292,'DNF最新秒领46天黑钻稳','06-08','https://www.xd0.com/i-wz-24147971.html','admin',1),(293,'支付宝领花呗3期淘宝免息','06-08','https://www.xd0.com/i-wz-44583915.html','admin',1),(294,'支付宝彩票每天抽1元红包','06-08','https://www.xd0.com/i-wz-32443041.html','admin',1),(295,'安卓熊猫视频压缩器去广告','06-08','https://www.xd0.com/i-wz-53541892.html','admin',1),(296,'爬虫采集的2.5G淘宝买家秀','06-08','https://www.xd0.com/i-wz-11438163.html','admin',1),(297,'8号淘宝特别整理干货 买啊!','06-08','https://www.xd0.com/i-wz-99596578.html','admin',1),(298,'QQ20周年低价开会员年费','06-08','https://www.xd0.com/i-wz-91669943.html','admin',1),(299,'小美家装馆小程序1.9元购买蓝月亮洗衣液垃圾桶/马桶刷','06-08','https://www.iqshw.com/qita/164833.html','admin',2),(300,'搜书王v4.4.3下载 能阅读各大网站VIP小说 媲美追书神器','06-08','https://www.iqshw.com/shouji/141488.html','admin',2),(301,'DNF会员关怀免费领取3天黑钻 幸运用户可领18天','06-08','https://www.iqshw.com/qqnews/2019/0608/167125.html','admin',2),(302,'御泥坊护肤套装买一送一共2套+卡尔顿旗舰店长崎蛋糕','06-08','https://www.iqshw.com/gouwu/167111.html','admin',2),(303,'支付宝花呗免费领取3期免息券 数量有限 限指定商品使用','06-08','https://www.iqshw.com/qita/167120.html','admin',2),(304,'支付宝助威女足抽现金红包 亲测1元现金秒到','06-08','https://www.iqshw.com/qita/167115.html','admin',2),(305,'网易漫画V5.0.1破解版下载 免登陆直接看VIP付费漫画','06-08','https://www.iqshw.com/shouji/160978.html','admin',2),(306,'京东618瓜分千万红包 6月大促现金疯抢开启了哦','06-08','https://www.iqshw.com/qita/166463.html','admin',2),(307,'和平精英多功能裸奔脚本','06-08','https://www.115z.com/html/11716.html','admin',3),(308,'王者荣耀百里守约自瞄6.8最新带教程','06-08','https://www.115z.com/html/11714.html','admin',3),(309,'空间删除助手一键快速删除','06-08','https://www.115z.com/html/11713.html','admin',3),(310,'远离手机APP不做手机控摆脱手机依赖 高考必备','06-08','https://www.115z.com/html/11712.html','admin',3),(311,'王者荣耀多英雄自瞄LUA脚本','06-08','https://www.115z.com/html/11710.html','admin',3),(312,'一个微信每天免费零钱三个红包','06-08','https://www.115z.com/html/11709.html','admin',3),(313,'消灭病毒无限钻石 无限金币破解版','06-08','https://www.115z.com/html/11707.html','admin',3),(314,'一键快速解除腾讯的防沉迷限制','06-08','https://www.115z.com/html/11706.html','admin',3),(315,'小影PRO一款非常专业的视频拍摄制作软件','06-08','https://www.115z.com/html/11705.html','admin',3),(316,'和平精英6.8最新除草上色apk','06-08','https://www.115z.com/html/11694.html','admin',3),(317,'吃鸡国际服6.8最新脚本','06-08','https://www.115z.com/html/11695.html','admin',3),(318,'歪歪公会后台多线程管理','06-08','https://www.115z.com/html/11700.html','admin',3),(319,'穿越火线人物透视辅助带演示视频','06-08','https://www.115z.com/html/11690.html','admin',3),(320,'彩虹代刷网开源美化模板','06-08','https://www.115z.com/html/11665.html','admin',3),(321,'很Nice的同学录源码及搭建教程','06-08','https://www.115z.com/html/11689.html','admin',3),(322,'王者荣耀登游戏兑2Q币','06-08','https://www.115z.com/html/11687.html','admin',3),(323,'微信关注公众号  QQ会员免费领取超级会员','06-08','https://www.115z.com/html/11688.html','admin',3),(324,' 浅夏机器人(手机版)0.1.3版','06-08','https://www.kjsv.com/article-3786.html','admin',4),(325,' 分享一款单页网址导航源码','06-08','https://www.kjsv.com/article-3784.html','admin',4),(326,' 很nice的同学录源码及教程','06-08','https://www.kjsv.com/article-3796.html','admin',4),(327,' 全网首发Vieu4.0免费分享，WordPress主题','06-08','https://www.kjsv.com/article-3794.html','admin',4),(328,' 红包互换可运营版','06-08','https://www.kjsv.com/software-3749.html','admin',4),(329,' 报考大学 专为大学志愿报考打造的应用','06-08','https://www.kjsv.com/software-3753.html','admin',4),(330,' 充电评测助手','06-08','https://www.kjsv.com/software-3759.html','admin',4),(331,' 玖零云授权系统—无后门无加密','06-08','https://www.kjsv.com/article-3762.html','admin',4),(332,' QQ20周年挂机抢超会+黄钻','06-08','https://www.kjsv.com/software-3766.html','admin',4),(333,' 强大的电脑工具源码','06-08','https://www.kjsv.com/software-3767.html','admin',4),(334,' 安卓丢脸透明壁纸支持QQ微信单独控制背景','06-08','https://www.kjsv.com/software-3769.html','admin',4),(335,' 虚拟大师最新破解（安卓手机模拟器）','06-08','https://www.kjsv.com/software-3780.html','admin',4),(336,' 会员气泡字体免费用','06-08','https://www.kjsv.com/software-3787.html','admin',4),(337,'微信免扫码登陆多开工具成品+源码（二次登','06-08','http://www.qqyewu.com/soft/1/2019/2019060821682.html','admin',5),(338,'QQ飞车卡商城软件2019最新版','06-08','http://www.qqyewu.com/soft/1/2019/2019060821681.html','admin',5),(339,'百度阅读6.0.5.1内购破解版','06-08','http://www.qqyewu.com/soft/1/2019/2019052921627.html','admin',5),(340,'一键QQ拉圈圈99+软件电脑版','06-08','http://www.qqyewu.com/soft/1/2019/2019060821680.html','admin',5),(341,'九龙图库接码撸现金话费','06-08','http://www.qqyewu.com/soft/2/2019/2019060821679.html','admin',5),(342,'教大家查看自己的游戏信用分','06-08','http://www.qqyewu.com/soft/2/2019/2019060821678.html','admin',5),(343,'IOS长期简单赚微信红包零花钱','06-08','http://www.qqyewu.com/soft/2/2019/2019060821677.html','admin',5),(344,'DNF会员关怀免费领QQ黑钻3天 幸运用户领18天黑钻','06-08','http://www.qqyewu.com/article/3/2019/20190608150765.html','admin',5),(345,'5元名流避孕套30只+手势控制无人机+御泥坊护肤套装买1送1','06-08','http://www.qqyewu.com/article/ds/2019/20190608150751.html','admin',5),(346,'支付宝猜女足世界杯刮1元以上现金 秒到','06-08','http://www.qqyewu.com/article/3/2019/20190608150750.html','admin',5),(347,'支付宝免费领取花呗3期分期免息券','06-08','http://www.qqyewu.com/article/3/2019/20190608150749.html','admin',5),(348,'QQ会员绑定微信多送7天QQ超级会员','06-08','http://www.qqyewu.com/article/3/2019/20190608150748.html','admin',5),(349,'咪咕音乐免费领取15天白金会员','06-08','http://www.qqyewu.com/article/3/2019/20190608150747.html','admin',5),(350,'汤臣倍健周末福利送微信红包 中了秒推','06-08','http://www.qqyewu.com/article/3/2018/20180505130284.html','admin',5),(351,'京东618京喜红包100%领无门槛红包 每天领3次','06-08','http://www.qqyewu.com/article/3/2019/20190530150306.html','admin',5),(352,'天猫618免费100%领无门槛超级红包 最高618元','06-08','http://www.qqyewu.com/article/3/2019/20190529150246.html','admin',5),(353,'朋友圈空调16度背景图片_微信朋友圈空调背景图片','06-08','http://www.qqyewu.com/article/5/2019/20190608150745.html','admin',5),(354,'2019高考后的心情说说,关于高考完了的说说短语','06-08','http://www.qqyewu.com/article/4/2019/20190608150746.html','admin',5);
/*!40000 ALTER TABLE `yq_dh_content` ENABLE KEYS */;
