/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : 1701x

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2019-06-01 07:40:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `picture` varchar(200) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_USER` (`user_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CHAN` (`channel_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CATE` (`category_id`),
  CONSTRAINT `cms_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`),
  CONSTRAINT `cms_article_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`),
  CONSTRAINT `cms_article_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('26', '华为又出新招，成立新公司，名字有点滑稽，却暗藏野心', '<p>\n	<img src=\"https://p1.pstatp.com/list/190x124/pgc-image/ee88ba4d86b54d3680f0aa46e9386f8b\" />\n</p>\n<p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p3.pstatp.com/large/pgc-image/a8dcd6479f3e4efea54dc391aef54af2\" alt=\"华为又出新招，成立新公司，名字有点滑稽，却暗藏野心\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		说起华为我相信大家一定都非常熟悉，在5G的研发领域抗住了美国的打压，成功拿下5G订单。不仅如此，在手机行业里也是世界上第二大手机厂商，已经成为了可以影响到苹果的存在。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/ee88ba4d86b54d3680f0aa46e9386f8b\" alt=\"华为又出新招，成立新公司，名字有点滑稽，却暗藏野心\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		前一段时间发布的华为P30系列，受到了来自全世界的好评，这款手机表现力非凡，拍照功能荣登第一，全球范围疯抢。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/d30dffc2a03e45c3be6a1760df3f9e00\" alt=\"华为又出新招，成立新公司，名字有点滑稽，却暗藏野心\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		大家都清楚，手机只是华为副业，重要的是华为的通信技术。每年华为都会花费大把的时间和金钱投入到科技研发领域去。5G亦是如此，还有华为独立研发的麒麟芯片，虽然5G路上遇到许多挫折，但是华为不负众望，接二连三的拿下订单。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/02379d4605cb474fb0262cb829db8c47\" alt=\"华为又出新招，成立新公司，名字有点滑稽，却暗藏野心\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		最近又有消息称，华为在成立一家新公司，名字已经取好，叫哈勃科技投资有限公司，是一家投资公司，。此消息一出，网友便犀利的指出，华为暗藏野心，下着很大的决心想把公司做大做强。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p9.pstatp.com/large/pgc-image/7321d866cbaf4c728d7396dbcc41ce7a\" alt=\"华为又出新招，成立新公司，名字有点滑稽，却暗藏野心\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		毕竟哈勃是空间望远镜的简称，是天文学家爱德温·哈勃的名字。名字虽然滑稽，但是却包含着华为巨大的野心，以大家对华为的了解，对这件事情，你们有什么样的看法，欢迎评论告诉大家。\n	</p>\n<br />\n</p>', 'https://p1.pstatp.com/list/190x124/pgc-image/ee88ba4d86b54d3680f0aa46e9386f8b', '1', '2', '1', null, null, '1', '1', '2019-04-29 08:11:15', '2019-04-29 08:11:15');
