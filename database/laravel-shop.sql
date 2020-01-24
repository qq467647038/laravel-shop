/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1laragon
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : laravel-shop

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 24/01/2020 08:19:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, '2018-12-23 10:58:24');
INSERT INTO `admin_menu` VALUES (2, 0, 9, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (3, 2, 10, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (4, 2, 11, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (5, 2, 12, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (6, 2, 13, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (7, 2, 14, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (8, 0, 2, '用户管理', 'fa-users', '/users', NULL, '2018-12-23 10:59:18', '2018-12-23 10:59:58');
INSERT INTO `admin_menu` VALUES (9, 0, 4, '商品管理', 'fa-cubes', '/products', NULL, '2018-12-23 10:59:29', '2020-01-18 21:30:05');
INSERT INTO `admin_menu` VALUES (10, 0, 7, '订单管理', 'fa-rmb', '/orders', NULL, '2018-12-23 10:59:38', '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (11, 0, 8, '优惠券管理', 'fa-tags', '/coupon_codes', NULL, '2018-12-23 10:59:52', '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (12, 0, 3, '类目管理', 'fa-bars', '/categories', NULL, '2020-01-18 21:29:27', '2020-01-18 21:30:05');
INSERT INTO `admin_menu` VALUES (13, 9, 6, '众筹商品', 'fa-flag-checkered', '/crowdfunding_products', NULL, '2020-01-23 08:53:10', '2020-01-23 08:54:54');
INSERT INTO `admin_menu` VALUES (14, 9, 5, '普通商品', 'fa-cubes', '/products', NULL, '2020-01-23 08:54:40', '2020-01-23 08:54:54');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 114 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-01-18 18:36:05', '2020-01-18 18:36:05');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:28:49', '2020-01-18 21:28:49');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:28:50', '2020-01-18 21:28:50');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7c7b\\u76ee\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"\\/categories\",\"roles\":[null],\"permission\":null,\"_token\":\"7J9dCkUV8NXgYjYw33LfMBrjkCk7Tr3LDvnQIumA\"}', '2020-01-18 21:29:26', '2020-01-18 21:29:26');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-18 21:29:27', '2020-01-18 21:29:27');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-18 21:29:50', '2020-01-18 21:29:50');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"7J9dCkUV8NXgYjYw33LfMBrjkCk7Tr3LDvnQIumA\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":12},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-01-18 21:30:04', '2020-01-18 21:30:04');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:30:05', '2020-01-18 21:30:05');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-18 21:30:09', '2020-01-18 21:30:09');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:30:18', '2020-01-18 21:30:18');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:31:14', '2020-01-18 21:31:14');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"q\":\"\\u624b\\u673a\"}', '2020-01-18 21:37:12', '2020-01-18 21:37:12');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"q\":\"\\u8033\\u673a\"}', '2020-01-18 21:37:28', '2020-01-18 21:37:28');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"q\":\"\\u8033\\u673a\"}', '2020-01-18 21:37:51', '2020-01-18 21:37:51');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/categories', 'POST', '127.0.0.1', '{\"name\":\"\\u8033\\u673a\",\"is_directory\":\"1\",\"parent_id\":\"7\",\"_token\":\"7J9dCkUV8NXgYjYw33LfMBrjkCk7Tr3LDvnQIumA\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/categories\"}', '2020-01-18 21:38:01', '2020-01-18 21:38:01');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/categories', 'GET', '127.0.0.1', '[]', '2020-01-18 21:38:01', '2020-01-18 21:38:01');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:45:52', '2020-01-18 21:45:52');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:46:05', '2020-01-18 21:46:05');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:46:07', '2020-01-18 21:46:07');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"q\":\"\\u8033\\u673a\"}', '2020-01-18 21:46:25', '2020-01-18 21:46:25');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-18 21:49:46', '2020-01-18 21:49:46');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-01-18 21:49:56', '2020-01-18 21:49:56');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-01-18 21:50:42', '2020-01-18 21:50:42');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-20 23:22:16', '2020-01-20 23:22:16');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-20 23:24:07', '2020-01-20 23:24:07');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-23 08:18:28', '2020-01-23 08:18:28');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/coupon_codes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:51:47', '2020-01-23 08:51:47');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:51:53', '2020-01-23 08:51:53');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u4f17\\u7b79\\u5546\\u54c1\",\"icon\":\"fa-flag-checkered\",\"uri\":\"\\/crowdfunding_products\",\"roles\":[null],\"permission\":null,\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\"}', '2020-01-23 08:53:09', '2020-01-23 08:53:09');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-23 08:53:11', '2020-01-23 08:53:11');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:53:22', '2020-01-23 08:53:22');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin/products', 'GET', '127.0.0.1', '[]', '2020-01-23 08:53:25', '2020-01-23 08:53:25');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:53:33', '2020-01-23 08:53:33');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:53:46', '2020-01-23 08:53:46');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"\\u666e\\u901a\\u5546\\u54c1\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\"}', '2020-01-23 08:54:40', '2020-01-23 08:54:40');
INSERT INTO `admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-23 08:54:41', '2020-01-23 08:54:41');
INSERT INTO `admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":12},{\\\"id\\\":9,\\\"children\\\":[{\\\"id\\\":14},{\\\"id\\\":13}]},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2020-01-23 08:54:53', '2020-01-23 08:54:53');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:54:54', '2020-01-23 08:54:54');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-23 08:55:04', '2020-01-23 08:55:04');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:55:11', '2020-01-23 08:55:11');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:55:14', '2020-01-23 08:55:14');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:29', '2020-01-23 08:57:29');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:42', '2020-01-23 08:57:42');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:46', '2020-01-23 08:57:46');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:50', '2020-01-23 08:57:50');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:53', '2020-01-23 08:57:53');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:57', '2020-01-23 08:57:57');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:57:59', '2020-01-23 08:57:59');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:58:03', '2020-01-23 08:58:03');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 08:58:05', '2020-01-23 08:58:05');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:00:20', '2020-01-23 09:00:20');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:00:26', '2020-01-23 09:00:26');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"is_directory\":\"0\",\"q\":\"\\u53ea\\u80fd\"}', '2020-01-23 09:01:34', '2020-01-23 09:01:34');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"is_directory\":\"0\",\"q\":\"\\u53ea\"}', '2020-01-23 09:01:36', '2020-01-23 09:01:36');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"is_directory\":\"0\",\"q\":\"\\u667a\\u80fd\"}', '2020-01-23 09:01:38', '2020-01-23 09:01:38');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/crowdfunding_products', 'POST', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"iPhone X \\u6982\\u5ff5\\u673a\",\"category_id\":\"25\",\"description\":\"<p>\\u4f17\\u7b79\\u767e\\u4e07<\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"1000000\",\"end_at\":\"2020-01-24 00:00:00\"},\"skus\":{\"new_1\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e00\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef710000\",\"price\":\"10000\",\"stock\":\"100\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e24\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef79000\",\"price\":\"18000\",\"stock\":\"50\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-23 09:05:02', '2020-01-23 09:05:02');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '[]', '2020-01-23 09:05:06', '2020-01-23 09:05:06');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '[]', '2020-01-23 09:05:16', '2020-01-23 09:05:16');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:05:23', '2020-01-23 09:05:23');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"is_directory\":\"0\",\"q\":\"\\u667a\\u80fd\"}', '2020-01-23 09:07:30', '2020-01-23 09:07:30');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/crowdfunding_products', 'POST', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"iPhone X \\u6982\\u5ff5\\u673a\",\"category_id\":\"25\",\"description\":\"<p>\\u4f17\\u7b79\\u767e\\u4e07<\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"1000000\",\"end_at\":\"2020-01-24 00:00:00\"},\"skus\":{\"new___LA_KEY__\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e24\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef79000\",\"price\":\"18000\",\"stock\":\"50\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\"}', '2020-01-23 09:07:44', '2020-01-23 09:07:44');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-23 09:07:45', '2020-01-23 09:07:45');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/crowdfunding_products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:08:14', '2020-01-23 09:08:14');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/crowdfunding_products/31', 'PUT', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"iPhone X \\u6982\\u5ff5\\u673a\",\"category_id\":\"25\",\"description\":\"<p>\\u4f17\\u7b79\\u767e\\u4e07<\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"1000000.00\",\"end_at\":\"2020-01-25 00:00:00\"},\"skus\":{\"91\":{\"title\":\"molestias\",\"description\":\"Facilis enim quibusdam omnis harum consequuntur.\",\"price\":\"2953.00\",\"stock\":\"89167\",\"id\":\"91\",\"_remove_\":\"0\"},\"92\":{\"title\":\"natus\",\"description\":\"Ipsam amet eum eum asperiores.\",\"price\":\"5795.00\",\"stock\":\"49137\",\"id\":\"92\",\"_remove_\":\"0\"},\"93\":{\"title\":\"debitis\",\"description\":\"In veritatis et vel quisquam.\",\"price\":\"447.00\",\"stock\":\"10704\",\"id\":\"93\",\"_remove_\":\"0\"},\"361\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e24\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef79000\",\"price\":\"18000.00\",\"stock\":\"50\",\"id\":\"361\",\"_remove_\":\"0\"}},\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-23 09:08:55', '2020-01-23 09:08:55');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-23 09:08:56', '2020-01-23 09:08:56');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/crowdfunding_products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:10:32', '2020-01-23 09:10:32');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/crowdfunding_products/31', 'PUT', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"iPhone X \\u6982\\u5ff5\\u673a\",\"category_id\":\"25\",\"description\":\"<p>\\u4f17\\u7b79\\u767e\\u4e07<\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"2000000.00\",\"end_at\":\"2020-01-25 00:00:00\"},\"skus\":{\"91\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e00\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef79000\",\"price\":\"9000\",\"stock\":\"89167\",\"id\":\"91\",\"_remove_\":\"0\"},\"92\":{\"title\":\"natus\",\"description\":\"Ipsam amet eum eum asperiores.\",\"price\":\"5795.00\",\"stock\":\"49137\",\"id\":\"92\",\"_remove_\":\"1\"},\"93\":{\"title\":\"debitis\",\"description\":\"In veritatis et vel quisquam.\",\"price\":\"447.00\",\"stock\":\"10704\",\"id\":\"93\",\"_remove_\":\"1\"},\"361\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e24\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef718000\",\"price\":\"18000.00\",\"stock\":\"50\",\"id\":\"361\",\"_remove_\":\"0\"}},\"_token\":\"TXcTo2heCFXvdOvjROp2G42RLLewbSxr1maLGiWP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-23 09:12:42', '2020-01-23 09:12:42');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-23 09:12:43', '2020-01-23 09:12:43');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/crowdfunding_products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:12:49', '2020-01-23 09:12:49');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:13:25', '2020-01-23 09:13:25');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-01-23 09:13:31', '2020-01-23 09:13:31');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/products', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-23 09:17:15', '2020-01-23 09:17:15');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/products', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-01-23 09:17:19', '2020-01-23 09:17:19');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-23 22:38:47', '2020-01-23 22:38:47');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 22:38:58', '2020-01-23 22:38:58');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-23 22:39:00', '2020-01-23 22:39:00');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-23 23:21:29', '2020-01-23 23:21:29');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-24 05:38:15', '2020-01-24 05:38:15');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 06:28:10', '2020-01-24 06:28:10');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"20200124061633844574\"}', '2020-01-24 06:28:19', '2020-01-24 06:28:19');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 06:28:22', '2020-01-24 06:28:22');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 07:56:29', '2020-01-24 07:56:29');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/crowdfunding_products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 07:56:34', '2020-01-24 07:56:34');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/crowdfunding_products/31', 'PUT', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"iPhone X \\u6982\\u5ff5\\u673a\",\"category_id\":\"25\",\"description\":\"<p>\\u4f17\\u7b79\\u767e\\u4e07<\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"2000000.00\",\"end_at\":\"2020-01-24 00:00:00\"},\"skus\":{\"91\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e00\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef79000\",\"price\":\"9000.00\",\"stock\":\"89167\",\"id\":\"91\",\"_remove_\":\"0\"},\"361\":{\"title\":\"\\u6982\\u5ff5\\u673a\\u4e24\\u53f0\",\"description\":\"\\u4f17\\u7b79\\u4f18\\u60e0\\u4ef718000\",\"price\":\"18000.00\",\"stock\":\"45\",\"id\":\"361\",\"_remove_\":\"0\"}},\"_token\":\"dR5bkDtX6LU3Hg3fOSH1xYxCVXaYBPl2Z40bn2V8\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-24 07:56:49', '2020-01-24 07:56:49');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-24 07:56:50', '2020-01-24 07:56:50');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 07:56:56', '2020-01-24 07:56:56');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 07:57:18', '2020-01-24 07:57:18');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 07:58:32', '2020-01-24 07:58:32');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:00:54', '2020-01-24 08:00:54');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/crowdfunding_products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:00:57', '2020-01-24 08:00:57');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/api/categories', 'GET', '127.0.0.1', '{\"is_directory\":\"0\",\"q\":\"\\u667a\\u80fd\"}', '2020-01-24 08:01:06', '2020-01-24 08:01:06');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/crowdfunding_products', 'POST', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"category_id\":\"25\",\"description\":\"<p><br><\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"100\",\"end_at\":\"2020-01-25 00:00:00\"},\"skus\":{\"new_1\":{\"title\":\"1\",\"description\":\"1\",\"price\":\"50\",\"stock\":\"1\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"dR5bkDtX6LU3Hg3fOSH1xYxCVXaYBPl2Z40bn2V8\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-24 08:02:18', '2020-01-24 08:02:18');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-24 08:02:19', '2020-01-24 08:02:19');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/crowdfunding_products/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:04:05', '2020-01-24 08:04:05');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:04:08', '2020-01-24 08:04:08');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/crowdfunding_products/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:04:11', '2020-01-24 08:04:11');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:07:06', '2020-01-24 08:07:06');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:07:08', '2020-01-24 08:07:08');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:07:42', '2020-01-24 08:07:42');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:09:12', '2020-01-24 08:09:12');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:09:34', '2020-01-24 08:09:34');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/crowdfunding_products/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:09:38', '2020-01-24 08:09:38');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/crowdfunding_products/32', 'PUT', '127.0.0.1', '{\"type\":\"crowdfunding\",\"title\":\"\\u6d4b\\u8bd5\\u5546\\u54c1\",\"category_id\":\"25\",\"description\":\"<p><br><\\/p>\",\"on_sale\":\"1\",\"crowdfunding\":{\"target_amount\":\"100.00\",\"end_at\":\"2020-01-24 00:00:00\"},\"skus\":{\"94\":{\"title\":\"exercitationem\",\"description\":\"Quae illo et voluptates est facilis et aut.\",\"price\":\"9923.00\",\"stock\":\"1355\",\"id\":\"94\",\"_remove_\":\"1\"},\"95\":{\"title\":\"nemo\",\"description\":\"Ipsum repellat sed facilis.\",\"price\":\"2743.00\",\"stock\":\"25895\",\"id\":\"95\",\"_remove_\":\"1\"},\"96\":{\"title\":\"sit\",\"description\":\"Omnis qui corrupti et et nam.\",\"price\":\"1474.00\",\"stock\":\"21309\",\"id\":\"96\",\"_remove_\":\"1\"},\"362\":{\"title\":\"1\",\"description\":\"1\",\"price\":\"50.00\",\"stock\":\"1\",\"id\":\"362\",\"_remove_\":\"0\"}},\"_token\":\"O6MAI9004eHs2ai8Ee7AxWLlpx58AErCuRZKRyxx\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/laravel-shop.yun\\/admin\\/crowdfunding_products\"}', '2020-01-24 08:10:00', '2020-01-24 08:10:00');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '[]', '2020-01-24 08:10:01', '2020-01-24 08:10:01');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/crowdfunding_products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:11:05', '2020-01-24 08:11:05');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:12:39', '2020-01-24 08:12:39');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/orders/115', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:12:50', '2020-01-24 08:12:50');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:14:12', '2020-01-24 08:14:12');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/orders/114', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:14:20', '2020-01-24 08:14:20');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/orders', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:14:34', '2020-01-24 08:14:34');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/orders/115', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-24 08:14:39', '2020-01-24 08:14:39');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` VALUES (6, '用户管理', 'users', '', '/users*', '2018-12-23 11:00:19', '2018-12-23 11:00:19');
INSERT INTO `admin_permissions` VALUES (7, '商品管理', 'products', '', '/products*', '2018-12-23 11:00:28', '2018-12-23 11:00:28');
INSERT INTO `admin_permissions` VALUES (8, '订单管理', 'orders', '', '/orders*', '2018-12-23 11:00:38', '2018-12-23 11:00:38');
INSERT INTO `admin_permissions` VALUES (9, '优惠券管理', 'coupon_codes', '', '/coupon_codes*', '2018-12-23 11:00:47', '2018-12-23 11:00:47');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 5, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 9, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_name_unique`(`name`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2018-12-23 10:58:08', '2018-12-23 10:58:08');
INSERT INTO `admin_roles` VALUES (2, '运营', 'operator', '2018-12-23 11:01:07', '2018-12-23 11:01:07');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$uP5kSG7ywotGQfO/uImu.eTlCZvMThECrK169myN82Gnh7WgDYhpO', 'Administrator', NULL, 'f3IuVKKiH82YsBcLGKiXq3Bvnt9wQB0uhHm2suHUDUzklEpSHsWlRbBcvU4X', '2018-12-23 10:58:08', '2018-12-23 10:58:08');
INSERT INTO `admin_users` VALUES (2, 'operator', '$2y$10$RqnVs6GjOCZblP8iG6EgbeB8z/8QEJvA4WwzP3z1zwzLDjhlYVcwy', '运营', NULL, NULL, '2018-12-23 11:01:23', '2018-12-23 11:01:23');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cart_items_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `cart_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `cart_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `cart_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart_items
-- ----------------------------

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `is_directory` tinyint(1) NOT NULL,
  `level` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `categories_parent_id_foreign`(`parent_id`) USING BTREE,
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, '手机配件', NULL, 1, 0, '-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (2, '手机壳', 1, 0, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (3, '贴膜', 1, 0, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (4, '存储卡', 1, 0, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (5, '数据线', 1, 0, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (6, '充电器', 1, 0, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (7, '耳机', 1, 1, 1, '-1-', '2020-01-18 21:11:24', '2020-01-18 21:11:24');
INSERT INTO `categories` VALUES (8, '有线耳机', 7, 0, 2, '-1-7-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (9, '蓝牙耳机', 7, 0, 2, '-1-7-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (10, '电脑配件', NULL, 1, 0, '-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (11, '显示器', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (12, '显卡', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (13, '内存', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (14, 'CPU', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (15, '主板', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (16, '硬盘', 10, 0, 1, '-10-', '2020-01-18 21:11:25', '2020-01-18 21:11:25');
INSERT INTO `categories` VALUES (17, '电脑整机', NULL, 1, 0, '-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (18, '笔记本', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (19, '台式机', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (20, '平板电脑', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (21, '一体机', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (22, '服务器', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (23, '工作站', 17, 0, 1, '-17-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (24, '手机通讯', NULL, 1, 0, '-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (25, '智能机', 24, 0, 1, '-24-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (26, '老人机', 24, 0, 1, '-24-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (27, '对讲机', 24, 0, 1, '-24-', '2020-01-18 21:11:26', '2020-01-18 21:11:26');
INSERT INTO `categories` VALUES (28, '耳机', 7, 1, 2, '-1-7-', '2020-01-18 21:38:01', '2020-01-18 21:38:01');

-- ----------------------------
-- Table structure for coupon_codes
-- ----------------------------
DROP TABLE IF EXISTS `coupon_codes`;
CREATE TABLE `coupon_codes`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8, 2) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `min_amount` decimal(10, 2) NOT NULL,
  `not_before` datetime(0) NULL DEFAULT NULL,
  `not_after` datetime(0) NULL DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `coupon_codes_code_unique`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_codes
-- ----------------------------
INSERT INTO `coupon_codes` VALUES (1, 'delectus rem similique', 'SQ9KBUFUSNBZE3FA', 'fixed', 172.00, 1000, 0, 172.01, NULL, NULL, 1, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `coupon_codes` VALUES (2, 'quibusdam qui fugit', 'SRDT9O4QCA81TPDK', 'fixed', 188.00, 1000, 0, 188.01, NULL, NULL, 1, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `coupon_codes` VALUES (3, 'et deserunt et', 'TT8HZ1R4QHHTMPO2', 'percent', 36.00, 1000, 0, 451.00, NULL, NULL, 1, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `coupon_codes` VALUES (4, 'illo odio iste', 'SKTPZUD2GMTPVJBI', 'percent', 49.00, 1000, 2, 0.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:03');
INSERT INTO `coupon_codes` VALUES (5, 'numquam maxime porro', 'GY2P7KRUVCAXGJOO', 'fixed', 179.00, 1000, 0, 179.01, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (6, 'nesciunt id ducimus', 'RO9Z8DVPPLGMPJ6T', 'percent', 43.00, 1000, 0, 136.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (7, 'quia vero aperiam', 'XFGMUDG2ORHQYMEK', 'percent', 11.00, 1000, 6, 0.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:03');
INSERT INTO `coupon_codes` VALUES (8, 'ipsam illum tempore', '4I0KAP3MBVSAYQCY', 'percent', 23.00, 1000, 7, 0.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:04');
INSERT INTO `coupon_codes` VALUES (9, 'inventore cupiditate eos', 'C2X6B0WLKZMJWQ8W', 'percent', 44.00, 1000, 0, 168.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (10, 'expedita praesentium veritatis', 'EHYWJUBHI5FX3JNA', 'fixed', 155.00, 1000, 0, 155.01, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (11, 'est tempora voluptatem', 'IYLWW2KIHJQY2KON', 'percent', 37.00, 1000, 0, 333.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (12, 'non sed sint', 'AZBXIJTPXXYBTIJF', 'fixed', 67.00, 1000, 0, 67.01, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (13, 'id et accusamus', 'MPQPCV5W8P3SXVTL', 'fixed', 37.00, 1000, 0, 37.01, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (14, 'quasi libero dignissimos', 'JF1DHGFI6QHQLH2V', 'percent', 39.00, 1000, 0, 958.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:00');
INSERT INTO `coupon_codes` VALUES (15, 'quia accusamus et', 'WOYXVPGRH8KVQ2ZV', 'percent', 20.00, 1000, 7, 0.00, NULL, NULL, 1, '2020-01-18 17:35:00', '2020-01-18 17:35:04');
INSERT INTO `coupon_codes` VALUES (16, 'soluta a aut', '6G0C4AFPFK9ASSKV', 'fixed', 198.00, 1000, 0, 198.01, NULL, NULL, 1, '2020-01-18 17:35:01', '2020-01-18 17:35:01');
INSERT INTO `coupon_codes` VALUES (17, 'praesentium nemo labore', 'ZADNLOF5HBG9LTTS', 'percent', 7.00, 1000, 0, 475.00, NULL, NULL, 1, '2020-01-18 17:35:01', '2020-01-18 17:35:01');
INSERT INTO `coupon_codes` VALUES (18, 'et minima quas', 'M3AKREEKDD7RJERR', 'fixed', 95.00, 1000, 0, 95.01, NULL, NULL, 1, '2020-01-18 17:35:01', '2020-01-18 17:35:01');
INSERT INTO `coupon_codes` VALUES (19, 'quo aperiam saepe', 'D9AZ7WIGYZKETVQE', 'percent', 19.00, 1000, 0, 669.00, NULL, NULL, 1, '2020-01-18 17:35:01', '2020-01-18 17:35:01');
INSERT INTO `coupon_codes` VALUES (20, 'nobis placeat fugit', 'S7WL1M5WUHLBABBB', 'percent', 44.00, 1000, 2, 0.00, NULL, NULL, 1, '2020-01-18 17:35:01', '2020-01-18 17:35:03');

-- ----------------------------
-- Table structure for crowdfunding_products
-- ----------------------------
DROP TABLE IF EXISTS `crowdfunding_products`;
CREATE TABLE `crowdfunding_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `target_amount` decimal(10, 2) NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL DEFAULT 0.00,
  `user_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `end_at` datetime(0) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'funding',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crowdfunding_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `crowdfunding_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crowdfunding_products
-- ----------------------------
INSERT INTO `crowdfunding_products` VALUES (1, 31, 2000000.00, 36000.00, 1, '2020-01-24 00:00:00', 'fail');
INSERT INTO `crowdfunding_products` VALUES (2, 32, 100.00, 100.00, 2, '2020-01-24 00:00:00', 'success');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES (1, 'redis', 'default', '{\"displayName\":\"App\\\\Listeners\\\\UpdateProductRating\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"delay\":null,\"timeout\":null,\"timeoutAt\":null,\"data\":{\"commandName\":\"Illuminate\\\\Events\\\\CallQueuedListener\",\"command\":\"O:36:\\\"Illuminate\\\\Events\\\\CallQueuedListener\\\":8:{s:5:\\\"class\\\";s:33:\\\"App\\\\Listeners\\\\UpdateProductRating\\\";s:6:\\\"method\\\";s:6:\\\"handle\\\";s:4:\\\"data\\\";a:1:{i:0;O:24:\\\"App\\\\Events\\\\OrderReviewed\\\":1:{s:6:\\\"socket\\\";N;}}s:5:\\\"tries\\\";N;s:10:\\\"retryAfter\\\";N;s:9:\\\"timeoutAt\\\";N;s:7:\\\"timeout\\\";N;s:6:\\\"\\u0000*\\u0000job\\\";N;}\"},\"id\":\"oQeas4d157DfPqiAgBFFNKAYwEtI5y0n\",\"attempts\":0}', 'ErrorException: Undefined property: App\\Events\\OrderReviewed::$order in E:\\laragon\\www\\laravel-shop\\app\\Events\\OrderReviewed.php:30\nStack trace:\n#0 E:\\laragon\\www\\laravel-shop\\app\\Events\\OrderReviewed.php(30): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(8, \'Undefined prope...\', \'E:\\\\laragon\\\\www\\\\...\', 30, Array)\n#1 E:\\laragon\\www\\laravel-shop\\app\\Listeners\\UpdateProductRating.php(16): App\\Events\\OrderReviewed->getOrder()\n#2 [internal function]: App\\Listeners\\UpdateProductRating->handle(Object(App\\Events\\OrderReviewed))\n#3 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\CallQueuedListener.php(93): call_user_func_array(Array, Array)\n#4 [internal function]: Illuminate\\Events\\CallQueuedListener->handle(Object(Illuminate\\Foundation\\Application))\n#5 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#6 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#7 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#8 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#9 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#10 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(94): Illuminate\\Container\\Container->call(Array)\n#11 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#12 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#13 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(98): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(83): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Events\\CallQueuedListener), false)\n#15 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(130): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#16 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(105): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Events\\CallQueuedListener))\n#17 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#18 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(59): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Events\\CallQueuedListener))\n#19 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(88): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\RedisJob), Array)\n#20 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(354): Illuminate\\Queue\\Jobs\\Job->fire()\n#21 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(300): Illuminate\\Queue\\Worker->process(\'redis\', Object(Illuminate\\Queue\\Jobs\\RedisJob), Object(Illuminate\\Queue\\WorkerOptions))\n#22 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(134): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\RedisJob), \'redis\', Object(Illuminate\\Queue\\WorkerOptions))\n#23 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(112): Illuminate\\Queue\\Worker->daemon(\'redis\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#24 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(96): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'redis\', \'default\')\n#25 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#26 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(32): call_user_func_array(Array, Array)\n#27 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(36): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#28 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(90): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#29 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(34): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#30 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(590): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#31 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(202): Illuminate\\Container\\Container->call(Array)\n#32 E:\\laragon\\www\\laravel-shop\\vendor\\symfony\\console\\Command\\Command.php(255): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#33 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(189): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#34 E:\\laragon\\www\\laravel-shop\\vendor\\symfony\\console\\Application.php(1011): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#35 E:\\laragon\\www\\laravel-shop\\vendor\\symfony\\console\\Application.php(272): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#36 E:\\laragon\\www\\laravel-shop\\vendor\\symfony\\console\\Application.php(148): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#37 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#38 E:\\laragon\\www\\laravel-shop\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(131): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#39 E:\\laragon\\www\\laravel-shop\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#40 {main}', '2020-01-23 23:10:13');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2020_01_01_130542_create_user_addresses_table', 1);
INSERT INTO `migrations` VALUES (6, '2020_01_05_195406_create_products_table', 1);
INSERT INTO `migrations` VALUES (7, '2020_01_05_195557_create_product_skus_table', 1);
INSERT INTO `migrations` VALUES (8, '2020_01_07_224329_create_user_favorite_products_table', 1);
INSERT INTO `migrations` VALUES (9, '2020_01_08_235101_create_cart_items_table', 1);
INSERT INTO `migrations` VALUES (10, '2020_01_09_214715_create_orders_table', 1);
INSERT INTO `migrations` VALUES (11, '2020_01_09_214924_create_order_items_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_01_18_130717_create_coupon_codes_table', 1);
INSERT INTO `migrations` VALUES (13, '2020_01_18_132402_orders_add_coupon_code_id', 1);
INSERT INTO `migrations` VALUES (14, '2020_01_18_190832_create_categories_table', 2);
INSERT INTO `migrations` VALUES (15, '2020_01_18_193412_products_add_category_id', 2);
INSERT INTO `migrations` VALUES (16, '2020_01_20_235039_create_crowdfunding_products_table', 3);
INSERT INTO `migrations` VALUES (17, '2020_01_20_235937_products_add_type', 3);
INSERT INTO `migrations` VALUES (18, '2020_01_24_002740_orders_add_type', 4);

-- ----------------------------
-- Table structure for order_items
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_sku_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `rating` int(10) UNSIGNED NULL DEFAULT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `reviewed_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_items_order_id_foreign`(`order_id`) USING BTREE,
  INDEX `order_items_product_id_foreign`(`product_id`) USING BTREE,
  INDEX `order_items_product_sku_id_foreign`(`product_sku_id`) USING BTREE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `order_items_product_sku_id_foreign` FOREIGN KEY (`product_sku_id`) REFERENCES `product_skus` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_items
-- ----------------------------
INSERT INTO `order_items` VALUES (1, 1, 12, 35, 1, 9255.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (2, 1, 24, 72, 1, 9631.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (3, 2, 9, 26, 1, 5374.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (4, 2, 26, 78, 5, 1001.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (5, 2, 12, 35, 1, 9255.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (6, 3, 23, 67, 3, 9361.00, 1, 'Impedit incidunt veritatis et necessitatibus.', '2019-12-29 23:52:45');
INSERT INTO `order_items` VALUES (7, 3, 17, 51, 1, 8508.00, 1, 'Impedit incidunt veritatis et necessitatibus.', '2019-12-29 23:52:45');
INSERT INTO `order_items` VALUES (8, 4, 4, 11, 5, 3078.00, 5, 'Sit incidunt consequatur dicta optio nihil at ut.', '2020-01-18 17:05:39');
INSERT INTO `order_items` VALUES (9, 5, 18, 53, 4, 4520.00, 1, 'Accusantium accusantium autem explicabo a.', '2020-01-18 13:51:25');
INSERT INTO `order_items` VALUES (10, 5, 23, 69, 1, 5970.00, 1, 'Accusantium accusantium autem explicabo a.', '2020-01-18 13:51:25');
INSERT INTO `order_items` VALUES (11, 5, 1, 3, 1, 8965.00, 1, 'Accusantium accusantium autem explicabo a.', '2020-01-18 13:51:25');
INSERT INTO `order_items` VALUES (12, 6, 26, 77, 5, 891.00, 4, 'Provident ipsum non sit eius.', '2019-12-30 07:24:15');
INSERT INTO `order_items` VALUES (13, 7, 14, 42, 3, 1927.00, 4, 'Nesciunt exercitationem dolorem rerum et.', '2020-01-10 11:13:34');
INSERT INTO `order_items` VALUES (14, 7, 3, 8, 1, 9525.00, 4, 'Nesciunt exercitationem dolorem rerum et.', '2020-01-10 11:13:34');
INSERT INTO `order_items` VALUES (15, 7, 16, 46, 2, 9317.00, 4, 'Nesciunt exercitationem dolorem rerum et.', '2020-01-10 11:13:34');
INSERT INTO `order_items` VALUES (16, 8, 1, 3, 3, 8965.00, 3, 'Neque perspiciatis rerum tempora.', '2020-01-16 08:20:24');
INSERT INTO `order_items` VALUES (17, 8, 17, 49, 1, 9661.00, 3, 'Neque perspiciatis rerum tempora.', '2020-01-16 08:20:24');
INSERT INTO `order_items` VALUES (18, 9, 14, 42, 1, 1927.00, 3, 'Amet eum qui ea maxime pariatur voluptates.', '2020-01-14 18:47:51');
INSERT INTO `order_items` VALUES (19, 9, 4, 11, 3, 3078.00, 3, 'Amet eum qui ea maxime pariatur voluptates.', '2020-01-14 18:47:51');
INSERT INTO `order_items` VALUES (20, 10, 30, 89, 2, 4088.00, 3, 'Reiciendis aut expedita dolore veritatis facere harum.', '2020-01-08 17:05:58');
INSERT INTO `order_items` VALUES (21, 11, 28, 83, 1, 1412.00, 3, 'Vero ut qui et quia repudiandae natus et.', '2020-01-03 16:03:10');
INSERT INTO `order_items` VALUES (22, 12, 21, 62, 5, 6631.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (23, 12, 19, 55, 2, 6871.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (24, 13, 29, 85, 2, 1482.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (25, 13, 4, 11, 3, 3078.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (26, 14, 11, 31, 1, 2494.00, 4, 'Laboriosam est quaerat et aut ducimus unde aspernatur.', '2020-01-08 23:13:46');
INSERT INTO `order_items` VALUES (27, 14, 10, 29, 3, 4043.00, 4, 'Laboriosam est quaerat et aut ducimus unde aspernatur.', '2020-01-08 23:13:46');
INSERT INTO `order_items` VALUES (28, 15, 17, 49, 4, 9661.00, 1, 'Saepe accusamus sapiente qui alias.', '2020-01-11 20:20:16');
INSERT INTO `order_items` VALUES (29, 15, 13, 39, 2, 9129.00, 1, 'Saepe accusamus sapiente qui alias.', '2020-01-11 20:20:16');
INSERT INTO `order_items` VALUES (30, 16, 2, 5, 4, 2567.00, 2, 'Est nihil maxime provident delectus ex.', '2019-12-26 08:16:19');
INSERT INTO `order_items` VALUES (31, 16, 15, 44, 1, 7412.00, 2, 'Est nihil maxime provident delectus ex.', '2019-12-26 08:16:19');
INSERT INTO `order_items` VALUES (32, 17, 7, 21, 3, 5499.00, 1, 'Et odit est deserunt eos.', '2020-01-18 14:20:37');
INSERT INTO `order_items` VALUES (33, 17, 29, 87, 1, 9993.00, 1, 'Et odit est deserunt eos.', '2020-01-18 14:20:37');
INSERT INTO `order_items` VALUES (34, 17, 21, 61, 5, 9417.00, 1, 'Et odit est deserunt eos.', '2020-01-18 14:20:37');
INSERT INTO `order_items` VALUES (35, 18, 11, 33, 4, 5731.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (36, 19, 4, 10, 2, 7935.00, 4, 'Sint nostrum et qui molestias natus accusamus et dolorem.', '2020-01-16 10:34:09');
INSERT INTO `order_items` VALUES (37, 19, 17, 51, 5, 8508.00, 4, 'Sint nostrum et qui molestias natus accusamus et dolorem.', '2020-01-16 10:34:09');
INSERT INTO `order_items` VALUES (38, 19, 11, 31, 2, 2494.00, 4, 'Sint nostrum et qui molestias natus accusamus et dolorem.', '2020-01-16 10:34:09');
INSERT INTO `order_items` VALUES (39, 20, 16, 46, 3, 9317.00, 3, 'Enim quia voluptatem rerum in tenetur.', '2020-01-16 20:03:02');
INSERT INTO `order_items` VALUES (40, 21, 26, 78, 3, 1001.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (41, 21, 23, 67, 3, 9361.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (42, 22, 20, 58, 3, 4388.00, 1, 'Quod placeat sint culpa et rerum dolorem.', '2020-01-18 09:46:38');
INSERT INTO `order_items` VALUES (43, 23, 16, 46, 2, 9317.00, 3, 'Ut sint aut iste a quod qui.', '2020-01-13 06:44:02');
INSERT INTO `order_items` VALUES (44, 24, 14, 41, 5, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (45, 25, 29, 86, 4, 3419.00, 2, 'Voluptates assumenda asperiores atque quibusdam omnis rerum.', '2020-01-13 01:07:05');
INSERT INTO `order_items` VALUES (46, 25, 12, 36, 3, 9092.00, 2, 'Voluptates assumenda asperiores atque quibusdam omnis rerum.', '2020-01-13 01:07:05');
INSERT INTO `order_items` VALUES (47, 26, 29, 87, 3, 9993.00, 3, 'Officia recusandae impedit necessitatibus nam et.', '2020-01-07 20:08:15');
INSERT INTO `order_items` VALUES (48, 27, 23, 67, 1, 9361.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (49, 27, 10, 29, 2, 4043.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (50, 27, 5, 15, 4, 4658.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (51, 28, 12, 36, 1, 9092.00, 4, 'Magnam maiores distinctio eos atque.', '2020-01-09 06:24:25');
INSERT INTO `order_items` VALUES (52, 28, 25, 73, 3, 3044.00, 4, 'Magnam maiores distinctio eos atque.', '2020-01-09 06:24:25');
INSERT INTO `order_items` VALUES (53, 28, 22, 65, 1, 863.00, 4, 'Magnam maiores distinctio eos atque.', '2020-01-09 06:24:25');
INSERT INTO `order_items` VALUES (54, 29, 15, 45, 1, 7116.00, 2, 'Consequuntur quia dignissimos voluptatem explicabo similique quia.', '2020-01-15 22:32:29');
INSERT INTO `order_items` VALUES (55, 29, 1, 2, 2, 950.00, 2, 'Consequuntur quia dignissimos voluptatem explicabo similique quia.', '2020-01-15 22:32:29');
INSERT INTO `order_items` VALUES (56, 29, 25, 73, 4, 3044.00, 2, 'Consequuntur quia dignissimos voluptatem explicabo similique quia.', '2020-01-15 22:32:29');
INSERT INTO `order_items` VALUES (57, 30, 28, 83, 2, 1412.00, 4, 'Aut laudantium consequatur ipsum suscipit distinctio nihil at.', '2020-01-12 18:30:33');
INSERT INTO `order_items` VALUES (58, 30, 7, 20, 2, 5433.00, 4, 'Aut laudantium consequatur ipsum suscipit distinctio nihil at.', '2020-01-12 18:30:33');
INSERT INTO `order_items` VALUES (59, 31, 12, 34, 2, 5459.00, 1, 'Error ut eum qui aut vel molestiae voluptatem.', '2020-01-08 04:22:10');
INSERT INTO `order_items` VALUES (60, 32, 22, 65, 4, 863.00, 5, 'Totam quia nemo est magnam nulla reiciendis.', '2020-01-10 23:12:40');
INSERT INTO `order_items` VALUES (61, 33, 20, 60, 5, 1802.00, 2, 'Dolorem explicabo ipsum aperiam et animi consequuntur.', '2020-01-16 08:34:32');
INSERT INTO `order_items` VALUES (62, 34, 13, 37, 2, 6010.00, 2, 'Distinctio perferendis quo et aliquid unde.', '2020-01-16 05:46:27');
INSERT INTO `order_items` VALUES (63, 34, 15, 43, 2, 3549.00, 2, 'Distinctio perferendis quo et aliquid unde.', '2020-01-16 05:46:27');
INSERT INTO `order_items` VALUES (64, 34, 21, 63, 2, 9411.00, 2, 'Distinctio perferendis quo et aliquid unde.', '2020-01-16 05:46:27');
INSERT INTO `order_items` VALUES (65, 35, 10, 30, 5, 3804.00, 1, 'Voluptatum rerum quasi neque ipsam molestiae modi veniam.', '2020-01-17 22:57:31');
INSERT INTO `order_items` VALUES (66, 35, 8, 23, 3, 9832.00, 1, 'Voluptatum rerum quasi neque ipsam molestiae modi veniam.', '2020-01-17 22:57:31');
INSERT INTO `order_items` VALUES (67, 36, 5, 15, 3, 4658.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (68, 36, 14, 41, 2, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (69, 36, 21, 61, 4, 9417.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (70, 37, 8, 22, 4, 1386.00, 5, 'Saepe numquam sint impedit odit provident aliquam ducimus.', '2019-12-29 10:41:33');
INSERT INTO `order_items` VALUES (71, 37, 29, 87, 4, 9993.00, 5, 'Saepe numquam sint impedit odit provident aliquam ducimus.', '2019-12-29 10:41:33');
INSERT INTO `order_items` VALUES (72, 38, 5, 13, 2, 3872.00, 2, 'Est quia id laboriosam reprehenderit aut tempore.', '2020-01-11 01:14:55');
INSERT INTO `order_items` VALUES (73, 38, 19, 57, 2, 9307.00, 2, 'Est quia id laboriosam reprehenderit aut tempore.', '2020-01-11 01:14:55');
INSERT INTO `order_items` VALUES (74, 39, 19, 57, 5, 9307.00, 4, 'Alias labore fugiat aliquid quidem dolores autem.', '2020-01-07 19:39:13');
INSERT INTO `order_items` VALUES (75, 39, 20, 60, 4, 1802.00, 4, 'Alias labore fugiat aliquid quidem dolores autem.', '2020-01-07 19:39:13');
INSERT INTO `order_items` VALUES (76, 39, 5, 13, 5, 3872.00, 4, 'Alias labore fugiat aliquid quidem dolores autem.', '2020-01-07 19:39:13');
INSERT INTO `order_items` VALUES (77, 40, 27, 81, 3, 7080.00, 1, 'Aut distinctio blanditiis ut perferendis voluptate.', '2020-01-08 18:02:04');
INSERT INTO `order_items` VALUES (78, 41, 7, 19, 3, 6713.00, 2, 'Distinctio explicabo quod suscipit nobis est sed eos.', '2020-01-15 12:35:11');
INSERT INTO `order_items` VALUES (79, 41, 26, 77, 2, 891.00, 2, 'Distinctio explicabo quod suscipit nobis est sed eos.', '2020-01-15 12:35:11');
INSERT INTO `order_items` VALUES (80, 42, 16, 48, 1, 3059.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (81, 42, 14, 41, 5, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (82, 43, 16, 48, 3, 3059.00, 3, 'Ipsum rerum ut autem voluptas.', '2020-01-15 19:01:46');
INSERT INTO `order_items` VALUES (83, 43, 27, 79, 3, 9664.00, 3, 'Ipsum rerum ut autem voluptas.', '2020-01-15 19:01:46');
INSERT INTO `order_items` VALUES (84, 44, 12, 36, 3, 9092.00, 3, 'Labore qui possimus veritatis autem et.', '2020-01-17 13:45:47');
INSERT INTO `order_items` VALUES (85, 44, 13, 39, 5, 9129.00, 3, 'Labore qui possimus veritatis autem et.', '2020-01-17 13:45:47');
INSERT INTO `order_items` VALUES (86, 44, 18, 54, 5, 6097.00, 3, 'Labore qui possimus veritatis autem et.', '2020-01-17 13:45:47');
INSERT INTO `order_items` VALUES (87, 45, 20, 58, 4, 4388.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (88, 45, 4, 11, 5, 3078.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (89, 46, 14, 41, 3, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (90, 46, 19, 55, 1, 6871.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (91, 46, 8, 24, 1, 2212.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (92, 47, 30, 89, 1, 4088.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (93, 48, 21, 61, 3, 9417.00, 3, 'Nesciunt placeat odio voluptates iure illo.', '2020-01-16 04:43:29');
INSERT INTO `order_items` VALUES (94, 49, 23, 69, 2, 5970.00, 5, 'Eaque ipsum quas dignissimos tenetur.', '2020-01-11 05:56:40');
INSERT INTO `order_items` VALUES (95, 49, 16, 48, 1, 3059.00, 5, 'Eaque ipsum quas dignissimos tenetur.', '2020-01-11 05:56:40');
INSERT INTO `order_items` VALUES (96, 49, 1, 1, 1, 5936.00, 5, 'Eaque ipsum quas dignissimos tenetur.', '2020-01-11 05:56:40');
INSERT INTO `order_items` VALUES (97, 50, 20, 58, 5, 4388.00, 2, 'Corporis quia ipsam recusandae quam quae.', '2020-01-09 10:45:48');
INSERT INTO `order_items` VALUES (98, 50, 27, 79, 5, 9664.00, 2, 'Corporis quia ipsam recusandae quam quae.', '2020-01-09 10:45:48');
INSERT INTO `order_items` VALUES (99, 50, 29, 86, 3, 3419.00, 2, 'Corporis quia ipsam recusandae quam quae.', '2020-01-09 10:45:48');
INSERT INTO `order_items` VALUES (100, 51, 19, 56, 2, 5503.00, 1, 'Quis explicabo est illum earum commodi aspernatur.', '2020-01-17 15:12:07');
INSERT INTO `order_items` VALUES (101, 51, 2, 4, 2, 6496.00, 1, 'Quis explicabo est illum earum commodi aspernatur.', '2020-01-17 15:12:07');
INSERT INTO `order_items` VALUES (102, 51, 6, 17, 2, 9088.00, 1, 'Quis explicabo est illum earum commodi aspernatur.', '2020-01-17 15:12:07');
INSERT INTO `order_items` VALUES (103, 52, 19, 56, 1, 5503.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (104, 52, 8, 22, 1, 1386.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (105, 53, 28, 82, 3, 6384.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (106, 53, 8, 22, 3, 1386.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (107, 54, 12, 34, 3, 5459.00, 5, 'Repellat aut accusamus minus id necessitatibus.', '2020-01-17 01:25:20');
INSERT INTO `order_items` VALUES (108, 55, 10, 30, 1, 3804.00, 1, 'Labore tempora quia dolore ex expedita enim eaque non.', '2020-01-15 17:59:17');
INSERT INTO `order_items` VALUES (109, 55, 24, 70, 4, 3707.00, 1, 'Labore tempora quia dolore ex expedita enim eaque non.', '2020-01-15 17:59:17');
INSERT INTO `order_items` VALUES (110, 55, 26, 76, 1, 8053.00, 1, 'Labore tempora quia dolore ex expedita enim eaque non.', '2020-01-15 17:59:17');
INSERT INTO `order_items` VALUES (111, 56, 11, 33, 2, 5731.00, 2, 'Itaque quaerat saepe enim.', '2020-01-18 11:08:59');
INSERT INTO `order_items` VALUES (112, 57, 27, 81, 3, 7080.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (113, 57, 27, 80, 5, 8272.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (114, 58, 23, 67, 3, 9361.00, 3, 'Ea molestiae rem quia voluptas quod.', '2020-01-17 12:53:39');
INSERT INTO `order_items` VALUES (115, 58, 23, 67, 5, 9361.00, 3, 'Ea molestiae rem quia voluptas quod.', '2020-01-17 12:53:39');
INSERT INTO `order_items` VALUES (116, 58, 16, 46, 2, 9317.00, 3, 'Ea molestiae rem quia voluptas quod.', '2020-01-17 12:53:39');
INSERT INTO `order_items` VALUES (117, 59, 2, 6, 2, 5025.00, 2, 'Similique laborum nemo aperiam dignissimos amet nisi officiis vel.', '2020-01-18 07:27:41');
INSERT INTO `order_items` VALUES (118, 59, 17, 50, 1, 4541.00, 2, 'Similique laborum nemo aperiam dignissimos amet nisi officiis vel.', '2020-01-18 07:27:41');
INSERT INTO `order_items` VALUES (119, 60, 25, 74, 2, 1863.00, 4, 'Maiores eaque iure molestias et.', '2020-01-05 07:08:51');
INSERT INTO `order_items` VALUES (120, 60, 24, 71, 3, 1055.00, 4, 'Maiores eaque iure molestias et.', '2020-01-05 07:08:51');
INSERT INTO `order_items` VALUES (121, 60, 28, 82, 1, 6384.00, 4, 'Maiores eaque iure molestias et.', '2020-01-05 07:08:51');
INSERT INTO `order_items` VALUES (122, 61, 22, 66, 4, 4408.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (123, 61, 13, 37, 4, 6010.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (124, 62, 23, 67, 4, 9361.00, 1, 'At impedit et iusto hic.', '2020-01-10 12:23:50');
INSERT INTO `order_items` VALUES (125, 63, 10, 29, 2, 4043.00, 5, 'Necessitatibus dolorem aut quo.', '2020-01-16 13:49:06');
INSERT INTO `order_items` VALUES (126, 63, 8, 24, 4, 2212.00, 5, 'Necessitatibus dolorem aut quo.', '2020-01-16 13:49:06');
INSERT INTO `order_items` VALUES (127, 63, 27, 80, 3, 8272.00, 5, 'Necessitatibus dolorem aut quo.', '2020-01-16 13:49:06');
INSERT INTO `order_items` VALUES (128, 64, 19, 56, 5, 5503.00, 2, 'Natus soluta consequuntur magni ipsum.', '2020-01-07 12:16:32');
INSERT INTO `order_items` VALUES (129, 64, 19, 57, 2, 9307.00, 2, 'Natus soluta consequuntur magni ipsum.', '2020-01-07 12:16:32');
INSERT INTO `order_items` VALUES (130, 65, 1, 2, 5, 950.00, 1, 'Fugit reiciendis ea eius ducimus.', '2020-01-09 00:59:49');
INSERT INTO `order_items` VALUES (131, 65, 2, 4, 4, 6496.00, 1, 'Fugit reiciendis ea eius ducimus.', '2020-01-09 00:59:49');
INSERT INTO `order_items` VALUES (132, 65, 19, 57, 3, 9307.00, 1, 'Fugit reiciendis ea eius ducimus.', '2020-01-09 00:59:49');
INSERT INTO `order_items` VALUES (133, 66, 7, 19, 4, 6713.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (134, 67, 27, 79, 4, 9664.00, 2, 'Qui dolorem voluptates minima rerum blanditiis id aliquid consequatur.', '2020-01-15 05:00:26');
INSERT INTO `order_items` VALUES (135, 67, 24, 72, 2, 9631.00, 2, 'Qui dolorem voluptates minima rerum blanditiis id aliquid consequatur.', '2020-01-15 05:00:26');
INSERT INTO `order_items` VALUES (136, 67, 21, 63, 2, 9411.00, 2, 'Qui dolorem voluptates minima rerum blanditiis id aliquid consequatur.', '2020-01-15 05:00:26');
INSERT INTO `order_items` VALUES (137, 68, 1, 1, 5, 5936.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (138, 69, 14, 42, 2, 1927.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (139, 69, 4, 11, 3, 3078.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (140, 70, 9, 27, 2, 3903.00, 4, 'Sint voluptates quisquam odio ut.', '2019-12-31 23:18:28');
INSERT INTO `order_items` VALUES (141, 70, 9, 25, 2, 4600.00, 4, 'Sint voluptates quisquam odio ut.', '2019-12-31 23:18:28');
INSERT INTO `order_items` VALUES (142, 70, 7, 21, 2, 5499.00, 4, 'Sint voluptates quisquam odio ut.', '2019-12-31 23:18:28');
INSERT INTO `order_items` VALUES (143, 71, 24, 72, 3, 9631.00, 1, 'Provident nesciunt illum at commodi est consequuntur.', '2020-01-17 09:55:26');
INSERT INTO `order_items` VALUES (144, 71, 14, 41, 3, 3728.00, 1, 'Provident nesciunt illum at commodi est consequuntur.', '2020-01-17 09:55:26');
INSERT INTO `order_items` VALUES (145, 72, 28, 83, 1, 1412.00, 3, 'Consectetur excepturi dolores sapiente nemo corporis hic voluptatem qui.', '2020-01-10 06:07:33');
INSERT INTO `order_items` VALUES (146, 72, 19, 57, 3, 9307.00, 3, 'Consectetur excepturi dolores sapiente nemo corporis hic voluptatem qui.', '2020-01-10 06:07:33');
INSERT INTO `order_items` VALUES (147, 73, 30, 90, 4, 5220.00, 3, 'Veritatis occaecati nihil nihil et officiis qui repudiandae.', '2020-01-15 12:41:06');
INSERT INTO `order_items` VALUES (148, 74, 26, 77, 1, 891.00, 1, 'Officia magni quasi velit dignissimos voluptas et.', '2020-01-12 03:42:32');
INSERT INTO `order_items` VALUES (149, 75, 3, 8, 3, 9525.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (150, 75, 4, 12, 1, 166.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (151, 76, 4, 10, 5, 7935.00, 3, 'Officiis culpa voluptatem dolorem iure quia.', '2020-01-05 19:38:24');
INSERT INTO `order_items` VALUES (152, 76, 28, 84, 1, 6491.00, 3, 'Officiis culpa voluptatem dolorem iure quia.', '2020-01-05 19:38:24');
INSERT INTO `order_items` VALUES (153, 76, 1, 1, 1, 5936.00, 3, 'Officiis culpa voluptatem dolorem iure quia.', '2020-01-05 19:38:24');
INSERT INTO `order_items` VALUES (154, 77, 2, 6, 1, 5025.00, 4, 'Consectetur delectus voluptates voluptates sint est.', '2020-01-16 13:23:29');
INSERT INTO `order_items` VALUES (155, 77, 25, 75, 1, 7287.00, 4, 'Consectetur delectus voluptates voluptates sint est.', '2020-01-16 13:23:29');
INSERT INTO `order_items` VALUES (156, 77, 9, 25, 2, 4600.00, 4, 'Consectetur delectus voluptates voluptates sint est.', '2020-01-16 13:23:29');
INSERT INTO `order_items` VALUES (157, 78, 13, 38, 5, 2516.00, 4, 'Voluptates esse atque autem pariatur omnis sed dolor.', '2020-01-16 04:07:05');
INSERT INTO `order_items` VALUES (158, 78, 14, 42, 5, 1927.00, 4, 'Voluptates esse atque autem pariatur omnis sed dolor.', '2020-01-16 04:07:05');
INSERT INTO `order_items` VALUES (159, 78, 3, 9, 5, 557.00, 4, 'Voluptates esse atque autem pariatur omnis sed dolor.', '2020-01-16 04:07:05');
INSERT INTO `order_items` VALUES (160, 79, 12, 36, 4, 9092.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (161, 79, 14, 41, 4, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (162, 79, 5, 13, 2, 3872.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (163, 80, 29, 87, 2, 9993.00, 4, 'Inventore officia et assumenda minima aut omnis.', '2020-01-18 15:24:10');
INSERT INTO `order_items` VALUES (164, 80, 5, 15, 1, 4658.00, 4, 'Inventore officia et assumenda minima aut omnis.', '2020-01-18 15:24:10');
INSERT INTO `order_items` VALUES (165, 80, 10, 30, 3, 3804.00, 4, 'Inventore officia et assumenda minima aut omnis.', '2020-01-18 15:24:10');
INSERT INTO `order_items` VALUES (166, 81, 6, 16, 1, 994.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (167, 81, 14, 41, 5, 3728.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (168, 81, 24, 71, 4, 1055.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (169, 82, 14, 40, 2, 659.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (170, 82, 18, 53, 4, 4520.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (171, 83, 19, 57, 4, 9307.00, 2, 'Quibusdam perspiciatis maxime et corrupti eaque iusto.', '2020-01-12 05:30:42');
INSERT INTO `order_items` VALUES (172, 84, 3, 9, 2, 557.00, 4, 'Sunt voluptatibus iusto est quia aut id accusamus.', '2020-01-17 15:42:22');
INSERT INTO `order_items` VALUES (173, 84, 29, 87, 1, 9993.00, 4, 'Sunt voluptatibus iusto est quia aut id accusamus.', '2020-01-17 15:42:22');
INSERT INTO `order_items` VALUES (174, 85, 20, 60, 5, 1802.00, 3, 'Recusandae sunt est totam autem voluptas ut eveniet.', '2020-01-15 07:03:05');
INSERT INTO `order_items` VALUES (175, 85, 21, 63, 2, 9411.00, 3, 'Recusandae sunt est totam autem voluptas ut eveniet.', '2020-01-15 07:03:05');
INSERT INTO `order_items` VALUES (176, 86, 17, 51, 4, 8508.00, 5, 'Blanditiis libero ut iure quisquam dolore unde error.', '2020-01-08 10:00:05');
INSERT INTO `order_items` VALUES (177, 86, 16, 46, 1, 9317.00, 5, 'Blanditiis libero ut iure quisquam dolore unde error.', '2020-01-08 10:00:05');
INSERT INTO `order_items` VALUES (178, 87, 25, 73, 3, 3044.00, 5, 'Praesentium quia qui magni vel.', '2020-01-14 19:14:16');
INSERT INTO `order_items` VALUES (179, 87, 4, 10, 2, 7935.00, 5, 'Praesentium quia qui magni vel.', '2020-01-14 19:14:16');
INSERT INTO `order_items` VALUES (180, 87, 12, 36, 1, 9092.00, 5, 'Praesentium quia qui magni vel.', '2020-01-14 19:14:16');
INSERT INTO `order_items` VALUES (181, 88, 26, 77, 3, 891.00, 5, 'Esse nostrum temporibus aperiam.', '2020-01-17 18:49:57');
INSERT INTO `order_items` VALUES (182, 88, 1, 3, 2, 8965.00, 5, 'Esse nostrum temporibus aperiam.', '2020-01-17 18:49:57');
INSERT INTO `order_items` VALUES (183, 88, 25, 75, 5, 7287.00, 5, 'Esse nostrum temporibus aperiam.', '2020-01-17 18:49:57');
INSERT INTO `order_items` VALUES (184, 89, 3, 9, 5, 557.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (185, 89, 7, 20, 1, 5433.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (186, 90, 21, 62, 2, 6631.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (187, 91, 27, 79, 1, 9664.00, 4, 'Quam corrupti quae occaecati omnis et.', '2020-01-12 08:44:10');
INSERT INTO `order_items` VALUES (188, 91, 24, 72, 5, 9631.00, 4, 'Quam corrupti quae occaecati omnis et.', '2020-01-12 08:44:10');
INSERT INTO `order_items` VALUES (189, 92, 21, 63, 4, 9411.00, 2, 'Corporis in eum sit dolore architecto voluptatem.', '2020-01-18 03:24:38');
INSERT INTO `order_items` VALUES (190, 92, 21, 62, 4, 6631.00, 2, 'Corporis in eum sit dolore architecto voluptatem.', '2020-01-18 03:24:38');
INSERT INTO `order_items` VALUES (191, 92, 7, 21, 5, 5499.00, 2, 'Corporis in eum sit dolore architecto voluptatem.', '2020-01-18 03:24:38');
INSERT INTO `order_items` VALUES (192, 93, 4, 10, 3, 7935.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (193, 93, 3, 8, 3, 9525.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (194, 94, 18, 52, 1, 9267.00, 3, 'Quis similique quia perspiciatis voluptatem.', '2020-01-03 08:17:37');
INSERT INTO `order_items` VALUES (195, 94, 8, 22, 2, 1386.00, 3, 'Quis similique quia perspiciatis voluptatem.', '2020-01-03 08:17:37');
INSERT INTO `order_items` VALUES (196, 94, 10, 30, 1, 3804.00, 3, 'Quis similique quia perspiciatis voluptatem.', '2020-01-03 08:17:37');
INSERT INTO `order_items` VALUES (197, 95, 11, 33, 1, 5731.00, 4, 'Blanditiis saepe modi voluptatem aut expedita eum.', '2019-12-26 21:41:09');
INSERT INTO `order_items` VALUES (198, 95, 16, 46, 3, 9317.00, 4, 'Blanditiis saepe modi voluptatem aut expedita eum.', '2019-12-26 21:41:09');
INSERT INTO `order_items` VALUES (199, 95, 29, 86, 4, 3419.00, 4, 'Blanditiis saepe modi voluptatem aut expedita eum.', '2019-12-26 21:41:09');
INSERT INTO `order_items` VALUES (200, 96, 21, 61, 5, 9417.00, 1, 'Amet eligendi temporibus dolor commodi facilis.', '2020-01-11 05:57:38');
INSERT INTO `order_items` VALUES (201, 97, 26, 77, 1, 891.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (202, 97, 2, 5, 4, 2567.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (203, 97, 26, 76, 1, 8053.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (204, 98, 25, 73, 4, 3044.00, 3, 'Harum architecto vitae et rerum.', '2020-01-17 21:20:25');
INSERT INTO `order_items` VALUES (205, 98, 5, 14, 1, 2879.00, 3, 'Harum architecto vitae et rerum.', '2020-01-17 21:20:25');
INSERT INTO `order_items` VALUES (206, 98, 9, 26, 3, 5374.00, 3, 'Harum architecto vitae et rerum.', '2020-01-17 21:20:25');
INSERT INTO `order_items` VALUES (207, 99, 3, 8, 5, 9525.00, 4, 'Alias quasi velit doloremque dolores quo.', '2020-01-03 04:15:38');
INSERT INTO `order_items` VALUES (208, 99, 26, 77, 5, 891.00, 4, 'Alias quasi velit doloremque dolores quo.', '2020-01-03 04:15:38');
INSERT INTO `order_items` VALUES (209, 100, 13, 39, 2, 9129.00, 5, 'Et qui non excepturi ea eum.', '2020-01-16 18:09:10');
INSERT INTO `order_items` VALUES (210, 100, 3, 8, 5, 9525.00, 5, 'Et qui non excepturi ea eum.', '2020-01-16 18:09:10');
INSERT INTO `order_items` VALUES (211, 101, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (212, 102, 31, 361, 2, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (213, 103, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (214, 104, 29, 355, 1, 2141.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (215, 105, 29, 355, 1, 2141.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (216, 106, 29, 86, 1, 3419.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (217, 107, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (218, 108, 31, 361, 2, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (219, 109, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (220, 110, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (221, 111, 31, 361, 1, 18000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (222, 112, 31, 91, 1, 9000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (223, 113, 31, 91, 1, 9000.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (224, 114, 32, 362, 1, 50.00, NULL, NULL, NULL);
INSERT INTO `order_items` VALUES (225, 115, 32, 362, 1, 50.00, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10, 2) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `paid_at` datetime(0) NULL DEFAULT NULL,
  `coupon_code_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `payment_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `refund_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT 0,
  `reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `ship_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `extra` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `orders_no_unique`(`no`) USING BTREE,
  UNIQUE INDEX `orders_refund_no_unique`(`refund_no`) USING BTREE,
  INDEX `orders_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `orders_coupon_code_id_foreign`(`coupon_code_id`) USING BTREE,
  CONSTRAINT `orders_coupon_code_id_foreign` FOREIGN KEY (`coupon_code_id`) REFERENCES `coupon_codes` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT,
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (1, 'normal', '20200118173505147001', 86, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c44\\u8857\\u9053\\u7b2c202\\u53f7\",\"zip\":763800,\"contact_name\":\"\\u9122\\u6842\\u82f1\",\"contact_phone\":\"13962137561\"}', 18886.00, 'Et earum minima tempora.', '2020-01-11 20:54:03', NULL, 'wechat', '4b701604-0e77-3581-a9bf-5fa1d717ad84', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u8bfa\\u4f9d\\u66fc\\u8f6f\\u4ef6\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b09b0a9c-4d38-30a3-a233-009bd433101a\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:15');
INSERT INTO `orders` VALUES (2, 'normal', '20200118173505381430', 86, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c44\\u8857\\u9053\\u7b2c202\\u53f7\",\"zip\":763800,\"contact_name\":\"\\u9122\\u6842\\u82f1\",\"contact_phone\":\"13962137561\"}', 19634.00, 'Unde perspiciatis dolorum qui nam amet dolorum ab.', '2019-12-27 17:49:25', NULL, 'alipay', '77d40f9f-11b2-3af7-8395-59745cff98cd', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:15');
INSERT INTO `orders` VALUES (3, 'normal', '20200118173505573760', 49, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c44\\u8857\\u9053\\u7b2c794\\u53f7\",\"zip\":176000,\"contact_name\":\"\\u90ce\\u79c0\\u82b3\",\"contact_phone\":\"13293699048\"}', 32565.99, 'Alias id et temporibus occaecati.', '2019-12-20 15:44:06', 7, 'alipay', '95a37247-5ecf-3bbc-9d13-9d8a8da81f41', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cd783be5-a7fa-3400-8548-0dbbb8926b54\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:15');
INSERT INTO `orders` VALUES (4, 'normal', '20200118173505677158', 45, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c70\\u8857\\u9053\\u7b2c31\\u53f7\",\"zip\":702100,\"contact_name\":\"\\u84dd\\u7389\\u5170\",\"contact_phone\":\"13978904967\"}', 15390.00, 'Est repellendus ut et voluptatibus.', '2020-01-18 15:29:32', NULL, 'wechat', '91e5433a-c886-3b7e-a2a7-b85b832c4a0c', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u56fe\\u9f99\\u4fe1\\u606f\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4b9866a8-4c31-3248-baa9-9fb4828de05b\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:16');
INSERT INTO `orders` VALUES (5, 'normal', '20200118173505043533', 94, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c91\\u8857\\u9053\\u7b2c394\\u53f7\",\"zip\":115600,\"contact_name\":\"\\u80e1\\u9f99\",\"contact_phone\":\"13353864130\"}', 33015.00, 'Nam fugiat nulla quia.', '2020-01-16 06:18:39', NULL, 'wechat', 'a91bda6d-8eff-3112-93de-6d6f2c718149', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5bcc\\u7f73\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"49943708-f9ac-3808-b0ad-ba5df23930ee\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:16');
INSERT INTO `orders` VALUES (6, 'normal', '20200118173505877320', 98, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c57\\u8857\\u9053\\u7b2c815\\u53f7\",\"zip\":756700,\"contact_name\":\"\\u865e\\u667a\\u6e0a\",\"contact_phone\":\"17194086515\"}', 4455.00, 'Labore quo et atque et nostrum quo.', '2019-12-20 05:52:54', NULL, 'wechat', 'e5924d95-c57b-380c-92f5-6077693d2977', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7fa4\\u82f1\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4380a0d3-5fdb-32f8-aa2d-6b8bff6479b9\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:16');
INSERT INTO `orders` VALUES (7, 'normal', '20200118173505561351', 6, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c406\\u53f7\",\"zip\":532600,\"contact_name\":\"\\u5b89\\u6842\\u73cd\",\"contact_phone\":\"18108913279\"}', 33940.00, 'Autem minima quos commodi aperiam sint eum in fugiat.', '2019-12-27 15:18:29', NULL, 'wechat', '51373f77-933b-3be0-a817-58f5fbdf5921', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u6c47\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"29a9644e-5cf5-3b5f-b800-a8a7c916fd0c\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:16');
INSERT INTO `orders` VALUES (8, 'normal', '20200118173505044627', 7, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c62\\u8857\\u9053\\u7b2c192\\u53f7\",\"zip\":174800,\"contact_name\":\"\\u7a0b\\u5b81\",\"contact_phone\":\"13194780282\"}', 32534.84, 'Laudantium aut facilis mollitia sint.', '2019-12-25 06:35:37', 7, 'wechat', 'be2b350b-3591-3bd1-85ad-f72e7e491b65', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u7cbe\\u82af\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8359474a-3bc3-3cc4-997a-d1d637e9330d\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:17');
INSERT INTO `orders` VALUES (9, 'normal', '20200118173505668187', 43, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c969\\u53f7\",\"zip\":285900,\"contact_name\":\"\\u6210\\u6625\\u6885\",\"contact_phone\":\"17082500256\"}', 11161.00, 'Dolores qui odit explicabo.', '2020-01-13 14:47:16', NULL, 'alipay', 'a6efa285-6cb8-34cf-b37b-ae787c318861', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u901a\\u9645\\u540d\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"981adb6b-0ae7-3e83-a745-383cc5ed8c9a\"}', '[]', '2020-01-18 17:35:05', '2020-01-18 17:35:17');
INSERT INTO `orders` VALUES (10, 'normal', '20200118173506628073', 66, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c26\\u8857\\u9053\\u7b2c694\\u53f7\",\"zip\":153000,\"contact_name\":\"\\u8a79\\u6167\",\"contact_phone\":\"13222637207\"}', 8176.00, 'Rerum dolore praesentium vel dolorem possimus.', '2020-01-08 14:24:36', NULL, 'wechat', '939712cc-1850-31a3-86af-d690ddddfec6', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5de8\\u5965\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b17a649e-f5bc-3220-9c16-d12f6b30e262\"}', '[]', '2020-01-18 17:35:06', '2020-01-18 17:35:17');
INSERT INTO `orders` VALUES (11, 'normal', '20200118173506010088', 100, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c57\\u8857\\u9053\\u7b2c224\\u53f7\",\"zip\":153400,\"contact_name\":\"\\u4f5f\\u6842\\u82ac\",\"contact_phone\":\"18288272510\"}', 1087.24, 'Ipsa ut commodi eligendi optio vero consectetur minima illo.', '2019-12-22 10:23:37', 8, 'wechat', 'f34fc7c7-a6bb-35aa-b59e-2ec3ccaa120b', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:06', '2020-01-18 17:35:17');
INSERT INTO `orders` VALUES (12, 'normal', '20200118173506620746', 38, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c69\\u8857\\u9053\\u7b2c486\\u53f7\",\"zip\":746800,\"contact_name\":\"\\u4ef2\\u9e70\",\"contact_phone\":\"13066843664\"}', 46897.00, 'Illo nobis esse quo modi est sint voluptatem quisquam.', '2019-12-25 08:54:06', NULL, 'alipay', 'db8a2100-3231-3e7b-b9e3-0872ba19b5c0', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u60e0\\u6d3e\\u56fd\\u9645\\u516c\\u53f8\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8fe1ab33-ba32-3f3e-aab1-ff71252cbdff\"}', '[]', '2020-01-18 17:35:06', '2020-01-18 17:35:17');
INSERT INTO `orders` VALUES (13, 'normal', '20200118173506130590', 8, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c28\\u8857\\u9053\\u7b2c13\\u53f7\",\"zip\":631900,\"contact_name\":\"\\u65bd\\u7545\",\"contact_phone\":\"18217363893\"}', 12198.00, 'Voluptas culpa doloremque numquam aut dignissimos sed consectetur.', '2019-12-27 18:22:50', NULL, 'alipay', '67755048-db13-37fa-b7e2-60ef7602ed6b', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:06', '2020-01-18 17:35:18');
INSERT INTO `orders` VALUES (14, 'normal', '20200118173507058605', 57, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c13\\u8857\\u9053\\u7b2c748\\u53f7\",\"zip\":821300,\"contact_name\":\"\\u7ae0\\u6587\\u541b\",\"contact_phone\":\"15990255981\"}', 14623.00, 'Eos doloribus accusantium rerum ea perspiciatis assumenda.', '2020-01-02 09:20:44', NULL, 'alipay', 'f72297e9-5d84-3cfc-ae53-06df2c40121f', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:18');
INSERT INTO `orders` VALUES (15, 'normal', '20200118173507296472', 68, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c73\\u8857\\u9053\\u7b2c565\\u53f7\",\"zip\":838100,\"contact_name\":\"\\u5cb3\\u6842\\u829d\",\"contact_phone\":\"13030209953\"}', 56902.00, 'Autem et tempora rem aspernatur voluptas quidem.', '2019-12-25 08:26:56', NULL, 'wechat', 'b68b980a-971d-3155-9ca6-3ce5f4517ea0', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:18');
INSERT INTO `orders` VALUES (16, 'normal', '20200118173507015613', 74, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c407\\u53f7\",\"zip\":477700,\"contact_name\":\"\\u6587\\u51e4\\u82f1\",\"contact_phone\":\"13812918949\"}', 17680.00, 'Quisquam repellendus est quas tenetur eius ea.', '2019-12-21 21:09:54', NULL, 'alipay', '82f59882-9f7b-3556-8b1b-a569ec64281d', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e7232578-388a-3f11-ba41-2be85e628e2c\"}', '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:19');
INSERT INTO `orders` VALUES (17, 'normal', '20200118173507349847', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c57\\u8857\\u9053\\u7b2c330\\u53f7\",\"zip\":685300,\"contact_name\":\"\\u962e\\u7389\\u5170\",\"contact_phone\":\"17754497823\"}', 73575.00, 'Consequuntur iste sed minus inventore recusandae et est mollitia.', '2020-01-03 23:28:14', NULL, 'wechat', '04242048-9729-37f0-9afa-973a8a160c6e', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u8fea\\u6469\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"53501d44-5fd0-30d8-b909-f6a4946d4f15\"}', '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:19');
INSERT INTO `orders` VALUES (18, 'normal', '20200118173507991020', 5, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c51\\u8857\\u9053\\u7b2c946\\u53f7\",\"zip\":177200,\"contact_name\":\"\\u8303\\u71d5\",\"contact_phone\":\"17002045841\"}', 22924.00, 'Et neque enim vero maxime nihil minus.', '2020-01-13 12:58:15', NULL, 'alipay', 'e69782ab-f477-3f74-a21f-2723d48cc585', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:19');
INSERT INTO `orders` VALUES (19, 'normal', '20200118173507926469', 87, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c54\\u8857\\u9053\\u7b2c769\\u53f7\",\"zip\":744300,\"contact_name\":\"\\u827e\\u697c\",\"contact_phone\":\"17078226575\"}', 63398.00, 'In ipsum qui modi voluptas a blanditiis.', '2019-12-30 23:44:09', NULL, 'wechat', '3a10d273-d04d-3f83-aa88-4e0b4a1e497d', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5f69\\u8679\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"be279dab-ae9d-34bf-8cd8-c984c05da725\"}', '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:19');
INSERT INTO `orders` VALUES (20, 'normal', '20200118173507511168', 5, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c51\\u8857\\u9053\\u7b2c946\\u53f7\",\"zip\":177200,\"contact_name\":\"\\u8303\\u71d5\",\"contact_phone\":\"17002045841\"}', 27951.00, 'Eaque quis nemo consequatur sit omnis.', '2020-01-11 09:44:58', NULL, 'alipay', '69c12d72-ebea-3aba-95bd-beb0a3521388', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:20');
INSERT INTO `orders` VALUES (21, 'normal', '20200118173507078788', 75, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c620\\u53f7\",\"zip\":692100,\"contact_name\":\"\\u5355\\u6885\",\"contact_phone\":\"18063309823\"}', 23936.22, 'Animi suscipit ratione vitae natus accusantium velit placeat et.', '2020-01-04 06:05:09', 8, 'alipay', 'd35f7d1c-17e9-38f6-8c55-7bb525620406', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (22, 'normal', '20200118173507580964', 23, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c534\\u53f7\",\"zip\":603800,\"contact_name\":\"\\u9a6c\\u6842\\u8363\",\"contact_phone\":\"13456713295\"}', 13164.00, 'Voluptas id dolorem iste vel quia occaecati suscipit soluta.', '2020-01-08 04:21:35', NULL, 'wechat', 'f476df70-0e83-3a77-a0c4-def88422b21d', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6d77\\u521b\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8977fc89-e4ac-3fe6-be10-6388a82829b1\"}', '[]', '2020-01-18 17:35:07', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (23, 'normal', '20200118173508528061', 11, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c46\\u8857\\u9053\\u7b2c768\\u53f7\",\"zip\":96700,\"contact_name\":\"\\u59da\\u5b66\\u660e\",\"contact_phone\":\"18529795778\"}', 18634.00, 'Architecto nesciunt voluptate voluptatem quis est.', '2019-12-27 03:38:18', NULL, 'wechat', '9a108946-9c6f-30ae-b1ec-42866199709c', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u76df\\u65b0\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"41cd4914-9984-3e70-93ab-0867f36e9780\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (24, 'normal', '20200118173508207129', 78, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c79\\u8857\\u9053\\u7b2c692\\u53f7\",\"zip\":371700,\"contact_name\":\"\\u88f4\\u658c\",\"contact_phone\":\"13355403920\"}', 18640.00, 'Rerum iste illum sunt odit ut.', '2019-12-25 04:28:25', NULL, 'wechat', '5bfae0f8-ae42-3e34-b0a2-22417c6269b0', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u534e\\u8fdc\\u8f6f\\u4ef6\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8a00b017-0c62-348b-a6ea-75a6a0b3427c\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (25, 'normal', '20200118173508925602', 34, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c92\\u8857\\u9053\\u7b2c45\\u53f7\",\"zip\":704300,\"contact_name\":\"\\u845b\\u6842\\u82f1\",\"contact_phone\":\"17055172551\"}', 40952.00, 'Accusantium non at iure.', '2020-01-11 10:20:56', NULL, 'wechat', 'dd37ff49-ae2b-346c-aea6-cd148625fbcb', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (26, 'normal', '20200118173508955664', 4, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c32\\u8857\\u9053\\u7b2c605\\u53f7\",\"zip\":726700,\"contact_name\":\"\\u989c\\u6668\",\"contact_phone\":\"18056165830\"}', 29979.00, 'Voluptatem repudiandae exercitationem non voluptas facilis.', '2019-12-31 23:57:50', NULL, 'alipay', 'c637dfec-365a-3c7b-afd6-761faa9193dc', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e07\\u8fc5\\u7535\\u8111\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1406b342-2e67-37d2-929f-dcc0e959d0b5\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:21');
INSERT INTO `orders` VALUES (27, 'normal', '20200118173508053643', 73, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c56\\u8857\\u9053\\u7b2c297\\u53f7\",\"zip\":748500,\"contact_name\":\"\\u6731\\u840d\",\"contact_phone\":\"18973442048\"}', 36079.00, 'Aut ut quia odit numquam dolores cumque in.', '2020-01-06 17:22:51', NULL, 'wechat', 'e1a037ff-138b-3a1a-9518-5a526149aacd', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:22');
INSERT INTO `orders` VALUES (28, 'normal', '20200118173508661052', 79, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c30\\u8857\\u9053\\u7b2c233\\u53f7\",\"zip\":72000,\"contact_name\":\"\\u5e2d\\u6960\",\"contact_phone\":\"13715169406\"}', 16987.43, 'Vel nisi reprehenderit qui et officiis nostrum sed.', '2020-01-04 03:58:33', 7, 'alipay', '7f31fcf8-d9ac-309d-84fb-c938d2ee0a57', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u660e\\u817e\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3464450e-57b5-33e1-b109-8ce310a25d73\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:22');
INSERT INTO `orders` VALUES (29, 'normal', '20200118173508456736', 25, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c37\\u53f7\",\"zip\":543700,\"contact_name\":\"\\u97a0\\u5e05\",\"contact_phone\":\"17034981334\"}', 21192.00, 'Aliquid aut dolorem consequatur dolor ut.', '2020-01-01 18:29:15', NULL, 'alipay', 'b13cf959-a8a9-3b53-87db-92ee626bca1b', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6d77\\u521b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b1ed0bc2-624c-36a1-a9e3-cd537696e72d\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:22');
INSERT INTO `orders` VALUES (30, 'normal', '20200118173508269081', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c85\\u8857\\u9053\\u7b2c160\\u53f7\",\"zip\":482800,\"contact_name\":\"\\u535e\\u9e70\",\"contact_phone\":\"15160230905\"}', 13690.00, 'Dolorum harum et qui ut commodi sed explicabo.', '2020-01-04 00:11:22', NULL, 'wechat', '66d4ac00-123d-3a70-939a-7dbc5ca45efe', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5f00\\u53d1\\u533a\\u4e16\\u521b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7c973f5e-17f1-3d36-90d7-e0bceb5bd142\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:23');
INSERT INTO `orders` VALUES (31, 'normal', '20200118173508499204', 89, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c44\\u8857\\u9053\\u7b2c891\\u53f7\",\"zip\":575400,\"contact_name\":\"\\u50e7\\u667a\\u52c7\",\"contact_phone\":\"18692971425\"}', 10918.00, 'Sed eius ipsum consequatur.', '2019-12-25 20:35:42', NULL, 'alipay', '991ec8b9-cbf6-3309-ba29-cd4a94c146fa', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u8944\\u6a0a\\u5730\\u7403\\u6751\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c5a1c57d-f9a1-3961-8a08-977aa3319b2e\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:23');
INSERT INTO `orders` VALUES (32, 'normal', '20200118173508223300', 33, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c94\\u8857\\u9053\\u7b2c64\\u53f7\",\"zip\":696600,\"contact_name\":\"\\u7504\\u5168\\u5b89\",\"contact_phone\":\"15134740415\"}', 3452.00, 'Tempore et ab quod voluptas aut et ducimus.', '2020-01-03 08:40:04', NULL, 'alipay', '8b141b2f-1da4-38a7-89e4-1cbfb679abbb', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u56db\\u901a\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f8bb3659-433e-33b0-b65f-f4ef8d39cbfc\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:23');
INSERT INTO `orders` VALUES (33, 'normal', '20200118173508060321', 64, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c681\\u53f7\",\"zip\":215400,\"contact_name\":\"\\u5f20\\u6797\",\"contact_phone\":\"18075794115\"}', 9010.00, 'Perspiciatis id facilis quia non illo rerum dolor quae.', '2020-01-02 03:57:39', NULL, 'alipay', 'af321646-9cf4-37b7-81b7-5f05b2bd2d93', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5de8\\u5965\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"28a7b0d6-8fb2-3465-9a72-918e8f19aa5d\"}', '[]', '2020-01-18 17:35:08', '2020-01-18 17:35:23');
INSERT INTO `orders` VALUES (34, 'normal', '20200118173509153827', 2, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c98\\u8857\\u9053\\u7b2c905\\u53f7\",\"zip\":383500,\"contact_name\":\"\\u4faf\\u5a1c\",\"contact_phone\":\"13742806981\"}', 37940.00, 'Iusto sunt consequuntur consequatur totam voluptas.', '2020-01-07 19:02:19', NULL, 'wechat', '4f10ca11-b61d-34ad-8179-3bea76fcd79d', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3b144f10-3236-3303-9a0f-b933c6ad60e4\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:24');
INSERT INTO `orders` VALUES (35, 'normal', '20200118173509767059', 85, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c16\\u8857\\u9053\\u7b2c876\\u53f7\",\"zip\":496500,\"contact_name\":\"\\u4e8e\\u5029\",\"contact_phone\":\"15503680204\"}', 48516.00, 'Laborum autem nisi dolorem accusamus et et ut.', '2020-01-14 17:57:38', NULL, 'alipay', 'de8004b2-52de-30e0-a8bd-655d085504da', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5929\\u76ca\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"58442a2a-60c9-3d23-985b-dc085b91c9ed\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:25');
INSERT INTO `orders` VALUES (36, 'normal', '20200118173509100075', 42, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c756\\u53f7\",\"zip\":594600,\"contact_name\":\"\\u82d7\\u5609\",\"contact_phone\":\"18937018583\"}', 59098.00, 'Quia accusantium velit optio ad molestiae.', '2019-12-23 17:10:02', NULL, 'alipay', 'eca1c20a-3609-3181-87ef-6eaa06fa3a82', 'success', '6bdff347ad8e4defaa3f4b04e2bc60f2', 0, 0, 'received', '{\"express_company\":\"\\u56db\\u901a\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"797f71de-b1f3-316c-be58-98c65f4e0059\"}', '{\"refund_reason\":\"Totam explicabo optio magnam placeat laudantium.\"}', '2020-01-18 17:35:09', '2020-01-18 17:35:25');
INSERT INTO `orders` VALUES (37, 'normal', '20200118173509885317', 32, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c18\\u8857\\u9053\\u7b2c714\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u5b8b\\u9e4f\\u7a0b\",\"contact_phone\":\"18084861792\"}', 45516.00, 'Et in sunt doloremque in saepe dolores.', '2019-12-26 10:17:15', NULL, 'wechat', '19798327-9e47-34ca-83ae-b5a7339dc7e2', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5929\\u76ca\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e87543d3-9fc5-3dd6-8604-f779741a3d87\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:25');
INSERT INTO `orders` VALUES (38, 'normal', '20200118173509539447', 97, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c16\\u8857\\u9053\\u7b2c495\\u53f7\",\"zip\":297700,\"contact_name\":\"\\u7cdc\\u840d\",\"contact_phone\":\"17088350808\"}', 26358.00, 'Aut qui eius ipsam possimus.', '2020-01-06 00:34:03', NULL, 'wechat', '9890f8cf-bb3d-35ec-8f69-00963ed8508c', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u98de\\u5229\\u4fe1\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"7dbac3da-dc79-3648-adf4-ed4e63972fd3\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:25');
INSERT INTO `orders` VALUES (39, 'normal', '20200118173509553535', 16, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c88\\u8857\\u9053\\u7b2c295\\u53f7\",\"zip\":364700,\"contact_name\":\"\\u683e\\u946b\",\"contact_phone\":\"15504427334\"}', 37282.53, 'Consequatur dolores voluptas quis ut sit minus quia.', '2019-12-27 16:34:29', 4, 'alipay', 'e4056faa-c2d9-3ded-80ff-2de7ceb3b418', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u7fa4\\u82f1\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"73d6b7e5-554f-340c-98e7-a7dc964d9fa9\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:26');
INSERT INTO `orders` VALUES (40, 'normal', '20200118173509744671', 6, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c406\\u53f7\",\"zip\":532600,\"contact_name\":\"\\u5b89\\u6842\\u73cd\",\"contact_phone\":\"18108913279\"}', 21240.00, 'Enim harum animi iure magnam sequi ab impedit.', '2020-01-07 18:26:16', NULL, 'alipay', 'a58fb4de-4b1f-3b65-9ca2-b8a74d5f1d45', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u65b0\\u5b87\\u9f99\\u4fe1\\u606f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"3b85ebab-65c3-3a7b-8be2-293609cdb8d5\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:26');
INSERT INTO `orders` VALUES (41, 'normal', '20200118173509841255', 38, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c77\\u8857\\u9053\\u7b2c356\\u53f7\",\"zip\":515300,\"contact_name\":\"\\u5b98\\u5a77\",\"contact_phone\":\"15254146199\"}', 16879.17, 'Numquam magnam enim non saepe dolorem rerum eius minima.', '2020-01-08 14:58:24', 8, 'alipay', '916aeb2c-a643-3c68-8911-121a31386dfa', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6052\\u806a\\u767e\\u6c47\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"876cca53-20d8-3d64-aa6e-02399e18089d\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:26');
INSERT INTO `orders` VALUES (42, 'normal', '20200118173509099818', 91, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c75\\u8857\\u9053\\u7b2c870\\u53f7\",\"zip\":414100,\"contact_name\":\"\\u5deb\\u6dd1\\u82f1\",\"contact_phone\":\"17841817340\"}', 21699.00, 'Temporibus explicabo voluptatem dolor odit dicta distinctio quisquam atque.', '2020-01-12 03:43:32', NULL, 'alipay', 'f440a04f-a406-320a-beea-d8e22149df0f', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u660a\\u5609\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bd81fc08-c9e5-3a23-8d14-195c71ec0f71\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:27');
INSERT INTO `orders` VALUES (43, 'normal', '20200118173509911620', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c64\\u8857\\u9053\\u7b2c115\\u53f7\",\"zip\":112900,\"contact_name\":\"\\u4e95\\u96f7\",\"contact_phone\":\"13603171184\"}', 38169.00, 'Voluptatibus possimus aliquam et corporis sunt voluptas dolorem.', '2020-01-15 00:21:59', NULL, 'wechat', '118f4307-d734-3add-be5b-b8f4f41d31d1', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e03\\u559c\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"305e2eae-ab2e-3405-9ed6-5e559c7386ab\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:27');
INSERT INTO `orders` VALUES (44, 'normal', '20200118173509700633', 46, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c80\\u8857\\u9053\\u7b2c460\\u53f7\",\"zip\":778300,\"contact_name\":\"\\u6c99\\u6377\",\"contact_phone\":\"17844175985\"}', 92031.34, 'Voluptas corporis reprehenderit ut et.', '2020-01-14 15:14:40', 7, 'alipay', '312bb28e-30d4-3fe6-93ee-080638457847', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:27');
INSERT INTO `orders` VALUES (45, 'normal', '20200118173509764677', 62, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c851\\u53f7\",\"zip\":67700,\"contact_name\":\"\\u59dc\\u667a\\u654f\",\"contact_phone\":\"17014618850\"}', 32942.00, 'Qui vel voluptates dolores provident pariatur inventore.', '2019-12-30 18:57:09', NULL, 'wechat', '8c324c37-67c8-3461-b743-29432fb65a2f', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u601d\\u4f18\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"8d8a1510-252c-31b2-ad64-01e32951044b\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:28');
INSERT INTO `orders` VALUES (46, 'normal', '20200118173509692212', 91, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c437\\u53f7\",\"zip\":312300,\"contact_name\":\"\\u6613\\u79c0\\u4e91\",\"contact_phone\":\"15837218760\"}', 16213.60, 'Fugiat officia maxime modi doloribus blanditiis.', '2020-01-09 12:49:16', 15, 'wechat', 'a7b22eea-152b-3301-a968-314586d0c282', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:29');
INSERT INTO `orders` VALUES (47, 'normal', '20200118173509170836', 25, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c37\\u53f7\",\"zip\":543700,\"contact_name\":\"\\u97a0\\u5e05\",\"contact_phone\":\"17034981334\"}', 4088.00, 'Itaque cupiditate sapiente numquam mollitia modi culpa omnis.', '2020-01-15 19:21:48', NULL, 'alipay', '529d6fc4-10e8-3b8b-905b-373036e94534', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u83ca\\u98ce\\u516c\\u53f8\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"cb082292-725e-3a51-96a7-1ca64e203831\"}', '[]', '2020-01-18 17:35:09', '2020-01-18 17:35:29');
INSERT INTO `orders` VALUES (48, 'normal', '20200118173510282606', 65, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c10\\u8857\\u9053\\u7b2c139\\u53f7\",\"zip\":631800,\"contact_name\":\"\\u6bd5\\u9633\",\"contact_phone\":\"15937481115\"}', 28251.00, 'Quia et sed laudantium quae.', '2020-01-15 22:40:19', NULL, 'alipay', 'a00ce523-d2ed-38f5-b7e4-5b1f1c31acd8', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5bcc\\u7f73\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"78262ef8-9273-3196-af7b-9de02e860f60\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:29');
INSERT INTO `orders` VALUES (49, 'normal', '20200118173510966457', 32, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c18\\u8857\\u9053\\u7b2c714\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u5b8b\\u9e4f\\u7a0b\",\"contact_phone\":\"18084861792\"}', 20935.00, 'Sed ipsam consequatur placeat iure qui sed.', '2019-12-28 22:03:48', NULL, 'wechat', '3ea26034-9650-3160-b287-5bdb37a3defb', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6d66\\u534e\\u4f17\\u57ce\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"ed71f5d8-f752-3473-8f14-c4555e3d36f7\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:29');
INSERT INTO `orders` VALUES (50, 'normal', '20200118173510540460', 2, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c98\\u8857\\u9053\\u7b2c905\\u53f7\",\"zip\":383500,\"contact_name\":\"\\u4faf\\u5a1c\",\"contact_phone\":\"13742806981\"}', 61998.09, 'Officiis vero et illum nemo tenetur iste.', '2020-01-05 07:09:53', 8, 'wechat', 'cffe04f2-8fb1-3579-af7a-05b74198ec36', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:30');
INSERT INTO `orders` VALUES (51, 'normal', '20200118173510582244', 14, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c88\\u8857\\u9053\\u7b2c279\\u53f7\",\"zip\":587700,\"contact_name\":\"\\u9ad8\\u6885\",\"contact_phone\":\"14700007505\"}', 42174.00, 'In iusto dolores amet cum velit aut sunt modi.', '2020-01-09 20:41:21', NULL, 'wechat', '6f25c5c3-b11e-353f-82e1-b2785408b56b', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:30');
INSERT INTO `orders` VALUES (52, 'normal', '20200118173510562743', 15, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c23\\u8857\\u9053\\u7b2c991\\u53f7\",\"zip\":542800,\"contact_name\":\"\\u67e5\\u7ea2\\u6885\",\"contact_phone\":\"17783927026\"}', 5304.53, 'Voluptatem et id et sint.', '2020-01-17 12:18:01', 8, 'wechat', '9acccdf3-f8cb-31a2-a483-4e886afc4964', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"34e49854-ee06-339e-b711-0ae5e269bc75\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:30');
INSERT INTO `orders` VALUES (53, 'normal', '20200118173510112866', 55, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c74\\u8857\\u9053\\u7b2c469\\u53f7\",\"zip\":421500,\"contact_name\":\"\\u7a46\\u96ea\",\"contact_phone\":\"15218622359\"}', 23310.00, 'Nam repellat ut qui dolor unde quas.', '2019-12-30 18:06:48', NULL, 'wechat', 'cd9f3b77-59f6-3fe2-aff9-ec1a144a15ac', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u548c\\u6cf0\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"36de710a-609b-30df-b7f2-ee47a648ea75\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:31');
INSERT INTO `orders` VALUES (54, 'normal', '20200118173510763352', 43, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c14\\u8857\\u9053\\u7b2c969\\u53f7\",\"zip\":285900,\"contact_name\":\"\\u6210\\u6625\\u6885\",\"contact_phone\":\"17082500256\"}', 16377.00, 'Et soluta magnam neque facere quae.', '2020-01-11 02:43:04', NULL, 'alipay', '0a54a5ec-3690-37e4-a196-3314e2808184', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u7ef4\\u6d9b\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c29ef0a4-7e22-3f00-9c77-60f061e35c48\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:31');
INSERT INTO `orders` VALUES (55, 'normal', '20200118173510422206', 56, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c33\\u8857\\u9053\\u7b2c798\\u53f7\",\"zip\":831400,\"contact_name\":\"\\u4e18\\u6587\\u541b\",\"contact_phone\":\"15323956357\"}', 26685.00, 'Asperiores aut ut mollitia vero iste quidem.', '2020-01-09 22:52:26', NULL, 'wechat', '03c36ef9-6225-3b77-b611-deb52885f71a', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u4e07\\u8fc5\\u7535\\u8111\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"4802a6c4-831f-308c-9139-335cc782757d\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:31');
INSERT INTO `orders` VALUES (56, 'normal', '20200118173510375934', 32, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c18\\u8857\\u9053\\u7b2c714\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u5b8b\\u9e4f\\u7a0b\",\"contact_phone\":\"18084861792\"}', 11462.00, 'Neque placeat iure ipsam labore facilis.', '2020-01-17 08:38:38', NULL, 'wechat', 'd64af297-451c-3d7f-96b9-6ceabadc228b', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u5546\\u8f6f\\u51a0\\u8054\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"b24e7034-ab6c-3d9c-ac56-1539089a4b57\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:31');
INSERT INTO `orders` VALUES (57, 'normal', '20200118173510853586', 33, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c94\\u8857\\u9053\\u7b2c64\\u53f7\",\"zip\":696600,\"contact_name\":\"\\u7504\\u5168\\u5b89\",\"contact_phone\":\"15134740415\"}', 62600.00, 'Assumenda quia est veritatis ut sequi.', '2019-12-25 18:32:52', NULL, 'alipay', '6999e38b-57fa-3f2a-aec2-e178c773ab3c', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u8fea\\u6469\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"36fa0848-0590-3656-becb-3666ed67f319\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:31');
INSERT INTO `orders` VALUES (58, 'normal', '20200118173510025905', 37, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c24\\u8857\\u9053\\u7b2c501\\u53f7\",\"zip\":107000,\"contact_name\":\"\\u8c0c\\u535a\",\"contact_phone\":\"13296100082\"}', 74817.60, 'Veniam tempore sunt ut sed.', '2020-01-16 18:49:32', 15, 'alipay', 'abbcea89-bf16-385a-b7d8-de662205aeb8', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6052\\u806a\\u767e\\u6c47\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d4cbb69d-7ffa-3af2-bbac-e0263620a035\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:32');
INSERT INTO `orders` VALUES (59, 'normal', '20200118173510634675', 31, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c23\\u8857\\u9053\\u7b2c373\\u53f7\",\"zip\":292500,\"contact_name\":\"\\u6587\\u5fd7\\u6587\",\"contact_phone\":\"18307660224\"}', 14591.00, 'Eos eos voluptas nisi unde.', '2019-12-28 04:18:52', NULL, 'wechat', 'a975fe90-64e2-3e20-95a8-6f7905d2a3cd', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:32');
INSERT INTO `orders` VALUES (60, 'normal', '20200118173510010567', 65, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c87\\u8857\\u9053\\u7b2c698\\u53f7\",\"zip\":507200,\"contact_name\":\"\\u90dc\\u4f73\",\"contact_phone\":\"13059087316\"}', 13275.00, 'Modi quia aut reiciendis sequi aliquid.', '2019-12-29 04:11:29', NULL, 'wechat', '0967adb4-dfd7-3f51-8be2-fce5ac667cb9', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u98de\\u5229\\u4fe1\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"67095c9a-69fb-32e9-aff5-2021f57554d9\"}', '[]', '2020-01-18 17:35:10', '2020-01-18 17:35:32');
INSERT INTO `orders` VALUES (61, 'normal', '20200118173511939484', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c57\\u8857\\u9053\\u7b2c330\\u53f7\",\"zip\":685300,\"contact_name\":\"\\u962e\\u7389\\u5170\",\"contact_phone\":\"17754497823\"}', 41672.00, 'Voluptatem adipisci qui animi enim.', '2019-12-28 15:51:12', NULL, 'alipay', '5355517e-ce07-3707-924a-da8b153f345a', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:33');
INSERT INTO `orders` VALUES (62, 'normal', '20200118173511541368', 9, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c60\\u8857\\u9053\\u7b2c260\\u53f7\",\"zip\":237100,\"contact_name\":\"\\u5de6\\u5b66\\u660e\",\"contact_phone\":\"15231449181\"}', 37444.00, 'Reprehenderit unde eos iure repellat aliquam praesentium eius.', '2020-01-01 12:54:59', NULL, 'alipay', '67e3a354-2117-37b6-8363-8efce1120c26', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:33');
INSERT INTO `orders` VALUES (63, 'normal', '20200118173511071874', 42, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c756\\u53f7\",\"zip\":594600,\"contact_name\":\"\\u82d7\\u5609\",\"contact_phone\":\"18937018583\"}', 41750.00, 'Porro voluptatum eius molestiae repudiandae harum eaque odit.', '2020-01-10 18:45:13', NULL, 'alipay', '2f471417-5127-3518-8d81-29431e9c589c', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u4e2d\\u5efa\\u521b\\u4e1a\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a03a195a-f272-3ba7-9e25-eb2bc52fc4b2\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:33');
INSERT INTO `orders` VALUES (64, 'normal', '20200118173511815050', 71, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c25\\u8857\\u9053\\u7b2c937\\u53f7\",\"zip\":173500,\"contact_name\":\"\\u8c2d\\u521a\",\"contact_phone\":\"17748557128\"}', 46129.00, 'Enim fuga sint consequatur architecto quisquam sed et voluptatibus.', '2019-12-25 04:41:37', NULL, 'wechat', 'a90fa56f-5695-3363-b137-2daeb4673f6a', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"73774650-ad85-3e27-92bf-4c9647bdb79d\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:33');
INSERT INTO `orders` VALUES (65, 'normal', '20200118173511871012', 51, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c72\\u8857\\u9053\\u7b2c10\\u53f7\",\"zip\":268100,\"contact_name\":\"\\u5085\\u7389\",\"contact_phone\":\"17092872191\"}', 32846.80, 'Dolores sed est totam aperiam voluptatem similique.', '2019-12-25 20:46:55', 20, 'wechat', 'abcd94d2-261b-33c1-8b54-df6b11758f3f', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:34');
INSERT INTO `orders` VALUES (66, 'normal', '20200118173511912943', 20, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c66\\u8857\\u9053\\u7b2c396\\u53f7\",\"zip\":181000,\"contact_name\":\"\\u7530\\u6b22\",\"contact_phone\":\"15863804460\"}', 21481.60, 'Iusto beatae corporis dolores accusantium officia maxime dolor dolor.', '2020-01-11 00:04:00', 15, 'alipay', 'e65c7f32-15c4-3aff-a2c2-2bb0a6800dc6', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u7acb\\u4fe1\\u7535\\u5b50\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"45a8f9dd-f57d-3e92-b0ed-f16431f9647d\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:34');
INSERT INTO `orders` VALUES (67, 'normal', '20200118173511580664', 15, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c9\\u8857\\u9053\\u7b2c364\\u53f7\",\"zip\":367300,\"contact_name\":\"\\u5201\\u5fd7\\u65b0\",\"contact_phone\":\"15349654356\"}', 76740.00, 'Fugiat unde saepe quia in.', '2020-01-11 11:00:39', NULL, 'wechat', '9a2c813c-7dfc-3bd4-a6d1-09e214d1337b', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:35');
INSERT INTO `orders` VALUES (68, 'normal', '20200118173511290636', 53, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c540\\u53f7\",\"zip\":847700,\"contact_name\":\"\\u5409\\u96ea\\u6885\",\"contact_phone\":\"13883869440\"}', 16620.80, 'Corrupti quod inventore facilis quo nihil quasi.', '2019-12-23 13:26:45', 20, 'alipay', '2371e6bd-54b8-3817-90ff-81f2d0d7d140', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:35');
INSERT INTO `orders` VALUES (69, 'normal', '20200118173511091122', 37, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c274\\u53f7\",\"zip\":333200,\"contact_name\":\"\\u6613\\u8d85\",\"contact_phone\":\"15923163677\"}', 11648.32, 'Ut placeat iusto rerum harum soluta occaecati voluptatem incidunt.', '2019-12-30 20:08:57', 7, 'wechat', '3be1ebbe-153a-3c8b-9141-2201948dc2d5', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u827e\\u63d0\\u79d1\\u4fe1\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"29975b5f-bee5-377b-a8ae-78e5960fdc32\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:35');
INSERT INTO `orders` VALUES (70, 'normal', '20200118173511276095', 45, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c50\\u8857\\u9053\\u7b2c165\\u53f7\",\"zip\":643300,\"contact_name\":\"\\u5e94\\u4e39\",\"contact_phone\":\"17838987873\"}', 28004.00, 'Laborum inventore pariatur et ea voluptate natus.', '2019-12-24 09:03:25', NULL, 'alipay', '5b002189-443c-38d7-bd05-ff1eaf1878eb', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u60e0\\u6d3e\\u56fd\\u9645\\u516c\\u53f8\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c4f501f2-8864-3954-a473-b4f83f994ce7\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:35');
INSERT INTO `orders` VALUES (71, 'normal', '20200118173511556849', 74, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c52\\u8857\\u9053\\u7b2c361\\u53f7\",\"zip\":208000,\"contact_name\":\"\\u5c39\\u6b63\\u4e1a\",\"contact_phone\":\"17848158794\"}', 40077.00, 'Similique esse in natus quaerat.', '2020-01-16 22:32:56', NULL, 'wechat', '1bb1043d-5eb7-391e-8df7-8984e4bce638', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u65b9\\u6b63\\u79d1\\u6280\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"c94b94d1-f8f0-324d-83fb-4eb9ce880b3a\"}', '[]', '2020-01-18 17:35:11', '2020-01-18 17:35:36');
INSERT INTO `orders` VALUES (72, 'normal', '20200118173511900760', 29, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c33\\u8857\\u9053\\u7b2c107\\u53f7\",\"zip\":755800,\"contact_name\":\"\\u67e5\\u8273\",\"contact_phone\":\"14740881005\"}', 29333.00, 'Cum reiciendis voluptatem est dolores.', '2019-12-23 12:54:03', NULL, 'alipay', 'f8dcd52e-8015-3990-bf34-1d0e3434d810', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:36');
INSERT INTO `orders` VALUES (73, 'normal', '20200118173512882836', 98, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c71\\u8857\\u9053\\u7b2c859\\u53f7\",\"zip\":298500,\"contact_name\":\"\\u6881\\u65ed\",\"contact_phone\":\"15020303601\"}', 20880.00, 'Quis sit et quod consequatur aspernatur.', '2020-01-08 05:21:34', NULL, 'alipay', '88423657-f687-32d8-8e99-a25535ef5011', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u6d77\\u521b\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d6f8951c-6b8f-314f-8fda-0d4b41b9666d\"}', '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:36');
INSERT INTO `orders` VALUES (74, 'normal', '20200118173512256813', 87, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c66\\u8857\\u9053\\u7b2c159\\u53f7\",\"zip\":656000,\"contact_name\":\"\\u5cb3\\u6b22\",\"contact_phone\":\"17056608436\"}', 891.00, 'Incidunt et et consequatur et.', '2020-01-01 01:25:04', NULL, 'alipay', '1e5e5e1e-bd6e-3b94-8387-f72d35f2716e', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6cf0\\u9e92\\u9e9f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"f3ef35e6-84d2-3d73-999f-2977b5125a86\"}', '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:36');
INSERT INTO `orders` VALUES (75, 'normal', '20200118173512450822', 19, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c15\\u8857\\u9053\\u7b2c178\\u53f7\",\"zip\":32300,\"contact_name\":\"\\u9773\\u5efa\\u56fd\",\"contact_phone\":\"17175822952\"}', 28741.00, 'Sed vel laboriosam provident fugiat ab quisquam.', '2019-12-27 03:13:13', NULL, 'wechat', 'e7c1b933-0f61-3589-bee5-f6186fdc31e1', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u7acb\\u4fe1\\u7535\\u5b50\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"91d79f88-eb1f-3070-b40e-7af7cd37ec4b\"}', '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:37');
INSERT INTO `orders` VALUES (76, 'normal', '20200118173512977845', 70, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c64\\u8857\\u9053\\u7b2c115\\u53f7\",\"zip\":112900,\"contact_name\":\"\\u4e95\\u96f7\",\"contact_phone\":\"13603171184\"}', 52102.00, 'Nisi commodi hic libero nostrum.', '2019-12-21 13:09:25', NULL, 'alipay', 'c05c263b-2e64-3f27-8f7d-c8fe183b54e7', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u65b9\\u6b63\\u79d1\\u6280\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"a19f6aa1-f1f1-3cc7-8a4c-330783fe1831\"}', '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:37');
INSERT INTO `orders` VALUES (77, 'normal', '20200118173512585588', 79, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c0\\u8857\\u9053\\u7b2c270\\u53f7\",\"zip\":396000,\"contact_name\":\"\\u7ae0\\u6167\",\"contact_phone\":\"17188808550\"}', 17209.60, 'Illum ut consectetur ut necessitatibus possimus at natus.', '2020-01-13 06:56:42', 15, 'alipay', '58831f75-28cb-39a2-b0b2-6fa852e6ca85', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u521b\\u6c47\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e402cf7b-3f42-3f12-838d-f2d483cf51a5\"}', '[]', '2020-01-18 17:35:12', '2020-01-18 17:35:38');
INSERT INTO `orders` VALUES (78, 'normal', '20200118173513954893', 48, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c69\\u8857\\u9053\\u7b2c434\\u53f7\",\"zip\":705500,\"contact_name\":\"\\u5c48\\u5b66\\u660e\",\"contact_phone\":\"14744066821\"}', 20000.00, 'Perspiciatis amet est omnis.', '2020-01-01 23:15:16', 15, 'alipay', '28327045-16b8-3474-8918-f71fd3c6b436', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6d59\\u5927\\u4e07\\u670b\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"5dd8c713-2a22-376d-bc05-d1fa01f21730\"}', '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:38');
INSERT INTO `orders` VALUES (79, 'normal', '20200118173513449047', 32, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c18\\u8857\\u9053\\u7b2c714\\u53f7\",\"zip\":792200,\"contact_name\":\"\\u5b8b\\u9e4f\\u7a0b\",\"contact_phone\":\"18084861792\"}', 59024.00, 'Esse optio quo ea qui aliquam.', '2019-12-22 11:50:38', NULL, 'alipay', 'a91b8edc-86d4-348c-b5ea-059363930a5c', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u9ec4\\u77f3\\u91d1\\u627f\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"1a40fd75-96c3-3f65-b28a-3e836afc1ed7\"}', '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:38');
INSERT INTO `orders` VALUES (80, 'normal', '20200118173513510596', 41, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c246\\u53f7\",\"zip\":92600,\"contact_name\":\"\\u664f\\u99a8\\u4e88\",\"contact_phone\":\"17636483957\"}', 36056.00, 'Sint est commodi quos magni debitis ipsa.', '2019-12-24 21:55:38', NULL, 'alipay', '96cf3468-f038-3ea7-9636-c917f5e5382d', 'pending', NULL, 0, 1, 'delivered', '{\"express_company\":\"\\u6613\\u52a8\\u529b\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"68e2c14a-596b-3224-9ae7-225b6452e2e3\"}', '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:39');
INSERT INTO `orders` VALUES (81, 'normal', '20200118173513662217', 99, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c73\\u8857\\u9053\\u7b2c975\\u53f7\",\"zip\":33700,\"contact_name\":\"\\u67e5\\u6842\\u829d\",\"contact_phone\":\"15896470055\"}', 23854.00, 'Harum nulla quibusdam non repudiandae voluptate sed.', '2020-01-06 09:24:28', NULL, 'alipay', '74b37355-12a4-3415-b410-adf0539d3e6d', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u51cc\\u9896\\u4fe1\\u606f\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"dccbfb71-2f27-3d7b-a066-34ea63298e7a\"}', '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:39');
INSERT INTO `orders` VALUES (82, 'normal', '20200118173513086953', 62, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c35\\u8857\\u9053\\u7b2c612\\u53f7\",\"zip\":643200,\"contact_name\":\"\\u675c\\u6625\\u6885\",\"contact_phone\":\"13289756450\"}', 19398.00, 'Dolore doloremque culpa ipsam repellendus possimus nulla non eveniet.', '2019-12-23 06:16:27', NULL, 'wechat', '4c5ff073-f084-35a7-802d-1e0600906a1d', 'pending', NULL, 0, 0, 'delivered', '{\"express_company\":\"\\u7ef4\\u65fa\\u660e\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"51e6249c-fb2e-35cc-9914-5b9b92a79d9a\"}', '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:39');
INSERT INTO `orders` VALUES (83, 'normal', '20200118173513811945', 41, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c49\\u8857\\u9053\\u7b2c246\\u53f7\",\"zip\":92600,\"contact_name\":\"\\u664f\\u99a8\\u4e88\",\"contact_phone\":\"17636483957\"}', 33132.92, 'Non voluptas rerum et incidunt sint id.', '2020-01-02 21:35:47', 7, 'wechat', '1e6473f6-9b0f-30ec-bbc6-b8e32b8600f6', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:39');
INSERT INTO `orders` VALUES (84, 'normal', '20200118173513195232', 25, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c37\\u53f7\",\"zip\":543700,\"contact_name\":\"\\u97a0\\u5e05\",\"contact_phone\":\"17034981334\"}', 11107.00, 'Dolorem blanditiis laudantium molestias quis eaque harum.', '2020-01-11 13:08:50', NULL, 'alipay', 'b6c07c98-2b2e-353b-ad97-fc6499247503', 'success', '0101513b75b746b2b88ae54674b250dc', 0, 1, 'delivered', '{\"express_company\":\"\\u4e1c\\u65b9\\u5cfb\\u666f\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"70326519-fd32-366e-a54d-b251a186d7ac\"}', '{\"refund_reason\":\"Placeat repudiandae sed est qui fugit reiciendis.\"}', '2020-01-18 17:35:13', '2020-01-18 17:35:40');
INSERT INTO `orders` VALUES (85, 'normal', '20200118173513074135', 95, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c45\\u8857\\u9053\\u7b2c527\\u53f7\",\"zip\":54800,\"contact_name\":\"\\u77bf\\u5fd7\\u65b0\",\"contact_phone\":\"15179197234\"}', 14194.32, 'Molestiae possimus qui officiis delectus qui.', '2020-01-02 07:12:04', 4, 'wechat', '8ba74183-9c82-3507-b045-4b72f2058360', 'success', '1fc93f49c03b41afab2f3650d2bf99b8', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Deleniti rerum molestias iste quia id.\"}', '2020-01-18 17:35:13', '2020-01-18 17:35:40');
INSERT INTO `orders` VALUES (86, 'normal', '20200118173513964828', 22, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c432\\u53f7\",\"zip\":494700,\"contact_name\":\"\\u695a\\u5175\",\"contact_phone\":\"13950969293\"}', 34679.20, 'Modi quasi suscipit temporibus saepe.', '2019-12-27 15:03:07', 15, 'alipay', 'fe1d802d-ee8b-367d-98e0-1e6e2ed25b12', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:13', '2020-01-18 17:35:40');
INSERT INTO `orders` VALUES (87, 'normal', '20200118173513183735', 44, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c4\\u8857\\u9053\\u7b2c989\\u53f7\",\"zip\":112000,\"contact_name\":\"\\u9093\\u79c0\\u4e91\",\"contact_phone\":\"15847352341\"}', 34094.00, 'Facilis quia enim blanditiis.', '2020-01-07 21:22:25', NULL, 'alipay', 'badbc8a1-c464-323a-bdfa-c9ab39ea4128', 'success', 'c1dd3236e1ed4c609e645395cd6128be', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Facilis repellendus et sit.\"}', '2020-01-18 17:35:13', '2020-01-18 17:35:40');
INSERT INTO `orders` VALUES (88, 'normal', '20200118173513367603', 9, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c27\\u8857\\u9053\\u7b2c480\\u53f7\",\"zip\":474900,\"contact_name\":\"\\u5b98\\u5175\",\"contact_phone\":\"17065969535\"}', 57038.00, 'Asperiores corporis placeat est aspernatur est.', '2020-01-16 01:55:47', NULL, 'wechat', 'f5c57de9-1416-3b4a-bdeb-edd7376dcbf1', 'success', 'aef49664b1df4bbeb8b7fe72f431efef', 0, 1, 'delivered', '{\"express_company\":\"\\u534e\\u6210\\u80b2\\u5353\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"98055078-8582-3894-ab63-756fc05dc976\"}', '{\"refund_reason\":\"Eos quas adipisci aliquid et est nihil ratione et.\"}', '2020-01-18 17:35:13', '2020-01-18 17:35:41');
INSERT INTO `orders` VALUES (89, 'normal', '20200118173514901803', 35, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c67\\u8857\\u9053\\u7b2c9\\u53f7\",\"zip\":694800,\"contact_name\":\"\\u97a0\\u6770\",\"contact_phone\":\"15128387059\"}', 8218.00, 'Fugit laboriosam iure ex sed ex quae similique.', '2020-01-14 04:09:01', NULL, 'wechat', 'd274c585-d29e-363b-855b-33bf04dcd086', 'success', '3d46bb59200242c586275836e7bf92dc', 0, 0, 'received', '{\"express_company\":\"\\u7cbe\\u82af\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"fdab872b-9d35-3bdd-b302-b816f86fe9f9\"}', '{\"refund_reason\":\"Repudiandae et officia quia nihil.\"}', '2020-01-18 17:35:14', '2020-01-18 17:35:41');
INSERT INTO `orders` VALUES (90, 'normal', '20200118173514314223', 85, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c82\\u8857\\u9053\\u7b2c244\\u53f7\",\"zip\":162800,\"contact_name\":\"\\u891a\\u79c0\\u4e91\",\"contact_phone\":\"18372484641\"}', 13262.00, 'Autem aperiam blanditiis voluptas accusamus necessitatibus.', '2019-12-24 12:57:56', NULL, 'alipay', '022d1bf2-ae43-3b04-bb94-72c2345f1c24', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u6bd5\\u535a\\u8bda\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"d0bc9592-a62e-3b2d-9178-fd434d29d062\"}', '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:41');
INSERT INTO `orders` VALUES (91, 'normal', '20200118173514018518', 20, '{\"address\":\"\\u5317\\u4eac\\u5e02\\u5e02\\u8f96\\u533a\\u4e1c\\u57ce\\u533a\\u7b2c19\\u8857\\u9053\\u7b2c198\\u53f7\",\"zip\":258800,\"contact_name\":\"\\u5b97\\u5c0f\\u7ea2\",\"contact_phone\":\"15736355101\"}', 57819.00, 'Quaerat aliquam laborum atque a ut et quidem.', '2019-12-24 00:36:20', NULL, 'alipay', '95c4aa3f-2978-3491-97c1-fe736b2dfdd7', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5feb\\u8baf\\u4f20\\u5a92\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"e341b8de-bb97-319f-a5f7-88a25c5dd9a3\"}', '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:41');
INSERT INTO `orders` VALUES (92, 'normal', '20200118173514118444', 78, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c63\\u8857\\u9053\\u7b2c455\\u53f7\",\"zip\":355800,\"contact_name\":\"\\u53f2\\u6770\",\"contact_phone\":\"17184085479\"}', 91663.00, 'Id eveniet sunt numquam officiis illo.', '2020-01-16 07:41:10', NULL, 'wechat', 'ea975376-0d57-39a7-bfd7-3cd7d5538ec1', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u5feb\\u8baf\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"30fcf5ef-266b-3a32-9157-c37d6455770e\"}', '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:42');
INSERT INTO `orders` VALUES (93, 'normal', '20200118173514739455', 100, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c69\\u8857\\u9053\\u7b2c295\\u53f7\",\"zip\":495600,\"contact_name\":\"\\u7a46\\u5efa\",\"contact_phone\":\"18228486013\"}', 40332.60, 'Culpa consectetur est voluptatem mollitia veniam saepe corrupti.', '2020-01-04 15:18:52', 8, 'alipay', 'efce01a4-ec3c-3a49-87d5-8a892af0b304', 'pending', NULL, 0, 0, 'received', '{\"express_company\":\"\\u4fe1\\u8bda\\u81f4\\u8fdc\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"bb8234ec-efbb-3be1-9734-fa00fcc8b8b3\"}', '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:42');
INSERT INTO `orders` VALUES (94, 'normal', '20200118173514868791', 92, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c83\\u8857\\u9053\\u7b2c226\\u53f7\",\"zip\":561300,\"contact_name\":\"\\u77f3\\u5fd7\\u5f3a\",\"contact_phone\":\"15653746446\"}', 15843.00, 'Qui quae quia eos sed.', '2019-12-27 03:38:21', NULL, 'wechat', '0f5226de-35c4-3d8c-96e0-c48077a97b92', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:42');
INSERT INTO `orders` VALUES (95, 'normal', '20200118173514692718', 8, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c41\\u8857\\u9053\\u7b2c916\\u53f7\",\"zip\":656300,\"contact_name\":\"\\u66f2\\u5cf0\",\"contact_phone\":\"18592361018\"}', 36465.66, 'Aliquam omnis iste repellat sunt.', '2019-12-23 21:20:29', 8, 'alipay', 'ff85fd83-332c-331e-8cfd-6d74d0432ce0', 'pending', NULL, 0, 1, 'pending', NULL, '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:43');
INSERT INTO `orders` VALUES (96, 'normal', '20200118173514557626', 7, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c62\\u8857\\u9053\\u7b2c192\\u53f7\",\"zip\":174800,\"contact_name\":\"\\u7a0b\\u5b81\",\"contact_phone\":\"13194780282\"}', 47085.00, 'Architecto corporis nostrum pariatur officia illum placeat.', '2020-01-02 23:35:25', NULL, 'wechat', '8266078c-dd11-3c7e-8b89-bcfe546dffa5', 'pending', NULL, 0, 1, 'received', '{\"express_company\":\"\\u53cc\\u654f\\u7535\\u5b50\\u4fe1\\u606f\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"dadba7aa-85de-38b0-8d58-9e408a280246\"}', '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:43');
INSERT INTO `orders` VALUES (97, 'normal', '20200118173514584996', 49, '{\"address\":\"\\u6cb3\\u5317\\u7701\\u77f3\\u5bb6\\u5e84\\u5e02\\u957f\\u5b89\\u533a\\u7b2c95\\u8857\\u9053\\u7b2c412\\u53f7\",\"zip\":542500,\"contact_name\":\"\\u7aa6\\u8273\",\"contact_phone\":\"13677580092\"}', 19212.00, 'Excepturi et aut quaerat illum.', '2020-01-01 22:33:37', NULL, 'alipay', '171c7a86-ce81-3f30-a6e1-5908ae18c91a', 'pending', NULL, 0, 0, 'pending', NULL, '[]', '2020-01-18 17:35:14', '2020-01-18 17:35:43');
INSERT INTO `orders` VALUES (98, 'normal', '20200118173514176727', 6, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c22\\u8857\\u9053\\u7b2c406\\u53f7\",\"zip\":532600,\"contact_name\":\"\\u5b89\\u6842\\u73cd\",\"contact_phone\":\"18108913279\"}', 31177.00, 'Facere odit eligendi eaque neque.', '2020-01-17 03:06:19', NULL, 'wechat', '029469bb-6faa-3d98-b986-d9bdc7b81d3c', 'success', '217b12ec5a7c4295aa0614d4c03f4c25', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Eum recusandae est in enim similique.\"}', '2020-01-18 17:35:14', '2020-01-18 17:35:44');
INSERT INTO `orders` VALUES (99, 'normal', '20200118173514783304', 38, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c69\\u8857\\u9053\\u7b2c486\\u53f7\",\"zip\":746800,\"contact_name\":\"\\u4ef2\\u9e70\",\"contact_phone\":\"13066843664\"}', 41664.00, 'Est ipsa qui provident dolorem quia.', '2019-12-30 11:07:13', 15, 'alipay', 'a982ffba-d1a1-3ce0-8907-46aa12f51c26', 'success', 'edf5f8e2043d4235a05dafc4c9d13b75', 0, 1, 'pending', NULL, '{\"refund_reason\":\"Expedita magni quam sit veniam doloremque illo quos labore.\"}', '2020-01-18 17:35:14', '2020-01-18 17:35:44');
INSERT INTO `orders` VALUES (100, 'normal', '20200118173515451950', 21, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u82cf\\u5dde\\u5e02\\u76f8\\u57ce\\u533a\\u7b2c68\\u8857\\u9053\\u7b2c346\\u53f7\",\"zip\":845900,\"contact_name\":\"\\u59da\\u6797\",\"contact_phone\":\"13292317591\"}', 65883.00, 'Perspiciatis tenetur sunt quos id.', '2020-01-11 05:33:04', NULL, 'wechat', 'ed7ac847-568c-302b-867e-96bd0225dfc6', 'success', 'f4af3d3d843c44f2870eabb019bd26a0', 0, 1, 'received', '{\"express_company\":\"\\u521b\\u8054\\u4e16\\u7eaa\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\",\"express_no\":\"96b98655-0208-3f37-80eb-cb284502d0c1\"}', '{\"refund_reason\":\"Quaerat sit voluptatibus totam minus provident.\"}', '2020-01-18 17:35:15', '2020-01-18 17:35:45');
INSERT INTO `orders` VALUES (101, 'normal', '20200123224424507150', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2020-01-23 22:44:24', '2020-01-23 22:44:24');
INSERT INTO `orders` VALUES (102, 'normal', '20200123225001685247', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 36000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2020-01-23 22:50:01', '2020-01-23 22:50:01');
INSERT INTO `orders` VALUES (103, 'normal', '20200123225017376983', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2020-01-23 22:50:17', '2020-01-23 22:50:17');
INSERT INTO `orders` VALUES (104, 'normal', '20200123231659411303', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 2141.00, '1', NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:16:59', '2020-01-23 23:17:29');
INSERT INTO `orders` VALUES (105, 'normal', '20200123231710276104', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 2141.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:17:10', '2020-01-23 23:17:41');
INSERT INTO `orders` VALUES (106, 'normal', '20200123231842640230', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 3419.00, NULL, NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:18:42', '2020-01-23 23:19:12');
INSERT INTO `orders` VALUES (107, 'normal', '20200123231851265694', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:18:51', '2020-01-23 23:19:24');
INSERT INTO `orders` VALUES (108, 'normal', '20200123231914289919', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 36000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:19:14', '2020-01-23 23:19:45');
INSERT INTO `orders` VALUES (109, 'normal', '20200123232254449456', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-23 23:22:54', '2020-01-23 23:23:25');
INSERT INTO `orders` VALUES (110, 'crowdfunding', '20200124061546547581', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', NULL, NULL, NULL, NULL, 'pending', NULL, 0, 0, 'pending', NULL, NULL, '2020-01-24 06:15:46', '2020-01-24 06:15:46');
INSERT INTO `orders` VALUES (111, 'crowdfunding', '20200124061633844574', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 18000.00, '', '2020-01-24 06:17:30', NULL, 'alipay', '2020012422001491441000043119', 'success', '272213150317421d8302602199626a79', 1, 0, 'pending', NULL, NULL, '2020-01-24 06:16:33', '2020-01-24 07:57:34');
INSERT INTO `orders` VALUES (112, 'crowdfunding', '20200124063444589745', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 9000.00, '', '2020-01-24 06:35:34', NULL, 'alipay', '2020012422001491441000046239', 'success', 'ea25c874dcd94a0eb3717c7808630291', 1, 0, 'pending', NULL, NULL, '2020-01-24 06:34:44', '2020-01-24 07:57:36');
INSERT INTO `orders` VALUES (113, 'crowdfunding', '20200124064240624146', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 9000.00, '', '2020-01-24 06:43:16', NULL, 'alipay', '2020012422001491441000046240', 'success', 'b1ec745cad5c43a991cfadc1298bcaf6', 1, 0, 'pending', NULL, NULL, '2020-01-24 06:42:40', '2020-01-24 07:57:37');
INSERT INTO `orders` VALUES (114, 'crowdfunding', '20200124080426069238', 1, '{\"address\":\"\\u6c5f\\u82cf\\u7701\\u5357\\u4eac\\u5e02\\u6d66\\u53e3\\u533a\\u7b2c99\\u8857\\u9053\\u7b2c19\\u53f7\",\"zip\":312400,\"contact_name\":\"\\u5b87\\u5175\",\"contact_phone\":\"14573445160\"}', 50.00, '', '2020-01-24 08:05:03', NULL, 'alipay', '2020012422001491441000044956', 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-24 08:04:26', '2020-01-24 08:05:03');
INSERT INTO `orders` VALUES (115, 'crowdfunding', '20200124080821642640', 4, '{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c6\\u8857\\u9053\\u7b2c212\\u53f7\",\"zip\":578200,\"contact_name\":\"\\u8c37\\u65b0\\u534e\",\"contact_phone\":\"17072765705\"}', 50.00, '', '2020-01-24 08:08:56', NULL, 'alipay', '2020012422001491441000048089', 'pending', NULL, 1, 0, 'pending', NULL, NULL, '2020-01-24 08:08:21', '2020-01-24 08:08:56');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for product_skus
-- ----------------------------
DROP TABLE IF EXISTS `product_skus`;
CREATE TABLE `product_skus`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `product_skus_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `product_skus_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 363 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_skus
-- ----------------------------
INSERT INTO `product_skus` VALUES (1, 'aut', 'Qui praesentium quae dolorum ipsa.', 5936.00, 13028, 1, '2020-01-18 17:34:46', '2020-01-18 17:34:46');
INSERT INTO `product_skus` VALUES (2, 'illo', 'Velit explicabo dolore non sed tempore.', 950.00, 71128, 1, '2020-01-18 17:34:46', '2020-01-18 17:34:46');
INSERT INTO `product_skus` VALUES (3, 'neque', 'Iste accusantium reiciendis ipsa eos quis sed.', 8965.00, 32184, 1, '2020-01-18 17:34:46', '2020-01-18 17:34:46');
INSERT INTO `product_skus` VALUES (4, 'rerum', 'Aspernatur cupiditate quod sunt inventore non consectetur.', 6496.00, 74187, 2, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (5, 'saepe', 'Dolores dolores sit nulla.', 2567.00, 20583, 2, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (6, 'deleniti', 'Id porro nobis quaerat rerum reiciendis.', 5025.00, 82901, 2, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (7, 'dolores', 'Illo sapiente eos quasi et laboriosam.', 3409.00, 4994, 3, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (8, 'sapiente', 'Commodi ab illum in velit quidem nesciunt.', 9525.00, 512, 3, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (9, 'quibusdam', 'Eum commodi sit voluptatibus aliquam sequi qui aspernatur.', 557.00, 90850, 3, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (10, 'deleniti', 'Distinctio quidem dicta minima.', 7935.00, 57407, 4, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (11, 'vero', 'Nisi voluptatem harum dolores a et.', 3078.00, 3144, 4, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (12, 'et', 'Cupiditate enim rerum earum architecto atque perspiciatis.', 166.00, 73933, 4, '2020-01-18 17:34:47', '2020-01-18 17:34:47');
INSERT INTO `product_skus` VALUES (13, 'in', 'Dolorem voluptas molestias quaerat laboriosam consequatur sunt.', 3872.00, 70293, 5, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (14, 'non', 'Laboriosam vel aliquam repellat.', 2879.00, 18089, 5, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (15, 'eligendi', 'Ab sequi eligendi ad veritatis.', 4658.00, 73207, 5, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (16, 'exercitationem', 'Doloremque architecto unde rerum sint omnis impedit.', 994.00, 7717, 6, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (17, 'autem', 'Tempora temporibus qui rem blanditiis provident dolorum laboriosam.', 9088.00, 18989, 6, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (18, 'quam', 'Officia delectus fugit reprehenderit ex accusantium est.', 2498.00, 97634, 6, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (19, 'hic', 'Voluptas minus est et tenetur blanditiis odit mollitia.', 6713.00, 64373, 7, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (20, 'est', 'Doloribus provident ut voluptas odio qui.', 5433.00, 84351, 7, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (21, 'et', 'Placeat quia velit harum quasi reprehenderit occaecati aperiam.', 5499.00, 80477, 7, '2020-01-18 17:34:48', '2020-01-18 17:34:48');
INSERT INTO `product_skus` VALUES (22, 'neque', 'Rerum nihil nobis quia quis doloribus quia ea.', 1386.00, 99355, 8, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (23, 'quo', 'Accusantium enim deserunt distinctio qui deleniti earum enim autem.', 9832.00, 65671, 8, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (24, 'nisi', 'Blanditiis rerum id magnam impedit non.', 2212.00, 14301, 8, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (25, 'repudiandae', 'Laborum laudantium maiores aliquam.', 4600.00, 88007, 9, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (26, 'consequuntur', 'Eum neque exercitationem qui dolores.', 5374.00, 74366, 9, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (27, 'in', 'Et et ut cum.', 3903.00, 26208, 9, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (28, 'rerum', 'Enim aspernatur maiores recusandae alias sunt eos et.', 1779.00, 3374, 10, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (29, 'cupiditate', 'Qui aliquid deleniti explicabo qui id occaecati.', 4043.00, 59394, 10, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (30, 'unde', 'Ea rerum consequuntur maiores dolores minima non nihil accusamus.', 3804.00, 9304, 10, '2020-01-18 17:34:49', '2020-01-18 17:34:49');
INSERT INTO `product_skus` VALUES (31, 'magni', 'Enim quaerat maiores eaque alias nobis natus.', 2494.00, 11795, 11, '2020-01-18 17:34:50', '2020-01-18 17:34:50');
INSERT INTO `product_skus` VALUES (32, 'optio', 'Et perspiciatis placeat tempore id maiores commodi dolorum aliquam.', 1873.00, 31133, 11, '2020-01-18 17:34:50', '2020-01-18 17:34:50');
INSERT INTO `product_skus` VALUES (33, 'magnam', 'Vel est culpa dolores ut perspiciatis totam iure.', 5731.00, 9467, 11, '2020-01-18 17:34:50', '2020-01-18 17:34:50');
INSERT INTO `product_skus` VALUES (34, 'eaque', 'Recusandae suscipit soluta dolores.', 5459.00, 62526, 12, '2020-01-18 17:34:50', '2020-01-18 17:34:50');
INSERT INTO `product_skus` VALUES (35, 'ipsam', 'Inventore quo eum eaque aut.', 9255.00, 45211, 12, '2020-01-18 17:34:50', '2020-01-18 17:34:50');
INSERT INTO `product_skus` VALUES (36, 'aut', 'Dolorum sunt impedit hic porro.', 9092.00, 11168, 12, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (37, 'suscipit', 'Facilis nihil vero id ipsa deserunt et.', 6010.00, 42684, 13, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (38, 'incidunt', 'Voluptas quia nihil eius sequi inventore.', 2516.00, 26414, 13, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (39, 'quaerat', 'Ut et consectetur non laborum eos.', 9129.00, 83125, 13, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (40, 'molestiae', 'Quibusdam quidem voluptas ullam autem.', 659.00, 10072, 14, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (41, 'earum', 'Commodi odio eos mollitia cum possimus ea voluptas.', 3728.00, 49517, 14, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (42, 'et', 'Quis voluptas culpa est numquam debitis aliquid.', 1927.00, 58736, 14, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (43, 'magni', 'Voluptatem natus voluptatum voluptate tempora libero dolore porro.', 3549.00, 18548, 15, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (44, 'quae', 'Quia odio iste labore.', 7412.00, 97588, 15, '2020-01-18 17:34:51', '2020-01-18 17:34:51');
INSERT INTO `product_skus` VALUES (45, 'omnis', 'Dignissimos placeat voluptas autem voluptatem corrupti laudantium.', 7116.00, 62961, 15, '2020-01-18 17:34:52', '2020-01-18 17:34:52');
INSERT INTO `product_skus` VALUES (46, 'quaerat', 'Voluptates culpa et et impedit dolor aut sed.', 9317.00, 71028, 16, '2020-01-18 17:34:52', '2020-01-18 17:34:52');
INSERT INTO `product_skus` VALUES (47, 'laboriosam', 'Minus nemo quo deserunt dicta error beatae ipsam.', 1617.00, 68586, 16, '2020-01-18 17:34:52', '2020-01-18 17:34:52');
INSERT INTO `product_skus` VALUES (48, 'possimus', 'Sit tempore unde odit.', 3059.00, 90457, 16, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (49, 'alias', 'Illum eum quam quidem totam.', 9661.00, 24261, 17, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (50, 'laborum', 'Cupiditate voluptatem eos natus dolorem eum dolores repellendus voluptatem.', 4541.00, 39753, 17, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (51, 'laboriosam', 'Magni est consequuntur autem tenetur.', 8508.00, 66172, 17, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (52, 'praesentium', 'Dolores asperiores dolor necessitatibus omnis possimus.', 9267.00, 47131, 18, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (53, 'consequatur', 'Quasi rerum facilis voluptate voluptatum aliquam.', 4520.00, 28922, 18, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (54, 'corporis', 'Illo fugit minus aut explicabo.', 6097.00, 27575, 18, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (55, 'cumque', 'Explicabo similique vel voluptatibus in voluptatem.', 6871.00, 90615, 19, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (56, 'et', 'Maxime non qui architecto error.', 5503.00, 55571, 19, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (57, 'quae', 'Rerum voluptatem aut dignissimos est nihil.', 9307.00, 9167, 19, '2020-01-18 17:34:53', '2020-01-18 17:34:53');
INSERT INTO `product_skus` VALUES (58, 'accusamus', 'In assumenda qui ad.', 4388.00, 84302, 20, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (59, 'occaecati', 'Fugit nihil maxime quas.', 6278.00, 87285, 20, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (60, 'culpa', 'Sit dolores id odit assumenda enim voluptas.', 1802.00, 38700, 20, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (61, 'quia', 'Repellat vero ut in itaque soluta officia amet.', 9417.00, 88120, 21, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (62, 'qui', 'Explicabo velit laboriosam qui mollitia nihil qui repellat.', 6631.00, 28069, 21, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (63, 'earum', 'Voluptatem incidunt dolores fugiat quo.', 9411.00, 99369, 21, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (64, 'dolore', 'Adipisci rerum aliquam aut facere voluptas eligendi enim.', 3919.00, 82672, 22, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (65, 'ratione', 'Ducimus sint incidunt voluptatem est corporis.', 863.00, 44402, 22, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (66, 'temporibus', 'Sapiente inventore ipsum quo totam ratione.', 4408.00, 28490, 22, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (67, 'praesentium', 'Quia et id ut nulla et eligendi ducimus.', 9361.00, 25021, 23, '2020-01-18 17:34:54', '2020-01-18 17:34:54');
INSERT INTO `product_skus` VALUES (68, 'quidem', 'Omnis omnis ea quisquam aut itaque non magni.', 6160.00, 34413, 23, '2020-01-18 17:34:55', '2020-01-18 17:34:55');
INSERT INTO `product_skus` VALUES (69, 'aspernatur', 'Assumenda sed ratione sit.', 5970.00, 32009, 23, '2020-01-18 17:34:55', '2020-01-18 17:34:55');
INSERT INTO `product_skus` VALUES (70, 'odit', 'Itaque sed ducimus porro consequatur.', 3707.00, 16889, 24, '2020-01-18 17:34:55', '2020-01-18 17:34:55');
INSERT INTO `product_skus` VALUES (71, 'tempore', 'Ad libero cumque ex eligendi nesciunt autem.', 1055.00, 86468, 24, '2020-01-18 17:34:55', '2020-01-18 17:34:55');
INSERT INTO `product_skus` VALUES (72, 'sit', 'Sit dolores aliquid porro nulla.', 9631.00, 39712, 24, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (73, 'enim', 'Aut ipsum animi quas.', 3044.00, 44852, 25, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (74, 'porro', 'Sapiente placeat et ut fugit.', 1863.00, 18729, 25, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (75, 'vero', 'At aut mollitia voluptatibus.', 7287.00, 36209, 25, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (76, 'harum', 'Id distinctio provident ipsa voluptas.', 8053.00, 81970, 26, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (77, 'commodi', 'Nostrum neque architecto veritatis sed vero et.', 891.00, 16455, 26, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (78, 'magnam', 'Similique velit quia non praesentium nesciunt provident.', 1001.00, 73660, 26, '2020-01-18 17:34:56', '2020-01-18 17:34:56');
INSERT INTO `product_skus` VALUES (79, 'est', 'Labore commodi sunt qui ducimus.', 9664.00, 13064, 27, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (80, 'quis', 'Impedit vero officiis quod dolor.', 8272.00, 91515, 27, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (81, 'fuga', 'A molestiae deleniti dolorum corrupti pariatur.', 7080.00, 32216, 27, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (82, 'velit', 'Ad enim cumque facere architecto voluptatem.', 6384.00, 75730, 28, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (83, 'accusamus', 'Non voluptatem repellendus aperiam.', 1412.00, 3957, 28, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (84, 'consectetur', 'Sint voluptas assumenda accusantium reprehenderit alias.', 6491.00, 24704, 28, '2020-01-18 17:34:57', '2020-01-18 17:34:57');
INSERT INTO `product_skus` VALUES (85, 'ut', 'Fugit earum velit sed eveniet voluptatem.', 1482.00, 81606, 29, '2020-01-18 17:34:58', '2020-01-18 17:34:58');
INSERT INTO `product_skus` VALUES (86, 'repudiandae', 'Quod nam magni veritatis in odit.', 3419.00, 13736, 29, '2020-01-18 17:34:58', '2020-01-23 23:19:12');
INSERT INTO `product_skus` VALUES (87, 'sed', 'Tempora quasi numquam odit rerum expedita et.', 9993.00, 11121, 29, '2020-01-18 17:34:58', '2020-01-18 17:34:58');
INSERT INTO `product_skus` VALUES (88, 'qui', 'Voluptatibus sequi officiis doloribus.', 3394.00, 75924, 30, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `product_skus` VALUES (89, 'sunt', 'Corporis id sed impedit.', 4088.00, 29751, 30, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `product_skus` VALUES (90, 'ut', 'Laborum molestiae qui nobis corporis inventore omnis odit quisquam.', 5220.00, 84664, 30, '2020-01-18 17:34:59', '2020-01-18 17:34:59');
INSERT INTO `product_skus` VALUES (91, '概念机一台', '众筹优惠价9000', 9000.00, 89167, 31, '2020-01-18 21:49:23', '2020-01-24 06:43:12');
INSERT INTO `product_skus` VALUES (97, 'dolore', 'Autem ipsam id consequuntur incidunt.', 7529.00, 2417, 33, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (98, 'rerum', 'Natus ipsam animi laborum molestiae occaecati repudiandae et nam.', 6025.00, 33003, 33, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (99, 'voluptates', 'Ut aspernatur aut accusantium qui voluptatem.', 83.00, 63098, 33, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (100, 'ipsa', 'Pariatur totam sequi earum consequatur architecto quasi culpa.', 142.00, 55117, 34, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (101, 'dolores', 'Veritatis laudantium illum deserunt rerum nisi vel.', 7292.00, 96728, 34, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (102, 'fugit', 'Et architecto minima illo fugit earum.', 950.00, 77174, 34, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (103, 'adipisci', 'Et deleniti magnam omnis sequi vitae.', 1064.00, 91206, 35, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (104, 'quia', 'Suscipit impedit pariatur et expedita aut.', 5677.00, 65054, 35, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (105, 'est', 'Iusto cupiditate ipsa aliquid voluptatibus quia.', 9138.00, 19044, 35, '2020-01-18 21:49:24', '2020-01-18 21:49:24');
INSERT INTO `product_skus` VALUES (106, 'illo', 'Illo ullam eum aut.', 4959.00, 8904, 36, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (107, 'soluta', 'Vero laboriosam ut est sit.', 3602.00, 98720, 36, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (108, 'enim', 'Repellat corrupti qui alias sint.', 6872.00, 35655, 36, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (109, 'molestias', 'Doloribus porro ratione atque earum laborum.', 8084.00, 99143, 37, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (110, 'reprehenderit', 'Iusto rerum rerum qui nostrum.', 6523.00, 54764, 37, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (111, 'illo', 'Magnam odio neque atque incidunt.', 6995.00, 36226, 37, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (112, 'molestiae', 'Corporis neque hic ut aut inventore ad aut.', 290.00, 48221, 38, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (113, 'numquam', 'Neque animi deleniti repellat culpa voluptatem ducimus qui.', 4060.00, 84468, 38, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (114, 'praesentium', 'Quos unde blanditiis et earum aut.', 7171.00, 45059, 38, '2020-01-18 21:49:25', '2020-01-18 21:49:25');
INSERT INTO `product_skus` VALUES (115, 'qui', 'Quia tenetur reiciendis sed.', 6068.00, 10994, 39, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (116, 'laborum', 'Veniam officia et sunt laborum.', 6994.00, 24966, 39, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (117, 'quo', 'Maxime aut est earum at.', 7625.00, 57822, 39, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (118, 'unde', 'Aut ipsa explicabo sunt quia similique ipsum aspernatur.', 4677.00, 50547, 40, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (119, 'qui', 'Et qui eum dolore veniam consequatur quod placeat.', 7956.00, 83350, 40, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (120, 'et', 'Tenetur harum at enim excepturi.', 9335.00, 94601, 40, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (121, 'accusamus', 'Et aut debitis est et quis.', 303.00, 5915, 41, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (122, 'et', 'Aut harum sapiente est eum et et.', 2985.00, 63740, 41, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (123, 'dignissimos', 'Suscipit magni ut similique.', 1916.00, 39876, 41, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (124, 'ut', 'Quia eum ex aut et aut.', 8243.00, 73277, 42, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (125, 'est', 'Necessitatibus voluptas sit suscipit qui eum esse.', 3952.00, 77927, 42, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (126, 'id', 'Animi enim dolorum fugiat nihil vero consequatur.', 690.00, 3527, 42, '2020-01-18 21:49:26', '2020-01-18 21:49:26');
INSERT INTO `product_skus` VALUES (127, 'doloribus', 'Eum error non omnis quaerat eligendi vitae.', 5310.00, 28921, 43, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (128, 'ipsam', 'Fuga tempore sed mollitia in qui doloremque esse.', 852.00, 31291, 43, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (129, 'nam', 'Ea enim qui sunt aliquam et earum quos deleniti.', 2284.00, 72220, 43, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (130, 'molestiae', 'Delectus animi mollitia vel quia.', 7428.00, 55118, 44, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (131, 'recusandae', 'Ipsam sit dignissimos vero est et magnam excepturi.', 3564.00, 62301, 44, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (132, 'quisquam', 'Minima id fugit fuga suscipit.', 5409.00, 93090, 44, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (133, 'alias', 'Ipsum et est doloremque molestias et aliquam modi et.', 9918.00, 36250, 45, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (134, 'culpa', 'Numquam nobis laborum error suscipit.', 8931.00, 24122, 45, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (135, 'ullam', 'Est voluptatem quaerat esse nam magnam fugiat quam.', 5247.00, 77576, 45, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (136, 'aut', 'Ut itaque et tempore quo.', 161.00, 71260, 46, '2020-01-18 21:49:27', '2020-01-18 21:49:27');
INSERT INTO `product_skus` VALUES (137, 'magnam', 'Qui commodi vel iusto laborum.', 652.00, 91599, 46, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (138, 'sit', 'Vel illo et quis qui.', 3104.00, 38926, 46, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (139, 'expedita', 'Sunt deserunt atque a.', 160.00, 1437, 47, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (140, 'reiciendis', 'Nulla alias labore possimus natus recusandae voluptas.', 752.00, 85888, 47, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (141, 'velit', 'Ex odit aut qui cupiditate.', 4844.00, 28098, 47, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (142, 'esse', 'Et mollitia hic aut sed cupiditate dolor aut.', 8464.00, 67253, 48, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (143, 'assumenda', 'Quia ut enim facere asperiores.', 5345.00, 99878, 48, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (144, 'eius', 'Sit esse quia architecto quod qui omnis.', 9975.00, 57342, 48, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (145, 'ipsam', 'Nihil est nemo eum est.', 7986.00, 39820, 49, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (146, 'asperiores', 'Eum reiciendis aperiam earum magni ut odit nihil.', 9131.00, 79893, 49, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (147, 'qui', 'Eius deserunt dolore laudantium tempore voluptates et.', 8370.00, 22061, 49, '2020-01-18 21:49:28', '2020-01-18 21:49:28');
INSERT INTO `product_skus` VALUES (148, 'voluptatem', 'Est qui non odit magnam repellendus.', 7297.00, 17957, 50, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (149, 'molestiae', 'Vero unde eius alias tenetur.', 4402.00, 27823, 50, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (150, 'sed', 'Vitae quam minima necessitatibus nihil ad fugit fuga.', 9047.00, 97127, 50, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (151, 'eos', 'Perspiciatis non cupiditate quis sed minima molestiae.', 65.00, 42004, 51, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (152, 'consequuntur', 'Est praesentium culpa ipsam qui.', 4132.00, 9544, 51, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (153, 'omnis', 'Corporis enim iste qui molestiae fuga quae.', 5765.00, 32476, 51, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (154, 'qui', 'Omnis at eius eos repellat qui possimus.', 4316.00, 64724, 52, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (155, 'pariatur', 'Et sit rem sed perferendis.', 5250.00, 82149, 52, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (156, 'nam', 'Sint et sed perferendis quidem consequatur omnis.', 4065.00, 55707, 52, '2020-01-18 21:49:29', '2020-01-18 21:49:29');
INSERT INTO `product_skus` VALUES (157, 'cupiditate', 'Maxime incidunt voluptatum debitis non ipsum ut.', 888.00, 39852, 53, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (158, 'quaerat', 'Repellendus doloribus consequuntur qui fugiat.', 7840.00, 76633, 53, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (159, 'necessitatibus', 'Sit aut provident modi aspernatur.', 9089.00, 10271, 53, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (160, 'sequi', 'Quas possimus odit ad illum quos.', 2280.00, 85173, 54, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (161, 'fuga', 'Eius cum et et tenetur quia libero.', 4862.00, 46267, 54, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (162, 'in', 'Laborum et rerum omnis tempora.', 5346.00, 42316, 54, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (163, 'dolorem', 'Voluptatibus quia dignissimos qui maxime.', 4253.00, 43821, 55, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (164, 'itaque', 'Quidem quo et animi unde.', 1709.00, 44995, 55, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (165, 'quas', 'Quo accusamus deserunt aut qui.', 9475.00, 33092, 55, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (166, 'est', 'Sunt et quidem quibusdam laborum deserunt minus.', 700.00, 873, 56, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (167, 'dolor', 'Nulla ut repellendus omnis odit.', 9436.00, 78853, 56, '2020-01-18 21:49:30', '2020-01-18 21:49:30');
INSERT INTO `product_skus` VALUES (168, 'accusantium', 'Dolor officia maiores voluptatibus recusandae numquam et ea.', 4269.00, 17663, 56, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (169, 'cupiditate', 'Esse mollitia iure in mollitia.', 4799.00, 53907, 57, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (170, 'consequatur', 'Est qui harum numquam rerum fugit.', 1338.00, 81739, 57, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (171, 'repellendus', 'Ut earum rem repudiandae quasi omnis inventore rerum.', 7789.00, 29072, 57, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (172, 'ut', 'Molestiae itaque quia blanditiis minima excepturi.', 7775.00, 37547, 58, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (173, 'aut', 'Minus fugiat commodi aspernatur beatae vitae.', 4507.00, 58579, 58, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (174, 'sint', 'Autem quas aut cum hic unde et illo ducimus.', 1726.00, 32617, 58, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (175, 'vitae', 'Non velit illo dolores dolor.', 9700.00, 98416, 59, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (176, 'adipisci', 'Quia sequi tenetur est officia exercitationem.', 9740.00, 37768, 59, '2020-01-18 21:49:31', '2020-01-18 21:49:31');
INSERT INTO `product_skus` VALUES (177, 'facere', 'Omnis omnis eum dolores voluptatem deleniti ut.', 7480.00, 65302, 59, '2020-01-18 21:49:32', '2020-01-18 21:49:32');
INSERT INTO `product_skus` VALUES (178, 'iste', 'Ut rerum iusto ut distinctio.', 4289.00, 4883, 60, '2020-01-18 21:49:32', '2020-01-18 21:49:32');
INSERT INTO `product_skus` VALUES (179, 'aspernatur', 'Autem aliquam totam sit deleniti placeat ullam.', 7806.00, 98158, 60, '2020-01-18 21:49:32', '2020-01-18 21:49:32');
INSERT INTO `product_skus` VALUES (180, 'ipsam', 'Saepe molestias quis sunt quas similique.', 2323.00, 33398, 60, '2020-01-18 21:49:32', '2020-01-18 21:49:32');
INSERT INTO `product_skus` VALUES (181, 'magnam', 'Dolor dolores suscipit voluptatem quia dolore sint.', 6260.00, 75447, 61, '2020-01-18 21:50:28', '2020-01-18 21:50:28');
INSERT INTO `product_skus` VALUES (182, 'ut', 'Ad illum voluptatum sit aut optio.', 5052.00, 52010, 61, '2020-01-18 21:50:28', '2020-01-18 21:50:28');
INSERT INTO `product_skus` VALUES (183, 'animi', 'Non quos consequatur ratione illum tenetur.', 996.00, 12431, 61, '2020-01-18 21:50:28', '2020-01-18 21:50:28');
INSERT INTO `product_skus` VALUES (184, 'ducimus', 'Quaerat ratione nesciunt id eius tenetur maiores et.', 8579.00, 45087, 62, '2020-01-18 21:50:28', '2020-01-18 21:50:28');
INSERT INTO `product_skus` VALUES (185, 'nisi', 'Cumque amet sunt recusandae neque dolorem in qui sit.', 1918.00, 78859, 62, '2020-01-18 21:50:28', '2020-01-18 21:50:28');
INSERT INTO `product_skus` VALUES (186, 'ut', 'Laboriosam itaque est illo fuga eaque.', 7226.00, 73491, 62, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (187, 'impedit', 'Quisquam earum iure qui quas.', 9389.00, 15976, 63, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (188, 'iusto', 'Sit eos quasi et.', 7790.00, 32573, 63, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (189, 'expedita', 'Voluptatem quod non ut est.', 3672.00, 86411, 63, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (190, 'eaque', 'Explicabo eum sit ad libero.', 6282.00, 54234, 64, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (191, 'harum', 'Aut minus a architecto enim tempora consequatur laudantium.', 6314.00, 80517, 64, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (192, 'quaerat', 'Et id at est dolorem consectetur.', 7945.00, 48796, 64, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (193, 'necessitatibus', 'Et praesentium impedit tempore aut rerum inventore.', 2339.00, 24024, 65, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (194, 'temporibus', 'Quidem omnis voluptas doloribus dolores quisquam aut.', 6319.00, 46428, 65, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (195, 'eaque', 'Perferendis et ad aspernatur dolorem.', 8893.00, 48194, 65, '2020-01-18 21:50:29', '2020-01-18 21:50:29');
INSERT INTO `product_skus` VALUES (196, 'error', 'Tempora ipsam consequatur dicta ea.', 7399.00, 83955, 66, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (197, 'nihil', 'Consectetur omnis soluta quaerat totam.', 9110.00, 10888, 66, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (198, 'consequatur', 'Voluptatem vel iure reprehenderit.', 1593.00, 42306, 66, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (199, 'dolorem', 'Omnis iusto reiciendis consequatur iusto sit ipsa dolores.', 5577.00, 63829, 67, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (200, 'magnam', 'Aut consequuntur voluptatem molestiae repellat sed voluptatem similique.', 2177.00, 39736, 67, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (201, 'itaque', 'Id beatae omnis vitae in debitis.', 1041.00, 69872, 67, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (202, 'error', 'Et aliquam quos asperiores aliquid quia sed vitae nam.', 9540.00, 18614, 68, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (203, 'et', 'Ea velit ea ut aut.', 9882.00, 55208, 68, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (204, 'cumque', 'Reprehenderit recusandae inventore animi non aliquid at.', 5457.00, 58332, 68, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (205, 'quasi', 'Aut est aut libero et voluptatem quo.', 8108.00, 95940, 69, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (206, 'enim', 'Sint autem voluptatem saepe qui velit dolorem et.', 3983.00, 30479, 69, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (207, 'placeat', 'Id voluptatem commodi ut quidem.', 959.00, 4243, 69, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (208, 'odit', 'Eum explicabo et quisquam quibusdam vitae est ipsam consectetur.', 4095.00, 80960, 70, '2020-01-18 21:50:30', '2020-01-18 21:50:30');
INSERT INTO `product_skus` VALUES (209, 'facilis', 'Voluptatem esse nulla cum autem eum quam.', 241.00, 96061, 70, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (210, 'illum', 'Non veritatis et repellendus eum.', 420.00, 2345, 70, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (211, 'corporis', 'Molestiae reiciendis deserunt laudantium voluptatibus inventore.', 2576.00, 1210, 71, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (212, 'veniam', 'Hic consequuntur voluptas voluptatem quas dignissimos.', 4039.00, 53629, 71, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (213, 'facilis', 'Praesentium iste ab omnis sint optio.', 2880.00, 74217, 71, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (214, 'veniam', 'Libero exercitationem delectus minima et quisquam et et earum.', 7303.00, 27486, 72, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (215, 'consequatur', 'At dolore sint est dolor adipisci.', 4328.00, 4702, 72, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (216, 'officia', 'Minus amet ea ea aut.', 2921.00, 91469, 72, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (217, 'quam', 'Excepturi et molestiae nulla.', 8678.00, 8981, 73, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (218, 'recusandae', 'Quibusdam quo consequuntur natus ab voluptas quos aperiam.', 2803.00, 39217, 73, '2020-01-18 21:50:31', '2020-01-18 21:50:31');
INSERT INTO `product_skus` VALUES (219, 'animi', 'Id tenetur exercitationem dignissimos beatae libero excepturi.', 8023.00, 30075, 73, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (220, 'harum', 'Autem occaecati modi dolor quia eveniet quidem.', 4381.00, 41775, 74, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (221, 'amet', 'Sapiente tempore tempora sequi qui culpa nihil magni.', 3182.00, 78700, 74, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (222, 'non', 'Nostrum illo a nihil quos excepturi.', 9195.00, 66253, 74, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (223, 'autem', 'Necessitatibus iste laboriosam tempore ad voluptatem alias omnis.', 5696.00, 82197, 75, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (224, 'ipsum', 'Nihil aut voluptatum autem sit molestiae eos iusto consequatur.', 948.00, 25183, 75, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (225, 'eius', 'Et temporibus maxime dolores doloribus.', 1136.00, 60675, 75, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (226, 'tempore', 'Sed qui quas optio.', 6694.00, 72470, 76, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (227, 'vitae', 'Voluptatem et fugiat repellat reiciendis velit.', 7300.00, 29984, 76, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (228, 'vel', 'Et optio omnis illum quaerat.', 9727.00, 10526, 76, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (229, 'consectetur', 'Ut tempora aspernatur doloribus quis atque.', 4417.00, 63698, 77, '2020-01-18 21:50:32', '2020-01-18 21:50:32');
INSERT INTO `product_skus` VALUES (230, 'itaque', 'Quia animi aut quia quibusdam totam.', 1285.00, 91847, 77, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (231, 'nam', 'Beatae a assumenda rem ut quas nulla.', 7242.00, 45562, 77, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (232, 'nam', 'Non odio repudiandae natus aut.', 1839.00, 42110, 78, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (233, 'dolores', 'Quisquam animi vel ex vel.', 5779.00, 22826, 78, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (234, 'perspiciatis', 'Sequi rerum consequatur qui qui.', 9661.00, 99279, 78, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (235, 'quas', 'Aut animi nisi omnis earum explicabo.', 6548.00, 8507, 79, '2020-01-18 21:50:33', '2020-01-18 21:50:33');
INSERT INTO `product_skus` VALUES (236, 'unde', 'Corrupti omnis et dolor eius corrupti.', 2554.00, 7290, 79, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (237, 'et', 'Et quidem recusandae dolore ipsum est voluptatem.', 1228.00, 92205, 79, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (238, 'optio', 'Velit exercitationem vel consequuntur eius ad voluptatem.', 2948.00, 26881, 80, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (239, 'ut', 'Rerum harum vel facilis autem officia aut.', 4453.00, 81933, 80, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (240, 'vel', 'Qui rerum minima perferendis quaerat et et saepe.', 8996.00, 67223, 80, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (241, 'assumenda', 'Sunt odit sint ipsum totam odit.', 8559.00, 13165, 81, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (242, 'odio', 'Cumque quae alias et sint qui aut rem.', 6210.00, 97383, 81, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (243, 'dolores', 'Nesciunt quidem ut laboriosam fugit.', 4183.00, 64570, 81, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (244, 'magni', 'Dolores et reiciendis explicabo molestias similique id.', 573.00, 37245, 82, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (245, 'perspiciatis', 'Totam et impedit et qui asperiores molestiae porro.', 8599.00, 83151, 82, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (246, 'sit', 'Itaque ea non natus aliquam.', 1298.00, 10281, 82, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (247, 'fugit', 'Quis libero aut nisi numquam molestiae.', 1611.00, 55362, 83, '2020-01-18 21:50:34', '2020-01-18 21:50:34');
INSERT INTO `product_skus` VALUES (248, 'non', 'Delectus temporibus provident facere voluptatem.', 3049.00, 70520, 83, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (249, 'cumque', 'Cumque quibusdam reiciendis aut molestiae nihil vero occaecati.', 5931.00, 24621, 83, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (250, 'eius', 'Totam voluptatum qui officia voluptates dolore.', 7146.00, 31498, 84, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (251, 'vel', 'Sed consequatur explicabo architecto labore.', 317.00, 44837, 84, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (252, 'molestiae', 'Ducimus explicabo nulla rem libero provident natus.', 7377.00, 79759, 84, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (253, 'et', 'Temporibus tenetur et quasi excepturi doloribus eos.', 6802.00, 34571, 85, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (254, 'laborum', 'Iste inventore doloribus minus labore sit sunt.', 5870.00, 27551, 85, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (255, 'repellendus', 'Accusantium corporis repellendus eos velit.', 4725.00, 11291, 85, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (256, 'quaerat', 'Non quia odio nesciunt aut aperiam sed ab.', 1980.00, 53286, 86, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (257, 'et', 'Hic deleniti maiores in totam.', 1356.00, 44964, 86, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (258, 'commodi', 'Consectetur quam necessitatibus ad rerum fugit rerum.', 1205.00, 83477, 86, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (259, 'optio', 'Id distinctio aut dolorem illo dignissimos.', 1577.00, 50090, 87, '2020-01-18 21:50:35', '2020-01-18 21:50:35');
INSERT INTO `product_skus` VALUES (260, 'quis', 'Ipsa ut amet eum quas pariatur sit.', 5070.00, 57080, 87, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (261, 'esse', 'Molestias fugit ut est sed porro.', 5358.00, 74412, 87, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (262, 'rem', 'Quia qui nostrum laborum error.', 9187.00, 29226, 88, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (263, 'in', 'Placeat corrupti et ad id provident similique.', 1257.00, 39305, 88, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (264, 'nostrum', 'Et delectus nostrum accusamus atque enim totam.', 1031.00, 63402, 88, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (265, 'optio', 'Et commodi ut impedit rerum laudantium.', 9907.00, 32004, 89, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (266, 'maxime', 'Itaque explicabo aut culpa voluptatum quo aut voluptatem.', 9727.00, 925, 89, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (267, 'assumenda', 'Cumque aut iste voluptas laudantium possimus.', 4785.00, 90047, 89, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (268, 'tempore', 'Vero accusamus consequatur et modi.', 9952.00, 33536, 90, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (269, 'tenetur', 'Nesciunt sed quasi omnis dicta.', 9927.00, 91450, 90, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (270, 'rerum', 'Impedit doloribus quisquam eaque ut culpa sit voluptatem.', 9071.00, 74018, 90, '2020-01-18 21:50:36', '2020-01-18 21:50:36');
INSERT INTO `product_skus` VALUES (271, 'provident', 'Amet quibusdam rerum corporis quod quasi.', 8399.00, 68590, 1, '2020-01-18 21:54:37', '2020-01-18 21:54:37');
INSERT INTO `product_skus` VALUES (272, 'cumque', 'Cum ut in commodi deleniti quae.', 3086.00, 26952, 1, '2020-01-18 21:54:37', '2020-01-18 21:54:37');
INSERT INTO `product_skus` VALUES (273, 'pariatur', 'Voluptas non modi est reprehenderit.', 6429.00, 71839, 1, '2020-01-18 21:54:37', '2020-01-18 21:54:37');
INSERT INTO `product_skus` VALUES (274, 'molestiae', 'A omnis aut deserunt ut.', 5746.00, 68466, 2, '2020-01-18 21:54:37', '2020-01-18 21:54:37');
INSERT INTO `product_skus` VALUES (275, 'ut', 'Ipsum autem incidunt aliquam laborum.', 1017.00, 73392, 2, '2020-01-18 21:54:37', '2020-01-18 21:54:37');
INSERT INTO `product_skus` VALUES (276, 'delectus', 'Ea dignissimos explicabo rerum quam repellendus aspernatur quam.', 4886.00, 8866, 2, '2020-01-18 21:54:38', '2020-01-18 21:54:38');
INSERT INTO `product_skus` VALUES (277, 'ab', 'Consequuntur est non harum nobis tempora ea perferendis.', 4283.00, 77972, 3, '2020-01-18 21:54:38', '2020-01-18 21:54:38');
INSERT INTO `product_skus` VALUES (278, 'minima', 'Necessitatibus eos voluptate dolorum corporis culpa quam.', 4608.00, 45724, 3, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (279, 'animi', 'Velit cum voluptatem accusamus aut.', 5628.00, 13664, 3, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (280, 'ea', 'Ipsum incidunt alias dolorem vero error ratione porro quidem.', 2476.00, 34708, 4, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (281, 'est', 'Quas voluptas ratione molestiae earum hic rerum et sed.', 5492.00, 47402, 4, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (282, 'tempora', 'Quam iste ut reiciendis sed et.', 696.00, 4392, 4, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (283, 'recusandae', 'Animi tenetur vel possimus maxime ab eius.', 1661.00, 85530, 5, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (284, 'assumenda', 'Consectetur qui sequi laborum sed consequatur et deleniti.', 5691.00, 11222, 5, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (285, 'consequatur', 'Voluptate soluta officia rerum dolorum.', 9453.00, 91769, 5, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (286, 'fugiat', 'Incidunt asperiores ut delectus eum voluptatem hic.', 1669.00, 23436, 6, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (287, 'cumque', 'Alias minima pariatur cumque autem.', 3620.00, 79475, 6, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (288, 'nihil', 'Atque pariatur non accusamus eligendi.', 3675.00, 86200, 6, '2020-01-18 21:54:39', '2020-01-18 21:54:39');
INSERT INTO `product_skus` VALUES (289, 'dignissimos', 'Et omnis voluptatum molestias expedita porro modi rerum quia.', 7107.00, 21170, 7, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (290, 'vel', 'Et ex quia tempore ut provident facere aut.', 9552.00, 75823, 7, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (291, 'aut', 'Consequatur harum adipisci vel sed velit nemo.', 6388.00, 57045, 7, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (292, 'iusto', 'Quaerat reprehenderit tempora rerum a ut sed.', 9375.00, 82184, 8, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (293, 'fugit', 'Earum qui et reprehenderit.', 8933.00, 17003, 8, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (294, 'quasi', 'Odit explicabo omnis sint non ipsa dolorum.', 4707.00, 9539, 8, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (295, 'maxime', 'Porro fugiat illum perferendis officiis tenetur sint possimus et.', 7994.00, 68925, 9, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (296, 'eos', 'Explicabo ut maiores enim qui quas.', 1097.00, 87833, 9, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (297, 'ut', 'Aut ducimus eaque eligendi aperiam consequatur.', 9089.00, 47104, 9, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (298, 'quasi', 'Soluta vero maiores dolorum soluta perferendis et quisquam.', 3896.00, 49313, 10, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (299, 'distinctio', 'Soluta sequi doloremque iure esse ex.', 9100.00, 5823, 10, '2020-01-18 21:54:40', '2020-01-18 21:54:40');
INSERT INTO `product_skus` VALUES (300, 'ut', 'Accusamus aspernatur officiis quasi sed enim vero.', 886.00, 90737, 10, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (301, 'earum', 'Officia dignissimos numquam quibusdam non dignissimos et vel.', 8575.00, 28762, 11, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (302, 'omnis', 'Dolorem sit est nam et recusandae quasi.', 6784.00, 50225, 11, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (303, 'incidunt', 'Illo dolor doloribus consectetur neque delectus dolorem dolorem.', 4013.00, 15796, 11, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (304, 'nemo', 'Ducimus nemo est dolores.', 4825.00, 45190, 12, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (305, 'impedit', 'Voluptatibus tempora molestias sed voluptatem officia non quas.', 1053.00, 47700, 12, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (306, 'corporis', 'Ut ipsum tempora velit autem molestias neque.', 9031.00, 8262, 12, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (307, 'nemo', 'Explicabo consequatur sit adipisci non debitis et.', 6856.00, 69336, 13, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (308, 'quia', 'Et fugit autem odit pariatur sit aut officia.', 5735.00, 46898, 13, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (309, 'aliquam', 'Dignissimos repellat eligendi aliquam eveniet reiciendis architecto fuga.', 9593.00, 36870, 13, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (310, 'officiis', 'Consectetur mollitia est architecto ipsum.', 967.00, 31893, 14, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (311, 'beatae', 'Ad aut corrupti repellendus est commodi vero qui.', 5578.00, 87368, 14, '2020-01-18 21:54:41', '2020-01-18 21:54:41');
INSERT INTO `product_skus` VALUES (312, 'qui', 'Quas illum doloribus minima.', 5895.00, 73774, 14, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (313, 'vel', 'Repellendus possimus rerum vero unde.', 9631.00, 92479, 15, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (314, 'praesentium', 'Temporibus quos error et aliquam et.', 513.00, 45577, 15, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (315, 'odio', 'Et asperiores ad qui.', 1651.00, 91367, 15, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (316, 'aut', 'Molestias totam accusantium maxime consequatur.', 170.00, 71134, 16, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (317, 'qui', 'Voluptate est nihil enim voluptatum minus necessitatibus ea qui.', 5508.00, 89558, 16, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (318, 'facere', 'Voluptatem aut deserunt possimus ea.', 4050.00, 69322, 16, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (319, 'unde', 'Aperiam dignissimos eum quos earum.', 2718.00, 4655, 17, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (320, 'similique', 'Velit eaque accusantium ad explicabo possimus iusto quia.', 3721.00, 22029, 17, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (321, 'expedita', 'Omnis aliquid inventore debitis illo.', 2488.00, 77761, 17, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (322, 'maxime', 'Sequi non et molestiae praesentium.', 3764.00, 97875, 18, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (323, 'veritatis', 'Rerum sed perspiciatis beatae sunt amet neque dignissimos.', 7974.00, 44027, 18, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (324, 'deserunt', 'Et dolores et qui unde dolores eligendi et.', 7587.00, 45176, 18, '2020-01-18 21:54:42', '2020-01-18 21:54:42');
INSERT INTO `product_skus` VALUES (325, 'sed', 'Non laborum amet consectetur voluptates sed quo soluta.', 5296.00, 95353, 19, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (326, 'quod', 'Rerum placeat quod aliquid voluptatibus ipsam amet eos.', 9226.00, 92499, 19, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (327, 'est', 'Sapiente numquam architecto impedit facilis magnam.', 9176.00, 29332, 19, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (328, 'distinctio', 'Molestiae ut voluptas fuga qui aperiam.', 5183.00, 26394, 20, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (329, 'animi', 'Sed omnis qui architecto.', 4476.00, 6119, 20, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (330, 'quam', 'Delectus nihil nulla soluta animi laboriosam odio repudiandae.', 2414.00, 7707, 20, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (331, 'nesciunt', 'Doloribus aperiam cupiditate et non dolores consequatur neque soluta.', 1377.00, 38024, 21, '2020-01-18 21:54:43', '2020-01-18 21:54:43');
INSERT INTO `product_skus` VALUES (332, 'eos', 'Est beatae voluptatem praesentium aut.', 3800.00, 95737, 21, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (333, 'optio', 'Odit blanditiis at corrupti.', 1358.00, 95325, 21, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (334, 'voluptate', 'Quia voluptatem temporibus molestias molestiae aliquam quod.', 6146.00, 7340, 22, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (335, 'doloribus', 'Hic aut sit provident totam dolor laudantium a quos.', 8638.00, 75913, 22, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (336, 'sunt', 'Consequatur voluptatum corrupti doloribus aliquam expedita quam.', 4830.00, 42579, 22, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (337, 'suscipit', 'Dolorem dolores ut dolorem aliquam quis.', 2225.00, 68114, 23, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (338, 'corporis', 'Hic ipsum consectetur consequatur reiciendis cum.', 1657.00, 68411, 23, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (339, 'amet', 'Perferendis velit eos deserunt ut.', 6195.00, 2732, 23, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (340, 'dolorem', 'Quo nulla explicabo repudiandae commodi velit officia.', 7954.00, 25474, 24, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (341, 'odio', 'Autem distinctio velit inventore laudantium.', 8414.00, 65882, 24, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (342, 'soluta', 'Aut sint ut qui est ut eos inventore.', 3744.00, 26344, 24, '2020-01-18 21:54:44', '2020-01-18 21:54:44');
INSERT INTO `product_skus` VALUES (343, 'dolor', 'Iusto reiciendis dolorem voluptas dicta odio laboriosam.', 8199.00, 34174, 25, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (344, 'incidunt', 'Animi placeat rerum alias nobis doloribus quibusdam qui.', 9866.00, 12361, 25, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (345, 'rerum', 'Quaerat omnis et eum voluptatibus culpa laborum.', 6438.00, 63232, 25, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (346, 'ut', 'Assumenda autem officia optio neque ea rerum recusandae.', 7591.00, 60295, 26, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (347, 'qui', 'Facilis nihil tempore quaerat magni eos quia nulla.', 5429.00, 69398, 26, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (348, 'ullam', 'Nesciunt hic enim voluptas similique.', 106.00, 90989, 26, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (349, 'inventore', 'Numquam voluptas iure dolorum ut sit nemo fuga.', 3507.00, 38660, 27, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (350, 'velit', 'Sint ex nihil sequi numquam ducimus et.', 4762.00, 32410, 27, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (351, 'non', 'Est ut quidem dignissimos a.', 9769.00, 96547, 27, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (352, 'rerum', 'Odit recusandae eum id beatae repellendus aut mollitia.', 1324.00, 56860, 28, '2020-01-18 21:54:45', '2020-01-18 21:54:45');
INSERT INTO `product_skus` VALUES (353, 'alias', 'Saepe dolor officia expedita assumenda.', 3289.00, 65715, 28, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (354, 'maxime', 'Facere qui rerum laboriosam rem.', 4595.00, 22670, 28, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (355, 'nisi', 'Facere expedita alias fugiat et molestias et commodi.', 2141.00, 84362, 29, '2020-01-18 21:54:46', '2020-01-23 23:17:41');
INSERT INTO `product_skus` VALUES (356, 'aut', 'Non neque voluptas dolorum excepturi.', 5889.00, 18148, 29, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (357, 'in', 'Quisquam doloribus modi iste esse.', 5827.00, 16896, 29, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (358, 'delectus', 'Alias excepturi eos adipisci delectus sapiente quia aliquam.', 3459.00, 19515, 30, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (359, 'quidem', 'Dolores aliquid quisquam quas fuga.', 5039.00, 32421, 30, '2020-01-18 21:54:46', '2020-01-18 21:54:46');
INSERT INTO `product_skus` VALUES (360, 'quo', 'Autem accusantium quisquam et optio similique et omnis doloribus.', 215.00, 19586, 30, '2020-01-18 21:54:47', '2020-01-18 21:54:47');
INSERT INTO `product_skus` VALUES (361, '概念机两台', '众筹优惠价18000', 18000.00, 45, 31, '2020-01-23 09:07:45', '2020-01-24 06:17:06');
INSERT INTO `product_skus` VALUES (362, '1', '1', 50.00, 1, 32, '2020-01-24 08:02:19', '2020-01-24 08:08:51');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `category_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT 1,
  `rating` double(8, 2) NOT NULL DEFAULT 5.00,
  `sold_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10, 2) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `products_category_id_foreign`(`category_id`) USING BTREE,
  INDEX `products_type_index`(`type`) USING BTREE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'normal', 21, 'illo', 'Animi perferendis pariatur fugiat inventore.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 4.00, 0, 0, 3086.00, '2020-01-18 21:54:35', '2020-01-18 21:54:37');
INSERT INTO `products` VALUES (2, 'normal', 9, 'rerum', 'Est fugit blanditiis voluptas ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 1.00, 0, 0, 1017.00, '2020-01-18 21:54:35', '2020-01-18 21:54:38');
INSERT INTO `products` VALUES (3, 'normal', 22, 'est', 'Similique voluptas minima sit optio.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 1.00, 0, 0, 4283.00, '2020-01-18 21:54:35', '2020-01-18 21:54:39');
INSERT INTO `products` VALUES (4, 'normal', 4, 'repellendus', 'Alias ipsum et soluta non qui numquam veniam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 0.00, 0, 0, 696.00, '2020-01-18 21:54:35', '2020-01-18 21:54:39');
INSERT INTO `products` VALUES (5, 'normal', 3, 'neque', 'Dicta vel itaque ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 2.00, 0, 0, 1661.00, '2020-01-18 21:54:35', '2020-01-18 21:54:39');
INSERT INTO `products` VALUES (6, 'normal', 16, 'aut', 'Explicabo nesciunt quos dolore alias voluptates dignissimos accusamus sit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 3.00, 0, 0, 1669.00, '2020-01-18 21:54:35', '2020-01-18 21:54:39');
INSERT INTO `products` VALUES (7, 'normal', 25, 'molestiae', 'Ipsa similique omnis amet ea at iusto placeat.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 0.00, 0, 0, 6388.00, '2020-01-18 21:54:35', '2020-01-18 21:54:40');
INSERT INTO `products` VALUES (8, 'normal', 13, 'voluptatem', 'Ut sed dolor omnis hic incidunt rem qui et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 1.00, 0, 0, 4707.00, '2020-01-18 21:54:35', '2020-01-18 21:54:40');
INSERT INTO `products` VALUES (9, 'normal', 3, 'inventore', 'Placeat ex quis rerum deserunt illum et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 0.00, 0, 0, 1097.00, '2020-01-18 21:54:35', '2020-01-18 21:54:40');
INSERT INTO `products` VALUES (10, 'normal', 8, 'voluptatem', 'Vitae qui voluptas maiores.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 3.00, 0, 0, 886.00, '2020-01-18 21:54:36', '2020-01-18 21:54:41');
INSERT INTO `products` VALUES (11, 'normal', 6, 'atque', 'Alias sit rerum ipsum quos quia nihil nemo.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg', 1, 4.00, 0, 0, 4013.00, '2020-01-18 21:54:36', '2020-01-18 21:54:41');
INSERT INTO `products` VALUES (12, 'normal', 13, 'nemo', 'Harum eius aspernatur inventore voluptas quis accusamus iste.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg', 1, 1.00, 0, 0, 1053.00, '2020-01-18 21:54:36', '2020-01-18 21:54:41');
INSERT INTO `products` VALUES (13, 'normal', 25, 'rem', 'Magnam vel libero amet odio quas porro et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.00, 0, 0, 5735.00, '2020-01-18 21:54:36', '2020-01-18 21:54:41');
INSERT INTO `products` VALUES (14, 'normal', 16, 'quis', 'Eum ea veniam et nemo quia sit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/uYEHCJ1oRp.jpg', 1, 3.00, 0, 0, 967.00, '2020-01-18 21:54:36', '2020-01-18 21:54:42');
INSERT INTO `products` VALUES (15, 'normal', 3, 'ex', 'Quidem qui quasi aliquam.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 1.00, 0, 0, 513.00, '2020-01-18 21:54:36', '2020-01-18 21:54:42');
INSERT INTO `products` VALUES (16, 'normal', 27, 'ab', 'Autem recusandae cum sit architecto quam enim dignissimos.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 2.00, 0, 0, 170.00, '2020-01-18 21:54:36', '2020-01-18 21:54:42');
INSERT INTO `products` VALUES (17, 'normal', 25, 'placeat', 'Repellat ratione assumenda vero.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 1.00, 0, 0, 2488.00, '2020-01-18 21:54:36', '2020-01-18 21:54:42');
INSERT INTO `products` VALUES (18, 'normal', 27, 'porro', 'Consequuntur ut voluptatem sunt et qui sunt.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.00, 0, 0, 3764.00, '2020-01-18 21:54:36', '2020-01-18 21:54:43');
INSERT INTO `products` VALUES (19, 'normal', 23, 'alias', 'Qui itaque ducimus eum libero similique ipsa id.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 3.00, 0, 0, 5296.00, '2020-01-18 21:54:36', '2020-01-18 21:54:43');
INSERT INTO `products` VALUES (20, 'normal', 16, 'beatae', 'Vel et quibusdam omnis.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 5.00, 0, 0, 2414.00, '2020-01-18 21:54:36', '2020-01-18 21:54:43');
INSERT INTO `products` VALUES (21, 'normal', 13, 'eum', 'Recusandae dolor ut est repellendus ut aspernatur.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 2.00, 0, 0, 1358.00, '2020-01-18 21:54:36', '2020-01-18 21:54:44');
INSERT INTO `products` VALUES (22, 'normal', 13, 'tempora', 'Iure voluptates voluptatem minima minus qui.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg', 1, 3.00, 0, 0, 4830.00, '2020-01-18 21:54:36', '2020-01-18 21:54:44');
INSERT INTO `products` VALUES (23, 'normal', 14, 'nam', 'Molestias aspernatur est est est aut ut.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 0.00, 0, 0, 1657.00, '2020-01-18 21:54:36', '2020-01-18 21:54:44');
INSERT INTO `products` VALUES (24, 'normal', 22, 'cumque', 'Praesentium architecto unde quisquam ex necessitatibus veniam dolore.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 0.00, 0, 0, 3744.00, '2020-01-18 21:54:36', '2020-01-18 21:54:44');
INSERT INTO `products` VALUES (25, 'normal', 26, 'qui', 'Voluptatem ut quia tempore porro minima est nisi.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg', 1, 4.00, 0, 0, 6438.00, '2020-01-18 21:54:37', '2020-01-18 21:54:45');
INSERT INTO `products` VALUES (26, 'normal', 9, 'commodi', 'Nihil aut numquam incidunt vero et eius quo quia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg', 1, 3.00, 0, 0, 106.00, '2020-01-18 21:54:37', '2020-01-18 21:54:45');
INSERT INTO `products` VALUES (27, 'normal', 21, 'nobis', 'Sunt omnis nulla voluptas ea aut et.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg', 1, 5.00, 0, 0, 3507.00, '2020-01-18 21:54:37', '2020-01-18 21:54:45');
INSERT INTO `products` VALUES (28, 'normal', 3, 'atque', 'Quia eum aut sint nihil qui eum sunt cum.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg', 1, 0.00, 0, 0, 1324.00, '2020-01-18 21:54:37', '2020-01-18 21:54:46');
INSERT INTO `products` VALUES (29, 'normal', 15, 'ratione', 'Ratione alias suscipit et velit.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg', 1, 3.00, 0, 0, 2141.00, '2020-01-18 21:54:37', '2020-01-18 21:54:46');
INSERT INTO `products` VALUES (30, 'normal', 19, 'optio', 'Quisquam quia et quia.', 'https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg', 1, 2.00, 0, 0, 215.00, '2020-01-18 21:54:37', '2020-01-18 21:54:47');
INSERT INTO `products` VALUES (31, 'crowdfunding', 25, 'iPhone X 概念机', '<p>众筹百万</p>', 'images/bei2.png', 1, 5.00, 3, 0, 9000.00, '2020-01-23 09:07:45', '2020-01-24 06:43:19');
INSERT INTO `products` VALUES (32, 'crowdfunding', 25, '测试商品', '<p><br></p>', 'images/ab1cd1302d29f5eea2772bceedd99030.png', 1, 5.00, 2, 0, 50.00, '2020-01-24 08:02:19', '2020-01-24 08:08:57');

-- ----------------------------
-- Table structure for user_addresses
-- ----------------------------
DROP TABLE IF EXISTS `user_addresses`;
CREATE TABLE `user_addresses`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) UNSIGNED NOT NULL,
  `contact_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_addresses_user_id_foreign`(`user_id`) USING BTREE,
  CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 206 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_addresses
-- ----------------------------
INSERT INTO `user_addresses` VALUES (1, 1, '江苏省', '南京市', '浦口区', '第99街道第19号', 312400, '宇兵', '14573445160', '2020-01-24 08:04:26', '2020-01-18 17:34:27', '2020-01-24 08:04:26');
INSERT INTO `user_addresses` VALUES (2, 1, '江苏省', '苏州市', '相城区', '第97街道第817号', 696900, '孟欢', '17077122077', NULL, '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `user_addresses` VALUES (3, 1, '河北省', '石家庄市', '长安区', '第78街道第608号', 231600, '沙智勇', '18267093187', NULL, '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `user_addresses` VALUES (4, 2, '江苏省', '苏州市', '相城区', '第98街道第905号', 383500, '侯娜', '13742806981', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (5, 2, '江苏省', '苏州市', '相城区', '第32街道第935号', 11500, '牟龙', '15101844613', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (6, 3, '河北省', '石家庄市', '长安区', '第77街道第405号', 418400, '康博涛', '15228378384', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (7, 3, '江苏省', '南京市', '浦口区', '第41街道第594号', 603000, '夏利', '18249548311', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (8, 3, '江苏省', '南京市', '浦口区', '第17街道第585号', 367100, '池玉梅', '17855951120', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (9, 4, '广东省', '深圳市', '福田区', '第6街道第212号', 578200, '谷新华', '17072765705', '2020-01-24 08:08:21', '2020-01-18 17:34:28', '2020-01-24 08:08:21');
INSERT INTO `user_addresses` VALUES (10, 4, '北京市', '市辖区', '东城区', '第32街道第605号', 726700, '颜晨', '18056165830', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (11, 5, '河北省', '石家庄市', '长安区', '第58街道第85号', 598000, '易志强', '17803887532', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (12, 5, '河北省', '石家庄市', '长安区', '第51街道第946号', 177200, '范燕', '17002045841', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (13, 6, '广东省', '深圳市', '福田区', '第22街道第406号', 532600, '安桂珍', '18108913279', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (14, 7, '广东省', '深圳市', '福田区', '第62街道第192号', 174800, '程宁', '13194780282', NULL, '2020-01-18 17:34:28', '2020-01-18 17:34:28');
INSERT INTO `user_addresses` VALUES (15, 8, '江苏省', '南京市', '浦口区', '第28街道第13号', 631900, '施畅', '18217363893', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (16, 8, '江苏省', '南京市', '浦口区', '第41街道第916号', 656300, '曲峰', '18592361018', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (17, 8, '北京市', '市辖区', '东城区', '第53街道第855号', 227900, '辛冰冰', '18189147134', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (18, 9, '江苏省', '南京市', '浦口区', '第27街道第480号', 474900, '官兵', '17065969535', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (19, 9, '河北省', '石家庄市', '长安区', '第60街道第260号', 237100, '左学明', '15231449181', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (20, 10, '河北省', '石家庄市', '长安区', '第88街道第733号', 325900, '唐依琳', '15182207966', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (21, 10, '江苏省', '南京市', '浦口区', '第56街道第782号', 85200, '司东', '18939508878', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (22, 10, '河北省', '石家庄市', '长安区', '第84街道第603号', 663600, '詹翼', '17098749691', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (23, 11, '江苏省', '苏州市', '相城区', '第46街道第768号', 96700, '姚学明', '18529795778', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (24, 12, '北京市', '市辖区', '东城区', '第0街道第157号', 476200, '游彬', '13278616772', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (25, 12, '江苏省', '南京市', '浦口区', '第79街道第92号', 22000, '唐博涛', '17087849548', NULL, '2020-01-18 17:34:29', '2020-01-18 17:34:29');
INSERT INTO `user_addresses` VALUES (26, 12, '河北省', '石家庄市', '长安区', '第90街道第3号', 717800, '万馨予', '13406733559', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (27, 13, '广东省', '深圳市', '福田区', '第8街道第322号', 91500, '韦莹', '13800543030', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (28, 14, '河北省', '石家庄市', '长安区', '第66街道第12号', 278200, '滕建明', '17080641633', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (29, 14, '河北省', '石家庄市', '长安区', '第88街道第279号', 587700, '高梅', '14700007505', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (30, 15, '江苏省', '南京市', '浦口区', '第90街道第390号', 387800, '童旭', '17085579898', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (31, 15, '河北省', '石家庄市', '长安区', '第9街道第364号', 367300, '刁志新', '15349654356', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (32, 15, '河北省', '石家庄市', '长安区', '第23街道第991号', 542800, '查红梅', '17783927026', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (33, 16, '广东省', '深圳市', '福田区', '第84街道第838号', 855900, '纪建军', '17012087978', NULL, '2020-01-18 17:34:30', '2020-01-18 17:34:30');
INSERT INTO `user_addresses` VALUES (34, 16, '广东省', '深圳市', '福田区', '第43街道第120号', 22200, '屠馨予', '17187129339', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (35, 16, '江苏省', '南京市', '浦口区', '第88街道第295号', 364700, '栾鑫', '15504427334', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (36, 17, '河北省', '石家庄市', '长安区', '第61街道第207号', 541500, '竺子安', '13567858215', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (37, 18, '江苏省', '南京市', '浦口区', '第65街道第21号', 536300, '林桂芳', '18976929120', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (38, 19, '北京市', '市辖区', '东城区', '第15街道第178号', 32300, '靳建国', '17175822952', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (39, 19, '广东省', '深圳市', '福田区', '第14街道第816号', 27700, '阮兵', '18304661722', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (40, 19, '江苏省', '苏州市', '相城区', '第67街道第754号', 85800, '唐桂芳', '13872806611', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (41, 20, '广东省', '深圳市', '福田区', '第66街道第396号', 181000, '田欢', '15863804460', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (42, 20, '北京市', '市辖区', '东城区', '第19街道第198号', 258800, '宗小红', '15736355101', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (43, 20, '北京市', '市辖区', '东城区', '第49街道第421号', 252700, '田瑶', '13988851711', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (44, 21, '江苏省', '苏州市', '相城区', '第68街道第346号', 845900, '姚林', '13292317591', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (45, 21, '河北省', '石家庄市', '长安区', '第98街道第876号', 745200, '阳桂兰', '13620326030', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (46, 21, '北京市', '市辖区', '东城区', '第65街道第41号', 604200, '鲍婷婷', '17019855895', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (47, 22, '广东省', '深圳市', '福田区', '第22街道第432号', 494700, '楚兵', '13950969293', NULL, '2020-01-18 17:34:31', '2020-01-18 17:34:31');
INSERT INTO `user_addresses` VALUES (48, 22, '北京市', '市辖区', '东城区', '第1街道第30号', 104000, '邸龙', '13490180598', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (49, 23, '河北省', '石家庄市', '长安区', '第11街道第933号', 115500, '倪斌', '15278367815', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (50, 23, '河北省', '石家庄市', '长安区', '第85街道第198号', 48700, '甄超', '13898868473', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (51, 23, '河北省', '石家庄市', '长安区', '第82街道第534号', 603800, '马桂荣', '13456713295', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (52, 24, '广东省', '深圳市', '福田区', '第61街道第815号', 837700, '岑桂珍', '17890468837', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (53, 24, '广东省', '深圳市', '福田区', '第92街道第274号', 574400, '季瑞', '17017767877', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (54, 24, '广东省', '深圳市', '福田区', '第19街道第50号', 694100, '石翼', '15847605462', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (55, 25, '广东省', '深圳市', '福田区', '第41街道第37号', 543700, '鞠帅', '17034981334', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (56, 26, '江苏省', '苏州市', '相城区', '第89街道第179号', 811200, '吕捷', '17011557018', NULL, '2020-01-18 17:34:32', '2020-01-18 17:34:32');
INSERT INTO `user_addresses` VALUES (57, 26, '江苏省', '南京市', '浦口区', '第45街道第547号', 352700, '安霞', '18708665911', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (58, 26, '北京市', '市辖区', '东城区', '第73街道第789号', 712600, '焦怡', '13317352261', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (59, 27, '河北省', '石家庄市', '长安区', '第54街道第182号', 322600, '来楠', '18018348560', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (60, 27, '广东省', '深圳市', '福田区', '第35街道第171号', 298200, '巫瑜', '13363578694', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (61, 27, '江苏省', '南京市', '浦口区', '第49街道第948号', 677000, '项爱华', '13158517476', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (62, 28, '河北省', '石家庄市', '长安区', '第83街道第131号', 257600, '楚志强', '13338788264', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (63, 28, '广东省', '深圳市', '福田区', '第49街道第731号', 404500, '强桂兰', '18562796471', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (64, 29, '河北省', '石家庄市', '长安区', '第33街道第107号', 755800, '查艳', '14740881005', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (65, 30, '江苏省', '苏州市', '相城区', '第26街道第514号', 224500, '路波', '18281032771', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (66, 31, '江苏省', '南京市', '浦口区', '第23街道第373号', 292500, '文志文', '18307660224', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (67, 32, '江苏省', '苏州市', '相城区', '第18街道第714号', 792200, '宋鹏程', '18084861792', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (68, 32, '江苏省', '苏州市', '相城区', '第77街道第660号', 584900, '贾雪', '17181676162', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (69, 32, '河北省', '石家庄市', '长安区', '第52街道第443号', 188700, '管阳', '18419771905', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (70, 33, '广东省', '深圳市', '福田区', '第94街道第64号', 696600, '甄全安', '15134740415', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (71, 34, '河北省', '石家庄市', '长安区', '第92街道第45号', 704300, '葛桂英', '17055172551', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (72, 34, '江苏省', '苏州市', '相城区', '第97街道第309号', 111500, '糜志诚', '18969016441', NULL, '2020-01-18 17:34:33', '2020-01-18 17:34:33');
INSERT INTO `user_addresses` VALUES (73, 35, '江苏省', '苏州市', '相城区', '第85街道第160号', 482800, '卞鹰', '15160230905', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (74, 35, '江苏省', '南京市', '浦口区', '第67街道第9号', 694800, '鞠杰', '15128387059', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (75, 35, '江苏省', '南京市', '浦口区', '第57街道第330号', 685300, '阮玉兰', '17754497823', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (76, 36, '广东省', '深圳市', '福田区', '第32街道第113号', 656200, '胥燕', '18993101207', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (77, 36, '河北省', '石家庄市', '长安区', '第70街道第933号', 416700, '龙华', '13614131426', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (78, 36, '河北省', '石家庄市', '长安区', '第61街道第633号', 706200, '韩欢', '13232610708', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (79, 37, '江苏省', '苏州市', '相城区', '第50街道第274号', 333200, '易超', '15923163677', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (80, 37, '河北省', '石家庄市', '长安区', '第24街道第501号', 107000, '谌博', '13296100082', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (81, 38, '江苏省', '苏州市', '相城区', '第69街道第486号', 746800, '仲鹰', '13066843664', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (82, 38, '江苏省', '苏州市', '相城区', '第77街道第356号', 515300, '官婷', '15254146199', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (83, 39, '河北省', '石家庄市', '长安区', '第42街道第239号', 741600, '文瑜', '15507355812', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (84, 40, '北京市', '市辖区', '东城区', '第31街道第647号', 28400, '岳峰', '18112501706', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (85, 40, '河北省', '石家庄市', '长安区', '第52街道第645号', 153400, '牛依琳', '15149011348', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (86, 41, '江苏省', '南京市', '浦口区', '第49街道第246号', 92600, '晏馨予', '17636483957', NULL, '2020-01-18 17:34:34', '2020-01-18 17:34:34');
INSERT INTO `user_addresses` VALUES (87, 42, '江苏省', '南京市', '浦口区', '第15街道第756号', 594600, '苗嘉', '18937018583', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (88, 43, '广东省', '深圳市', '福田区', '第14街道第969号', 285900, '成春梅', '17082500256', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (89, 44, '广东省', '深圳市', '福田区', '第62街道第478号', 697100, '瞿杨', '13818556792', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (90, 44, '北京市', '市辖区', '东城区', '第4街道第989号', 112000, '邓秀云', '15847352341', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (91, 44, '河北省', '石家庄市', '长安区', '第35街道第892号', 661800, '刁飞', '13664188224', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (92, 45, '江苏省', '南京市', '浦口区', '第50街道第165号', 643300, '应丹', '17838987873', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (93, 45, '河北省', '石家庄市', '长安区', '第70街道第31号', 702100, '蓝玉兰', '13978904967', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (94, 46, '江苏省', '南京市', '浦口区', '第80街道第460号', 778300, '沙捷', '17844175985', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (95, 47, '江苏省', '苏州市', '相城区', '第15街道第676号', 325500, '郎燕', '15391677948', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (96, 47, '江苏省', '南京市', '浦口区', '第71街道第679号', 554700, '申桂芬', '14598583352', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (97, 47, '江苏省', '南京市', '浦口区', '第51街道第963号', 563800, '宗志文', '15648244826', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (98, 48, '广东省', '深圳市', '福田区', '第69街道第434号', 705500, '屈学明', '14744066821', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (99, 49, '江苏省', '苏州市', '相城区', '第44街道第794号', 176000, '郎秀芳', '13293699048', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (100, 49, '河北省', '石家庄市', '长安区', '第95街道第412号', 542500, '窦艳', '13677580092', NULL, '2020-01-18 17:34:35', '2020-01-18 17:34:35');
INSERT INTO `user_addresses` VALUES (101, 50, '北京市', '市辖区', '东城区', '第22街道第242号', 231800, '侯伦', '17090890369', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (102, 50, '江苏省', '苏州市', '相城区', '第70街道第149号', 422100, '季晨', '15138213031', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (103, 50, '江苏省', '南京市', '浦口区', '第56街道第716号', 432300, '路建明', '13495350767', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (104, 51, '广东省', '深圳市', '福田区', '第59街道第884号', 363900, '耿智勇', '13026483857', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (105, 51, '河北省', '石家庄市', '长安区', '第72街道第10号', 268100, '傅玉', '17092872191', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (106, 51, '河北省', '石家庄市', '长安区', '第16街道第901号', 753000, '宫勇', '14573940314', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (107, 52, '河北省', '石家庄市', '长安区', '第28街道第822号', 351200, '竺宇', '13321931296', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (108, 52, '江苏省', '苏州市', '相城区', '第44街道第39号', 706400, '贾楠', '18773372024', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (109, 52, '广东省', '深圳市', '福田区', '第44街道第75号', 282600, '欧阳荣', '18479818605', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (110, 53, '江苏省', '苏州市', '相城区', '第47街道第540号', 847700, '吉雪梅', '13883869440', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (111, 54, '北京市', '市辖区', '东城区', '第39街道第525号', 657600, '蓝桂香', '18880123156', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (112, 55, '北京市', '市辖区', '东城区', '第74街道第469号', 421500, '穆雪', '15218622359', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (113, 55, '江苏省', '苏州市', '相城区', '第23街道第581号', 802000, '宗桂芬', '17607887368', NULL, '2020-01-18 17:34:36', '2020-01-18 17:34:36');
INSERT INTO `user_addresses` VALUES (114, 56, '广东省', '深圳市', '福田区', '第16街道第513号', 288300, '冼兵', '15072514273', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (115, 56, '江苏省', '苏州市', '相城区', '第33街道第798号', 831400, '丘文君', '15323956357', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (116, 57, '广东省', '深圳市', '福田区', '第31街道第77号', 383500, '柯秀华', '15231023155', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (117, 57, '广东省', '深圳市', '福田区', '第32街道第754号', 103000, '都桂花', '18838516639', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (118, 57, '江苏省', '南京市', '浦口区', '第13街道第748号', 821300, '章文君', '15990255981', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (119, 58, '江苏省', '南京市', '浦口区', '第50街道第873号', 321600, '翁建国', '17733587957', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (120, 59, '北京市', '市辖区', '东城区', '第8街道第767号', 17200, '戚钟', '15947189192', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (121, 59, '江苏省', '苏州市', '相城区', '第28街道第379号', 412100, '喻婷', '17016766665', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (122, 60, '河北省', '石家庄市', '长安区', '第47街道第626号', 222600, '冀健', '13750180877', NULL, '2020-01-18 17:34:37', '2020-01-18 17:34:37');
INSERT INTO `user_addresses` VALUES (123, 60, '广东省', '深圳市', '福田区', '第93街道第35号', 542400, '路秀芳', '18660710432', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (124, 60, '江苏省', '苏州市', '相城区', '第55街道第528号', 401400, '顾祥', '15130743653', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (125, 61, '江苏省', '苏州市', '相城区', '第94街道第545号', 331400, '巩成', '17621405776', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (126, 62, '江苏省', '南京市', '浦口区', '第35街道第851号', 67700, '姜智敏', '17014618850', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (127, 62, '江苏省', '南京市', '浦口区', '第28街道第412号', 435200, '苗丽华', '13186551088', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (128, 62, '广东省', '深圳市', '福田区', '第35街道第612号', 643200, '杜春梅', '13289756450', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (129, 63, '广东省', '深圳市', '福田区', '第50街道第887号', 354400, '宋帅', '17183030028', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (130, 63, '江苏省', '苏州市', '相城区', '第5街道第87号', 836700, '虞伟', '18631064086', NULL, '2020-01-18 17:34:38', '2020-01-18 17:34:38');
INSERT INTO `user_addresses` VALUES (131, 63, '江苏省', '苏州市', '相城区', '第48街道第15号', 147100, '贺腊梅', '13956448987', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (132, 64, '江苏省', '南京市', '浦口区', '第52街道第681号', 215400, '张林', '18075794115', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (133, 64, '广东省', '深圳市', '福田区', '第41街道第272号', 186000, '卢志强', '13052742033', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (134, 65, '江苏省', '南京市', '浦口区', '第10街道第139号', 631800, '毕阳', '15937481115', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (135, 65, '江苏省', '苏州市', '相城区', '第87街道第698号', 507200, '郜佳', '13059087316', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (136, 65, '广东省', '深圳市', '福田区', '第36街道第822号', 673700, '郎阳', '18529864438', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (137, 66, '广东省', '深圳市', '福田区', '第60街道第791号', 813800, '娄丽丽', '18778982901', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (138, 66, '北京市', '市辖区', '东城区', '第26街道第694号', 153000, '詹慧', '13222637207', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (139, 67, '河北省', '石家庄市', '长安区', '第96街道第336号', 31400, '戚琳', '17193118056', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (140, 67, '江苏省', '苏州市', '相城区', '第4街道第190号', 245600, '虞淑英', '13061969827', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (141, 67, '北京市', '市辖区', '东城区', '第99街道第460号', 194200, '沿杰', '13271012867', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (142, 68, '北京市', '市辖区', '东城区', '第73街道第565号', 838100, '岳桂芝', '13030209953', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (143, 68, '广东省', '深圳市', '福田区', '第9街道第972号', 436000, '于雷', '13192777578', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (144, 69, '广东省', '深圳市', '福田区', '第64街道第100号', 382400, '梅欢', '17090434079', NULL, '2020-01-18 17:34:39', '2020-01-18 17:34:39');
INSERT INTO `user_addresses` VALUES (145, 70, '广东省', '深圳市', '福田区', '第31街道第571号', 687100, '古艳', '17096723435', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (146, 70, '广东省', '深圳市', '福田区', '第64街道第115号', 112900, '井雷', '13603171184', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (147, 71, '广东省', '深圳市', '福田区', '第25街道第937号', 173500, '谭刚', '17748557128', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (148, 71, '河北省', '石家庄市', '长安区', '第81街道第347号', 565500, '于旭', '17099475306', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (149, 72, '江苏省', '南京市', '浦口区', '第14街道第141号', 148800, '裴丹丹', '15217100913', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (150, 73, '广东省', '深圳市', '福田区', '第56街道第404号', 593700, '查瑶', '17746191644', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (151, 73, '江苏省', '苏州市', '相城区', '第56街道第297号', 748500, '朱萍', '18973442048', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (152, 73, '北京市', '市辖区', '东城区', '第86街道第306号', 102700, '沉红', '13203456374', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (153, 74, '江苏省', '苏州市', '相城区', '第54街道第774号', 125500, '姜秀珍', '17893871936', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (154, 74, '江苏省', '苏州市', '相城区', '第52街道第361号', 208000, '尹正业', '17848158794', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (155, 74, '广东省', '深圳市', '福田区', '第49街道第407号', 477700, '文凤英', '13812918949', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (156, 75, '江苏省', '苏州市', '相城区', '第49街道第620号', 692100, '单梅', '18063309823', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (157, 75, '北京市', '市辖区', '东城区', '第91街道第72号', 673600, '房文彬', '13635107377', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (158, 76, '广东省', '深圳市', '福田区', '第2街道第227号', 698700, '邓欣', '13754028122', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (159, 77, '江苏省', '南京市', '浦口区', '第43街道第395号', 514700, '廖智勇', '13895998430', NULL, '2020-01-18 17:34:40', '2020-01-18 17:34:40');
INSERT INTO `user_addresses` VALUES (160, 77, '北京市', '市辖区', '东城区', '第56街道第712号', 773500, '僧正诚', '17084461599', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (161, 78, '广东省', '深圳市', '福田区', '第3街道第245号', 308000, '荆君', '17085276245', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (162, 78, '广东省', '深圳市', '福田区', '第63街道第455号', 355800, '史杰', '17184085479', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (163, 78, '北京市', '市辖区', '东城区', '第79街道第692号', 371700, '裴斌', '13355403920', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (164, 79, '河北省', '石家庄市', '长安区', '第0街道第270号', 396000, '章慧', '17188808550', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (165, 79, '江苏省', '南京市', '浦口区', '第30街道第233号', 72000, '席楠', '13715169406', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (166, 80, '北京市', '市辖区', '东城区', '第47街道第297号', 103300, '杨兰英', '17050438514', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (167, 80, '北京市', '市辖区', '东城区', '第40街道第223号', 648300, '罗桂香', '18364060354', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (168, 81, '广东省', '深圳市', '福田区', '第19街道第557号', 756300, '洪桂香', '17051293032', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (169, 82, '河北省', '石家庄市', '长安区', '第21街道第849号', 831000, '霍欢', '13354146539', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (170, 83, '河北省', '石家庄市', '长安区', '第41街道第42号', 122300, '常坤', '13703814505', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (171, 83, '江苏省', '苏州市', '相城区', '第95街道第646号', 75300, '方哲', '17640173435', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (172, 83, '河北省', '石家庄市', '长安区', '第5街道第770号', 561400, '翟璐', '15871175103', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (173, 84, '江苏省', '苏州市', '相城区', '第69街道第513号', 555900, '强桂花', '18891288247', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (174, 84, '江苏省', '苏州市', '相城区', '第70街道第55号', 544100, '费帅', '14737388352', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (175, 85, '江苏省', '苏州市', '相城区', '第16街道第876号', 496500, '于倩', '15503680204', NULL, '2020-01-18 17:34:41', '2020-01-18 17:34:41');
INSERT INTO `user_addresses` VALUES (176, 85, '广东省', '深圳市', '福田区', '第82街道第244号', 162800, '褚秀云', '18372484641', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (177, 86, '广东省', '深圳市', '福田区', '第44街道第202号', 763800, '鄢桂英', '13962137561', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (178, 87, '北京市', '市辖区', '东城区', '第66街道第159号', 656000, '岳欢', '17056608436', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (179, 87, '河北省', '石家庄市', '长安区', '第54街道第769号', 744300, '艾楼', '17078226575', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (180, 88, '江苏省', '南京市', '浦口区', '第30街道第900号', 601200, '尤丽丽', '17004544740', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (181, 88, '河北省', '石家庄市', '长安区', '第57街道第212号', 633700, '原艳', '18936078161', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (182, 89, '江苏省', '苏州市', '相城区', '第44街道第891号', 575400, '僧智勇', '18692971425', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (183, 90, '江苏省', '南京市', '浦口区', '第84街道第103号', 781900, '廖秀华', '13818837256', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (184, 90, '河北省', '石家庄市', '长安区', '第5街道第612号', 777800, '虞冬梅', '17001517621', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (185, 91, '广东省', '深圳市', '福田区', '第23街道第775号', 101500, '苗正诚', '15335751297', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (186, 91, '江苏省', '南京市', '浦口区', '第75街道第870号', 414100, '巫淑英', '17841817340', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (187, 91, '广东省', '深圳市', '福田区', '第47街道第437号', 312300, '易秀云', '15837218760', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (188, 92, '北京市', '市辖区', '东城区', '第59街道第717号', 58000, '穆淑兰', '14744574396', NULL, '2020-01-18 17:34:42', '2020-01-18 17:34:42');
INSERT INTO `user_addresses` VALUES (189, 92, '江苏省', '苏州市', '相城区', '第83街道第226号', 561300, '石志强', '15653746446', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (190, 92, '河北省', '石家庄市', '长安区', '第17街道第40号', 764200, '宫凤兰', '18083514659', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (191, 93, '河北省', '石家庄市', '长安区', '第74街道第438号', 333500, '时楠', '15229586297', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (192, 94, '江苏省', '南京市', '浦口区', '第6街道第718号', 22300, '唐兵', '15596536037', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (193, 94, '江苏省', '南京市', '浦口区', '第91街道第394号', 115600, '胡龙', '13353864130', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (194, 94, '广东省', '深圳市', '福田区', '第15街道第3号', 222700, '蒙伟', '15292069008', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (195, 95, '江苏省', '苏州市', '相城区', '第45街道第527号', 54800, '瞿志新', '15179197234', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (196, 96, '江苏省', '南京市', '浦口区', '第56街道第246号', 624400, '台玉兰', '15339869476', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (197, 97, '北京市', '市辖区', '东城区', '第16街道第495号', 297700, '糜萍', '17088350808', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (198, 98, '江苏省', '苏州市', '相城区', '第71街道第859号', 298500, '梁旭', '15020303601', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (199, 98, '江苏省', '苏州市', '相城区', '第57街道第815号', 756700, '虞智渊', '17194086515', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (200, 99, '江苏省', '南京市', '浦口区', '第81街道第855号', 88700, '陶刚', '18740878632', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (201, 99, '江苏省', '南京市', '浦口区', '第73街道第975号', 33700, '查桂芝', '15896470055', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (202, 99, '河北省', '石家庄市', '长安区', '第4街道第37号', 593600, '谌婷婷', '17091252208', NULL, '2020-01-18 17:34:43', '2020-01-18 17:34:43');
INSERT INTO `user_addresses` VALUES (203, 100, '广东省', '深圳市', '福田区', '第69街道第295号', 495600, '穆建', '18228486013', NULL, '2020-01-18 17:34:44', '2020-01-18 17:34:44');
INSERT INTO `user_addresses` VALUES (204, 100, '江苏省', '苏州市', '相城区', '第57街道第224号', 153400, '佟桂芬', '18288272510', NULL, '2020-01-18 17:34:44', '2020-01-18 17:34:44');
INSERT INTO `user_addresses` VALUES (205, 100, '江苏省', '南京市', '浦口区', '第13街道第483号', 843300, '涂桂芬', '13939723573', NULL, '2020-01-18 17:34:44', '2020-01-18 17:34:44');

-- ----------------------------
-- Table structure for user_favorite_products
-- ----------------------------
DROP TABLE IF EXISTS `user_favorite_products`;
CREATE TABLE `user_favorite_products`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_favorite_products_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `user_favorite_products_product_id_foreign`(`product_id`) USING BTREE,
  CONSTRAINT `user_favorite_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `user_favorite_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_favorite_products
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '苏玉珍', 'beatae.voluptate@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'RAljMLBn88dBrIfuOR92vtD5aXpjXYnhiBCXAnChoMBRyUAejneX7hS4tS80', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (2, '崔淑英', 'cumque24@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'VFyv7G3YP2', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (3, '林嘉', 'delectus12@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'eMjfJ9Mz3C', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (4, '虞林', 'libero00@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'XjLiWa0Ogl', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (5, '冀翔', 'voluptas18@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'IGzfrShHxI', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (6, '谢霞', 'dolorem.perferendis@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'beRsdJiMtX', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (7, '全志勇', 'eos_quod@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'PNIc6E7TBQ', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (8, '文洁', 'jvoluptatem@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '3O2kBjmRaA', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (9, '龚凤兰', 'qui_et@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'X1pQXZwIfH', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (10, '万正诚', 'voluptatem_alias@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'N0o0b4XDmz', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (11, '丛志新', 'ut_facilis@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Ml8c2TgN6f', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (12, '欧淑英', 'fatque@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'o33tIyZ5JK', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (13, '林斌', 'et.sit@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'q0RhfK5N1s', '2020-01-18 17:34:17', '2020-01-18 17:34:17');
INSERT INTO `users` VALUES (14, '伍依琳', 'ipsum.inventore@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'pt5XLeHr8R', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (15, '冯雷', 'possimus44@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'pwnFMDpDz6', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (16, '石志强', 'dolor88@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'DL20nQAtuW', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (17, '屈桂兰', 'qui42@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '5mAyebYYkL', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (18, '全琴', 'xomnis@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'yq6RQZwLoS', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (19, '钱华', 'sint_autem@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Wz65ot3h0C', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (20, '古健', 'npariatur@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Tld7wGqbKY', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (21, '艾娟', 'eaque74@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'H1euiG9t6g', '2020-01-18 17:34:18', '2020-01-18 17:34:18');
INSERT INTO `users` VALUES (22, '马林', 'consequuntur.quia@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'jyIW7RRmeG', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (23, '温冬梅', 'et68@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'w80dvpMJWW', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (24, '宫馨予', 'maut@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'j2akXp7wWW', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (25, '刘翼', 'quo.ducimus@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'ZWFMvB1FoJ', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (26, '翁欣', 'dolorum.temporibus@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'x1oqx6Isu3', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (27, '邬淑珍', 'quae28@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 's4KB7wafIJ', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (28, '晋毅', 'ut86@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'yDYnDcyJ5u', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (29, '叶鹰', 'omnis_iusto@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Y8efGXvUbH', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (30, '白玉梅', 'omnis08@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'hbgOABtfPF', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (31, '成琴', 'voluptates.amet@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'glVB1MRe7C', '2020-01-18 17:34:19', '2020-01-18 17:34:19');
INSERT INTO `users` VALUES (32, '竺昱然', 'esse.est@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '32rq8F75J4', '2020-01-18 17:34:20', '2020-01-18 17:34:20');
INSERT INTO `users` VALUES (33, '吕瑞', 'ut18@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'uBeGaAxxxh', '2020-01-18 17:34:20', '2020-01-18 17:34:20');
INSERT INTO `users` VALUES (34, '龚帅', 'uin@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'gyuLF7sP4Y', '2020-01-18 17:34:21', '2020-01-18 17:34:21');
INSERT INTO `users` VALUES (35, '侯欣', 'vero_velit@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'OOLwDuF07E', '2020-01-18 17:34:21', '2020-01-18 17:34:21');
INSERT INTO `users` VALUES (36, '邱阳', 'fullam@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'lJID6fjhj2', '2020-01-18 17:34:21', '2020-01-18 17:34:21');
INSERT INTO `users` VALUES (37, '台亮', 'et.enim@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'yb4C2W7WxD', '2020-01-18 17:34:21', '2020-01-18 17:34:21');
INSERT INTO `users` VALUES (38, '嵺志强', 'brecusandae@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'dqlW3jy7NM', '2020-01-18 17:34:21', '2020-01-18 17:34:21');
INSERT INTO `users` VALUES (39, '林松', 'oiusto@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'UfJwH2BOoq', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (40, '樊欣', 'vel53@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'lTyoa7pxYB', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (41, '韦敏', 'aspernatur.optio@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Jig0IiACI7', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (42, '柴兰英', 'tempore_autem@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'vIsrT64HxJ', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (43, '安晶', 'gfugit@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'VluwzhcudE', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (44, '花岩', 'dicta.veritatis@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'xp2dTq5L5I', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (45, '冉桂兰', 'sanimi@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'u9pyntcxwC', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (46, '杨腊梅', 'delectus07@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '6f4KrjAZkq', '2020-01-18 17:34:22', '2020-01-18 17:34:22');
INSERT INTO `users` VALUES (47, '窦鹏程', 'alias_et@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'yBqVH91SOy', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (48, '张畅', 'dolores.rerum@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'KCjSuvLbl1', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (49, '邓秀梅', 'perferendis_nisi@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'wRFJhnbpvm', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (50, '强秀芳', 'but@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'hGFVVgeWNf', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (51, '涂红霞', 'mid@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '0yMSQ5JYY4', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (52, '毕正业', 'est_dolor@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Kq50hjJFrj', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (53, '傅腊梅', 'maxime.officia@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'eb0K6lfukh', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (54, '柏桂花', 'veritatis04@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '1xhmDWfwZx', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (55, '廉平', 'pet@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'ddFUjeVtJB', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (56, '应爱华', 'eofficiis@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'ksCVkY1FOT', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (57, '位学明', 'alabore@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '0Av5MrVfHx', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (58, '艾楠', 'velit_corrupti@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'pt8X2DVQu2', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (59, '时正平', 'voluptatem73@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'DpgkF5PfBW', '2020-01-18 17:34:23', '2020-01-18 17:34:23');
INSERT INTO `users` VALUES (60, '马芳', 'yveritatis@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'Y8f4dIVzDr', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (61, '晏君', 'deserunt.architecto@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'tUmnHc2SN0', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (62, '扬艳', 'voluptatem.ratione@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'SNfFBahVoh', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (63, '褚金凤', 'inecessitatibus@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '9Esye8f6HJ', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (64, '辛桂香', 'in72@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'egdmfgDrwB', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (65, '侯丽', 'fipsam@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'aBT9QmZmNb', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (66, '施红霞', 'dolor_officia@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'SponXZFBqY', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (67, '费文彬', 'qpossimus@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'TOX5mAYQTc', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (68, '丛艳', 'architecto.nesciunt@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'BW81bKIlyA', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (69, '匡林', 'aad@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'tX9Yusy5FD', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (70, '井松', 'est_cumque@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'kxnY40R4iM', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (71, '杜强', 'vnam@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'SE7NC7Sh8q', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (72, '赖文娟', 'sunt.sed@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'tDw2MEozPy', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (73, '廉秀荣', 'quae_aspernatur@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'NIAzJJ1tyV', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (74, '苏依琳', 'consequatur_veniam@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'XMazXjAwFM', '2020-01-18 17:34:24', '2020-01-18 17:34:24');
INSERT INTO `users` VALUES (75, '喻静', 'suscipit42@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '1UxPdWFZzM', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (76, '辜平', 'eveniet.dolorem@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'jB4OjSqWmb', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (77, '奚伟', 'zdistinctio@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'iLW9ZUXK7o', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (78, '庄明霞', 'debitis_repudiandae@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'ifwmVeEjHF', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (79, '苟瑜', 'ullam76@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'pQRgbN2m5s', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (80, '郝艳', 'eum54@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'rKS99aMbkC', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (81, '冼宁', 'facilis.ut@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'tpNLgcJ6TC', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (82, '司红霞', 'aperiam_non@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'YsnEH2HxgR', '2020-01-18 17:34:25', '2020-01-18 17:34:25');
INSERT INTO `users` VALUES (83, '欧鹏程', 'zinventore@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'nnvrRdaeg1', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (84, '龙利', 'paliquid@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'J0w18rzNwX', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (85, '赵倩', 'voluptas.commodi@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '6mBdXyVvyR', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (86, '兰秀华', 'ea_eligendi@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '35BDUeO1Wm', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (87, '匡丽丽', 'quos_sequi@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'AUx5cB9e2g', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (88, '娄建', 'et40@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'exFas1XByA', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (89, '桑振国', 'neque.accusantium@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'wEHEeBE90n', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (90, '邵子安', 'bcorrupti@example.org', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'CrMuRfhOeH', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (91, '蓝桂兰', 'ut.dolorem@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'jNlJckzltQ', '2020-01-18 17:34:26', '2020-01-18 17:34:26');
INSERT INTO `users` VALUES (92, '吕桂芳', 'nostrum30@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', '0gbbypucio', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (93, '胡瑶', 'quidem_exercitationem@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'eBospFBcsi', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (94, '曹勇', 'officia24@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'QhCablfOiI', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (95, '井建华', 'enim_provident@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'HMvW9xCZGG', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (96, '荆嘉俊', 'eligendi66@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'XAiOAcbMaW', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (97, '贾嘉', 'dolorem63@example.com', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'OrObiCraw9', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (98, '费欣', 'mminima@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'omfEjL2qch', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (99, '晏桂珍', 'met@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'wCU5gFKKCL', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (100, '阎依琳', 'laudantium_illum@example.net', '2020-01-18 17:34:17', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', 'dzad5jmgJN', '2020-01-18 17:34:27', '2020-01-18 17:34:27');
INSERT INTO `users` VALUES (101, '467647038@qq.com', '467647038@qq.com', '2020-01-20 23:27:29', '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', NULL, '2020-01-18 21:55:55', '2020-01-20 23:27:29');
INSERT INTO `users` VALUES (102, 'qq651541182', '651541182@qq.com', NULL, '$2y$10$cFRHEwwP9zDk98d9nYq0Tedv5e0nbXdRAKGOjG0HywMynlp7M/ApK', NULL, '2020-01-20 23:25:46', '2020-01-20 23:25:46');

SET FOREIGN_KEY_CHECKS = 1;
