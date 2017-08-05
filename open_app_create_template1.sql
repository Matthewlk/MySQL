/*
Navicat MySQL Data Transfer

Source Server         : open_app_center
Source Server Version : 50627
Source Host           : 10.113.22.254:3306
Source Database       : open_app_center

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2017-08-04 19:24:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for open_app_create_template
-- ----------------------------
DROP TABLE IF EXISTS `open_app_create_template`;
CREATE TABLE `open_app_create_template` (
  `template_id` varchar(32) NOT NULL COMMENT '模板id',
  `template_type` tinyint(4) DEFAULT '4' COMMENT '模板类型 \r\n1.示例应用模板\r\n2.服务号模板 \r\n3.快捷入口模板 \r\n4.空白应用模板,',
  `template_icon` varchar(255) DEFAULT NULL COMMENT '模板图片',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `category_id` varchar(32) NOT NULL COMMENT '模板分类ID',
  `template_order` tinyint(4) NOT NULL COMMENT '模板顺序',
  `execute_json` mediumtext COMMENT '需要执行的json数据',
  `properties` varchar(2048) DEFAULT NULL COMMENT '简介图片',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，1.有效 2.无效',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `service_num` int(11) DEFAULT '0' COMMENT '此模板创建的服务号个数',
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for open_app_create_template_category
-- ----------------------------
DROP TABLE IF EXISTS `open_app_create_template_category`;
CREATE TABLE `open_app_create_template_category` (
  `category_id` varchar(32) NOT NULL,
  `category_title` varchar(64) NOT NULL COMMENT '分类标题',
  `category_desc` varchar(256) NOT NULL COMMENT '分类描述',
  `category_order` tinyint(4) NOT NULL COMMENT '顺序',
  `status` tinyint(4) NOT NULL COMMENT '状态，1.有效 2.无效',
  `gmt_create` datetime NOT NULL COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `template_type` int(11) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='应用服务号创建模板分类表';
