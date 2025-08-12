DROP DATABASE IF EXISTS ci_based ; 
CREATE DATABASE ci_based ; 

use ci_based; 


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for branches
-- ----------------------------
DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_code` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `short_name` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `is_head_office` tinyint(1) NULL DEFAULT 0,
  `is_active` int(11) NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `create_user` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `branch_code`(`branch_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of branches
-- ----------------------------
INSERT INTO `branches` VALUES (2, '0000', 'HO', 'Head Office', 1, 1, NULL, 'binjava', '2025-03-27 03:23:59', 'binjava');
INSERT INTO `branches` VALUES (3, '0002', 'JLP', 'JambuLuwuk Puncak', 0, 1, '2025-03-18 21:39:53', 'binjava', '2025-03-27 03:28:14', 'binjava');
INSERT INTO `branches` VALUES (4, '0003', 'JLB', 'JambuLuwuk Batu', 0, 1, '2025-03-18 21:40:34', 'binjava', '2025-03-27 03:28:11', 'binjava');
INSERT INTO `branches` VALUES (5, '0004', 'JLM', 'JambuLuwuk Malioboro', 0, 1, '2025-03-18 21:40:48', 'binjava', '2025-03-27 03:28:08', 'binjava');
INSERT INTO `branches` VALUES (6, '0005', 'JLO', 'JambuLuwuk Oceano', 0, 1, '2025-03-18 21:41:02', 'binjava', '2025-03-27 03:28:04', 'binjava');
INSERT INTO `branches` VALUES (7, '0006', 'JLOS', 'JambuLuwuk Seminyak', 0, 1, '2025-03-18 21:41:16', 'binjava', '2025-03-27 03:28:02', 'binjava');
INSERT INTO `branches` VALUES (8, '0001', 'GH', 'Guest House', 0, 1, '2025-03-18 21:41:33', 'binjava', '2025-03-27 03:25:40', 'binjava');
INSERT INTO `branches` VALUES (9, '0007', 'JLT', 'JambuLuwuk Thamrin', 0, 1, '2025-03-18 21:41:16', 'binjava', '2025-03-27 03:27:53', 'binjava');
INSERT INTO `branches` VALUES (10, '0500', 'Proyek Bromo', 'Proyek Bromo', 0, 1, '2025-03-27 03:27:03', 'binjava', '2025-03-27 03:27:48', 'binjava');
INSERT INTO `branches` VALUES (11, '0501', 'Proyek Labuan Bajo', 'Proyek Labuan Bajo', 0, 1, '2025-03-27 03:27:03', 'binjava', '2025-03-27 03:27:10', 'binjava');

SET FOREIGN_KEY_CHECKS = 1;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `group_name` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `permissions` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_group`(`user_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_groups
-- ----------------------------
INSERT INTO `user_groups` VALUES (1, 'superadmin', 'superadmin', 'all');
INSERT INTO `user_groups` VALUES (2, 'ho_accountant', 'Head Office Accountant', 'all');
INSERT INTO `user_groups` VALUES (3, 'branch_accountant', 'Branch Accountant', 'all');
INSERT INTO `user_groups` VALUES (4, 'auditor', 'Auditor', NULL);

SET FOREIGN_KEY_CHECKS = 1;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `username` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_active` int(11) NULL DEFAULT NULL,
  `branch_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users`(`username`, `branch_code`) USING BTREE,
  INDEX `user_group`(`user_group`) USING BTREE,
  INDEX `branch_code`(`branch_code`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  CONSTRAINT `branch_code` FOREIGN KEY (`branch_code`) REFERENCES `branches` (`branch_code`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_group` FOREIGN KEY (`user_group`) REFERENCES `user_groups` (`user_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (2, 'superadmin', 'binjava', '$2y$10$S71EsCkKe4LzkZrKNAbeLOz3YQmBAKIdEX3GOQ7wD1cvf/xdw3/0O', 1, '0000');
INSERT INTO `users` VALUES (4, 'branch_accountant', 'guesthouse', '$2y$10$J2O0fm.WKsxzLP.dwyCvNutlULNv2.gavpaiaSaKL0/Afcx0qMGaC', 1, '0000');
INSERT INTO `users` VALUES (5, 'branch_accountant', 'seminyak', '$2y$10$lpOppe2MGq2jc8o5xwbDLeBMb7JHmJfTim3BFV1WqNKCf.MY3zkPi', 1, '0003');

SET FOREIGN_KEY_CHECKS = 1;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit_log
-- ----------------------------
DROP TABLE IF EXISTS `audit_log`;
CREATE TABLE `audit_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `computer_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `local_pc_time` datetime NULL DEFAULT NULL,
  `action_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `affected_table` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `record_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `changed_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `execution_timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `execution_timestamp`(`execution_timestamp`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 0 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;


SET FOREIGN_KEY_CHECKS = 1;


SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity_logs
-- ----------------------------
DROP TABLE IF EXISTS `activity_logs`;
CREATE TABLE `activity_logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(75) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `activity_type` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `ip_address` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_agent` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_logs
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;