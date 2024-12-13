/*
 Navicat Premium Data Transfer

 Source Server         : Mysql8-Docker
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:13306
 Source Schema         : itsource36

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 13/12/2024 15:01:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '收货地址' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 2, '收货人1', '17703786901', '地址1', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (2, 1, '收货人2', '17703786902', '地址2', 1, '2022-03-19 16:10:58', '2022-03-19 16:43:42', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (3, 2, '收货人3', '17703786903', '地址3', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (4, 3, '收货人4', '17703786904', '地址4', 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (5, 1, '收货人5', '17703786905', '地址5', 1, '2022-03-19 16:10:58', '2022-03-19 16:43:36', '2022-03-19 16:10:58');
INSERT INTO `address` VALUES (6, 4, '李小妹', '17638176543', '上海市东方明珠', 2, '2024-12-13 06:23:02', '2024-12-13 14:23:01', '2024-12-13 06:23:02');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '所属用户',
  `waimai_id` int NULL DEFAULT NULL COMMENT '外卖',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (5, 4, 8, 1, '2024-12-13 06:40:17', NULL, '2024-12-13 06:40:17');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '配置文件' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, '轮播图1', 'http://localhost:8080/waimaifuwu/upload/config1.jpg');
INSERT INTO `config` VALUES (2, '轮播图2', 'http://localhost:8080/waimaifuwu/upload/config2.jpg');
INSERT INTO `config` VALUES (3, '轮播图3', 'http://localhost:8080/waimaifuwu/upload/config3.jpg');

-- ----------------------------
-- Table structure for dictionary
-- ----------------------------
DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE `dictionary`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '字段名',
  `code_index` int NULL DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int NULL DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dictionary
-- ----------------------------
INSERT INTO `dictionary` VALUES (1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (3, 'huiyuandengji_types', '会员等级类型', 1, '青铜会员', NULL, '0.98', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (4, 'huiyuandengji_types', '会员等级类型', 2, '白银会员', NULL, '0.96', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (5, 'huiyuandengji_types', '会员等级类型', 3, '黄金会员', NULL, '0.94', '2022-03-19 16:07:44');
INSERT INTO `dictionary` VALUES (6, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (7, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (8, 'waimai_types', '外卖类型', 1, '甜食', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (9, 'waimai_types', '外卖类型', 2, '烧烤', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (10, 'waimai_types', '外卖类型', 3, '奶茶', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (11, 'waimai_types', '外卖类型', 4, '小吃', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (12, 'waimai_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (13, 'waimai_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (14, 'waimai_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (15, 'waimai_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (16, 'waimai_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (17, 'waimai_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (18, 'waimai_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (19, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (20, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (21, 'gonggao_types', '公告类型', 1, '夏季美食', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (22, 'gonggao_types', '公告类型', 2, '冬季美食', NULL, NULL, '2022-03-19 16:07:45');
INSERT INTO `dictionary` VALUES (23, 'gonggao_types', '公告类型', 3, '春季美食', NULL, '', '2024-12-13 05:41:31');
INSERT INTO `dictionary` VALUES (24, 'gonggao_types', '公告类型', 4, '秋季美食', NULL, '', '2024-12-13 05:41:40');
INSERT INTO `dictionary` VALUES (25, 'waimai_types', '外卖类型', 5, '咖啡', NULL, '', '2024-12-13 05:42:58');
INSERT INTO `dictionary` VALUES (26, 'waimai_types', '外卖类型', 6, '生活用品', NULL, '', '2024-12-13 05:43:14');
INSERT INTO `dictionary` VALUES (27, 'waimai_types', '外卖类型', 7, '深夜食堂', NULL, '', '2024-12-13 06:19:09');

-- ----------------------------
-- Table structure for gonggao
-- ----------------------------
DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE `gonggao`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '公告信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gonggao
-- ----------------------------
INSERT INTO `gonggao` VALUES (1, '上海必吃的！3条本地人私藏的美食路线', 'http://localhost:8080/waimaifuwu/upload/1734069593594.jpg', 2, '2022-03-19 16:10:58', '<p>上海必吃的！3条本地人私藏的美食路线（无广</p><p>第一条：定西路美食路线</p><p>1️⃣祥和面馆（人均23）</p><p>2️⃣晓燕生煎（人均20）</p><p>3️⃣老上海记忆蛋饼（人均9）</p><p>4️⃣炒面一霸（人均24）</p><p>5️⃣长发餐饮（人均20）</p><p>6️⃣沪西老弄堂（人均45）</p><p><br></p><p>第二条：龙之梦美食路线</p><p>1️⃣太琼糟粕醋-8楼（人均150）</p><p>2️⃣白玉兰食品—b1 （人均45）</p><p>3️⃣井梅—b2 （人均55）</p><p>4️⃣金泽咖喱—b2 （人均56）</p><p>5️⃣鲜得来—b2 （人均30）</p><p><br></p><p>第三条：静安寺美食路线</p><p>1️⃣敬食（人均44）</p><p>2️⃣沪西老弄堂（人均45）</p><p>3️⃣香江铭苑（人均70）</p><p>4️⃣奶奶的味道（人均75）</p><p>5️⃣Miss Poke波奇鲜（人均58）</p><p><img src=\"http://localhost:8080/waimaifuwu/upload/1734069697400.jpg\"></p>', '2022-03-19 16:10:58');
INSERT INTO `gonggao` VALUES (4, '四川经典小吃，你吃过几种', 'http://localhost:8080/waimaifuwu/upload/1734070264854.jpg', 1, '2022-03-19 16:10:58', '<p><br></p><p>1️⃣ 担担面</p><p>说到四川小吃，怎能不提担担面？面条细薄，卤汁酥香，咸鲜微辣，每一口都是对味觉的极致挑逗！入选“中国十大名面条”，绝对名不虚传！</p><p>不容错过的美国街头美食有哪些❓</p><p>▪️烤牛肉薯条（Carne Asada Fries）</p><p>▪️费城牛肉奶酪三明治（Cheesesteak）</p><p>▪️恰米强克卷（Chimichanga）</p><p>▪️芝加哥热狗（Chicago-Style Hot Dog）</p><p>▪️塔可饼（Taco）</p><p>▪️加州热狗（Carolina-Style Hot Dog）</p><p>▪️甜甜圈（Doughnut）</p><p>▪️意大利牛肉三明治（Italian Beef）</p><p>▪️早餐卷饼（Breakfast Burrito）</p><p>▪️炸蛤蜊（Fried Clams）</p><p>▪️玉米片派（Frito Pie）</p><p>▪️碱水面包（Soft Pretzel）</p><p>▪️漏斗蛋糕（Funnel Cake）</p><p>▪️玉米狗（Corn Dog）</p><p>▪️辣肉酱汉堡（Chili Burger）</p><p>▪️西雅图热狗（Seattle Dog）</p><p>▪️焦糖苹果（Candied Apple）</p><p>▪️切片披萨（Pizza Slice）</p><p>▪️龙虾卷（Lobster Roll）</p><p>▪️炸奶酪球（Fried Cheese Curds）</p><p>▪️奶酪通心粉（Mac &amp; Cheese）</p><p>▪️炸鹰嘴豆饼（Falafel）</p><p>▪️吉事果（Churros）</p><p>▪️烤肉卷（Shawarma）</p><p>▪️墨西哥玉米片（Nachos）</p><p><br></p><p><br></p><p>别忘了还有串串香、泸州黄粑、梓潼片粉、甜水面、蛋烘糕、鸡丝凉面等等</p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BE%258E%25E9%25A3%259F%25E5%2588%2586%25E4%25BA%25AB&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#美食分享</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%25AD%25E5%259B%25BD%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#中国小吃</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川小吃</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E5%25B0%258F%25E5%2590%2583%25E6%258E%25A8%25E8%258D%2590&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川小吃推荐</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%258B%2585%25E6%258B%2585%25E9%259D%25A2&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#担担面</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%25B2%25E4%25B8%25B2%25E9%25A6%2599&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#串串香</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%2585%25B8%25E8%25BE%25A3%25E7%25B2%2589&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#酸辣粉</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川美食</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E7%2589%25B9%25E8%2589%25B2%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川特色美食</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E7%25BB%258F%25E5%2585%25B8%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川经典美食</a>&nbsp;&nbsp;<a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%259B%259B%25E5%25B7%259D%25E7%25BB%258F%25E5%2585%25B8%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#四川经典小吃</a></p><p><br></p><p><img src=\"http://localhost:8080/waimaifuwu/upload/1734070323899.jpg\"></p>', '2022-03-19 16:10:58');
INSERT INTO `gonggao` VALUES (5, '重庆牛腩煲：广东大厨空运而来，美味爆棚！', 'http://localhost:8080/waimaifuwu/upload/1734068616868.jpeg', 4, '2022-03-19 16:10:58', '<p><img src=\"http://localhost:8080/waimaifuwu/upload/1734069479311.jpeg\">重庆最地道的牛腩煲，美味到让人欲罢不能！</p>', '2022-03-19 16:10:58');
INSERT INTO `gonggao` VALUES (6, '美国最受欢迎的炸物有哪些', 'http://localhost:8080/waimaifuwu/upload/1734070485285.jpg', 1, '2024-12-13 06:14:46', '<p>美国最受欢迎的炸物有哪些</p><p>▪️南方炸鸡：白脱牛奶+烟熏红椒粉+鸡腿肉+黑胡椒+盐+洋葱粉+面粉+植物油</p><p>▪️炸奶酪凝乳：奶酪凝乳+白脱牛奶+面粉+小苏打+蒜粉+盐+鸡蛋+菜籽油</p><p>▪️炸鲶鱼：鲶鱼+玉米面+面粉+卡津粉+鸡蛋+盐+植物油</p><p>▪️洋葱圈：洋葱+橄榄油+鸡蛋+面粉+泡打粉+奶+面包糠+植物油</p><p>▪️鸡米花：鸡腿肉+鸡蛋+玉米淀粉+面包糠+烟熏红椒粉+盐+卡宴辣椒+蒜粉+洋葱粉+胡椒+植物油</p><p>▪️炸玉米球：玉米面+面粉+泡打粉+盐+糖+鸡蛋+洋葱+奶</p><p>▪️炸蟹角：馄饨皮+奶油奶酪+蟹肉+葱白+花生油+盐</p><p>▪️炸蛤蜊：蛤蜊+花生油+盐+辣椒粉+蒜粉+牛至+莳萝+鸡蛋+黑胡椒+迷迭香+百里香+鼠尾草+肉豆蔻+芹菜籽+苏打饼干碎</p><p>▪️炸培根：培根+鸡蛋+奶+面粉+盐+植物油</p><p>▪️炸鸡柳：鸡柳+盐+胡椒+鸡蛋+橄榄油+杏仁粉+帕马森奶酪+洋葱粉+蒜粉+烟熏红椒粉+罗勒+牛至+迷迭香+百里香</p><p>▪️炸青番茄：青番茄+盐+鸡蛋+奶+面粉+面包糠+玉米面+卡津粉+糖+洋葱粉+蒜粉+植物油</p><p>▪️炸鸡块：鸡胸肉+鸡蛋+面包糠+盐+黑胡椒+蒜粉+烟熏红椒粉+黄油</p><p>▪️炸牛排：牛排+鸡蛋+白脱牛奶+面粉+蒜粉+盐+胡椒+菜籽油+洋葱粉</p><p>▪️炸奶酪通心粉：通心粉+培根+黄油+面粉+奶+盐+黑胡椒+蒜粉+卡宴辣椒+肉豆蔻+切达奶酪+蒙特利杰克奶酪+洋葱粉+鸡蛋+面包糠+植物油</p><p>▪️炸士力架：士力架+植物油+玉米面+糖+面粉+泡打粉+盐+黑胡椒+鸡蛋+奶</p><p>▪️炸牛油果：牛油果+面粉+盐+黑胡椒+鸡蛋+面包糠+植物油</p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%25AE%25B0%25E5%25BD%2595%25E6%2597%2585%25E9%2580%2594%25E4%25B8%25AD%25E7%259A%2584%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#记录旅途中的美食</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2582%25B8%25E7%2589%25A9&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#炸物</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2582%25B8%25E9%25B8%25A1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#炸鸡</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2582%25B8%25E7%2589%25A9%25E5%25AE%2589%25E5%2588%25A9&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#炸物安利</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BE%258E%25E5%259B%25BD%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#美国美食</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%25B8%25A1%25E7%25B1%25B3%25E8%258A%25B1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#鸡米花</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%25B8%25A1%25E6%259F%25B3&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#鸡柳</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2582%25B8%25E9%25B8%25A1%25E6%259F%25B3&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#炸鸡柳</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BE%258E%25E9%25A3%259F%25E6%2594%25BB%25E7%2595%25A5&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#美食攻略</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%25A5%25BD%25E5%2590%2583%25E5%2588%25B0%25E7%2588%2586&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#好吃到爆</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2585%25A8%25E7%2590%2583%25E5%2590%2583%25E5%2596%259D%25E5%25B0%258F%25E5%2588%2586%25E9%2598%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#全球吃喝小分队</a></p><p><br></p><p><span style=\"color: var(--color-link); background-color: transparent;\"><span class=\"ql-cursor\">﻿</span></span><img src=\"http://localhost:8080/waimaifuwu/upload/1734070467193.jpg\"></p>', '2024-12-13 06:14:46');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 6, 'admin', 'users', '管理员', 'sotkjy3tkz7a4ttly1gof9qdmnbt7g7g', '2022-03-19 16:15:04', '2024-12-13 07:34:43');
INSERT INTO `token` VALUES (2, 1, 'a1', 'yonghu', '用户', '0tsv4oypownecdlj1lksj62kxqlbw62e', '2022-03-19 16:17:15', '2022-03-19 17:50:00');
INSERT INTO `token` VALUES (3, 4, 'itsource', 'yonghu', '用户', 'oqx1ugo1252hng6magl3jfwfri7nvyn8', '2024-12-13 13:32:03', '2024-12-13 07:36:19');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (6, 'admin', 'admin', '管理员', '2022-05-02 14:51:13');

-- ----------------------------
-- Table structure for waimai
-- ----------------------------
DROP TABLE IF EXISTS `waimai`;
CREATE TABLE `waimai`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `waimai_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '外卖编号  Search111 ',
  `waimai_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '外卖名称  Search111 ',
  `waimai_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '外卖照片',
  `waimai_types` int NULL DEFAULT NULL COMMENT '外卖类型 Search111',
  `waimai_kucun_number` int NULL DEFAULT NULL COMMENT '外卖库存',
  `waimai_price` int NULL DEFAULT NULL COMMENT '购买获得积分 ',
  `waimai_old_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '外卖原价 ',
  `waimai_new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `waimai_clicknum` int NULL DEFAULT NULL COMMENT '点击次数 ',
  `waimai_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '菜品介绍 ',
  `shangxia_types` int NULL DEFAULT NULL COMMENT '是否上架 ',
  `waimai_delete` int NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '外卖' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai
-- ----------------------------
INSERT INTO `waimai` VALUES (1, '16476774584284', '外卖名称1', 'http://localhost:8080/waimaifuwu/upload/waimai1.jpg', 3, 101, 246, 609.91, 483.97, 35, '菜品介绍1', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (2, '16476774584284', '外卖名称2', 'http://localhost:8080/waimaifuwu/upload/waimai2.jpg', 1, 102, 478, 588.43, 169.04, 165, '菜品介绍2', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (3, '164767745842811', '外卖名称3', 'http://localhost:8080/waimaifuwu/upload/waimai3.jpg', 1, 99, 482, 644.72, 126.54, 437, '菜品介绍3', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (4, '164767745842818', '外卖名称4', 'http://localhost:8080/waimaifuwu/upload/waimai4.jpg', 1, 102, 412, 634.91, 186.45, 51, '菜品介绍4', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (5, '16476774584286', '外卖名称5', 'http://localhost:8080/waimaifuwu/upload/waimai5.jpg', 3, 104, 77, 579.09, 196.77, 49, '菜品介绍5', 1, 1, '2022-03-19 16:10:58');
INSERT INTO `waimai` VALUES (6, '1734070538916', '深夜食堂', 'http://localhost:8080/waimaifuwu/upload/1734070557646.jpeg', 6, 111, 100, 699.00, 499.00, 4, '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">成都小吃大搜罗 | 62家老字号美食店，吃货必打卡</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> 各位美食探险家，成都土著吐血整理，62家地道成都小吃店，让你的成都之旅不再有遗憾！</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都美食</a><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都小吃</a><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E6%2597%2585%25E6%25B8%25B8%25E6%2594%25BB%25E7%2595%25A5&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都旅游攻略</a></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> 成都小吃目录：</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">1.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BA%25A2%25E6%25B2%25B9%25E6%25B0%25B4%25E9%25A5%25BA&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#红油水饺</a><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> - 私房水饺、富临水饺</span></p><p><span style=\"color: rgb(51, 51, 51);\">2.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E6%258A%2584%25E6%2589%258B&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都抄手</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 翟大爷抄手、八二干海椒抄手</span></p><p><span style=\"color: rgb(51, 51, 51);\">3.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%259B%258B%25E7%2583%2598%25E7%25B3%2595&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#蛋烘糕</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 贺记蛋烘糕、蜗牛蛋烘糕</span></p><p><span style=\"color: rgb(51, 51, 51);\">4.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25B3%2596%25E6%25B2%25B9%25E6%259E%259C%25E5%25AD%2590&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#糖油果子</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 崇州余荞面、周记糖油果子</span></p><p><span style=\"color: rgb(51, 51, 51);\">5.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25B2%2589%25E8%2582%25A0%25E7%25B2%2589&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#粉肠粉</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 甘记肥肠粉、马家场老街胖娃肥肠粉</span></p><p><span style=\"color: rgb(51, 51, 51);\">6.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E8%25B9%2584%25E8%258A%25B1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都蹄花</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 小女未滋补蹄花、芙蓉蹄花</span></p><p><span style=\"color: rgb(51, 51, 51);\">7.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2585%2594%25E5%25A4%25B4&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#兔头</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 梅记兔头、查查兔头</span></p><p><span style=\"color: rgb(51, 51, 51);\">8.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%2594%2585%25E9%25AD%2581&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#锅魁</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 王记特色锅魁、邱二哥锅魁</span></p><p><span style=\"color: rgb(51, 51, 51);\">9.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2594%259C%25E6%25B0%25B4%25E9%259D%25A2&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#甜水面</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 沈堂甜水面、小名堂担担甜水面</span></p><p><span style=\"color: rgb(51, 51, 51);\">10.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%25BE%2599%25E7%259C%25BC%25E5%258C%2585&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#龙眼包</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 叒缘茶社&amp;痣胡子、胡成记口蘑龙眼包</span></p><p><span style=\"color: rgb(51, 51, 51);\">11.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%2592%25B5%25E9%2592%25B5%25E9%25B8%25A1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#钵钵鸡</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 鲜知味钵钵鸡、官记乐钵钵鸡</span></p><p><span style=\"color: rgb(51, 51, 51);\">12.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%2582%25BA%25E7%2589%2587&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#肺片</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 黄伞肺片、拜子肺片</span></p><p><span style=\"color: rgb(51, 51, 51);\">13.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%2583%25A4%25E5%2585%2594&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#烤兔</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 奇味烤兔、冯姐手撕兔</span></p><p><span style=\"color: rgb(51, 51, 51);\">14.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%25B1%2586%25E6%25B1%25A4%25E9%25A5%25AD&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#豆汤饭</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 温记府庙豆汤、水津豆汤</span></p><p><span style=\"color: rgb(51, 51, 51);\">15.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25B4%25A0%25E6%25A4%2592%25E6%259D%2582%25E9%2585%25B1%25E9%259D%25A2&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#素椒杂酱面</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 眼哥素椒面、杨柏英传统杂酱面</span></p><p><span style=\"color: rgb(51, 51, 51);\">16.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E9%25A6%2593%25E5%25AD%2590%25E8%25B1%2586%25E8%258A%25B1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#馓子豆花</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 西月城谭豆花、堂吃饺子</span></p><p><span style=\"color: rgb(51, 51, 51);\">17.&nbsp;</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%25B5%25B7%25E5%2591%25B3%25E9%259D%25A2&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#海味面</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 海味面、八宝海味</span></p><p><span style=\"color: rgb(51, 51, 51);\"> 一站式美食体验：</span></p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%25B0%258F%25E8%25B0%25AD%25E8%25B1%2586%25E8%258A%25B1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#小谭豆花</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 豆花界的扛把子</span></p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%25B0%258F%25E5%2590%258D%25E5%25A0%2582%25E6%258B%2585%25E6%258B%2585%25E7%2594%259C%25E6%25B0%25B4%25E9%259D%25A2&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#小名堂担担甜水面</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 甜水面的甜蜜诱惑</span></p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%25B0%25AD%25E5%25AE%25B6&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#谭家</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> - 传统小吃集合地</span></p><p><span style=\"color: rgb(51, 51, 51);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%2589%2593%25E5%258D%25A1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食打卡</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%258E%25A2%25E5%25BA%2597&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食探店</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%258E%25A8%25E8%258D%2590&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食推荐</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E5%25B0%258F%25E5%2590%2583%25E5%259C%25B0%25E5%259B%25BE&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都小吃地图</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E4%25B9%258B%25E6%2597%2585&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食之旅</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%2594%25BB%25E7%2595%25A5&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食攻略</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%2597%25A5%25E8%25AE%25B0&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食日记</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E5%25A4%25A7%25E5%2585%25A8&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食大全</a><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E5%25BF%2585%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: rgb(255, 255, 255);\">#成都美食必吃</a></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> 来成都，不仅要感受熊猫的萌态，更要体验这些让人回味无穷的成都小吃。带上这份攻略，让你的成都美食之旅更加完美！</span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E5%25AE%25B6&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都美食家</a><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E5%25B0%258F%25E5%2590%2583%25E5%2585%25A8%25E6%2594%25BB%25E7%2595%25A5&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都小吃全攻略</a><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"> </span><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2590%25E9%2583%25BD%25E7%25BE%258E%25E9%25A3%259F%25E6%2589%2593%25E5%258D%25A1%25E5%259C%25B0&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: rgb(255, 255, 255); color: var(--color-link);\">#成都美食打卡地</a></p><p><br></p><p><img src=\"http://localhost:8080/waimaifuwu/upload/1734070637893.jpg\"><img src=\"http://localhost:8080/waimaifuwu/upload/1734070655340.jpg\"></p>', 1, 1, '2024-12-13 06:18:06');
INSERT INTO `waimai` VALUES (7, '1734071200515', '轻食沙拉', 'http://localhost:8080/waimaifuwu/upload/1734071232362.jpg', 7, 111, 111, 222.00, 111.00, 2, '<p>怎么才发现这个吃法😭…真的巨巨巨好吃！！</p><p>啊啊啊姐妹们，虾仁鸡蛋拌玉米粒。加上西兰花🥦，真的好好吃！！虾仁贼入味，玉米粒清甜爽口，搭配一起吃，真的香迷糊<img src=\"https://picasso-static.xiaohongshu.com/fe-platform/c255f0ae809f8045561a80737b6aec25139f7607.png\">，还嘎嘎顶饱，姐妹们都可以去试试～</p><p><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/035c8044c53dbf7df2cf28d6ec35eb325567121b.png\">做法步骤图在图5⃣️哈～</p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2587%258F%25E8%2582%25A5%25E5%2587%258F%25E8%2584%2582%25E5%2590%2583%25E8%25BF%2599%25E4%25BA%259B&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#减肥减脂吃这些</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2587%2589%25E6%258B%258C%25E8%258F%259C&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#凉拌菜</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%258E%2589%25E7%25B1%25B3%25E7%25B2%2592&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#玉米粒</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%2599%25BE%25E4%25BB%2581&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#虾仁</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%258F%2588%25E8%25AF%25A5%25E5%2587%258F%25E8%2582%25A5%25E4%25BA%2586&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#又该减肥了</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%2580%25E4%25BA%25BA%25E9%25A3%259F%25E5%2590%2583%25E4%25BB%2580%25E4%25B9%2588&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#一人食吃什么</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%25A5%25BF%25E5%2585%25B0%25E8%258A%25B1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#西兰花</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%2588%2591%25E7%259A%2584%25E5%25AE%2585%25E5%25AE%25B6%25E7%25BE%258E%25E9%25A3%259F%25E6%2597%25A5%25E8%25AE%25B0&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: var(--color-link); background-color: transparent;\">#我的宅家美食日记</a></p>', 1, 1, '2024-12-13 06:27:30');
INSERT INTO `waimai` VALUES (8, '1734071690226', '雪菜小黄鱼煨面、炸猪排', 'http://localhost:8080/waimaifuwu/upload/1734071707616.jpg', 4, 32, 111, 22.00, 11.00, 5, '<p>魔都｜真正属于上海的烟火气（上篇）</p><p>要问上海最地道的美食，那一定藏在街头巷尾的各种小店里，爆肝给大家准备了27家必吃美食，分上中下篇，带大家感受上海的烟火气<span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\"><img src=\"https://picasso-static.xiaohongshu.com/fe-platform/7a6287c7f65fabdc15fa8f06b2696cccc21e86f2.png\"></span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">1️⃣ 顶特勒粥面馆</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：淮海中路494弄22号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：雪菜小黄鱼煨面、炸猪排</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：小店位于淮海中路的一条小弄堂里，属于一不小心就会错过的那种，也是连续五年米其林得主，小黄鱼面很鲜，汤是精华，苔条黄鱼外脆里嫩🐟</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">2️⃣ 东泰祥</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：重庆北路188号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：生煎、虾肉小馄饨、三丝冷面</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：招牌生煎，芯子的肉很新鲜，底部真的很脆，葱油拌面的葱很香，冷面很清爽🍜</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">3️⃣ 鲜得来</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：云南南路26号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：排骨年糕</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：软糯的年糕，炸的金黄酥脆的大排，吃大排的时候别忘了沾上海特色的辣酱油，大爱经典组合</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">4️⃣ 沪西老弄堂面馆</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：定西路685号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：蛤蜊猪肝面、大肠面</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：这家不用多介绍了吧，人气超级旺了，浓油赤酱的面，浇头也都很好吃</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">5️⃣ 长脚面馆</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：复兴中路561号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：招牌长脚肉丝汤面</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：面条吃粗面的那种，上海青🥬+肉丝+粗面条，很朴素的一碗面，冬天来上一碗暖胃的面，真的很爱了</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">6️⃣ 晓平饭店</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：嘉善路202号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">招牌美食：酱爆猪肝、酱爆腰花、外婆红烧肉、草头圈子、上海炒面</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：不知道什么时候开始变成网红了，排好长的队，以前没有那么多人的，酱爆猪肝真的很嫩，草头圈子没有怪味，不介意排队的可以去尝尝<img src=\"https://picasso-static.xiaohongshu.com/fe-platform/d1a34cf8aeac526d36890d3e8f727192a6808ecf.png\"></span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">7️⃣ 沪食光老羌饼</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：蒙自西路2号底层</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">招牌美食：羌饼</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：羌饼真的葱香四溢，外脆里软，满口芝麻香🫓</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">8️⃣北万新</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：淮海中路462号</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：包子、萝卜丝饼</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：很小的门面，鲜肉中包、三丁烧卖、香菇菜包🍄、萝卜丝饼都值得一试</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">9️⃣老摊头葱油饼</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">地址📍：北外滩来福士B2城市集市内</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">特色美食：葱油饼</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">推荐👍：葱香味十足，皮很脆，油爆爆的口感，可以加韭菜或加蛋，加蛋口感会更嫩</span></p><p><a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2591%25A8%25E6%259C%25AB%25E5%258E%25BB%25E5%2593%25AA%25E5%2584%25BF&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#周末去哪儿</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25AC%2594%25E8%25AE%25B0%25E7%2581%25B5%25E6%2584%259F&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#笔记灵感</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#小吃</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BE%258E%25E9%25A3%259F%25E6%2589%2593%25E5%258D%25A1&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#美食打卡</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%258A%25E6%25B5%25B7%25E6%258E%25A2%25E5%25BA%2597&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#上海探店</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%258A%25E6%25B5%25B7%25E6%2597%2585%25E6%25B8%25B8&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#上海旅游</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%258A%25E6%25B5%25B7%25E6%2597%2585%25E6%25B8%25B8%25E6%2594%25BB%25E7%2595%25A5&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#上海旅游攻略</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25A7%258D%25E8%258D%2589&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#种草</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25BA%25BA%25E9%2597%25B4%25E7%2583%259F%25E7%2581%25AB%25E6%25B0%2594&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#人间烟火气</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25B3%25AF%25E5%258F%25BD%25E5%258F%25BD&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#糯叽叽</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E8%25A1%2597%25E5%25A4%25B4%25E5%25B0%258F%25E5%2590%2583&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#街头小吃</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E4%25B8%258A%25E6%25B5%25B7&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#上海</a>  <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E7%25BE%258E%25E9%25A3%259F%25E6%2597%25A5%25E5%25B8%25B8&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#美食日常</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E5%2581%2587%25E6%2597%25A5citywalk&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#假日citywalk</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%259C%25AC%25E5%259C%25B0%25E4%25BA%25BA%25E6%258E%25A8%25E8%258D%2590&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#本地人推荐</a> <a href=\"https://www.xiaohongshu.com/search_result?keyword=%25E6%259C%25AC%25E5%259C%25B0%25E4%25BA%25BA%25E7%2588%25B1%25E5%2590%2583%25E7%259A%2584%25E5%25BA%2597&amp;type=54&amp;source=web_note_detail_r10\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"background-color: transparent; color: var(--color-link);\">#本地人爱吃的店</a></p>', 1, 1, '2024-12-13 06:36:02');

-- ----------------------------
-- Table structure for waimai_collection
-- ----------------------------
DROP TABLE IF EXISTS `waimai_collection`;
CREATE TABLE `waimai_collection`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `waimai_collection_types` int NULL DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '外卖收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_collection
-- ----------------------------
INSERT INTO `waimai_collection` VALUES (1, 1, 2, 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_collection` VALUES (2, 2, 1, 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_collection` VALUES (3, 3, 3, 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_collection` VALUES (4, 4, 3, 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_collection` VALUES (5, 5, 1, 1, '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_collection` VALUES (6, 3, 1, 1, '2022-03-19 16:43:01', '2022-03-19 16:43:01');
INSERT INTO `waimai_collection` VALUES (7, 5, 4, 1, '2024-12-13 05:32:11', '2024-12-13 05:32:11');
INSERT INTO `waimai_collection` VALUES (9, 8, 4, 1, '2024-12-13 06:36:42', '2024-12-13 06:36:42');

-- ----------------------------
-- Table structure for waimai_commentback
-- ----------------------------
DROP TABLE IF EXISTS `waimai_commentback`;
CREATE TABLE `waimai_commentback`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `waimai_commentback_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '外卖评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_commentback
-- ----------------------------
INSERT INTO `waimai_commentback` VALUES (1, 1, 2, '评价内容1', '2022-03-19 16:10:58', '回复信息1', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_commentback` VALUES (2, 2, 3, '评价内容2', '2022-03-19 16:10:58', '回复信息2', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_commentback` VALUES (3, 3, 3, '评价内容3', '2022-03-19 16:10:58', '回复信息3', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_commentback` VALUES (4, 4, 1, '评价内容4', '2022-03-19 16:10:58', '回复信息4', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_commentback` VALUES (5, 5, 2, '评价内容5', '2022-03-19 16:10:58', '回复信息5', '2022-03-19 16:10:58', '2022-03-19 16:10:58');
INSERT INTO `waimai_commentback` VALUES (6, 5, 1, '很好吃', '2022-03-19 16:49:30', 'gasfd', '2022-03-19 16:49:51', '2022-03-19 16:49:30');
INSERT INTO `waimai_commentback` VALUES (7, 8, 4, '非常好吃', '2024-12-13 06:38:34', '非常感谢光临，下来还来吃啊', '2024-12-13 06:40:03', '2024-12-13 06:38:34');

-- ----------------------------
-- Table structure for waimai_order
-- ----------------------------
DROP TABLE IF EXISTS `waimai_order`;
CREATE TABLE `waimai_order`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_order_uuid_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int NULL DEFAULT NULL COMMENT '收货地址 ',
  `waimai_id` int NULL DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int NULL DEFAULT NULL COMMENT '用户',
  `buy_number` int NULL DEFAULT NULL COMMENT '购买数量',
  `waimai_order_true_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '实付价格',
  `waimai_order_courier_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '送餐人姓名',
  `waimai_order_courier_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '送餐人电话',
  `waimai_order_types` int NULL DEFAULT NULL COMMENT '订单类型',
  `waimai_order_payment_types` int NULL DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '外卖订单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of waimai_order
-- ----------------------------
INSERT INTO `waimai_order` VALUES (1, '1647678109395', 5, 2, 1, 2, 331.32, NULL, NULL, 2, 1, '2022-03-19 16:21:49', '2022-03-19 16:21:49');
INSERT INTO `waimai_order` VALUES (2, '1647679386155', 2, 3, 1, 2, 248.02, NULL, NULL, 3, 1, '2022-03-19 16:43:06', '2022-03-19 16:43:06');
INSERT INTO `waimai_order` VALUES (3, '1647679463470', 2, 4, 1, 2, 365.44, NULL, NULL, 3, 1, '2022-03-19 16:44:23', '2022-03-19 16:44:23');
INSERT INTO `waimai_order` VALUES (4, '1647679463470', 2, 2, 1, 1, 165.66, NULL, NULL, 2, 1, '2022-03-19 16:44:23', '2022-03-19 16:44:23');
INSERT INTO `waimai_order` VALUES (5, '1647679463470', 2, 3, 1, 2, 248.02, '张1', '17703789598', 5, 1, '2022-03-19 16:44:23', '2022-03-19 16:44:23');
INSERT INTO `waimai_order` VALUES (6, '1647679463470', 2, 5, 1, 2, 385.67, '张三', '17703786948', 1, 1, '2022-03-19 16:44:23', '2022-03-19 16:44:23');
INSERT INTO `waimai_order` VALUES (7, '1734071811331', 6, 8, 4, 1, 10.78, '外卖小哥1', '18798765432', 1, 1, '2024-12-13 06:36:51', '2024-12-13 06:36:51');

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账户',
  `password` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `sex_types` int NULL DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10, 2) NULL DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10, 2) NULL DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int NULL DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1, 'a1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/waimaifuwu/upload/yonghu1.jpg', 1, '1@qq.com', 9480.43, 3895.62, 3321.41, 1, '2022-03-19 16:10:58');
INSERT INTO `yonghu` VALUES (2, 'a2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/waimaifuwu/upload/yonghu2.jpg', 2, '2@qq.com', 607.97, 559.05, 272.54, 1, '2022-03-19 16:10:58');
INSERT INTO `yonghu` VALUES (3, 'a3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/waimaifuwu/upload/yonghu3.jpg', 2, '3@qq.com', 505.96, 601.66, 53.00, 1, '2022-03-19 16:10:58');
INSERT INTO `yonghu` VALUES (4, 'itsource', 'itsource', '小光光', '17638276543', '514242427282920282', 'http://localhost:8080/waimaifuwu/upload/1734070940049.jpg', 1, 'itsources@qq.com', 9988.22, 111.00, 111.00, 1, '2024-12-13 05:31:54');

SET FOREIGN_KEY_CHECKS = 1;
