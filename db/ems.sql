/*
Navicat MySQL Data Transfer

Source Server         : King
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2017-10-11 12:03:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_answer
-- ----------------------------
DROP TABLE IF EXISTS `t_answer`;
CREATE TABLE `t_answer` (
  `answer_id` int(5) NOT NULL,
  `stu_id` int(5) DEFAULT NULL,
  `paper_id` int(5) DEFAULT NULL,
  `choice_id` int(5) DEFAULT NULL,
  `blank_id` int(5) DEFAULT NULL,
  `judge_id` int(5) DEFAULT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `sub_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_answer
-- ----------------------------
INSERT INTO `t_answer` VALUES ('1', '1', '1', '1', '1', '1', '1', '我是主观题答案1');
INSERT INTO `t_answer` VALUES ('2', '2', '2', '2', '2', '2', '2', '我是主观题答案2');

-- ----------------------------
-- Table structure for t_blank
-- ----------------------------
DROP TABLE IF EXISTS `t_blank`;
CREATE TABLE `t_blank` (
  `blank_id` int(20) NOT NULL COMMENT '编号',
  `course_id` int(20) DEFAULT NULL COMMENT '科目ID',
  `blank_title` varchar(255) DEFAULT NULL COMMENT '题目',
  `answer` varchar(255) DEFAULT NULL COMMENT '正确答案'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_blank
-- ----------------------------
INSERT INTO `t_blank` VALUES ('2001', '201', '国产ADC目前最6的是（外号）', '小狗');
INSERT INTO `t_blank` VALUES ('2002', '201', '厂长的名字是', '明凯');
INSERT INTO `t_blank` VALUES ('2003', '202', 'java中最重要的思想是', '面向对象');
INSERT INTO `t_blank` VALUES ('2004', '202', 'java你喜欢？', '喜欢');
INSERT INTO `t_blank` VALUES ('2005', '203', '李白是那个朝代的诗人', '唐朝');
INSERT INTO `t_blank` VALUES ('2006', '203', '同意六国的是', '秦始皇');

-- ----------------------------
-- Table structure for t_choice
-- ----------------------------
DROP TABLE IF EXISTS `t_choice`;
CREATE TABLE `t_choice` (
  `choice_id` int(20) NOT NULL COMMENT '编号',
  `course_id` int(20) NOT NULL COMMENT '科目id',
  `choice_title` varchar(255) NOT NULL COMMENT '题目',
  `answer_a` varchar(255) NOT NULL COMMENT '选项A',
  `answer_b` varchar(255) NOT NULL COMMENT '选项B',
  `answer_c` varchar(255) NOT NULL COMMENT '选项C',
  `answer_d` varchar(255) NOT NULL COMMENT '选项D',
  `answer` varchar(255) NOT NULL COMMENT '正确答案',
  `choice_type` int(20) NOT NULL COMMENT '0单选1多选'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_choice
-- ----------------------------
INSERT INTO `t_choice` VALUES ('1001', '2001', '哪个编程语言最流行', 'java', '.net', 'c++', 'php', 'java', '0');
INSERT INTO `t_choice` VALUES ('1002', '2001', 'eliceps用哪种语言', 'c++', 'java', 'c#', 'c语言', 'java', '0');
INSERT INTO `t_choice` VALUES ('1003', '2002', '中国哪个地方美女最多', '杭州', '湖南', '重庆', '北京', '重庆', '0');
INSERT INTO `t_choice` VALUES ('1004', '2002', '我们的祖国是', '美国', '加拿大', '英国', '中国', '中国', '0');
INSERT INTO `t_choice` VALUES ('1005', '2003', '中国有几个直辖市', '1', '2', '3', '4', '4', '0');

-- ----------------------------
-- Table structure for t_course
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(20) DEFAULT NULL,
  `enable` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------
INSERT INTO `t_course` VALUES ('1', '计算二级', '是');
INSERT INTO `t_course` VALUES ('2', 'java二级', '是');
INSERT INTO `t_course` VALUES ('3', 'c++', '是');

-- ----------------------------
-- Table structure for t_exam
-- ----------------------------
DROP TABLE IF EXISTS `t_exam`;
CREATE TABLE `t_exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `paper_id` int(11) DEFAULT NULL,
  `exam_time` varchar(30) DEFAULT NULL,
  `exam_addr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_exam
-- ----------------------------
INSERT INTO `t_exam` VALUES ('1', '1', '1', '2017-10-28 14:30:00', '阿里巴巴机房');
INSERT INTO `t_exam` VALUES ('2', '2', '1', '2017-10-28 17:30:00', '微软机房');

-- ----------------------------
-- Table structure for t_judge
-- ----------------------------
DROP TABLE IF EXISTS `t_judge`;
CREATE TABLE `t_judge` (
  `judge_id` int(20) NOT NULL COMMENT '编号',
  `course_id` int(20) DEFAULT NULL COMMENT '科目id',
  `judge_title` varchar(255) DEFAULT NULL COMMENT '题目',
  `answer` varchar(255) DEFAULT NULL COMMENT '正确答案',
  PRIMARY KEY (`judge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_judge
-- ----------------------------
INSERT INTO `t_judge` VALUES ('3001', '201', 'java是编程语言', '正确');
INSERT INTO `t_judge` VALUES ('3002', '201', '.net被淘汰了', '错误');
INSERT INTO `t_judge` VALUES ('3003', '202', '盖伦是法师', '错误');
INSERT INTO `t_judge` VALUES ('3004', '202', '大嘴是ADC', '正确');
INSERT INTO `t_judge` VALUES ('3005', '203', '洪崖洞是历史遗产', '正确');
INSERT INTO `t_judge` VALUES ('3006', '203', '磁器口是文化街道', '正确');

-- ----------------------------
-- Table structure for t_paper
-- ----------------------------
DROP TABLE IF EXISTS `t_paper`;
CREATE TABLE `t_paper` (
  `paper_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `rule_id` int(11) DEFAULT NULL,
  `paper_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`paper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper
-- ----------------------------
INSERT INTO `t_paper` VALUES ('1', '1', '1', '90');
INSERT INTO `t_paper` VALUES ('2', '1', '2', '90');
INSERT INTO `t_paper` VALUES ('3', '2', '2', '90');
INSERT INTO `t_paper` VALUES ('4', '2', '1', '90');

-- ----------------------------
-- Table structure for t_paper_rule
-- ----------------------------
DROP TABLE IF EXISTS `t_paper_rule`;
CREATE TABLE `t_paper_rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `single_choice_ck` varchar(100) DEFAULT NULL,
  `single_choice_num` int(11) DEFAULT NULL,
  `single_choice_score` decimal(3,1) DEFAULT NULL,
  `mul_choice_ck` varchar(100) DEFAULT NULL,
  `mul_choice_num` int(11) DEFAULT NULL,
  `mul_choice_score` decimal(3,1) DEFAULT NULL,
  `fill_blank_ck` varchar(100) DEFAULT NULL,
  `fill_blank_num` int(11) DEFAULT NULL,
  `fill_blank_score` decimal(3,1) DEFAULT NULL,
  `judge_ck` varchar(100) DEFAULT NULL,
  `judge_num` int(11) DEFAULT NULL,
  `judge_score` decimal(3,1) DEFAULT NULL,
  `sub_question_ck` varchar(100) DEFAULT NULL,
  `sub_question_num` int(11) DEFAULT NULL,
  `sub_question_score` decimal(3,1) DEFAULT NULL,
  `paper_score` int(11) DEFAULT NULL,
  `rule_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_paper_rule
-- ----------------------------
INSERT INTO `t_paper_rule` VALUES ('1', '1', null, '30', '30.0', null, '10', '20.0', '', '10', '10.0', null, '10', '10.0', null, '3', '10.0', '100', '0');
INSERT INTO `t_paper_rule` VALUES ('2', '1', '[1,3,5,7,9,11,13,15,17,19]', null, '10.0', '[1,3,5,7,9,11,13,15,17,19]', null, '20.0', '[1,3,5,7,9,11,13,15,17,19]', null, '10.0', '[1,3,5,7,9,11,13,15,17,19]', null, '10.0', '[3,5,19]', null, '10.0', '100', '1');

-- ----------------------------
-- Table structure for t_read
-- ----------------------------
DROP TABLE IF EXISTS `t_read`;
CREATE TABLE `t_read` (
  `read_id` int(5) NOT NULL,
  `answer_id` int(5) DEFAULT NULL,
  `sub_id` int(5) DEFAULT NULL,
  `sub_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`read_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_read
-- ----------------------------
INSERT INTO `t_read` VALUES ('1', '1', '1', '33');

-- ----------------------------
-- Table structure for t_right
-- ----------------------------
DROP TABLE IF EXISTS `t_right`;
CREATE TABLE `t_right` (
  `right_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `right_name` varchar(20) DEFAULT NULL,
  `right_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`right_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_right
-- ----------------------------
INSERT INTO `t_right` VALUES ('4', '100001', '组卷管理', null);
INSERT INTO `t_right` VALUES ('5', '4', '手动组卷', null);
INSERT INTO `t_right` VALUES ('6', '4', '自动组卷', null);
INSERT INTO `t_right` VALUES ('7', '100001', '科目管理', null);
INSERT INTO `t_right` VALUES ('8', '7', '添加科目', 'RoleInfoController?flag=list');
INSERT INTO `t_right` VALUES ('9', '7', '维护科目', 'RoleInfoController?flag=list');
INSERT INTO `t_right` VALUES ('10', '100001', '考试管理', null);
INSERT INTO `t_right` VALUES ('11', '10', '考试安排', null);
INSERT INTO `t_right` VALUES ('12', '10', '安排信息维护', null);
INSERT INTO `t_right` VALUES ('13', '100001', '试卷管理', null);
INSERT INTO `t_right` VALUES ('14', '13', '预览试卷', null);
INSERT INTO `t_right` VALUES ('15', '13', '试卷信息维护', null);
INSERT INTO `t_right` VALUES ('16', '13', '添加试卷', null);
INSERT INTO `t_right` VALUES ('17', '100001', '试卷规则管理', null);
INSERT INTO `t_right` VALUES ('18', '17', '规则添加', null);
INSERT INTO `t_right` VALUES ('19', '17', '规则维护', null);
INSERT INTO `t_right` VALUES ('20', '100001', '阅卷管理', null);
INSERT INTO `t_right` VALUES ('21', '20', '阅卷', null);
INSERT INTO `t_right` VALUES ('22', '20', '重新阅卷', null);
INSERT INTO `t_right` VALUES ('23', '100001', '成绩管理', null);
INSERT INTO `t_right` VALUES ('24', '23', '录入学生成绩', null);
INSERT INTO `t_right` VALUES ('25', '23', '成绩信息维护', null);
INSERT INTO `t_right` VALUES ('26', '100001', '个人中心', null);
INSERT INTO `t_right` VALUES ('27', '26', '开始考试', null);
INSERT INTO `t_right` VALUES ('28', '26', '成绩查询', null);
INSERT INTO `t_right` VALUES ('29', '26', '个人信息查询', null);
INSERT INTO `t_right` VALUES ('30', '100001', '题库管理', null);
INSERT INTO `t_right` VALUES ('31', '30', '选择题管理', 'choiceController?flag=init');
INSERT INTO `t_right` VALUES ('32', '30', '填空题管理', 'bankController?flag=initAdd&mark=blank');
INSERT INTO `t_right` VALUES ('33', '30', '判断题管理', 'bankController?flag=initAdd&mark=judge');
INSERT INTO `t_right` VALUES ('34', '30', '主观题管理', 'bankController?flag=initAdd&mark=subject');
INSERT INTO `t_right` VALUES ('35', '100001', '用户管理', null);
INSERT INTO `t_right` VALUES ('36', '35', '教师管理', 'TeacherInfoController?flag=list');
INSERT INTO `t_right` VALUES ('37', '35', '学生管理', null);
INSERT INTO `t_right` VALUES ('38', '35', '导入教师信息', null);
INSERT INTO `t_right` VALUES ('39', '35', '导入学生信息', null);
INSERT INTO `t_right` VALUES ('40', '100001', '角色管理', null);
INSERT INTO `t_right` VALUES ('41', '40', '添加角色', null);
INSERT INTO `t_right` VALUES ('42', '40', '角色维护', null);
INSERT INTO `t_right` VALUES ('43', '100001', '权限管理', null);
INSERT INTO `t_right` VALUES ('44', '43', '添加维护', null);
INSERT INTO `t_right` VALUES ('45', '43', '权限维护', null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '学生');
INSERT INTO `t_role` VALUES ('2', '教师');
INSERT INTO `t_role` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for t_role_right
-- ----------------------------
DROP TABLE IF EXISTS `t_role_right`;
CREATE TABLE `t_role_right` (
  `role_right_id` int(11) NOT NULL AUTO_INCREMENT,
  `right_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_right_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_right
-- ----------------------------
INSERT INTO `t_role_right` VALUES ('1', '4', '3');
INSERT INTO `t_role_right` VALUES ('2', '5', '3');
INSERT INTO `t_role_right` VALUES ('3', '6', '3');
INSERT INTO `t_role_right` VALUES ('4', '7', '3');
INSERT INTO `t_role_right` VALUES ('5', '8', '3');
INSERT INTO `t_role_right` VALUES ('6', '9', '3');
INSERT INTO `t_role_right` VALUES ('7', '10', '3');
INSERT INTO `t_role_right` VALUES ('8', '11', '3');
INSERT INTO `t_role_right` VALUES ('9', '12', '3');
INSERT INTO `t_role_right` VALUES ('10', '13', '3');
INSERT INTO `t_role_right` VALUES ('11', '14', '3');
INSERT INTO `t_role_right` VALUES ('12', '15', '3');
INSERT INTO `t_role_right` VALUES ('13', '16', '3');
INSERT INTO `t_role_right` VALUES ('14', '17', '3');
INSERT INTO `t_role_right` VALUES ('15', '18', '3');
INSERT INTO `t_role_right` VALUES ('16', '19', '3');
INSERT INTO `t_role_right` VALUES ('17', '20', '3');
INSERT INTO `t_role_right` VALUES ('18', '21', '3');
INSERT INTO `t_role_right` VALUES ('19', '22', '3');
INSERT INTO `t_role_right` VALUES ('20', '23', '3');
INSERT INTO `t_role_right` VALUES ('21', '24', '3');
INSERT INTO `t_role_right` VALUES ('22', '25', '3');
INSERT INTO `t_role_right` VALUES ('23', '26', '3');
INSERT INTO `t_role_right` VALUES ('24', '27', '3');
INSERT INTO `t_role_right` VALUES ('25', '28', '3');
INSERT INTO `t_role_right` VALUES ('26', '29', '3');
INSERT INTO `t_role_right` VALUES ('27', '30', '3');
INSERT INTO `t_role_right` VALUES ('28', '31', '3');
INSERT INTO `t_role_right` VALUES ('29', '32', '3');
INSERT INTO `t_role_right` VALUES ('30', '33', '3');
INSERT INTO `t_role_right` VALUES ('31', '34', '3');
INSERT INTO `t_role_right` VALUES ('32', '35', '3');
INSERT INTO `t_role_right` VALUES ('33', '36', '3');
INSERT INTO `t_role_right` VALUES ('34', '37', '3');
INSERT INTO `t_role_right` VALUES ('35', '38', '3');
INSERT INTO `t_role_right` VALUES ('36', '39', '3');
INSERT INTO `t_role_right` VALUES ('37', '40', '3');
INSERT INTO `t_role_right` VALUES ('38', '41', '3');
INSERT INTO `t_role_right` VALUES ('39', '42', '3');
INSERT INTO `t_role_right` VALUES ('40', '43', '3');
INSERT INTO `t_role_right` VALUES ('41', '44', '3');
INSERT INTO `t_role_right` VALUES ('42', '45', '3');
INSERT INTO `t_role_right` VALUES ('43', '4', '2');
INSERT INTO `t_role_right` VALUES ('44', '5', '2');
INSERT INTO `t_role_right` VALUES ('45', '6', '2');
INSERT INTO `t_role_right` VALUES ('46', '7', '2');
INSERT INTO `t_role_right` VALUES ('47', '8', '2');
INSERT INTO `t_role_right` VALUES ('48', '9', '2');
INSERT INTO `t_role_right` VALUES ('49', '10', '2');
INSERT INTO `t_role_right` VALUES ('50', '11', '2');
INSERT INTO `t_role_right` VALUES ('51', '12', '2');
INSERT INTO `t_role_right` VALUES ('52', '13', '2');
INSERT INTO `t_role_right` VALUES ('53', '14', '2');
INSERT INTO `t_role_right` VALUES ('54', '15', '2');
INSERT INTO `t_role_right` VALUES ('55', '16', '2');
INSERT INTO `t_role_right` VALUES ('56', '17', '2');
INSERT INTO `t_role_right` VALUES ('57', '18', '2');
INSERT INTO `t_role_right` VALUES ('58', '19', '2');
INSERT INTO `t_role_right` VALUES ('59', '20', '2');
INSERT INTO `t_role_right` VALUES ('60', '21', '2');
INSERT INTO `t_role_right` VALUES ('61', '22', '2');
INSERT INTO `t_role_right` VALUES ('62', '23', '2');
INSERT INTO `t_role_right` VALUES ('63', '24', '2');
INSERT INTO `t_role_right` VALUES ('64', '25', '2');
INSERT INTO `t_role_right` VALUES ('65', '30', '2');
INSERT INTO `t_role_right` VALUES ('66', '31', '2');
INSERT INTO `t_role_right` VALUES ('67', '32', '2');
INSERT INTO `t_role_right` VALUES ('68', '33', '2');
INSERT INTO `t_role_right` VALUES ('69', '34', '2');
INSERT INTO `t_role_right` VALUES ('70', '26', '1');
INSERT INTO `t_role_right` VALUES ('71', '27', '1');
INSERT INTO `t_role_right` VALUES ('72', '28', '1');
INSERT INTO `t_role_right` VALUES ('73', '29', '1');
INSERT INTO `t_role_right` VALUES ('74', null, null);
INSERT INTO `t_role_right` VALUES ('75', null, null);
INSERT INTO `t_role_right` VALUES ('76', null, null);
INSERT INTO `t_role_right` VALUES ('77', null, null);
INSERT INTO `t_role_right` VALUES ('78', null, null);
INSERT INTO `t_role_right` VALUES ('79', null, null);
INSERT INTO `t_role_right` VALUES ('80', null, null);
INSERT INTO `t_role_right` VALUES ('81', null, null);
INSERT INTO `t_role_right` VALUES ('82', null, null);
INSERT INTO `t_role_right` VALUES ('83', null, null);
INSERT INTO `t_role_right` VALUES ('84', null, null);
INSERT INTO `t_role_right` VALUES ('85', null, null);
INSERT INTO `t_role_right` VALUES ('86', null, null);
INSERT INTO `t_role_right` VALUES ('87', null, null);
INSERT INTO `t_role_right` VALUES ('88', null, null);
INSERT INTO `t_role_right` VALUES ('89', null, null);
INSERT INTO `t_role_right` VALUES ('90', null, null);
INSERT INTO `t_role_right` VALUES ('91', null, null);

-- ----------------------------
-- Table structure for t_socre
-- ----------------------------
DROP TABLE IF EXISTS `t_socre`;
CREATE TABLE `t_socre` (
  `score_id` int(5) NOT NULL,
  `stu_id` int(5) DEFAULT NULL,
  `paper_id` int(5) DEFAULT NULL,
  `course_id` int(5) DEFAULT NULL,
  `auto_score` int(3) DEFAULT NULL,
  `sub_score` int(3) DEFAULT NULL,
  `total_score` int(3) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_socre
-- ----------------------------
INSERT INTO `t_socre` VALUES ('1', '1', '1', '1', '33', '55', '88');

-- ----------------------------
-- Table structure for t_student
-- ----------------------------
DROP TABLE IF EXISTS `t_student`;
CREATE TABLE `t_student` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_real_name` varchar(20) DEFAULT NULL,
  `stu_account` varchar(20) DEFAULT NULL,
  `stu_password` varchar(20) DEFAULT NULL,
  `stu_class` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_student
-- ----------------------------
INSERT INTO `t_student` VALUES ('1', '周鑫', '2014131100', '2014131100', '计算机一班');
INSERT INTO `t_student` VALUES ('2', '马荷琪', '2014131101', '2014131101', '计算机一班');
INSERT INTO `t_student` VALUES ('3', '王山', '2014131102', '2014131102', '计算机一班');
INSERT INTO `t_student` VALUES ('4', '黄黛希', '2014131103', '2014131103', '计算机一班');
INSERT INTO `t_student` VALUES ('5', '邬柏', '2014131200', '2014131200', '计算机二班');
INSERT INTO `t_student` VALUES ('6', '冉龙', '2014131201', '2014131201', '计算机二班');
INSERT INTO `t_student` VALUES ('7', '唐鑫梦', '2014131202', '2014131202', '计算机二班');
INSERT INTO `t_student` VALUES ('8', '任克沃', '2014131300', '2014131300', '计算机三班');
INSERT INTO `t_student` VALUES ('9', '吴易', '2014131301', '2014131301', '计算机三班');
INSERT INTO `t_student` VALUES ('10', '王锋', '2014131302', '2014131302', '计算机三班');

-- ----------------------------
-- Table structure for t_subjective
-- ----------------------------
DROP TABLE IF EXISTS `t_subjective`;
CREATE TABLE `t_subjective` (
  `sub_id` int(20) NOT NULL,
  `course_id` int(20) DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_subjective
-- ----------------------------
INSERT INTO `t_subjective` VALUES ('4001', '201', '列举英雄联盟的5个英雄', '盖伦、小炮');
INSERT INTO `t_subjective` VALUES ('4002', '202', '列举编程语言', 'java、c#');
INSERT INTO `t_subjective` VALUES ('4003', '203', '唐朝诗人有哪些', '李白、杜甫');

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_real_name` varchar(20) DEFAULT NULL,
  `tea_account` varchar(20) DEFAULT NULL,
  `tea_password` varchar(20) DEFAULT NULL,
  `tea_remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tea_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '赵楠', '1001', '1001', '无');
INSERT INTO `t_teacher` VALUES ('2', '钱同月', '1002', '1002', '无');
INSERT INTO `t_teacher` VALUES ('3', '李建国', '1003', '1003', '无');
INSERT INTO `t_teacher` VALUES ('4', '王恺栋', '1004', '1004', '无');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1', null);
INSERT INTO `t_user` VALUES ('2', '2', null);
INSERT INTO `t_user` VALUES ('3', '3', null);
INSERT INTO `t_user` VALUES ('4', '4', null);
INSERT INTO `t_user` VALUES ('5', null, '1');
INSERT INTO `t_user` VALUES ('6', null, '2');
INSERT INTO `t_user` VALUES ('7', null, '3');
INSERT INTO `t_user` VALUES ('8', null, '4');
INSERT INTO `t_user` VALUES ('9', null, '5');
INSERT INTO `t_user` VALUES ('10', null, '6');
INSERT INTO `t_user` VALUES ('11', null, '7');
INSERT INTO `t_user` VALUES ('12', null, '8');
INSERT INTO `t_user` VALUES ('13', null, '9');
INSERT INTO `t_user` VALUES ('14', null, '10');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '3');
INSERT INTO `t_user_role` VALUES ('2', '2', '2');
INSERT INTO `t_user_role` VALUES ('3', '3', '2');
INSERT INTO `t_user_role` VALUES ('4', '4', '2');
INSERT INTO `t_user_role` VALUES ('5', '5', '1');
INSERT INTO `t_user_role` VALUES ('6', '6', '1');
INSERT INTO `t_user_role` VALUES ('7', '7', '1');
INSERT INTO `t_user_role` VALUES ('8', '8', '1');
INSERT INTO `t_user_role` VALUES ('9', '9', '1');
INSERT INTO `t_user_role` VALUES ('10', '10', '1');
INSERT INTO `t_user_role` VALUES ('11', '11', '1');
INSERT INTO `t_user_role` VALUES ('12', '12', '1');
INSERT INTO `t_user_role` VALUES ('13', '13', '1');
INSERT INTO `t_user_role` VALUES ('14', '14', '1');
