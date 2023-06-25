/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : edu_cms

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 09/06/2023 14:55:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_active
-- ----------------------------
DROP TABLE IF EXISTS `cms_active`;
CREATE TABLE `cms_active`  (
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `category2_id` char(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '二级类目的id',
  `view_count` bigint(0) UNSIGNED NOT NULL COMMENT '该用户在该二级类目的点击次数',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间',
  INDEX `fk_active_category2_id`(`category2_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '推荐位' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cms_similarity
-- ----------------------------
DROP TABLE IF EXISTS `cms_similarity`;
CREATE TABLE `cms_similarity`  (
  `user_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `user_ref_id` char(19) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '被参考的用户id',
  `similarity` decimal(8, 7) NOT NULL COMMENT 'user_id与user_ref_id之间的相似度',
  `gmt_create` datetime(0) NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime(0) NOT NULL COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '推荐位' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