INSERT INTO `cms_article` VALUES ('27', '卡瓦伊，注定不是北方的狼？', '<p>\n	<img src=\"/pic/image/20190429/20190429095235_403.jpg\" alt=\"\" />\n</p>\n<p>\n	<p class=\"ql-align-justify\">\n		猛龙的训练馆，位于多伦多市中心湖边。球馆有LOGO的地方，都有两部分，左边是猛龙的爪印，右边是一个猫头鹰。有个工作人员告诉我，猫头鹰是猛龙形象大使所属的品牌，形象大使就是公鸭，音译为“追客(Drake）”，字面和音译都很花花公子范。\n	</p>\n	<p class=\"ql-align-justify\">\n		我在训练馆见到洛杉矶时报的丹·维克，很奇怪他怎么跑多伦多来了。维克指了指正在训练的莱昂纳德，“因为他。”我就问他，“你觉得猛龙季后赛成绩，会影响莱昂纳德的去留吗？”\n	</p>\n	<p class=\"ql-align-justify\">\n		“不会。我觉得他会去快船。”\n	</p>\n	<p class=\"ql-align-justify\">\n		维克来自卡瓦伊老家来的媒体，他的答案，只是他的想法。我问猛龙几个随队记者，还有球队的工作人员同一个问题，答案就是，没有答案。\n	</p>\n	<p class=\"ql-align-justify\">\n		卡瓦伊怎么想的？没有人知道。\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<div class=\"pgc-img\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/15ee9458d3d0408d8ba7a64b397b9787\" alt=\"卡瓦伊，注定不是北方的狼？\" />\n	</div>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<p class=\"ql-align-justify\">\n		我在多伦多呆了五天，看了两场比赛，两次训练，莱昂纳德和队友的交流次数，一只手都能数得过来。印象深刻的，第二场赛后和丹尼·格林寒暄，还有一次在训练馆采访室出来，洛瑞进去，两人对视了一下，洛瑞笑了一下，卡瓦伊努力的想笑一下，未遂，就错身了。\n	</p>\n	<p class=\"ql-align-justify\">\n		卡瓦伊怎么想，那是他的事情。作为猛龙队，对卡瓦伊的各种暖心献媚，我是切实感受到了。现在的猛龙，就好比一个穷小子，卖牛当车，找了一个漂亮女朋友，这个女朋友有一年的考察期，如果女朋友出走，那就是真的鸡飞蛋打。一年时间，怎么去追？\n	</p>\n	<p class=\"ql-align-justify\">\n		乌吉里在赛季前说，“很多都说没有人愿意来多伦多，这个说法过时了，我们要相信城市”。\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<div class=\"pgc-img\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/eadd60e20c054c989dededc4318bb7e8\" alt=\"卡瓦伊，注定不是北方的狼？\" />\n	</div>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<p class=\"ql-align-justify\">\n		小伙要想让姑娘留下来，要先让她喜欢你的村子。乌吉里这村，自然是指多伦多。猛龙季后赛的口号，“We\n the North(我们北方)”, \n我一直以为，单纯是指地理位置，类似于“我们东北银”。看了赛前大屏幕，才知道这来自加拿大国歌里面的一句，“The True North \nstrong and free \n（真北之邦，自由强壮）”。就像我们也对南北性格有个区分，北美也是这样。我们认为北方人彪悍，北美正好反过来，美国人经常嘲笑加拿大人太客气，婆婆妈妈，跑个百米都会客气半天，“你先你先”。加拿大人认为美国人自大，粗俗不讲礼貌。我记得2016年多伦多全明星时，有个朋友丢了包，场馆的保安说，“如果都是加拿大人，肯定能找回来，今天来了很多美国人，我不能保证了”。\n	</p>\n	<p class=\"ql-align-justify\">\n		卡瓦伊不是那种爱跟人寒暄的性格，加拿大人什么性格，他未必关心。刚到多伦多一年，卡瓦伊已经是最受欢迎的球员。相对来说，北方的球迷似乎更狂热一点，天气冷了没事干，比赛中发泄情绪的需求更强烈，魔术主教练克利福德说，猛龙的主场，是他经历的噪音最大的。球员选择城市的时候，无非是看是不是大城市，夜店怎么样，气候怎么样，等等。大城市就意味着市场更大，更多的曝光。\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<div class=\"pgc-img\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/530e6136641f4c47a6667eb4beeeccb4\" alt=\"卡瓦伊，注定不是北方的狼？\" />\n	</div>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<p class=\"ql-align-justify\">\n		可是卡瓦伊真的喜欢更多的曝光吗？第二场比赛结束，他默默跟着队友往更衣室走，猛龙公关杰西卡拉住他，让他去接受采访，他还稍微犹豫了一下；每次训练和比赛，采访全程他都绷着脸，没有表情，而且时间极短，詹姆斯训练采访一般是7分钟，公关要控制记者问的问题，卡瓦伊一般是3分钟结束，没有人能想出什么问题了。“季后赛和普通比赛一样，唯一区别就是你在前面加了季后”，我在多伦多五天，这句话是莱昂纳德最“金句”的一句，让媒体集体高潮了三小时，因为让卡瓦伊说点有新闻点的话，太难了。詹姆斯是喜欢活在聚光灯下的球员，威少在小地方，但威少穿得花哨，而卡瓦伊大部分时间，真的就想静静，没有人知道静静是谁。\n	</p>\n	<p class=\"ql-align-justify\">\n		再说了，多伦多是大城市，这个不用质疑。根据我的经验，\n北美城市的规模，和中餐馆的种类和质量成正比，基本是中餐馆越多，质量越好，越算的上大城市。多伦多有几个唐人街，我到最老的那个，都能看到绿茶和小肥羊等饭店，这对从村里来的我，冲击是巨大的，只能由衷赞叹，“俺的亲娘哎”。\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<div class=\"pgc-img\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/b380d46d52f44fa9af88f7c6af3b919d\" alt=\"卡瓦伊，注定不是北方的狼？\" />\n	</div>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<p class=\"ql-align-justify\">\n		至于天气，那是真冷。球队的一个高层跟我说，多伦多举办全明星的时候，猛龙和多伦多市卯足了劲，要办一届最好的全明星，给球员留下一个好印象。从装修到中场表演，都花了大价钱，结果那几天零下30度，库里一下飞机冻得六神无主。全明星结束，大家对装修没什么印象了，只记得冷。卡瓦伊出生在洛杉矶附近，这种寒冷的天气，未必对他胃口。去年在讨论詹姆斯可能去向的时候，我知道他肯定不会去休斯敦。姑且不说工资帽谁当老大等问题，詹姆斯自己私下说过，他不喜欢休斯敦的那种天气。让一个广东人，去东北生活工作，勉为其难。\n	</p>\n	<p class=\"ql-align-justify\">\n		天气这个东西，对NBA球星未必有多大的影响，一个赛季八个月，一半的时间在路上，感受气候的时候并不多。至于夜店，马刺接替卡瓦伊的怀特可能不逛夜店，因为白的不懂夜的黑，但卡瓦伊懂，多伦多的夜店，多的不要太多。\n	</p>\n	<p class=\"ql-align-justify\">\n		那到底什么对卡瓦伊有影响？\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<div class=\"pgc-img\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/5a0573ae01fd435497cf0efd289a592a\" alt=\"卡瓦伊，注定不是北方的狼？\" />\n	</div>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n	<p class=\"ql-align-justify\">\n		看一个人的思维方式，最好的方式，是看他曾经做过的决定。\n	</p>\n	<p class=\"ql-align-justify\">\n		卡瓦伊离开马刺的原因，有各种版本，我们能知道的公开消息就是，球队和卡瓦伊在身体健康方面有分歧。整个赛季，猛龙都把卡瓦伊的健康，放在最重要的位置，从来不让他打背靠背，每晚控制上场时间。在季后赛第一场，主教练纳斯只让卡瓦伊上了33分钟，按照当时的情形，如果他多打几分钟，可能猛龙不至于最后被动，但是和控制卡瓦伊的上场时间，让他保持健康相比，没有什么是大事。猛龙找了前湖人的训练师，精心负责卡瓦伊的身体。可以这么说，他到任何队，能得到的最好的保持健康的条件，不会超过猛龙。\n	</p>\n	<p class=\"ql-align-justify\">\n		从上到下，从里到外，猛龙把有助于留下卡瓦伊的各种招数，都用上了。可有时候，你对女孩百般好，不如闺蜜的一句话。猛龙的所有人，没有人见过卡瓦伊的女朋友。对卡瓦伊最有影响力的，莫过于他的舅舅。\n	</p>\n	<p class=\"ql-align-justify\">\n		和其他所有人一样，我对外界传言他舅舅暗中教唆卡瓦伊，颇为怀疑：如果情商这么低，卡瓦伊能到这个高度？\n	</p>\n	<p class=\"ql-align-center\">\n		<br />\n	</p>\n</p>', '/pic/image/20190429/20190429095235_403.jpg', '5', '17', '1', null, '1', '1', '1', '2019-04-29 09:53:08', '2019-04-29 09:53:08');
INSERT INTO `cms_article` VALUES ('28', '2019世乒赛国乒6龙6凤成绩单揭晓，刘国梁点评夸奖刘诗雯马龙', '<p>\n	<img src=\"https://p1.pstatp.com/list/190x124/pgc-image/f0b791f64e53487dae27c5f63465b992\" />\n</p>\n<p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		2019匈牙利世乒赛，国乒6龙6凤参赛，每个人的成绩单汇总揭晓！中国乒乓球队5金完美收官！刘国梁点评夸奖了双冠王马龙与刘诗雯。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/f0b791f64e53487dae27c5f63465b992\" alt=\"2019世乒赛国乒6龙6凤成绩单揭晓，刘国梁点评夸奖刘诗雯马龙\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【国乒男队6龙成绩】：\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【马龙】：男单金牌、男双金牌（与王楚钦），双冠王！\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【樊振东】：男单16强，混双铜牌（与丁宁）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【林高远】：男单8强，男双铜牌（与梁靖崑）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【梁靖崑】：男单铜牌，男双铜牌（与林高远）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【许昕】：男单32强，混双金牌（与刘诗雯）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【王楚钦】：男双金牌（与马龙）。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p3.pstatp.com/large/pgc-image/2e0ed04b82d74d7ab62badd3149115c6\" alt=\"2019世乒赛国乒6龙6凤成绩单揭晓，刘国梁点评夸奖刘诗雯马龙\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【国乒女队6凤成绩】：\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【刘诗雯】：女单金牌，混双金牌（与许昕），双冠王！\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【丁宁】：女单铜牌，混双铜牌（与樊振东）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【陈梦】：女单银牌，女双铜牌（与朱雨玲）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【王曼昱】：女单铜牌，女双金牌（与孙颖莎）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【孙颖莎】：女单8强，女双金牌（与王曼昱）。\n	</p>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		【朱雨玲】：女双铜牌（与陈梦）。\n	</p>\n	<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		<img src=\"http://p1.pstatp.com/large/pgc-image/85eba43b2b6e40a4aab8ccc28858d43a\" alt=\"2019世乒赛国乒6龙6凤成绩单揭晓，刘国梁点评夸奖刘诗雯马龙\" />\n	</div>\n	<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n		中国乒乓球队包揽了全部5个冠军，这下又\n	</p>\n</p>', 'https://p1.pstatp.com/list/190x124/pgc-image/f0b791f64e53487dae27c5f63465b992', '5', '19', '1', null, '1', '1', '1', '2019-04-28 10:11:14', '2019-04-29 10:11:14');
INSERT INTO `cms_article` VALUES ('29', '我的新闻', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<span style=\"font-weight:700;\">央视网消息</span>（新闻联播）：全国公安工作会议7日至8日在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。他强调，新的历史条件下，公安机关要坚持以新时代中国特色社会主义思想为指导，坚持总体国家安全观，坚持以人民为中心的发展思想，坚持稳中求进工作总基调，坚持政治建警、改革强警、科技兴警、从严治警，履行好党和人民赋予的新时代职责使命，努力使人民群众安全感更加充实、更有保障、更可持续，为决胜全面建成小康社会、实现“两个一百年”奋斗目标和中华民族伟大复兴的中国梦创造安全稳定的政治社会环境。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	中共中央政治局常委、中央书记处书记王沪宁，中共中央政治局常委、国务院副总理韩正出席会议。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/457a8327f0834f74948607b20aef2d09\" alt=\"习近平：坚持政治建警改革强警科技兴警从严治警\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	5月7日至8日，全国公安工作会议在北京召开。中共中央总书记、国家主席、中央军委主席习近平出席会议并发表重要讲话。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平在讲话中强调，党的十八大以来，面对错综复杂的国内外形势，党中央统筹国内国际两个大局、发展安全两件大事，就加强公安工作作出一系列重大决策部署，实施一系列重大改革举措，全面深化公安改革，全面推进从严管党治警，提升公安机关执法公信力，促进了社会公平正义，增强了人民群众安全感，确保了社会大局稳定。习近平代表党中央，向全国广大公安民警表示诚挚的慰问。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平指出，在实践中，我们深化对公安工作的规律性认识，积累了许多宝贵经验，必须总结好、运用好成功经验，确保公安工作坚定正确政治方向，坚持改革创新，坚持全面从严管党治警，按照对党忠诚、服务人民、执法公正、纪律严明的总要求，锻造一支让党中央放心、人民群众满意的高素质过硬公安队伍。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平强调，要从政治上建设和掌握公安机关，引导全警增强“四个意识”、坚定“四个自信”、做到“两个维护”，始终在思想上政治上行动上同党中央保持高度一致。要教育全警牢固树立正确的世界观、人生观、价值观。要坚持党管干部原则，按照新时期好干部标准，选好配强各级公安机关领导班子和领导干部。各级公安机关要完善对贯彻落实党中央重大决策部署等情况的督促检查、问效问责机制，确保党的路线方针政策和各项重大决策部署得到不折不扣贯彻落实。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平指出，要积极预防、妥善化解各类社会矛盾，确保社会既充满生机活力又保持安定有序。要处理好维稳和维权的关系，既要解决合理合法诉求、维护群众利益，也要引导群众依法表达诉求、维护社会秩序。要围绕影响群众安全感的突出问题，履行好打击犯罪、保护人民的职责，对涉黑涉恶、涉枪涉爆、暴力恐怖和个人极端暴力犯罪，对盗抢骗、黄赌毒、食药环等突出违法犯罪，要保持高压震慑态势，坚持重拳出击、露头就打。要坚持打防结合、整体防控，专群结合、群防群治，把“枫桥经验”坚持好、发展好，把党的群众路线坚持好、贯彻好，充分发动群众、组织群众、依靠群众，推进基层社会治理创新，努力建设更高水平的平安中国。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平强调，公平正义是执法司法工作的生命线。要抓住关键环节，完善执法权力运行机制和管理监督制约体系，努力让人民群众在每一起案件办理、每一件事情处理中都能感受到公平正义。要严格规范公正文明执法，把打击犯罪同保障人权、追求效率同实现公正、执法目的同执法形式有机统一起来，努力实现最佳的法律效果、政治效果、社会效果。法律面前人人平等，任何人都不能凌驾于法律之上。要加强全民普法宣传教育，推动全社会形成办事依法、遇事找法、解决问题用法、化解矛盾靠法的良好法治环境。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平指出，要坚定信心、乘势而上，把新时代公安改革向纵深推进。要推行扁平化管理，把机关做精、把警种做优、把基层做强、把基础做实，加快构建职能科学、事权清晰、指挥顺畅、运行高效的公安机关机构职能体系。要树立大抓基层、大抓基础的导向，推动重心下移、警力下沉、保障下倾，增强基层实力、激发基层活力、提升基层战斗力。要深化同机构改革配套的相关政策制度改革，优化职能配置、机构设置、力量资源配置，加强机构人员职能整合、业务工作融合、机制流程衔接。要把大数据作为推动公安工作创新发展的大引擎、培育战斗力生成新的增长点，全面助推公安工作质量变革、效率变革、动力变革。要推出更多更高质量的服务举措，着力解决好群众办事难、办事慢、来回跑、不方便等突出问题，让人民群众有更多更直接更实在的获得感。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平强调，从严治警一刻都不能放松。要坚持政治建警、全面从严治警，着力锻造一支有铁一般的理想信念、铁一般的责任担当、铁一般的过硬本领、铁一般的纪律作风的公安铁军。要把理想信念教育作为育警铸魂、固本培元的战略工程常抓不懈，坚持严在平时、管在日常，使全警真正养成知敬畏、存戒惧、守底线的高度自觉。对违纪违法问题，要始终保持“零容忍”，不管是“老虎”还是“苍蝇”，无论是黑恶势力等违法犯罪的“保护伞”还是群众身边的“微腐败”，都要依纪依法严肃查处。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平指出，和平时期，公安队伍是牺牲最多、奉献最大的一支队伍。对这支特殊的队伍，要给予特殊的关爱，政治上关心、工作上支持、待遇上保障，全面落实从优待警措施。要完善人民警察荣誉制度，加大先进典型培育和宣传力度，增强公安民警的职业荣誉感、自豪感、归属感。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	习近平指出，各级党委要高度重视公安工作，加强对公安工作的领导，支持公安机关依法行使职权、履行职责，帮助解决公安工作中遇到的实际困难和问题，为公安机关依法履行职责创造良好条件。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	中共中央政治局委员、中央政法委书记郭声琨在总结讲话中表示，要坚持以习近平新时代中国特色社会主义思想为指导，认真学习贯彻习近平总书记重要讲话精神，大力推进公安工作现代化和公安队伍革命化正规化专业化职业化建设，不断提升依法履职能力，打造高素质过硬公安铁军，坚持严格规范公正文明执法，坚决捍卫政治安全、维护社会安定、保障人民安宁。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	部分中共中央政治局委员，国务委员出席会议。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	各省区市和计划单列市、新疆生产建设兵团、各省会城市党委主要负责同志和政法委、公安厅（局）主要负责同志，中央和国家机关有关部门、有关国有大型企业、军队有关单位负责同志等参加会议。\n</p>', 'http://p1.pstatp.com/large/pgc-image/457a8327f0834f74948607b20aef2d09', '3', '10', '1', null, null, '1', '1', '2019-05-09 10:32:34', '2019-05-09 10:33:21');
INSERT INTO `cms_article` VALUES ('30', '', '', '05cd9326-12ba-4c8a-8edc-04d6b347cc5f.jpg', null, null, '1', null, null, '-1', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('31', 'aaa', '', '3c031388-8aef-4b40-b26e-5366f9154dd0.jpg', '1', '1', '1', null, null, '-1', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('32', 'aaa', '', null, '7', '25', '1', null, null, '0', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('33', 'aaaa', '', null, null, null, '1', null, null, '0', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('34', 'adfasfsaf', '', '4dd09220-5a06-4804-a7c0-63008c4bc882.jpg', '4', '13', '1', null, null, '0', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('35', 'aaaddf', '', null, null, null, '1', null, null, '0', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('36', 'bbbb', 'adfsafasfasfdsafsa', '1d71e9d6-2d85-43bd-9802-d018d06ee45d.jpg', '2', '4', '1', null, null, '0', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('37', '接近崩溃！车子被邻居堵了整整42天！他人在杭州上班，但电话不回调解也不去', '<p>\n	昨天中午，王先生打进85100000：我的车子被一个车主堵在里面开不出来，已经一个多月了。社区和派出所都跟他沟通过，都没用，你说堵个一两天我也算了，怎么能堵一个多月呢？\n</p>\n<p>\n	王先生37岁，安徽人，住米市巷10多年。他说自己平时做工程，经常出远门，前年考虑到经常接送孩子，也为自己方便，买了辆车。王先生说在杭州没摇到号，上了个沪C车牌。\n</p>\n<p>\n	米市巷，老小区，车位很紧，王先生住的地方地形也复杂：两幢楼之间有一条“L”形通道，再往里是死胡同。\n</p>\n<p>\n	昨天下午，我在现场看到，王先生的“沪C”吉利轿车停在里面，“浙A”白色马自达轿车停在L形拐角。路很窄，外面的马自达不走，里面的吉利不可能出来。\n</p>\n<p>\n	<img alt=\"图片\" src=\"http://3g.youth.cn/rdzx/201905/W020190529275104448797.jpg\" />\n</p>\n<p>\n	<img alt=\"图片\" src=\"http://3g.youth.cn/rdzx/201905/W020190529275104462431.jpg\" />\n</p>\n<p>\n	<img alt=\"图片\" src=\"http://3g.youth.cn/rdzx/201905/W020190529275104502695.jpg\" />\n</p>\n<p>\n	“一般情况下我都停在里面，因为停外面会挡别人的车，我在里面至少停了几十次，停外面的车主都挺好的，他们一般早上上班就会开走，如果没开走，车上都留了电话，打个电话都会马上下来。”王先生说，这几年他打过七八次电话叫邻居挪车。有时候他也会停在外面，但不超过十次，别人打电话也马上来挪，也不超过十次。\n</p>\n<p>\n	白色马自达车主姓李，住二楼。王先生说他们平时不怎么说话，偶尔见面打个招呼。\n</p>\n<p>\n	“4月15号前后几天，我接到他电话，希望我把停在外面的车挪进去，好让他停一下，我想也没想，赶紧去挪了车……唉，我给他挪了位置，反而把自己堵在了里面了！”王先生感叹。\n</p>\n<p>\n	王先生说，4月17日，妹妹问他借车，去昆山见客户。下午2点多，妹妹给李先生打电话，李先生说大概五六点下班就回来。\n</p>\n<p>\n	“我妹妹左等右等，6点半了，还是不见人，打了10多个电话都不回。那边和客户约的时间越来越近，这边电话迟迟不接，短信也不回。\n</p>\n<p>\n	“快晚上8点，我妹妹忍不住了，也是年轻气盛，发短信骂了脏话，中间说了这么一句：你既然这样做人，下次你车停在里面也别想出去了。”（昨天王先生妹妹给我看了当天发给对方的短信，确实催过好几次，最后一条短信的内容，说实话，确实很难听。）\n</p>\n<p>\n	“晚上10点多，我放弃了，打了辆顺风车赶到江苏昆山，花了200多块钱。到那边已经凌晨1点多，只能和客户约第二天见。”昨天王先生妹妹说，“还住了一个晚上，又多花几百块钱，本来开我哥的车，不用住，也花不了那么多钱。”\n</p>\n<p>\n	后来王先生要用车，再也打不通李先生电话，短信也不回。只好求助社区。\n</p>\n<p>\n	米市巷社区综治科韩肖磊昨天说，5月5日接到王先生反映的情况后，他第一时间联系上李先生。\n</p>\n<p>\n	“他说自己当时在坐诊，王先生妹妹打了好几个电话过来，他接了3个，还被患者投诉了，所以不高兴就不去挪了，晚上还骂他，让他更加不想挪车。他说要想挪车，除非王先生道歉。”\n韩肖磊说，他把李先生的意思和王先生说了，王先生也发短信道了歉，可李先生又提了个要求：王先生再也不准停进小区。“估计是怕王先生到时候也堵住他的车吧。”\n</p>\n<p>\n	社区网格员沈师傅说，5月5日那天，他也打了电话给李先生，希望有什么事当面谈，该道歉也当面道歉。\n</p>\n<p>\n	“我给他打了10多个电话，最后他索性不接了，说自己累了。”沈师傅说。\n</p>\n<p>\n	王先生说，这一个多月不能用车，给他造成的损失不小。\n</p>\n<p>\n	<img alt=\"图片\" src=\"http://3g.youth.cn/rdzx/201905/W020190529275104531814.jpg\" />\n</p>\n<p>\n	“儿子双休日都要去滨江上辅导班，都是打车来回，每次一百多。这些钱开车足够跑几趟滨江了。\n</p>\n<p>\n	“有时候双休日要去千岛湖谈工程，只能问朋友借车，但不能白借啊，总要请人家吃个饭或者帮个忙，才能还人情。\n</p>\n<p>\n	“最让我火大的是上星期天，雨那么大，儿子要去团校附近参加英语比赛，打车半个多小时没打到，最后是骑电瓶车带儿子去的……\n</p>\n<p>\n	“当时真是想一板砖把他的车砸了！但冷静下来又一想，现在是法治社会……唉！”王先生说着，愁眉苦脸、无可奈何地说。\n</p>\n<p>\n	王先生求助交警，交警说这里是小区道路，不在管辖范围。\n</p>\n<p>\n	王先生向派出所反映，民警说他们也只能调解。\n</p>\n<p>\n	几天前，民警约了双方到所里见面。约的晚上7点，王先生去了，李先生没去，民警打电话也不接。（昨天记者向派出所民警核实，李先生确实在约定那天没去。）\n</p>\n<p>\n	昨天下午在社区，一筹莫展的王先生突然决定——既然对方要求他不要再停进小区，他就答应下来，再也不开车进小区了。\n</p>\n<p>\n	韩肖磊马上用社区座机给李先生打电话，响了几声，还没通，那边就按掉了。\n</p>\n<p>\n	我给李先生打了两个电话，也被挂掉。我又发去短信，希望就这个事情和他核实沟通一下。\n</p>\n<p>\n	直到昨晚截稿，一直没收到回复。\n</p>', '5f634b76-c3e6-4e57-9310-9bf072200cd6.jpg', '6', '23', '1', null, null, '1', null, '2019-05-09 10:32:34', '2019-05-09 10:32:34');
INSERT INTO `cms_article` VALUES ('38', 'aaaa', 'asdfsafsafs', '8225a59a-d7d6-46ff-9121-5c6ed7685c16.jpg', '5', '17', '32', null, null, '0', null, '2019-05-29 19:50:13', '2019-05-29 19:50:13');
INSERT INTO `cms_article` VALUES ('39', 'a', 'a', '3426c68c-d1ca-4225-94e3-6d0d8fd16e5a.jpg', '1', '1', '32', null, null, '0', null, '2019-05-30 16:10:47', '2019-05-30 16:10:47');
INSERT INTO `cms_article` VALUES ('40', 'abc', '11111', 'd13aee3e-33c0-453a-9bf1-853a510fd002.jpg', '3', '9', '32', null, null, '0', null, '2019-05-30 17:00:47', '2019-05-30 17:00:47');
INSERT INTO `cms_article` VALUES ('41', 'ddd', 'dddd', '09b17c26-3ef7-407a-ae46-3ef8b01fa7b7.jpg', '3', '9', '32', null, null, '0', null, '2019-05-30 17:01:35', '2019-05-30 17:01:35');
INSERT INTO `cms_article` VALUES ('42', 'test', 'test', 'f4add2eb-cd13-423f-a0fa-d532d1b320b4.jpg', '7', '25', '34', null, null, '1', null, '2019-05-30 20:56:13', '2019-05-30 20:56:13');
INSERT INTO `cms_article` VALUES ('43', 'test2', 'test未付费是否安抚', 'd6cf3302-6083-4333-8d25-561349dbd8e2.jpg', '1', '1', '34', null, null, '1', null, '2019-05-31 07:59:36', '2019-05-31 07:59:36');
INSERT INTO `cms_article` VALUES ('45', 'abc', 'abc', 'a0090665-b4ec-402a-8430-2928145b0113.jpg', '7', '25', null, null, null, '0', null, '2019-05-31 08:14:50', '2019-05-31 08:14:50');
INSERT INTO `cms_article` VALUES ('46', '测试月考', '测试月考测试月考测试月考测试月考测试月考测试月考测试月考测试月考', '53180692-2128-432b-9aad-e091d67f24f8.jpg', '1', '1', '34', null, null, '1', null, '2019-05-31 09:00:21', '2019-05-31 09:00:21');
INSERT INTO `cms_article` VALUES ('47', 'aaaa', 'aaaa', 'edaebfbb-7f5d-4818-9d2d-2101ea23cb43.jpg', '3', '9', '34', null, null, '1', null, '2019-05-31 09:28:03', '2019-05-31 09:28:03');
INSERT INTO `cms_article` VALUES ('48', 'lucy的文章', '啊啊啊啊', '54c171be-ecd4-4c04-a6db-411cd0c636b8.jpg', '1', '1', '34', null, null, '0', null, '2019-05-31 09:29:57', '2019-05-31 09:29:57');
INSERT INTO `cms_article` VALUES ('49', 'lucy的文章2', '啊啊啊啊', '8e1fcf98-b3eb-4743-8604-c0cdbbebeb37.jpg', '1', '1', null, null, null, '0', null, '2019-05-31 09:34:40', '2019-05-31 09:34:40');
INSERT INTO `cms_article` VALUES ('51', 'lucy的文章2', '啊啊啊啊', 'db573148-01de-40a1-ae95-ca84121044ab.jpg', '1', '1', null, null, null, '0', null, '2019-05-31 09:42:29', '2019-05-31 09:42:29');

-- ----------------------------
-- Table structure for `cms_article_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_tag`;
CREATE TABLE `cms_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_tag
-- ----------------------------
INSERT INTO `cms_article_tag` VALUES ('1', '﻿Java开发');
INSERT INTO `cms_article_tag` VALUES ('2', 'PHP');
INSERT INTO `cms_article_tag` VALUES ('3', '数据库');
INSERT INTO `cms_article_tag` VALUES ('4', '运维');
INSERT INTO `cms_article_tag` VALUES ('5', '操作系统');
INSERT INTO `cms_article_tag` VALUES ('6', '网络');
INSERT INTO `cms_article_tag` VALUES ('7', '产品设计');
INSERT INTO `cms_article_tag` VALUES ('8', 'UI设计');
INSERT INTO `cms_article_tag` VALUES ('9', 'a');
INSERT INTO `cms_article_tag` VALUES ('10', 'b');
INSERT INTO `cms_article_tag` VALUES ('11', 'c');
INSERT INTO `cms_article_tag` VALUES ('12', 'spring');
INSERT INTO `cms_article_tag` VALUES ('13', 'spring-mvc');
INSERT INTO `cms_article_tag` VALUES ('14', 'test');
INSERT INTO `cms_article_tag` VALUES ('15', 'aaa');
INSERT INTO `cms_article_tag` VALUES ('16', 'bbbb');
INSERT INTO `cms_article_tag` VALUES ('17', 'ccc');
INSERT INTO `cms_article_tag` VALUES ('18', 'struts');
INSERT INTO `cms_article_tag` VALUES ('19', 'hibernate');
INSERT INTO `cms_article_tag` VALUES ('20', 'aa');
INSERT INTO `cms_article_tag` VALUES ('21', 'bb');
INSERT INTO `cms_article_tag` VALUES ('22', 'cc');
INSERT INTO `cms_article_tag` VALUES ('23', 'dd');

-- ----------------------------
-- Table structure for `cms_article_tag_middle`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_tag_middle`;
CREATE TABLE `cms_article_tag_middle` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`aid`,`tid`),
  KEY `tid` (`tid`),
  CONSTRAINT `cms_article_tag_middle_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `cms_article` (`id`),
  CONSTRAINT `cms_article_tag_middle_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `cms_article_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_tag_middle
-- ----------------------------
INSERT INTO `cms_article_tag_middle` VALUES ('40', '9');
INSERT INTO `cms_article_tag_middle` VALUES ('40', '10');
INSERT INTO `cms_article_tag_middle` VALUES ('40', '11');
INSERT INTO `cms_article_tag_middle` VALUES ('41', '12');
INSERT INTO `cms_article_tag_middle` VALUES ('41', '13');
INSERT INTO `cms_article_tag_middle` VALUES ('42', '14');
INSERT INTO `cms_article_tag_middle` VALUES ('43', '15');
INSERT INTO `cms_article_tag_middle` VALUES ('43', '16');
INSERT INTO `cms_article_tag_middle` VALUES ('45', '17');
INSERT INTO `cms_article_tag_middle` VALUES ('46', '18');
INSERT INTO `cms_article_tag_middle` VALUES ('46', '19');
INSERT INTO `cms_article_tag_middle` VALUES ('47', '20');
INSERT INTO `cms_article_tag_middle` VALUES ('47', '21');
INSERT INTO `cms_article_tag_middle` VALUES ('48', '22');
INSERT INTO `cms_article_tag_middle` VALUES ('51', '23');

-- ----------------------------
-- Table structure for `cms_blog`
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog`;
CREATE TABLE `cms_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog
-- ----------------------------
INSERT INTO `cms_blog` VALUES ('1', 'Spring Boot + Vue 前后端分离，两种文件上传方式总结', '在Vue.js 中，如果网络请求使用 axios ，并且使用了 ElementUI 库，那么一般来说，文件上传有两种不同的实现方案：\r\n\r\n通过 Ajax 实现文件上传\r\n通过 ElementUI 里边的 Upload 组件实现文件上传\r\n两种方案，各有优缺点，我们分别来看。\r\n\r\n准备工作\r\n首先我们需要一点点准备工作，就是在后端提供一个文件上传接口，这是一个普通的 Spring Boot 项目，如下：\r\n--------------------- \r\n作者：_江南一点雨 \r\n来源：CSDN \r\n原文：https://blog.csdn.net/u012702547/article/details/89633804 \r\n版权声明：本文为博主原创文章，转载请附上博文链接！', '2019-05-23 15:12:36', '王二');
INSERT INTO `cms_blog` VALUES ('2', 'aa', '阿法法师的法师四大地方啊', null, null);
INSERT INTO `cms_blog` VALUES ('3', 'bb', 'bb', '2019-05-23 15:19:27', '王二');
INSERT INTO `cms_blog` VALUES ('4', 'cc', 'bb', '2019-05-23 15:20:12', '王二');
INSERT INTO `cms_blog` VALUES ('5', 'cc', 'aa', '2019-05-23 15:20:30', '王二');
INSERT INTO `cms_blog` VALUES ('6', 'dd', 'aaa', '2019-05-23 15:21:18', '王二');
INSERT INTO `cms_blog` VALUES ('7', 'ee', 'aa', '2019-05-23 15:21:44', '王二');
INSERT INTO `cms_blog` VALUES ('8', 'fff', 'aa', '2019-05-23 17:06:13', '王二');
INSERT INTO `cms_blog` VALUES ('9', 'hh', 'hh', '2019-05-23 18:16:27', null);
INSERT INTO `cms_blog` VALUES ('11', 'kk', 'kk', '2019-05-23 18:19:50', null);

-- ----------------------------
-- Table structure for `cms_blog_tag`
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_tag`;
CREATE TABLE `cms_blog_tag` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_tag
-- ----------------------------
INSERT INTO `cms_blog_tag` VALUES ('1', 'springboot');
INSERT INTO `cms_blog_tag` VALUES ('2', 'spring');
INSERT INTO `cms_blog_tag` VALUES ('3', 'a');
INSERT INTO `cms_blog_tag` VALUES ('4', 'a');
INSERT INTO `cms_blog_tag` VALUES ('5', 'aa');
INSERT INTO `cms_blog_tag` VALUES ('6', 'aa');
INSERT INTO `cms_blog_tag` VALUES ('7', 'aa');
INSERT INTO `cms_blog_tag` VALUES ('8', 'aa');
INSERT INTO `cms_blog_tag` VALUES ('9', 'a');
INSERT INTO `cms_blog_tag` VALUES ('10', 'kk');
INSERT INTO `cms_blog_tag` VALUES ('11', 'll');
INSERT INTO `cms_blog_tag` VALUES ('12', 'oo');
INSERT INTO `cms_blog_tag` VALUES ('13', 'jj');

-- ----------------------------
-- Table structure for `cms_blog_tag_middle`
-- ----------------------------
DROP TABLE IF EXISTS `cms_blog_tag_middle`;
CREATE TABLE `cms_blog_tag_middle` (
  `bid` int(11) NOT NULL DEFAULT '0',
  `tid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`,`tid`),
  KEY `tid` (`tid`),
  CONSTRAINT `cms_blog_tag_middle_ibfk_1` FOREIGN KEY (`bid`) REFERENCES `cms_blog` (`id`),
  CONSTRAINT `cms_blog_tag_middle_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `cms_blog_tag` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_blog_tag_middle
-- ----------------------------
INSERT INTO `cms_blog_tag_middle` VALUES ('1', '1');
INSERT INTO `cms_blog_tag_middle` VALUES ('1', '2');
INSERT INTO `cms_blog_tag_middle` VALUES ('2', '3');
INSERT INTO `cms_blog_tag_middle` VALUES ('3', '4');
INSERT INTO `cms_blog_tag_middle` VALUES ('4', '5');
INSERT INTO `cms_blog_tag_middle` VALUES ('5', '6');
INSERT INTO `cms_blog_tag_middle` VALUES ('6', '7');
INSERT INTO `cms_blog_tag_middle` VALUES ('7', '8');
INSERT INTO `cms_blog_tag_middle` VALUES ('8', '9');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CMS_CATE_REFERENCE_CMS_CHAN` (`channel_id`),
  CONSTRAINT `cms_category_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '互联网', '1');
INSERT INTO `cms_category` VALUES ('2', '软件', '1');
INSERT INTO `cms_category` VALUES ('3', '智能家居', '1');
INSERT INTO `cms_category` VALUES ('4', '虚拟货币', '2');
INSERT INTO `cms_category` VALUES ('5', '股票', '2');
INSERT INTO `cms_category` VALUES ('6', '外汇', '2');
INSERT INTO `cms_category` VALUES ('7', '黄金', '2');
INSERT INTO `cms_category` VALUES ('8', '宏观经济', '2');
INSERT INTO `cms_category` VALUES ('9', '美国', '3');
INSERT INTO `cms_category` VALUES ('10', '亚洲', '3');
INSERT INTO `cms_category` VALUES ('11', '欧洲', '3');
INSERT INTO `cms_category` VALUES ('12', '非洲', '3');
INSERT INTO `cms_category` VALUES ('13', '新车', '4');
INSERT INTO `cms_category` VALUES ('14', 'SUV', '4');
INSERT INTO `cms_category` VALUES ('15', '汽车导购', '4');
INSERT INTO `cms_category` VALUES ('16', '用车', '4');
INSERT INTO `cms_category` VALUES ('17', 'NBA', '5');
INSERT INTO `cms_category` VALUES ('18', 'CBA', '5');
INSERT INTO `cms_category` VALUES ('19', '中超', '5');
INSERT INTO `cms_category` VALUES ('20', '意甲', '5');
INSERT INTO `cms_category` VALUES ('21', '电影', '6');
INSERT INTO `cms_category` VALUES ('22', '电视剧', '6');
INSERT INTO `cms_category` VALUES ('23', '综艺', '6');
INSERT INTO `cms_category` VALUES ('24', '明星八卦', '6');
INSERT INTO `cms_category` VALUES ('25', '段子', '7');
INSERT INTO `cms_category` VALUES ('26', '爆笑节目', '7');
INSERT INTO `cms_category` VALUES ('27', '童趣萌宠', '7');
INSERT INTO `cms_category` VALUES ('28', '雷人囧事', '7');

-- ----------------------------
-- Table structure for `cms_channel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_channel
-- ----------------------------
INSERT INTO `cms_channel` VALUES ('1', '科技', null, null);
INSERT INTO `cms_channel` VALUES ('2', '财经', null, null);
INSERT INTO `cms_channel` VALUES ('3', '国际', null, null);
INSERT INTO `cms_channel` VALUES ('4', '汽车', null, null);
INSERT INTO `cms_channel` VALUES ('5', '体育', null, null);
INSERT INTO `cms_channel` VALUES ('6', '娱乐', null, null);
INSERT INTO `cms_channel` VALUES ('7', '搞笑', null, null);
INSERT INTO `cms_channel` VALUES ('8', '游戏', '游戏游戏游戏游戏', null);

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `cms_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('1', '32', '37', '阿发的说法撒飞洒发安抚安抚', null);
INSERT INTO `cms_comment` VALUES ('2', '32', '37', 'aaaaaaaaaaaaaaaaa\na\ndfasdsafsaf', '2019-05-30 09:36:29');
INSERT INTO `cms_comment` VALUES ('3', '32', '37', 'adfsdafsdfsfdsadfsaf', '2019-05-30 09:36:40');
INSERT INTO `cms_comment` VALUES ('4', '33', '37', 'sdfasf\nsdfas\nf\nd\nfa\nfas\nf\nasf', '2019-05-30 09:40:16');
INSERT INTO `cms_comment` VALUES ('5', '32', '34', '评论:32', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('6', '32', '38', '评论:39', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('7', '32', '27', '评论:40', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('8', '32', '28', '评论:44', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('9', '32', '36', '评论:49', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('10', '32', '26', '评论:52', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('11', '32', '35', '评论:60', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('12', '32', '28', '评论:66', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('13', '32', '37', '评论:70', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('14', '32', '35', '评论:73', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('15', '32', '34', '评论:76', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('16', '32', '30', '评论:88', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('17', '32', '33', '评论:94', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('18', '32', '26', '评论:96', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('19', '32', '29', '评论:98', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('20', '32', '29', '评论:108', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('21', '32', '31', '评论:110', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('22', '32', '32', '评论:113', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('23', '32', '36', '评论:117', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('24', '32', '31', '评论:118', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('25', '32', '38', '评论:120', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('26', '32', '35', '评论:127', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('27', '32', '27', '评论:135', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('28', '32', '36', '评论:138', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('29', '32', '35', '评论:154', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('30', '32', '27', '评论:160', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('31', '32', '37', '评论:166', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('32', '32', '38', '评论:168', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('33', '32', '30', '评论:192', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('34', '32', '30', '评论:199', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('35', '32', '31', '评论:200', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('36', '32', '36', '评论:204', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('37', '32', '38', '评论:212', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('38', '32', '32', '评论:215', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('39', '32', '28', '评论:219', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('40', '32', '34', '评论:220', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('41', '32', '26', '评论:222', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('42', '32', '27', '评论:225', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('43', '32', '34', '评论:226', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('44', '32', '36', '评论:229', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('45', '32', '32', '评论:232', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('46', '32', '37', '评论:243', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('47', '32', '30', '评论:244', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('48', '32', '35', '评论:245', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('49', '32', '26', '评论:246', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('50', '32', '29', '评论:247', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('51', '32', '33', '评论:252', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('52', '32', '29', '评论:253', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('53', '32', '36', '评论:264', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('54', '32', '29', '评论:271', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('55', '32', '28', '评论:272', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('56', '32', '37', '评论:278', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('57', '32', '38', '评论:286', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('58', '32', '29', '评论:287', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('59', '32', '30', '评论:293', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('60', '32', '38', '评论:296', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('61', '32', '26', '评论:297', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('62', '32', '35', '评论:306', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('63', '32', '29', '评论:310', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('64', '32', '28', '评论:323', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('65', '32', '38', '评论:342', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('66', '32', '38', '评论:347', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('67', '32', '38', '评论:354', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('68', '32', '27', '评论:363', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('69', '32', '37', '评论:366', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('70', '32', '33', '评论:376', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('71', '32', '35', '评论:377', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('72', '32', '35', '评论:383', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('73', '32', '36', '评论:393', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('74', '32', '30', '评论:407', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('75', '32', '26', '评论:417', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('76', '32', '34', '评论:425', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('77', '32', '37', '评论:448', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('78', '32', '37', '评论:450', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('79', '32', '31', '评论:451', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('80', '32', '36', '评论:465', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('81', '32', '32', '评论:467', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('82', '32', '32', '评论:470', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('83', '32', '30', '评论:476', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('84', '32', '27', '评论:479', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('85', '32', '38', '评论:499', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('86', '32', '37', '评论:502', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('87', '32', '36', '评论:504', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('88', '32', '27', '评论:505', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('89', '32', '35', '评论:506', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('90', '32', '28', '评论:509', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('91', '32', '29', '评论:511', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('92', '32', '30', '评论:523', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('93', '32', '34', '评论:545', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('94', '32', '29', '评论:553', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('95', '32', '33', '评论:565', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('96', '32', '35', '评论:571', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('97', '32', '27', '评论:588', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('98', '32', '29', '评论:590', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('99', '32', '38', '评论:595', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('100', '32', '31', '评论:614', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('101', '32', '34', '评论:615', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('102', '32', '30', '评论:625', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('103', '32', '37', '评论:633', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('104', '32', '32', '评论:635', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('105', '32', '36', '评论:641', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('106', '32', '35', '评论:642', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('107', '32', '38', '评论:643', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('108', '32', '34', '评论:648', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('109', '32', '35', '评论:663', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('110', '32', '28', '评论:684', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('111', '32', '28', '评论:709', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('112', '32', '29', '评论:713', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('113', '32', '26', '评论:719', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('114', '32', '35', '评论:738', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('115', '32', '38', '评论:743', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('116', '32', '28', '评论:748', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('117', '32', '35', '评论:749', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('118', '32', '36', '评论:762', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('119', '32', '34', '评论:791', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('120', '32', '32', '评论:805', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('121', '32', '29', '评论:815', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('122', '32', '37', '评论:851', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('123', '32', '35', '评论:854', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('124', '32', '26', '评论:859', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('125', '32', '32', '评论:863', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('126', '32', '28', '评论:872', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('127', '32', '29', '评论:941', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('128', '32', '30', '评论:945', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('129', '32', '31', '评论:948', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('130', '32', '26', '评论:952', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('131', '32', '27', '评论:965', '2019-05-30 09:51:44');
INSERT INTO `cms_comment` VALUES ('132', '32', '29', '评论:981', '2019-05-30 09:51:44');

-- ----------------------------
-- Table structure for `cms_friend`
-- ----------------------------
DROP TABLE IF EXISTS `cms_friend`;
CREATE TABLE `cms_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) NOT NULL,
  `url` varchar(50) NOT NULL,
  `created` datetime NOT NULL COMMENT '友情链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_friend
-- ----------------------------
INSERT INTO `cms_friend` VALUES ('1', '京东', 'http://www.jd.com', '2019-05-28 09:20:50');

-- ----------------------------
-- Table structure for `cms_settings`
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_domain` varchar(50) DEFAULT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `article_list_size` int(11) DEFAULT NULL,
  `slide_size` int(11) DEFAULT NULL,
  `admin_username` varchar(16) DEFAULT NULL,
  `admin_password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL COMMENT '1:正常,0:禁用',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('1', '张三', '123', '张三', '2019-05-21', '1', '0', '2019-05-09 15:00:11', '2019-05-16 15:00:14', null, '0');
INSERT INTO `cms_user` VALUES ('8', 'lisi', '123', '光头强', '2019-04-02', '1', '0', '2019-04-22 17:15:30', '2019-05-09 10:34:03', null, '0');
INSERT INTO `cms_user` VALUES ('9', 'wangwu', '123', '王五', '2019-04-24', '0', '1', '2019-04-22 17:15:30', '2019-04-30 11:29:03', null, '0');
INSERT INTO `cms_user` VALUES ('10', '赵六', '123', '田七', '2019-04-16', '0', '0', '2019-04-22 17:15:30', '2019-04-24 11:31:51', null, '0');
INSERT INTO `cms_user` VALUES ('11', '田七', '123', '田七', '2019-04-16', '1', '1', '2019-04-22 17:15:30', '2019-04-27 14:46:35', null, null);
INSERT INTO `cms_user` VALUES ('13', '测试用户2', null, null, '2019-04-16', '1', '0', '2019-04-22 17:15:30', '2019-04-22 17:15:30', null, null);
INSERT INTO `cms_user` VALUES ('14', 'wanger', '123', null, null, '1', null, '2019-04-28 11:24:53', '2019-04-28 11:24:53', null, null);
INSERT INTO `cms_user` VALUES ('15', 'wanger', '123', null, null, '1', null, '2019-04-28 11:26:13', '2019-04-28 11:26:13', null, null);
INSERT INTO `cms_user` VALUES ('16', 'wanger', '123', null, null, '1', null, '2019-04-28 11:27:16', '2019-04-28 11:27:16', null, null);
INSERT INTO `cms_user` VALUES ('17', 'wangsan', '123', null, null, '2', null, '2019-04-28 11:27:53', '2019-04-28 11:27:53', null, null);
INSERT INTO `cms_user` VALUES ('18', 'zhaoliu', '123', null, null, '1', null, '2019-04-28 11:39:52', '2019-04-28 11:39:52', null, null);
INSERT INTO `cms_user` VALUES ('19', 'tianqi', '123', null, null, '1', null, '2019-04-28 11:40:55', '2019-04-28 11:40:55', null, null);
INSERT INTO `cms_user` VALUES ('20', '王八', '456', null, null, '1', null, '2019-04-28 11:46:51', '2019-04-28 11:46:51', null, null);
INSERT INTO `cms_user` VALUES ('21', 'aa', '123', null, null, '1', null, '2019-04-28 11:48:41', '2019-04-28 11:48:41', null, null);
INSERT INTO `cms_user` VALUES ('23', 'feng', '123', null, null, '1', null, '2019-05-12 20:56:05', '2019-05-12 20:56:05', null, null);
INSERT INTO `cms_user` VALUES ('24', 'kitty', '89ed55c27d64eaf45b14bbafcb83350b', null, null, '1', null, '2019-05-12 20:58:20', '2019-05-12 20:58:20', null, null);
INSERT INTO `cms_user` VALUES ('32', 'aaa', '89ed55c27d64eaf45b14bbafcb83350b', null, null, '1', null, null, null, null, null);
INSERT INTO `cms_user` VALUES ('33', 'abc', '7a6746bdbda9c1a662ceba4ec05b0721', null, null, '1', null, null, null, 'https://blog.csdn.net/yang_208/article/details/90474632', '0');
INSERT INTO `cms_user` VALUES ('34', 'lucy', '89ed55c27d64eaf45b14bbafcb83350b', null, null, '1', null, null, null, 'https://blog.csdn.net/yang_208/article/details/90710043', '20');
INSERT INTO `cms_user` VALUES ('35', '田七', '7a6746bdbda9c1a662ceba4ec05b0721', null, null, '1', null, null, null, 'http://www.baidu.com', '0');
INSERT INTO `cms_user` VALUES ('36', 'admin', '7a6746bdbda9c1a662ceba4ec05b0721', null, null, '1', null, null, null, 'https://blog.csdn.net/yang_208/article/details/90474632', null);
