/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : redbook

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 11/10/2024 19:10:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for focus
-- ----------------------------
DROP TABLE IF EXISTS `focus`;
CREATE TABLE `focus`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bloger` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of focus
-- ----------------------------
INSERT INTO `focus` VALUES ('admin', '阿钢惠玩桂林');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `img_src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `red_id` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('admin', 'admin', 'male', '超新鲜的赵露思', 29, '1728641884781.png', 'red1236547');

-- ----------------------------
-- Table structure for place_info
-- ----------------------------
DROP TABLE IF EXISTS `place_info`;
CREATE TABLE `place_info`  (
  `place_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `title_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `second_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of place_info
-- ----------------------------
INSERT INTO `place_info` VALUES ('乾清宫', '乾清宫1.png', '乾清宫2.png', '乾清宫东西两侧的日精门和月华门代表着日、月，左右并列两个永巷，东西列六宫，共为十二宫，是后妃居住之地，它代表着十二个星辰，犹如众星拱卫着它。', '北京市故宫内廷中路', '116.40', '39.92');
INSERT INTO `place_info` VALUES ('故宫博物院', '故宫博物馆1.png', '故宫博物馆2.png', '故宫为中国明、清两代（1368年—1912年）的皇宫，依照中国古代星象学说，紫微垣（即北极星）位于中天，乃天帝所居，天人对应，所以故宫又称紫禁城。明代第三位皇帝朱棣在夺取帝位后，决定迁都北京，明永乐四年（1406年），开始以南京故宫为蓝本营造宫殿 [30]，兴建北京皇宫和城垣。朱棣先派出人员，奔赴全国各地开采名贵的木材和石料，然后运送到北京。采集的物资包括来自四川的楠木、来自房山等地的丹陛石、来自苏州的金砖、来自临清的贡砖等。至明永乐十八年（1420年）落成。', '北京市东城区景山前街4号', '39.908', '116.397');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `author_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `hrf_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(2550) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `focus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fans` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `collect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('author_avatars/65cec21638e35fb835886903.jpg', '地接Маwа爱旅行', '五一🇷🇺海参崴自由行只要1000➕有来的没❓', '200', 'images/1000g00825spgo6kfk0005nooui4g8pnqvupi878!nc_n_webp_mw_1.jpg', '/explore/640bc7cd0000000013003eb4?xsec_token=ABm-g-Yrwc67ie4CzV_l7KDkeT6SzeB_AaHz92h2faigE=&xsec_source=pc_feed', '四天三晚游记分享🏖️和女朋友一起来海参崴玩咯，报了一个旅游团，完美解决签证问题🙋🏻‍♀️拿着护照就出发了，一共是四天，每个人999r，整体感受不错，没有强制消费，导游小姐姐人也挺好的！我回来之后还推荐给我室友了（真的不是广告😭）如果大家有想去的可以看一下我分享的，希望能帮到大家～🌟景点：1⃣️凯旋门➕C-65潜艇博物馆...', '5', '300', '50', 1, '辽宁省', '优质分享，实用信息');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo30unavmmel4eg5nughsf084k525el41g.jpg', '小韵Re.', '99%人都不知道，隐藏在帕米尔高原的绝美机位', '150', 'images/1000g00826soenlsfo0005nughsf084k5bsmio68!nc_n_webp_mw_1.jpg', '/explore/6413f6f30000000011011053?xsec_token=ABexlwgDVig5VPUbqe4LaeZE1Nzg6Ba6SU0UHn0WDoBjg=&xsec_source=pc_feed', '在帕米尔高原，你会发现一片隐藏的美🌄，绝对是摄影师的天堂！这里的每一处风景都像是一幅精美的画卷，尤其是在清晨，阳光洒在山峰上的那一刻，简直让人心醉😍。我和朋友们决定趁着五一假期来一次说走就走的旅行，带上相机，收拾好行囊，出发啦！一路上我们欢声笑语，特别是经过那些色彩斑斓的草甸和湛蓝的湖泊时，忍不住停下来拍照📸。这些美丽的瞬间都记录在我们的镜头里...', '8', '250', '30', 2, '新疆省', '美景推荐');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo30qg4v9m8060g4a3rlipgoedehpuolf8.jpg', '王骁Albert', '西藏行。身体不能承受的美景', '6666', 'images/1000g00826uss1nsfu0404a3rlipgoedeqerdoqo!nc_n_webp_mw_1.jpg', '/explore/64149015000000001300c3e3?xsec_token=ABL8Sx0pehZ3W44CzIwgbLdV_xShgXCJip17RJcsTnQ4U=&xsec_source=pc_feed', '西藏，是一个让人神往的地方，五一假期我和朋友们终于踏上了这片神秘的土地🌈。在拉萨的每一天都是一次心灵的洗礼，布达拉宫的雄伟、纳木措的宁静，都是我前所未见的美景🌊。尤其是在湖边，我和朋友们一起坐在草地上，享受着温暖的阳光和清新的空气☀️，仿佛整个世界都静止了。在这里，我感受到的不仅仅是美，更是一种心灵的归属感❤️。我们也品尝了当地的美食，羊肉串和青稞酒...', '180', '7', '400', 80, '3', '西藏省');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo30o99j8v8ie005nlssg6gbh9l91e1qqo.jpg', '阿钢惠玩桂林', '桂林马家坊桃花开了', '120', 'images/1000g00823gl94emfo0705nlssg6gbh9l2542vl0!nc_n_webp_mw_1.jpg', '/explore/63f84a5b000000001203f5e2?xsec_token=ABSB3CwD6JsuV41-cHhzGfkl28yAP2IOvqc4lkAA845Yg=&xsec_source=pc_feed', '春天的桂林，桃花盛开，粉色的花瓣像是雨后的彩虹🌸。我们一行人在阳光明媚的日子里，来到这个美丽的地方，感受春天的气息🍃。在桃花树下拍照，仿佛置身于仙境，满眼的花海让人心情愉悦😊。桂林的山水也是不可错过的，游船在漓江上缓缓行驶，两岸的风景如画。我们还品尝了地道的桂林米粉🍜，每一口都让人回味无穷。这样的旅行，让我感受到大自然的魅力与人情的温暖💖。', '6', '180', '20', 4, '广西省', '春天的气息');
INSERT INTO `user_info` VALUES ('author_avatars/614454911efd2bdc0250058a.jpg', '白白在拍照', '白塔寺花期攻略', '100', 'images/1000g00825t76ljifo0005noiichgbqn0mmtd0s8!nc_n_webp_mw_1.jpg', '/explore/640be3e10000000027002afe?xsec_token=ABm-g-Yrwc67ie4CzV_l7KDtPHPLbex73vBQj8uFNdExc=&xsec_source=pc_feed', '最近去了一趟白塔寺，正值樱花盛开的季节🌸，满树的樱花映衬着蓝天，简直美得不可思议！我们一行人早早地来到了这里，找到最佳拍照位置📸，然后尽情享受这美丽的时光✨。在花海中，和朋友们一起拍下了很多照片，留下了难忘的回忆。除了拍照，我们还在寺庙里祈福，希望未来的日子能够顺利安康🙏。这里的宁静和美丽，让我感受到心灵的平静，是一个放松心情的好地方...', '5', '150', '25', 5, '北京市', '花期知识分享');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo310713vf5m41044ludo33rp04mi49h08.jpg', '好梦壹家（贵阳汉服馆）', '2023贵安平坝万亩樱花开了，最新花况', '110', 'images/1000g00826fa7fuqfi00044ludo33rp04cgc0kj8!nc_n_webp_mw_1.jpg', '/explore/6410891b00000000130049af?xsec_token=ABa0s2IzqgiF-vHnvBvDpJlztJuzAXdEpCzaCpl7nO_eo=&xsec_source=pc_feed', '每年春天，贵安平坝的樱花都是一大亮点🌸，今年的樱花开得特别好！我和小伙伴们早早地安排好了行程，穿上汉服来这里拍照📸，仿佛穿越到了古代。在樱花树下，我们尽情摆pose，享受这份美好和快乐😊。花瓣飘落的时候，我们还在一起许愿，希望每个人的梦想都能成真✨。樱花不仅美丽，更是我们青春的象征，永远铭刻在心中💖。', '9', '300', '15', 6, '贵州省', '实时更新');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo3109a5bqtmo0g5og958440o47h84fkso.jpg', 'kxxx52', '成都拍照打卡', '90', 'images/1000g00826io6brkfe0005og958440o47hjbn6b8!nc_n_webp_mw_1.jpg', '/explore/641166db0000000027010d75?xsec_token=AB2Q-dTOAsHO0W2WkGTqlx4SLdF5dURcOLn8pj7s1QjaU=&xsec_source=pc_feed', '成都，这座城市的魅力无可抵挡🌆！最近去了一趟，特别是在春熙路的购物区，五光十色的霓虹灯让我目不暇接🌈。不仅仅是购物，这里还有许多美食😋，比如串串香和担担面，让人流连忘返。我们在这里拍了很多照片，记录下了每一个瞬间📸。而在宽窄巷子里，我感受到浓厚的川文化，古色古香的建筑和小吃，让人如同置身于历史长河中。成都，就是一个让人想不停逗留的地方！', '6', '130', '10', 7, '四川省', '打卡推荐');
INSERT INTO `user_info` VALUES ('author_avatars/6155a73515d8ec6545af2ad9.jpg', '汪一昕', '3.19青龙寺樱花现况', '110', 'images/1000g008277jds9mfe00049ul1ga8eas7jk1aul0!nc_n_webp_mw_1.jpg', '/explore/6416bd650000000013006a51?xsec_token=ABTwEGdn4Xvz9C8HtVFsRRe0V_IXDf_jhp-0MPim3w7v0=&xsec_source=pc_feed', '青龙寺的樱花又开了，盛开的樱花吸引了不少游客来打卡🌸。我和朋友们也在这个阳光明媚的日子里，特意来到这里欣赏樱花🍃。樱花树下，花瓣如雨，仿佛在下着粉色的雪🌨️。在这样的环境中，心情也变得格外美好😊。我们还在寺庙里许下了愿望，希望未来的每一天都能像樱花一样灿烂绚丽✨。这个地方不仅有美丽的风景，还有浓厚的文化底蕴，值得每一个人来体验...', '7', '220', '12', 8, '浙江省', '樱花美景');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo3180edrmpju0g45t390inm8q9m4td8rg.jpg', '无尾象', '快去！龙泉山的桃花开得好好，地铁直达', '120', 'images/1000g0082717jpeofk00045t390inm8q9m4im0ro!nc_n_webp_mw_1.jpg', '/explore/64151bf30000000013003a8b?xsec_token=ABFLoxizbGPC6eKVRu-22uYA7RIdLwcJ5GPmj-7EtCOKI=&xsec_source=pc_feed', '龙泉山的桃花开得如火如荼，快去打卡吧！在这个阳光明媚的日子里，我和朋友们坐地铁直达目的地，沿途欣赏美丽的风景🌸。到达山顶后，满眼的桃花让人心旷神怡😍。我们在桃花树下拍照留念，记录下这美好的瞬间📸。在微风中，桃花的香气四溢，仿佛让人置身于仙境✨。这次的桃花之旅让我感受到春天的气息，也让我们更加珍惜生活中的点滴美好💖。', '6', '200', '18', 9, '四川省', '春游推荐');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo30u6mph055i004a2sqrreqovf2c91vl8.jpg', '小蔡想吃肉', '仙本那的海边星巴克好好拍啊一定要来！！', '130', 'images/1000g00825p5g9psfm0004a2sqrreqovf7e8bdp8!nc_n_webp_mw_1.jpg', '/explore/640ada8d0000000013002599?xsec_token=ABzkkjS6ea7QcNCJWRFC92CBGT9Sa_Bhy4w_yPP9-i2N4=&xsec_source=pc_feed', '仙本那的海边星巴克，简直是拍照的绝佳地点🌊！在这里，你可以一边享受美味的咖啡，一边欣赏无敌海景☕。我和朋友们特别喜欢这里的氛围，坐在露台上，微风拂面，感觉无比惬意😌。我们在这里拍了很多照片，记录下了每一个快乐的瞬间📸。尤其是在夕阳西下的时候，天空被染成了金色，映衬着海面，简直美得让人窒息🌅。如果你来仙本那，千万不要错过这个地方哦！', '7', '350', '30', 10, '云南省', '海滩美食');
INSERT INTO `user_info` VALUES ('author_avatars/1040g2jo30rgdc2jlhg0048ormocigph4f57lshg.jpg', '浪起来的李四猫', '夕阳下的乌龟潭，二月兰铺满金色的芳草地', '110', 'images/1000g00826a74jnqfe05g48ormocigph42e29op8!nc_n_webp_mw_1.jpg', '/explore/640f37a900000000270104e7?xsec_token=ABEAaJ-Go6VwL3SUuy_mhpip7e1UIey2bOXCM1pGEdd5M=&xsec_source=pc_feed', '在夕阳的余晖下，乌龟潭的美景让我感受到无与伦比的宁静🌅。二月兰的花海在金色阳光的照耀下，显得格外绚丽多彩🌸。我和朋友们在这里拍照留念，享受着这片美丽的土地🌼。特别是在日落时分，整个世界都被温暖的色调包围，心情也随之变得愉悦😊。在这段旅程中，我们感受到的不仅仅是风景的美，还有友情的温暖💖。乌龟潭，真是一个值得一去的好地方！', '6', '250', '22', 11, '广东省', '自然之美');
INSERT INTO `user_info` VALUES ('author_avatars/63f072d09ffb98befcb3d990.jpg', '川西苍老柿', '四姑娘山实拍分享3月13日', '90', 'images/1000g008268qceq4fm0005ngilf30880ph5jjnco!nc_n_webp_mw_1.jpg', '/explore/640edbfc000000000800c4be?xsec_token=ABLtWiovbJcSViHuvtq6syo_x3GyP2dmQWfDNL-pJQyIk=&xsec_source=pc_feed', '四姑娘山的美丽，真的让人难以忘怀🏔️！在这个春天的日子里，我和朋友们一起前往这里，感受高山的壮丽与自然的神奇🌄。一路上的风景如画，山花烂漫，清澈的小溪流淌而过，令人心旷神怡🌊。在山顶上，我们一起欣赏那一望无际的风景，感受到大自然的浩瀚与震撼✨。这个地方不仅让我们感受到美，也让我们更加热爱生活，珍惜身边的人❤️。', '5', '100', '5', 12, '四川省', '高山风景');
INSERT INTO `user_info` VALUES (NULL, 'admin', '、、、、', NULL, 'images/1728637822801.png', NULL, '<p>输入文案内容、、、</p>', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user_info` VALUES (NULL, 'admin', '5555', NULL, 'images/1728640785517.png', NULL, '<p>输入文案内容5555</p>', NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
