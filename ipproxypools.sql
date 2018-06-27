/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : ipproxypools

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-27 15:26:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_ip_info
-- ----------------------------
DROP TABLE IF EXISTS `t_ip_info`;
CREATE TABLE `t_ip_info` (
  `id` varchar(512) NOT NULL,
  `ip_address` varchar(1024) DEFAULT NULL,
  `ip_port` varchar(10) DEFAULT NULL,
  `http_type` varchar(24) DEFAULT NULL,
  `ip_speed` varchar(24) DEFAULT NULL,
  `server_address` varchar(512) DEFAULT NULL,
  `verification_time` datetime DEFAULT NULL,
  `source_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `proxy_status` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_ip_source
-- ----------------------------
DROP TABLE IF EXISTS `t_ip_source`;
CREATE TABLE `t_ip_source` (
  `id` varchar(32) NOT NULL,
  `source_name` varchar(128) DEFAULT NULL,
  `source_url` varchar(1024) DEFAULT NULL,
  `max_page` int(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `page_elements` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_ip_source_conf
-- ----------------------------
DROP TABLE IF EXISTS `t_ip_source_conf`;
CREATE TABLE `t_ip_source_conf` (
  `id` varchar(32) NOT NULL,
  `col_name` varchar(64) DEFAULT NULL,
  `col_field` varchar(64) DEFAULT NULL,
  `col_num` int(2) DEFAULT NULL,
  `col_elements` varchar(64) DEFAULT NULL,
  `col_attr` varchar(255) DEFAULT NULL,
  `is_child` int(2) DEFAULT NULL,
  `child_element_key` varchar(128) DEFAULT NULL,
  `child_element_attr` varchar(128) DEFAULT NULL,
  `source_id` varchar(32) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `t_quartz_job`;
CREATE TABLE `t_quartz_job` (
  `id` varchar(32) NOT NULL,
  `job_name` varchar(64) DEFAULT NULL,
  `job_group` varchar(54) DEFAULT NULL,
  `class_path` varchar(256) DEFAULT NULL,
  `method_name` varchar(128) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `cron` varchar(128) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
