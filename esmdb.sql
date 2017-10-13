/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : esmdb

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2016-10-30 17:08:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arrangeinfo
-- ----------------------------
DROP TABLE IF EXISTS `arrangeinfo`;
CREATE TABLE `arrangeinfo` (
  `arrangeId` int(11) NOT NULL AUTO_INCREMENT,
  `paperId` int(11) DEFAULT NULL,
  `classId` int(11) NOT NULL,
  `teaId` int(11) DEFAULT NULL,
  `Leader` int(11) DEFAULT NULL,
  `startTime` datetime NOT NULL,
  `endTime` datetime NOT NULL,
  `Address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`arrangeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arrangeinfo
-- ----------------------------

-- ----------------------------
-- Table structure for blankinfo
-- ----------------------------
DROP TABLE IF EXISTS `blankinfo`;
CREATE TABLE `blankinfo` (
  `blankId` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` varchar(100) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`blankId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blankinfo
-- ----------------------------
INSERT INTO `blankinfo` VALUES ('1', '一张标有2HD的3.5英寸软盘，格式化后其容量为( )MB', '1.44', '1');
INSERT INTO `blankinfo` VALUES ('2', '计算机软件是指在计算机硬件上运行的各种程序以及相关（）', '文档', '1');
INSERT INTO `blankinfo` VALUES ('3', '字符串“大学COMPUTER文化基础”（双引号除外），在机器内占用的存储字节数是()', '20.0', '1');
INSERT INTO `blankinfo` VALUES ('4', '根据ASCII码编码原理，现要对50个字符进行编码，至少需要（）个二进制位', '400.0', '1');
INSERT INTO `blankinfo` VALUES ('5', '现代微型计算机的内存储器都采用内存条，使用时把它们插在（）上的插槽中', '主板', '1');
INSERT INTO `blankinfo` VALUES ('6', '计算机能直接识别和执行的语言是（）', '机器语言', '1');
INSERT INTO `blankinfo` VALUES ('7', '存储32×32点阵的汉字字模需要（）B', '128.0', '1');
INSERT INTO `blankinfo` VALUES ('8', '内存空间地址段为2001H——7000H，则其存储空间（）KB', '20.0', '1');
INSERT INTO `blankinfo` VALUES ('9', '第一台电子计算机诞生的国家是（）', '美国', '1');
INSERT INTO `blankinfo` VALUES ('10', '计算机内存储器分为ROM利RAM，其中存放在RAM上的信息将随着断电而消失，因此在关机前，应把信息先存到（）', '外存', '1');
INSERT INTO `blankinfo` VALUES ('11', '第一台电子计算机诞生在四十年代，组成该计算机的基本电子元件是（）', '电子管', '1');
INSERT INTO `blankinfo` VALUES ('12', '计算机内进行算术与逻辑运算的功能部件是（）', '运算器', '1');
INSERT INTO `blankinfo` VALUES ('13', '每条指令都必须具有的、能与其他指令相区别的、规定该指令执行功能的部分称为（）', '操作码', '1');
INSERT INTO `blankinfo` VALUES ('14', 'CD-ROM光盘片的存储容量大约是（）MB', '650.0', '1');
INSERT INTO `blankinfo` VALUES ('15', '（）程序是将计算机高级语言源程序翻译成目标程序的系统软件', '编译', '1');
INSERT INTO `blankinfo` VALUES ('16', '在Word中要复制已选定的文本，可以按下 （）键，同时用鼠标拖动选定文本到指定的位置', 'CTRL', '1');

-- ----------------------------
-- Table structure for choiceinfo
-- ----------------------------
DROP TABLE IF EXISTS `choiceinfo`;
CREATE TABLE `choiceinfo` (
  `choiceId` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answerA` varchar(100) DEFAULT NULL,
  `answerB` varchar(100) DEFAULT NULL,
  `answerC` varchar(100) DEFAULT NULL,
  `answerD` varchar(100) DEFAULT NULL,
  `Answer` varchar(4) DEFAULT NULL,
  `choiceType` int(11) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`choiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choiceinfo
-- ----------------------------
INSERT INTO `choiceinfo` VALUES ('3', '下列说法正确的是（  ）。', '通过网络盗取他人密码只是思想意识问题', '色情、暴力网站不会对青少年产生负面影响', '恶意制造网络病毒属于计算机犯罪', '沉迷于网络游戏不会影响青少年的身心健康', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('4', '“华南虎”事件是人为制造的假新闻，这说明信息具有（  ）。', '共享性', '时效性 ', '真伪性', '价值相对性', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('5', '如果作为Windows中的文件名，合法的是（  ）。', 'ABC①.def ', 'ABC？.exe', 'ABC*.com', 'ABC/.pdf', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('6', '计算机存储器单位Byte称为', '位 ', '字节', '机器字', '字长', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('7', '计算机系统中使用的GB2312-80编码是一种', '英文的编码', '英文的编码', '通用字符的编码', '通用字符的编码', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('8', '下面属于操作系统软件的是', 'Windows', 'Office', 'Internet Explorer', 'PhotoShop', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('9', '为网络信息交换而制定的规则称为', '协议', '拓扑结构　', '模型', '体系结构', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('10', '（　）是为网络中各用户提供服务并管理整个网络的，是整个网络的核心。', '工作站', '服务器', '外围设备', '通信协议', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('11', '计算机系统是指', '主机和外部设备', '主机、显示器、键盘、鼠标', '运控器、存储器、外部设备', '硬件系统和软件系统', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('12', '一个完整的计算机系统包括（  ）。', '主机、键盘和显示器', '系统软件与应用软件', '运算器、控制器和存储器', '硬件系统与软件系统', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('13', '下列各进制数中，数值最小的是（  ）。', '(101001)2 ', '(520)8', '(2B)16 ', '(44)10', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('14', ' 一个字符的ASCII码只用（  ）二进制编码就可以表示。', '5位', '6位', '7位', '8位', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('15', '计算机能直接识别的程序是（  ）。', '源程序', '机器语言程序', '汇编语言程序', '低级语言程序', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('16', '某学校的学生成绩管理软件是（  ）。', '应用软件', '系统软件', '工具软件', '编辑软件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('17', '在计算机运行时，把程序和数据一起存放在内存中，这是1946年由（  ）领导的小组正式提出并论证的。', '图灵', '布尔', '冯·诺依曼', '爱因斯坦', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('18', 'Windows系统的剪贴板式（  ）中的一块区域。', '硬盘', '软盘', '内存', '光盘', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('19', '以下（  ）的文件被称为文本文件。', '以EXE为扩展名', '以TXT为扩展名', '以COM为扩展名', '以PPS为扩展名', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('20', '（  ）是办公自动化系统的关键设备。', '计算机', '交换机', '复印机', '路由器', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('21', '在Word应用中，完成“粘贴”功能的组合键是（  ）。', 'Ctrl+V ', 'Ctrl+Z ', ' Ctrl+C', 'Ctrl+E', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('22', '当向Excel工作表的单元格中输入公式时，使用单元格地址D$2引用D列第2行单元格的内容，该单元格的引用称为（  ）。', '相对地址引用', '绝对地址引用', '交叉地址引用', '混合地址引用', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('23', 'PowerPoint2003演示文稿文件的默认的扩展名为（  ）。', 'PPS ', 'PPT', 'PPW', 'PPN', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('24', 'Internet采用的协议体系结构是（  ）。', 'OSI 参考模型 ', 'TCP/IP体系结构', 'ISO模型 ', '7层体系结构', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('25', '在数据通信过程中，将模拟信号还原成数字信号的过程叫做（  ）。', '流量控制', '差错控制', '调制', '解调', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('26', '为网络数据交换而制定的规则、约定和标准称为（  ）。', '协议 ', '体系结构', '模型 ', '网络拓扑', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('27', 'USB是一种', '中央处理器', '通用串行总线接口', '不间断电源　', '显示器', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('28', '十进制数13转换为等价的二进制数的结果为', '2.0', '8.0', '16.0', '44.0', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('29', '我们通常所说的“裸机”指的是', '只装备有操作系统的计算机', '不带输入输出设备的计算机', '未装备任何软件的计算机', '计算机主机暴露在外', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('30', '用计算机进行资料检索是属于计算机应用中的', '数据处理', '科学计算', '实时控制', '人工智能', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('31', '在Excel系统默认情况下，单元格地址使用的是', '相对引用　　　　　　　　', '绝对引用', '混合应用', 'RC引用', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('32', '在PowerPoint系统中，默认演示文稿的扩展名是', 'PNG　　　　　　　　　　', 'PPT', 'PPS', 'POT', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('33', '数据库中，表的一行可以叫做', '一条记录　　　　　　　　', '一个字节', '一项属性', '一个关系', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('34', '所谓媒体是指', '表示和传播信息的载体　', '各种信息的编码', '计算机输入与输出的信息', '计算机屏幕显示的信息', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('35', '我国颁布的《计算机软件保护条例》最主要是保护（　　）的利益', '使用软件的用户', '销售软件的商家', '软件的开发者', '软件的管理部门', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('36', '计算机网络设备中的HUB是指', '集线器　', '网关', '路由器', '网桥', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('37', '在计算机网络中，表征数据传输可靠性的指标是', '传输率　　　　　　　　　', '误码率', '信息容量', '频带利用率', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('38', '在Windows系统及其应用程序中，菜单是系统功能的体现。若当前某项菜单中有淡字项，则表示该功能（　　）。', '其设置当前无效', '用户当前不能使用', '一般用户不能使用', '将弹出下一级菜单', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('39', '在MS-DOS及Windows系统中，进行查找操作时，可使用“*”代替所在位置的任意字符串，称为通配符，其作用是（　）', '便于一次处理多个文件', '便于别一个文件', '便于给一个文件取名', '便于保存一个文件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('40', '在Word系统中，进行“粘贴”的组合键是', 'Ctrl+X', 'Ctrl+V', 'Ctrl+C　', 'Ctrl+A', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('41', '1. 计算机的发展大体可（按其组成的器件）分为（）阶段', '.六', '五 ', '.四 ', '.三', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('42', '计算机中的运算器能进行（）', '加法和减法运算 ', '算术运算和逻辑运算 ', '算术运算和逻辑运算 ', '算术运算和逻辑运算 ', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('43', '计算机软件是指所使用的（）', '各种程序的集合', '.有关的文档资料', '各种指令的集合', '.数据、程序和文档资料的集合', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('44', '微型计算机系统采用总线结构连接CPU、存储器和外部设备。总线通常由三部分组成，它们是（）。', '.数据总线、地址总线和控制总线', '数据总线、信息总线和传输总线', '.地址总线、运算总线和逻辑总线', '逻辑总线、传输总线和通讯总线', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('45', '下列那个数最大（）。', '.(10101111)2 ', '(210)8', '(AB)16 ', 'D32', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('46', '在计算机系统中，CAD表示（）', '.计算机辅助教学', '计算机辅助设计', '计算机辅助测试', '计算机辅助制造', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('47', '获取指令、决定指令的执行顺序，向相应的硬件部件发送指令，这是（）的基本功能。', '运算器', '控制器', '内存储器', '输入/输出设备', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('48', 'Visual Basic是一种（）程序设计语言。', '面向机器', '面向过程', '面向事件', '面向对象', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('49', 'Windows系统所提供的剪贴板，实际上是（）', '一段连续的硬盘区域', '一段连续的内存区域', '一个多媒体应用程序', '.应用程序之间进行数据交换的工具', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('50', '在MS-DOS及Windows系统中，操作文件时使用通配符的作用是（）', '便于一次处理多个文件', '便于识别一个文件', '便于给一个文件取名', '便于保存一个文件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('51', '在Windows系统中，若在某菜单中有淡字项，则表示该功能（）', '一般用户不能使用', '将弹出下一级菜单', '其设置当前无效', '用户当前不能使用', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('52', '若需将WORD系统的“打开”对话框以图形方式置于当前编排的文档中，应先选择“文件”菜单下的“打开”功能，进入其对话框后按（）键，将其复制到剪贴板中，再重新回到编辑状态下，光标定位后单击常用工具栏上的“粘贴”按钮。', 'Print Screen ', ' Ctrl+Print Screen', '. Alt+Print Screen  ', 'Shift+Print Screen', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('53', '在Excel系统的工作表中，当前单元格只能是（）。', '单元格指针选定的一个 ', '.选中的一行  ', '选中的区域 ', '.选中的一列', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('54', '在Excel工作表某单元格中，输入了公式“=AVERAGE(C3:E6,F8)”,其作用是（）', '求C3~E6和F8单元格的和 ', '求C3~E6单元格的和', '.求C3~E6和F8单元格的平均值 ', '求C3~E6单元格的平均值', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('55', '中文PowerPoint系统是一个（）软件。', '文字处理 ', '.表格处理 ', '.图形处理 ', '.文稿演示', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('56', '表征数据传输可靠性的指标是（）', '.误码率 ', '.信道容量', '传输速率 ', '.频带利用率', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('57', 'MODEM是用户上网时的一个信号转换设备，其“解调”功能是指（）。', '将脉冲数字信号转换成模拟信号的过程', '.在相互连接的两个局域网间进行双向的传送、通信的过程', '.将模拟信号转换成脉冲数字信号的过程', '把多个信号组合起来在一条物理电缆上进行传输的过程', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('58', '局域网操作系统中最重要与最基础的网络服务功能是（）', '.通信服务 ', '.信息服务 ', '.网络管理服务 ', '.文件服务', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('59', '计算机病毒是一段人为制造的程序，若在一台计算机的（）该程序，则说明该计算机系统已被感染上病毒。', '屏幕上出现', '内存中驻留   ', '.软盘上含有', '.某个文件中包含', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('60', '不能作为计算机输出设备的是（  ）。', '硬盘', '光盘', '摄像头', '打印机', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('61', '计算机数据库系统中，数据类型中没有（  ）。', '货币型', '备注型', '科学型 ', '逻辑型', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('62', '下列说法正确的是（  ）。', '通过网络盗取他人密码只是思想意识问题', '色情、暴力网站不会对青少年产生负面影响', '恶意制造网络病毒属于计算机犯罪', '沉迷于网络游戏不会影响青少年的身心健康', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('63', '“华南虎”事件是人为制造的假新闻，这说明信息具有（  ）。', '共享性', '时效性 ', '真伪性', '价值相对性', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('64', '如果作为Windows中的文件名，合法的是（  ）。', 'ABC①.def ', 'ABC？.exe', 'ABC*.com', 'ABC/.pdf', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('65', '计算机存储器单位Byte称为', '位 ', '字节', '机器字', '字长', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('66', '计算机系统中使用的GB2312-80编码是一种', '英文的编码', '英文的编码', '通用字符的编码', '通用字符的编码', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('67', '下面属于操作系统软件的是', 'Windows', 'Office', 'Internet Explorer', 'PhotoShop', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('68', '为网络信息交换而制定的规则称为', '协议', '拓扑结构　', '模型', '体系结构', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('69', '（　）是为网络中各用户提供服务并管理整个网络的，是整个网络的核心。', '工作站', '服务器', '外围设备', '通信协议', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('70', '计算机系统是指', '主机和外部设备', '主机、显示器、键盘、鼠标', '运控器、存储器、外部设备', '硬件系统和软件系统', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('71', '一个完整的计算机系统包括（  ）。', '主机、键盘和显示器', '系统软件与应用软件', '运算器、控制器和存储器', '硬件系统与软件系统', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('72', '下列各进制数中，数值最小的是（  ）。', '(101001)2 ', '(520)8', '(2B)16 ', '(44)10', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('73', ' 一个字符的ASCII码只用（  ）二进制编码就可以表示。', '5位', '6位', '7位', '8位', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('74', '计算机能直接识别的程序是（  ）。', '源程序', '机器语言程序', '汇编语言程序', '低级语言程序', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('75', '某学校的学生成绩管理软件是（  ）。', '应用软件', '系统软件', '工具软件', '编辑软件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('76', '在计算机运行时，把程序和数据一起存放在内存中，这是1946年由（  ）领导的小组正式提出并论证的。', '图灵', '布尔', '冯·诺依曼', '爱因斯坦', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('77', 'Windows系统的剪贴板式（  ）中的一块区域。', '硬盘', '软盘', '内存', '光盘', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('78', '以下（  ）的文件被称为文本文件。', '以EXE为扩展名', '以TXT为扩展名', '以COM为扩展名', '以PPS为扩展名', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('79', '（  ）是办公自动化系统的关键设备。', '计算机', '交换机', '复印机', '路由器', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('80', '在Word应用中，完成“粘贴”功能的组合键是（  ）。', 'Ctrl+V ', 'Ctrl+Z ', ' Ctrl+C', 'Ctrl+E', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('81', '当向Excel工作表的单元格中输入公式时，使用单元格地址D$2引用D列第2行单元格的内容，该单元格的引用称为（  ）。', '相对地址引用', '绝对地址引用', '交叉地址引用', '混合地址引用', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('82', 'PowerPoint2003演示文稿文件的默认的扩展名为（  ）。', 'PPS ', 'PPT', 'PPW', 'PPN', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('83', 'Internet采用的协议体系结构是（  ）。', 'OSI 参考模型 ', 'TCP/IP体系结构', 'ISO模型 ', '7层体系结构', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('84', '在数据通信过程中，将模拟信号还原成数字信号的过程叫做（  ）。', '流量控制', '差错控制', '调制', '解调', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('85', '为网络数据交换而制定的规则、约定和标准称为（  ）。', '协议 ', '体系结构', '模型 ', '网络拓扑', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('86', 'USB是一种', '中央处理器', '通用串行总线接口', '不间断电源　', '显示器', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('87', '十进制数13转换为等价的二进制数的结果为', '2.0', '8.0', '16.0', '44.0', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('88', '我们通常所说的“裸机”指的是', '只装备有操作系统的计算机', '不带输入输出设备的计算机', '未装备任何软件的计算机', '计算机主机暴露在外', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('89', '用计算机进行资料检索是属于计算机应用中的', '数据处理', '科学计算', '实时控制', '人工智能', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('90', '在Excel系统默认情况下，单元格地址使用的是', '相对引用　　　　　　　　', '绝对引用', '混合应用', 'RC引用', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('91', '在PowerPoint系统中，默认演示文稿的扩展名是', 'PNG　　　　　　　　　　', 'PPT', 'PPS', 'POT', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('92', '数据库中，表的一行可以叫做', '一条记录　　　　　　　　', '一个字节', '一项属性', '一个关系', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('93', '所谓媒体是指', '表示和传播信息的载体　', '各种信息的编码', '计算机输入与输出的信息', '计算机屏幕显示的信息', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('94', '我国颁布的《计算机软件保护条例》最主要是保护（　　）的利益', '使用软件的用户', '销售软件的商家', '软件的开发者', '软件的管理部门', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('95', '计算机网络设备中的HUB是指', '集线器　', '网关', '路由器', '网桥', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('96', '在计算机网络中，表征数据传输可靠性的指标是', '传输率　　　　　　　　　', '误码率', '信息容量', '频带利用率', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('97', '在Windows系统及其应用程序中，菜单是系统功能的体现。若当前某项菜单中有淡字项，则表示该功能（　　）。', '其设置当前无效', '用户当前不能使用', '一般用户不能使用', '将弹出下一级菜单', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('98', '在MS-DOS及Windows系统中，进行查找操作时，可使用“*”代替所在位置的任意字符串，称为通配符，其作用是（　）', '便于一次处理多个文件', '便于别一个文件', '便于给一个文件取名', '便于保存一个文件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('99', '在Word系统中，进行“粘贴”的组合键是', 'Ctrl+X', 'Ctrl+V', 'Ctrl+C　', 'Ctrl+A', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('100', '1. 计算机的发展大体可（按其组成的器件）分为（）阶段', '.六', '五 ', '.四 ', '.三', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('101', '计算机中的运算器能进行（）', '加法和减法运算 ', '算术运算和逻辑运算 ', '算术运算和逻辑运算 ', '算术运算和逻辑运算 ', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('102', '计算机软件是指所使用的（）', '各种程序的集合', '.有关的文档资料', '各种指令的集合', '.数据、程序和文档资料的集合', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('103', '微型计算机系统采用总线结构连接CPU、存储器和外部设备。总线通常由三部分组成，它们是（）。', '.数据总线、地址总线和控制总线', '数据总线、信息总线和传输总线', '.地址总线、运算总线和逻辑总线', '逻辑总线、传输总线和通讯总线', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('104', '下列那个数最大（）。', '.(10101111)2 ', '(210)8', '(AB)16 ', 'D32', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('105', '在计算机系统中，CAD表示（）', '.计算机辅助教学', '计算机辅助设计', '计算机辅助测试', '计算机辅助制造', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('106', '获取指令、决定指令的执行顺序，向相应的硬件部件发送指令，这是（）的基本功能。', '运算器', '控制器', '内存储器', '输入/输出设备', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('107', 'Visual Basic是一种（）程序设计语言。', '面向机器', '面向过程', '面向事件', '面向对象', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('108', 'Windows系统所提供的剪贴板，实际上是（）', '一段连续的硬盘区域', '一段连续的内存区域', '一个多媒体应用程序', '.应用程序之间进行数据交换的工具', 'B', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('109', '在MS-DOS及Windows系统中，操作文件时使用通配符的作用是（）', '便于一次处理多个文件', '便于识别一个文件', '便于给一个文件取名', '便于保存一个文件', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('110', '在Windows系统中，若在某菜单中有淡字项，则表示该功能（）', '一般用户不能使用', '将弹出下一级菜单', '其设置当前无效', '用户当前不能使用', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('111', '若需将WORD系统的“打开”对话框以图形方式置于当前编排的文档中，应先选择“文件”菜单下的“打开”功能，进入其对话框后按（）键，将其复制到剪贴板中，再重新回到编辑状态下，光标定位后单击常用工具栏上的“粘贴”按钮。', 'Print Screen ', ' Ctrl+Print Screen', '. Alt+Print Screen  ', 'Shift+Print Screen', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('112', '在Excel系统的工作表中，当前单元格只能是（）。', '单元格指针选定的一个 ', '.选中的一行  ', '选中的区域 ', '.选中的一列', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('113', '在Excel工作表某单元格中，输入了公式“=AVERAGE(C3:E6,F8)”,其作用是（）', '求C3~E6和F8单元格的和 ', '求C3~E6单元格的和', '.求C3~E6和F8单元格的平均值 ', '求C3~E6单元格的平均值', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('114', '中文PowerPoint系统是一个（）软件。', '文字处理 ', '.表格处理 ', '.图形处理 ', '.文稿演示', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('115', '表征数据传输可靠性的指标是（）', '.误码率 ', '.信道容量', '传输速率 ', '.频带利用率', 'A', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('116', 'MODEM是用户上网时的一个信号转换设备，其“解调”功能是指（）。', '将脉冲数字信号转换成模拟信号的过程', '.在相互连接的两个局域网间进行双向的传送、通信的过程', '.将模拟信号转换成脉冲数字信号的过程', '把多个信号组合起来在一条物理电缆上进行传输的过程', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('117', '局域网操作系统中最重要与最基础的网络服务功能是（）', '.通信服务 ', '.信息服务 ', '.网络管理服务 ', '.文件服务', 'D', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('118', '计算机病毒是一段人为制造的程序，若在一台计算机的（）该程序，则说明该计算机系统已被感染上病毒。', '屏幕上出现', '内存中驻留   ', '.软盘上含有', '.某个文件中包含', 'C', '1', '1', '');
INSERT INTO `choiceinfo` VALUES ('119', '计算机系统内部中，传送信息常用的总线类型有（  ）。', '代码总线 ', '数据总线', '控制总线', '地址总线 ', 'BCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('120', '二进制数的主要优越性有（  ）。', '技术可行', '运算简单', '计算速度快', '计算精度高', 'ABC', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('121', '与低级程序设计语言相比，用高级语言编写的程序其主要优点有（   ）。', '通用性强', '交流方便 ', '执行效率高 ', '学习、掌握容易', 'ABD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('122', '媒体是指表示及传播信息的载体，如（  ）等都是媒体。', '文字', '声音', '图像', '桌面', 'ABC', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('123', '据统计，计算机病毒扩散的主要途径有（  ）。', '软件复制 ', '网络传播', '磁盘拷贝', '运行带宏的办公文件', 'ABCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('124', '利用Word系统进行文字处理时，经常使用“剪贴板”来完成相应功能。通常用到与“剪贴板”有关操作的是（　）。', '选定　', '剪切', '粘贴', '复制', 'ABCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('125', '计算机联网的基本目的有', '资源共享', '数据通信', '信息处理', '电子商务', 'AB', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('126', '计算机外存储器与内存储器相比具有(　　)等优点', '存储容量大', '存取速度快', '存取速度慢', '信息可长期保存', 'AD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('127', '计算机病毒的主要特点有', '传染性', '安全性', '潜伏性', '破坏性', 'ACD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('128', '在Windows系统中，常用的菜单有（　　）几种类型', '控制菜单', '快捷菜单', '对话菜单', '录入菜单', 'AB', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('129', '计算机中，存储容量的大小单位有（）。', 'bit ', '.Byte', '.KB ', 'MB', 'ABCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('130', '计算机联网的目的有（）', '资源共享', '数据通信', '信息处理', '协同工作', 'ABD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('131', '关于ASCII码，以下表述正确的有（ ', '.是一种国际通用字符编码  ', '其基本集包括 128个字符 ', '是美国标准信息交换码的简称 ', '每个字符由8位二进制构成', 'ABC', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('132', '计算机操作系统的功能是（ ）。', '把源程序代码转换成目标代码', '实现用户和计算机之间的接口', '成硬件与软件之间的协调运行', '.控制计算机资源及程序', 'BCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('133', '防止计算机感染病毒的有效方法是（）。', '不用带毒盘片 ', '在硬盘上安装防火墙软件    ', '定期对硬盘进行格式化', '进行联网操作  ', 'AB', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('134', '在Windows系统的资源管理器中可完成（）。', '文字处理 ', '.文件操作   ', '文件夹操作  ', '格式化磁盘', 'BCD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('135', '多媒体技术的应用主要包括（）。', '信息管理  ', '文字处理          ', '.辅助设计', '多媒体通信    ', 'AD', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('136', '用Word系统进行文档编辑时，移动选定内容可采用的方法有（）。', '拖动/放置  ', '剪切/定位/粘贴', '复制/粘贴', '.定位/粘贴 ', 'AB', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('137', '在Excel系统中，向单元格内输入文字时，如果已经填满了一个单元格，光标到了单元格边线后还继续输入，则可能出现的情况是（）。', '把单元格向下扩大一行，新输入的内容自动转到本单元格下一行左端', '把单元格向右扩大一列，新输入的内容继续向右延伸', '新输入的内容继续向右延伸，本单元格边线被破坏', '新输入的内容继续向右延伸，本单元格边线不被破坏', 'ABC', '2', '1', '');
INSERT INTO `choiceinfo` VALUES ('138', '数据库中常见的数据结构模型包括（ ）。', '概念模型 ', '关系模型   ', '.网状模型', '层次模型', 'BCD', '2', '1', '');

-- ----------------------------
-- Table structure for courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courseinfo`;
CREATE TABLE `courseinfo` (
  `courseId` int(11) NOT NULL AUTO_INCREMENT,
  `courseName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courseinfo
-- ----------------------------
INSERT INTO `courseinfo` VALUES ('1', 'Java');

-- ----------------------------
-- Table structure for judgeinfo
-- ----------------------------
DROP TABLE IF EXISTS `judgeinfo`;
CREATE TABLE `judgeinfo` (
  `judgeId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(3) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`judgeId`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of judgeinfo
-- ----------------------------
INSERT INTO `judgeinfo` VALUES ('1', ' 中央处理器（CPU）是由控制器、外围设备和存储器组成。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('2', '计算机与其他计算工具的本质区别是它能够存储程序和控制程序。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('3', '用Alt+PrintScreen可以将活动窗口作为一张图片复制到剪贴板中。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('4', 'Windows是单用户操作系统。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('5', '在Windows系统中，既可使用鼠标，又可使用键盘进行操作。因此，二者缺一不可。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('6', '文件的扩展名一定代表该文件的类型。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('7', '办公自动化中的计算机网络技术大大提高了系统的价值和水平。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('8', 'Word系统提供了强大的数据保护功能，即使用户在编辑操作中连续出现多次误删，也可以通过“撤销”功能予以恢复。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('9', '在PowerPoint系统中，选择“格式”菜单下的“幻灯片配色方案”与“背景”功能的作用是相同的。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('10', '多媒体压缩技术、人机交互技术和分布式处理技术的出现促进了多媒体系统的产生和发展。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('11', '在关系数据模型中，交换任意两行的位置将影响数据的实际含义。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('12', '电子商务配合先进的物流系统，给人们带来网络购物的全新感受。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('13', '“防火墙”，是指一种将内部网和公众访问（如Internet）分开的方法，实际上是一种隔离技术，它是提供信息安全服务、实现网络和信息安全的基础设施。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('14', '为了保证计算机正常使用和信息安全，除了防范计算机病毒外，还应该防范黑客攻击和恶意插件等。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('15', ' 数据安全的最好方法之一是随时进行数据备份。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('16', '在Word系统中，当前已选择了“文件”菜单下的“打开…”功能，则按键盘上的Alt+Print Screen 键可将“打开”对话框复制到剪贴板中。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('17', 'Excel系统进行公式运算时，相对引用的单元格地址，在进行复制时会自动发生改变。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('18', '在PowerPoint系统中，必须给每张幻灯片赋予一个文件名才能保存。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('19', '多媒体计算机可以处理图像和声音信息，但不能处理文字', '2', '1');
INSERT INTO `judgeinfo` VALUES ('20', '在计算机网络通信中，数据处理主要由通信子网完成，数据传输主要由资源子网完成', '2', '1');
INSERT INTO `judgeinfo` VALUES ('21', '用户向对方发送电子邮件时，是直接发送到接收者的计算机中进行存储的', '2', '1');
INSERT INTO `judgeinfo` VALUES ('22', '计算机网络病毒的制造者称为计算机黑客', '2', '1');
INSERT INTO `judgeinfo` VALUES ('23', '不良信息传播、计算机病毒和网络犯罪是Internet上亟待解决的问题。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('24', '计算机用于机器人的研究属于人工智能的应用', '1', '1');
INSERT INTO `judgeinfo` VALUES ('25', '十进制数的小数部分转换为二进制小数可采用乘2取整的方法。　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('26', 'CAD/CAM是计算机辅助设计/计算机辅助制造的缩写', '1', '1');
INSERT INTO `judgeinfo` VALUES ('27', '计算机的CPU能直接读写内存、硬盘和光盘中的信息', '2', '1');
INSERT INTO `judgeinfo` VALUES ('28', '一台计算机上只能同时安装有一种操作系统', '2', '1');
INSERT INTO `judgeinfo` VALUES ('29', '．操作系统的内核或核心程序随系统的远行而驻留在内存中，而另一部分程序存放在外存中，需要时由外存调入内存运行。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('30', 'Windows系统的“控制面板”主要是用来对当前系统进行硬件设备管理和设置用户操作环境。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('31', '计算机被称为电脑，它完全可以代替人进行工作。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('32', '计算机与其它智能设备的本质区别是它能够存储和控制程序。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('33', '机器语言又叫机器指令，是能够直接被计算机识别和执行的计算机程序设计语言。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('34', '微机的运算速度通常是用单位时间内执行指令的条数来表示的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('35', '程序的存储式执行是当前计算机自动工作的核心。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('36', '在内存或磁盘中使用ASCII码或汉字内码保存信息，是因为这两种代码最简单、科学和形象。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('37', '文字处理软件是一个系统软件，因为我们使用计算机时都要用到它。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('38', '在计算机系统中，硬件是基础，软件是灵魂，它们只有很好地协调配合，才能充分地发挥计算机所具有的功能。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('39', '计算机是以二进制代码来表达信息的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('40', '在Windows系统中，可随时按F1键获取在线帮助。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('41', '将剪贴板中的内容粘贴到文档中来后，其内容在剪贴板中将不存在了。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('42', '在Word系统中，使用“Alt”键可以改变“插入”编辑状态为“改写”编辑状态。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('43', 'Excel系统的公式运算只能是数值类型的数据。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('44', '在PowerPoint系统中，各张幻灯片之间均可使用不同的版式。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('45', '数据安全的最好方法是随时备份数据库。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('46', '计算机病毒是指对计算机中的数据进行破坏作用并能自我复制的特殊文件。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('47', '电子邮件是用户通过计算机网络与其它用户交换信件的一种工具，其地址的一般形式为：用户名@邮件服务器。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('48', '使用双绞线、光纤、通信卫星等传输介质将多台独立的计算机系统连接起来就可以组成一个计算机网络。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('49', '与电视会议比较起来，利用计算机网络召开电子会议具有许多优点，比如，能够利用计算机存储设备记录会议内容，便于存档和进一步处理。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('50', ' 软件研制部门采用设计病毒来惩罚非法拷贝软件行为的作法是不妥的，也是法律不允许的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('51', 'CAD/CAM是计算机辅助设计/计算机辅助制造的缩写', '1', '1');
INSERT INTO `judgeinfo` VALUES ('52', '计算机用于机器人的研究属于人工智能的应用', '1', '1');
INSERT INTO `judgeinfo` VALUES ('53', '计算机软件是指所使用的各种程序的集合，不包括有关的数据和文档资料', '2', '1');
INSERT INTO `judgeinfo` VALUES ('54', '计算机的CPU能直接读写内存、硬盘和光盘中的信息', '2', '1');
INSERT INTO `judgeinfo` VALUES ('55', '计算机中一个字节是16个二进制位', '2', '1');
INSERT INTO `judgeinfo` VALUES ('56', '十进制小数转换为二进制小数可用乘2取整的方法', '1', '1');
INSERT INTO `judgeinfo` VALUES ('57', '显示器的分辨率越高，显示的图像越清晰，要求的扫描频率也越快', '1', '1');
INSERT INTO `judgeinfo` VALUES ('58', '一台计算机上只能安装有一种操作系统', '2', '1');
INSERT INTO `judgeinfo` VALUES ('59', '在Windows系统中，如果删除了优盘上的文件，该文件被送入“回收站”，并可以恢复', '2', '1');
INSERT INTO `judgeinfo` VALUES ('60', 'Windows中，剪贴板使用的是内存的一部分空间', '1', '1');
INSERT INTO `judgeinfo` VALUES ('61', 'Word具有分栏功能，在进行操作时，各栏的宽度必须设为相同', '2', '1');
INSERT INTO `judgeinfo` VALUES ('62', '在Excel中，公式相对引用的单元格地址，在进行公式复制时会自动发生改变', '1', '1');
INSERT INTO `judgeinfo` VALUES ('63', '在PowerPoint中，必须给每张幻灯片赋予一个文件名才能保存', '2', '1');
INSERT INTO `judgeinfo` VALUES ('64', '多媒体技术中的关键技术之一是数据的压缩与解压缩，其目的是为了提高存储和传输的效率。 ', '1', '1');
INSERT INTO `judgeinfo` VALUES ('65', 'WWW（万维网）是一种浏览器', '2', '1');
INSERT INTO `judgeinfo` VALUES ('66', '用户在连接网络时，使用IP地址与域名地址的效果是一样的', '1', '1');
INSERT INTO `judgeinfo` VALUES ('67', '用户向对方发送电子邮件时，是直接发送到接收者的计算机中进行存储的', '2', '1');
INSERT INTO `judgeinfo` VALUES ('68', '知识产权是指人类通过创造性的智力劳动而获得的一项智力性的财产权', '1', '1');
INSERT INTO `judgeinfo` VALUES ('69', '计算机病毒可以通过电子邮件传播', '1', '1');
INSERT INTO `judgeinfo` VALUES ('70', '目前，在技术上只能用计算机软件来防治计算机病毒', '2', '1');
INSERT INTO `judgeinfo` VALUES ('71', ' 中央处理器（CPU）是由控制器、外围设备和存储器组成。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('72', '计算机与其他计算工具的本质区别是它能够存储程序和控制程序。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('73', '用Alt+PrintScreen可以将活动窗口作为一张图片复制到剪贴板中。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('74', 'Windows是单用户操作系统。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('75', '在Windows系统中，既可使用鼠标，又可使用键盘进行操作。因此，二者缺一不可。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('76', '文件的扩展名一定代表该文件的类型。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('77', '办公自动化中的计算机网络技术大大提高了系统的价值和水平。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('78', 'Word系统提供了强大的数据保护功能，即使用户在编辑操作中连续出现多次误删，也可以通过“撤销”功能予以恢复。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('79', '在PowerPoint系统中，选择“格式”菜单下的“幻灯片配色方案”与“背景”功能的作用是相同的。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('80', '多媒体压缩技术、人机交互技术和分布式处理技术的出现促进了多媒体系统的产生和发展。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('81', '在关系数据模型中，交换任意两行的位置将影响数据的实际含义。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('82', '电子商务配合先进的物流系统，给人们带来网络购物的全新感受。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('83', '“防火墙”，是指一种将内部网和公众访问（如Internet）分开的方法，实际上是一种隔离技术，它是提供信息安全服务、实现网络和信息安全的基础设施。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('84', '为了保证计算机正常使用和信息安全，除了防范计算机病毒外，还应该防范黑客攻击和恶意插件等。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('85', ' 数据安全的最好方法之一是随时进行数据备份。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('86', '在Word系统中，当前已选择了“文件”菜单下的“打开…”功能，则按键盘上的Alt+Print Screen 键可将“打开”对话框复制到剪贴板中。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('87', 'Excel系统进行公式运算时，相对引用的单元格地址，在进行复制时会自动发生改变。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('88', '在PowerPoint系统中，必须给每张幻灯片赋予一个文件名才能保存。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('89', '多媒体计算机可以处理图像和声音信息，但不能处理文字', '2', '1');
INSERT INTO `judgeinfo` VALUES ('90', '在计算机网络通信中，数据处理主要由通信子网完成，数据传输主要由资源子网完成', '2', '1');
INSERT INTO `judgeinfo` VALUES ('91', '用户向对方发送电子邮件时，是直接发送到接收者的计算机中进行存储的', '2', '1');
INSERT INTO `judgeinfo` VALUES ('92', '计算机网络病毒的制造者称为计算机黑客', '2', '1');
INSERT INTO `judgeinfo` VALUES ('93', '不良信息传播、计算机病毒和网络犯罪是Internet上亟待解决的问题。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('94', '计算机用于机器人的研究属于人工智能的应用', '1', '1');
INSERT INTO `judgeinfo` VALUES ('95', '十进制数的小数部分转换为二进制小数可采用乘2取整的方法。　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('96', 'CAD/CAM是计算机辅助设计/计算机辅助制造的缩写', '1', '1');
INSERT INTO `judgeinfo` VALUES ('97', '计算机的CPU能直接读写内存、硬盘和光盘中的信息', '2', '1');
INSERT INTO `judgeinfo` VALUES ('98', '一台计算机上只能同时安装有一种操作系统', '2', '1');
INSERT INTO `judgeinfo` VALUES ('99', '．操作系统的内核或核心程序随系统的远行而驻留在内存中，而另一部分程序存放在外存中，需要时由外存调入内存运行。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('100', 'Windows系统的“控制面板”主要是用来对当前系统进行硬件设备管理和设置用户操作环境。　　　　　', '1', '1');
INSERT INTO `judgeinfo` VALUES ('101', '计算机被称为电脑，它完全可以代替人进行工作。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('102', '计算机与其它智能设备的本质区别是它能够存储和控制程序。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('103', '机器语言又叫机器指令，是能够直接被计算机识别和执行的计算机程序设计语言。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('104', '微机的运算速度通常是用单位时间内执行指令的条数来表示的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('105', '程序的存储式执行是当前计算机自动工作的核心。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('106', '在内存或磁盘中使用ASCII码或汉字内码保存信息，是因为这两种代码最简单、科学和形象。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('107', '文字处理软件是一个系统软件，因为我们使用计算机时都要用到它。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('108', '在计算机系统中，硬件是基础，软件是灵魂，它们只有很好地协调配合，才能充分地发挥计算机所具有的功能。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('109', '计算机是以二进制代码来表达信息的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('110', '在Windows系统中，可随时按F1键获取在线帮助。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('111', '将剪贴板中的内容粘贴到文档中来后，其内容在剪贴板中将不存在了。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('112', '在Word系统中，使用“Alt”键可以改变“插入”编辑状态为“改写”编辑状态。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('113', 'Excel系统的公式运算只能是数值类型的数据。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('114', '在PowerPoint系统中，各张幻灯片之间均可使用不同的版式。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('115', '数据安全的最好方法是随时备份数据库。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('116', '计算机病毒是指对计算机中的数据进行破坏作用并能自我复制的特殊文件。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('117', '电子邮件是用户通过计算机网络与其它用户交换信件的一种工具，其地址的一般形式为：用户名@邮件服务器。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('118', '使用双绞线、光纤、通信卫星等传输介质将多台独立的计算机系统连接起来就可以组成一个计算机网络。', '2', '1');
INSERT INTO `judgeinfo` VALUES ('119', '与电视会议比较起来，利用计算机网络召开电子会议具有许多优点，比如，能够利用计算机存储设备记录会议内容，便于存档和进一步处理。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('120', ' 软件研制部门采用设计病毒来惩罚非法拷贝软件行为的作法是不妥的，也是法律不允许的。', '1', '1');
INSERT INTO `judgeinfo` VALUES ('121', 'CAD/CAM是计算机辅助设计/计算机辅助制造的缩写', '1', '1');
INSERT INTO `judgeinfo` VALUES ('122', '计算机用于机器人的研究属于人工智能的应用', '1', '1');
INSERT INTO `judgeinfo` VALUES ('123', '计算机软件是指所使用的各种程序的集合，不包括有关的数据和文档资料', '2', '1');
INSERT INTO `judgeinfo` VALUES ('124', '计算机的CPU能直接读写内存、硬盘和光盘中的信息', '2', '1');
INSERT INTO `judgeinfo` VALUES ('125', '计算机中一个字节是16个二进制位', '2', '1');
INSERT INTO `judgeinfo` VALUES ('126', '十进制小数转换为二进制小数可用乘2取整的方法', '1', '1');
INSERT INTO `judgeinfo` VALUES ('127', '显示器的分辨率越高，显示的图像越清晰，要求的扫描频率也越快', '1', '1');
INSERT INTO `judgeinfo` VALUES ('128', '一台计算机上只能安装有一种操作系统', '2', '1');
INSERT INTO `judgeinfo` VALUES ('129', '在Windows系统中，如果删除了优盘上的文件，该文件被送入“回收站”，并可以恢复', '2', '1');
INSERT INTO `judgeinfo` VALUES ('130', 'Windows中，剪贴板使用的是内存的一部分空间', '1', '1');
INSERT INTO `judgeinfo` VALUES ('131', 'Word具有分栏功能，在进行操作时，各栏的宽度必须设为相同', '2', '1');
INSERT INTO `judgeinfo` VALUES ('132', '在Excel中，公式相对引用的单元格地址，在进行公式复制时会自动发生改变', '1', '1');
INSERT INTO `judgeinfo` VALUES ('133', '在PowerPoint中，必须给每张幻灯片赋予一个文件名才能保存', '2', '1');
INSERT INTO `judgeinfo` VALUES ('134', '多媒体技术中的关键技术之一是数据的压缩与解压缩，其目的是为了提高存储和传输的效率。 ', '1', '1');
INSERT INTO `judgeinfo` VALUES ('135', 'WWW（万维网）是一种浏览器', '2', '1');
INSERT INTO `judgeinfo` VALUES ('136', '用户在连接网络时，使用IP地址与域名地址的效果是一样的', '1', '1');
INSERT INTO `judgeinfo` VALUES ('137', '用户向对方发送电子邮件时，是直接发送到接收者的计算机中进行存储的', '2', '1');
INSERT INTO `judgeinfo` VALUES ('138', '知识产权是指人类通过创造性的智力劳动而获得的一项智力性的财产权', '1', '1');
INSERT INTO `judgeinfo` VALUES ('139', '计算机病毒可以通过电子邮件传播', '1', '1');
INSERT INTO `judgeinfo` VALUES ('140', '目前，在技术上只能用计算机软件来防治计算机病毒', '2', '1');

-- ----------------------------
-- Table structure for paperinfo
-- ----------------------------
DROP TABLE IF EXISTS `paperinfo`;
CREATE TABLE `paperinfo` (
  `paperId` int(11) NOT NULL AUTO_INCREMENT,
  `paperName` varchar(100) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `examTime` int(11) DEFAULT NULL,
  `teaId` int(11) DEFAULT NULL,
  `paperDate` datetime DEFAULT NULL,
  `passScore` int(11) DEFAULT NULL,
  `ruleId` int(11) DEFAULT NULL,
  `testId` char(1) DEFAULT NULL,
  PRIMARY KEY (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paperinfo
-- ----------------------------
INSERT INTO `paperinfo` VALUES ('1', 'Java', '1', '120', '2', '2016-10-17 16:35:18', '60', '13', '2');

-- ----------------------------
-- Table structure for relationinfo
-- ----------------------------
DROP TABLE IF EXISTS `relationinfo`;
CREATE TABLE `relationinfo` (
  `relationId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `rightId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`relationId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of relationinfo
-- ----------------------------
INSERT INTO `relationinfo` VALUES ('1', '1', 'SYS001');
INSERT INTO `relationinfo` VALUES ('2', '1', 'SYS001001');
INSERT INTO `relationinfo` VALUES ('3', '1', 'SYS001002');
INSERT INTO `relationinfo` VALUES ('4', '1', 'SYS001003');
INSERT INTO `relationinfo` VALUES ('5', '1', 'SYS001004');
INSERT INTO `relationinfo` VALUES ('6', '1', 'SYS002');
INSERT INTO `relationinfo` VALUES ('7', '1', 'SYS002001');
INSERT INTO `relationinfo` VALUES ('8', '1', 'SYS002002');
INSERT INTO `relationinfo` VALUES ('9', '1', 'SYS003');
INSERT INTO `relationinfo` VALUES ('10', '1', 'SYS003001');
INSERT INTO `relationinfo` VALUES ('11', '1', 'SYS003002');
INSERT INTO `relationinfo` VALUES ('12', '2', 'CUS001');
INSERT INTO `relationinfo` VALUES ('13', '2', 'CUS001001');
INSERT INTO `relationinfo` VALUES ('14', '2', 'CUS001002');
INSERT INTO `relationinfo` VALUES ('15', '2', 'SUB001');
INSERT INTO `relationinfo` VALUES ('16', '2', 'SUB001001');
INSERT INTO `relationinfo` VALUES ('17', '2', 'SUB001002');
INSERT INTO `relationinfo` VALUES ('18', '2', 'SUB001003');
INSERT INTO `relationinfo` VALUES ('19', '2', 'SUB001004');
INSERT INTO `relationinfo` VALUES ('20', '2', 'PAP001');
INSERT INTO `relationinfo` VALUES ('21', '2', 'PAP001002');
INSERT INTO `relationinfo` VALUES ('22', '2', 'PAP001003');
INSERT INTO `relationinfo` VALUES ('23', '2', 'EXM001');
INSERT INTO `relationinfo` VALUES ('24', '2', 'EXM001001');
INSERT INTO `relationinfo` VALUES ('25', '2', 'EXM001002');
INSERT INTO `relationinfo` VALUES ('26', '2', 'REP001');
INSERT INTO `relationinfo` VALUES ('27', '2', 'REP001001');
INSERT INTO `relationinfo` VALUES ('28', '2', 'REP001002');
INSERT INTO `relationinfo` VALUES ('29', '2', 'CSP001');
INSERT INTO `relationinfo` VALUES ('30', '2', 'CSP001001');
INSERT INTO `relationinfo` VALUES ('31', '2', 'CSP001002');
INSERT INTO `relationinfo` VALUES ('32', '2', 'RST001');
INSERT INTO `relationinfo` VALUES ('33', '2', 'RST001001');
INSERT INTO `relationinfo` VALUES ('34', '2', 'RST001002');
INSERT INTO `relationinfo` VALUES ('35', '2', 'PAR001');
INSERT INTO `relationinfo` VALUES ('38', '2', 'PAR001001');
INSERT INTO `relationinfo` VALUES ('39', '2', 'PAR001002');
INSERT INTO `relationinfo` VALUES ('40', '3', 'STU001');
INSERT INTO `relationinfo` VALUES ('41', '3', 'STU001001');
INSERT INTO `relationinfo` VALUES ('42', '3', 'STU001002');
INSERT INTO `relationinfo` VALUES ('43', '3', 'STU001003');

-- ----------------------------
-- Table structure for rightinfo
-- ----------------------------
DROP TABLE IF EXISTS `rightinfo`;
CREATE TABLE `rightinfo` (
  `rightId` varchar(30) NOT NULL DEFAULT '',
  `parentId` varchar(30) DEFAULT NULL,
  `rightName` varchar(30) DEFAULT NULL,
  `rightUrl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rightinfo
-- ----------------------------
INSERT INTO `rightinfo` VALUES ('CSP001', 'ROOT', '组卷管理', null);
INSERT INTO `rightinfo` VALUES ('CSP001001', 'CSP001', '手动组卷', null);
INSERT INTO `rightinfo` VALUES ('CSP001002', 'CSP001', '自动组卷', null);
INSERT INTO `rightinfo` VALUES ('CUS001', 'ROOT', '科目管理', null);
INSERT INTO `rightinfo` VALUES ('CUS001001', 'CUS001', '添加科目', 'RoleInfoController?flag=list');
INSERT INTO `rightinfo` VALUES ('CUS001002', 'CUS001', '维护科目', 'RoleInfoController?flag=list');
INSERT INTO `rightinfo` VALUES ('EXM001', 'ROOT', '考试管理', null);
INSERT INTO `rightinfo` VALUES ('EXM001001', 'EXM001', '考试安排', null);
INSERT INTO `rightinfo` VALUES ('EXM001002', 'EXM001', '安排信息维护', null);
INSERT INTO `rightinfo` VALUES ('PAP001', 'ROOT', '试卷管理', null);
INSERT INTO `rightinfo` VALUES ('PAP001001', 'PAP001', '预览试卷', null);
INSERT INTO `rightinfo` VALUES ('PAP001002', 'PAP001', '试卷信息维护', null);
INSERT INTO `rightinfo` VALUES ('PAP001003', 'PAP001', '添加试卷', null);
INSERT INTO `rightinfo` VALUES ('PAR001', 'ROOT', '试卷规则管理', null);
INSERT INTO `rightinfo` VALUES ('PAR001001', 'PAR001', '规则添加', null);
INSERT INTO `rightinfo` VALUES ('PAR001002', 'PAR001', '规则维护', null);
INSERT INTO `rightinfo` VALUES ('REP001', 'ROOT', '阅卷管理', null);
INSERT INTO `rightinfo` VALUES ('REP001001', 'REP001', '阅卷', null);
INSERT INTO `rightinfo` VALUES ('REP001002', 'REP001', '重新阅卷', null);
INSERT INTO `rightinfo` VALUES ('ROOT', '-1', '考试管理系统', '');
INSERT INTO `rightinfo` VALUES ('RST001', 'ROOT', '成绩管理', null);
INSERT INTO `rightinfo` VALUES ('RST001001', 'RST001', '录入学生成绩', null);
INSERT INTO `rightinfo` VALUES ('RST001002', 'RST001', '成绩信息维护', null);
INSERT INTO `rightinfo` VALUES ('STU001', 'ROOT', '个人中心', null);
INSERT INTO `rightinfo` VALUES ('STU001001', 'STU001', '开始考试', null);
INSERT INTO `rightinfo` VALUES ('STU001002', 'STU001', '成绩查询', null);
INSERT INTO `rightinfo` VALUES ('STU001003', 'STU001', '个人信息查询', null);
INSERT INTO `rightinfo` VALUES ('SUB001', 'ROOT', '题库管理', null);
INSERT INTO `rightinfo` VALUES ('SUB001001', 'SUB001', '选择题管理', 'choiceController?flag=init');
INSERT INTO `rightinfo` VALUES ('SUB001002', 'SUB001', '填空题管理', 'bankController?flag=initAdd&mark=blank');
INSERT INTO `rightinfo` VALUES ('SUB001003', 'SUB001', '判断题管理', 'bankController?flag=initAdd&mark=judge');
INSERT INTO `rightinfo` VALUES ('SUB001004', 'SUB001', '主观题管理', 'bankController?flag=initAdd&mark=subject');
INSERT INTO `rightinfo` VALUES ('SYS001', 'ROOT', '用户管理', null);
INSERT INTO `rightinfo` VALUES ('SYS001001', 'SYS001', '教师管理', 'TeacherInfoController?flag=list');
INSERT INTO `rightinfo` VALUES ('SYS001002', 'SYS001', '学生管理', null);
INSERT INTO `rightinfo` VALUES ('SYS001003', 'SYS001', '导入教师信息', null);
INSERT INTO `rightinfo` VALUES ('SYS001004', 'SYS001', '导入学生信息', null);
INSERT INTO `rightinfo` VALUES ('SYS002', 'ROOT', '角色管理', null);
INSERT INTO `rightinfo` VALUES ('SYS002001', 'SYS002', '添加角色', null);
INSERT INTO `rightinfo` VALUES ('SYS002002', 'SYS002', '角色维护', null);
INSERT INTO `rightinfo` VALUES ('SYS003', 'ROOT', '权限管理', null);
INSERT INTO `rightinfo` VALUES ('SYS003001', 'SYS003', '添加维护', null);
INSERT INTO `rightinfo` VALUES ('SYS003002', 'SYS003', '权限维护', null);

-- ----------------------------
-- Table structure for roleinfo
-- ----------------------------
DROP TABLE IF EXISTS `roleinfo`;
CREATE TABLE `roleinfo` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(20) NOT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roleinfo
-- ----------------------------
INSERT INTO `roleinfo` VALUES ('1', '管理员');
INSERT INTO `roleinfo` VALUES ('2', '老师');
INSERT INTO `roleinfo` VALUES ('3', '学生');

-- ----------------------------
-- Table structure for ruleinfo
-- ----------------------------
DROP TABLE IF EXISTS `ruleinfo`;
CREATE TABLE `ruleinfo` (
  `ruleId` int(11) NOT NULL AUTO_INCREMENT,
  `scNumber` int(11) DEFAULT NULL,
  `scScore` int(11) DEFAULT NULL,
  `scIds` varchar(1000) DEFAULT NULL,
  `mulNumber` int(11) DEFAULT NULL,
  `mulScore` int(11) DEFAULT NULL,
  `mulIds` varchar(1000) DEFAULT NULL,
  `bkNumber` int(11) DEFAULT NULL,
  `bkScore` int(11) DEFAULT NULL,
  `bkIds` varchar(1000) DEFAULT NULL,
  `jdNumber` int(11) DEFAULT NULL,
  `jdScore` int(11) DEFAULT NULL,
  `jdIds` varchar(1000) DEFAULT NULL,
  `subNumber` int(11) DEFAULT NULL,
  `subScore` int(11) DEFAULT NULL,
  `subIds` varchar(1000) DEFAULT NULL,
  `totalScore` varchar(255) DEFAULT NULL,
  `testType` char(1) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ruleId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ruleinfo
-- ----------------------------
INSERT INTO `ruleinfo` VALUES ('12', null, '36', '{\"rows\":[{\"id\":3,\"score\":12},{\"id\":4,\"score\":12},{\"id\":5,\"score\":4},{\"id\":6,\"score\":4},{\"id\":7,\"score\":4}]}', null, '30', '{\"rows\":[{\"id\":119,\"score\":10},{\"id\":120,\"score\":10},{\"id\":121,\"score\":10}]}', null, '25', '{\"rows\":[{\"id\":,\"score\":5},{\"id\":,\"score\":5},{\"id\":,\"score\":5},{\"id\":,\"score\":5},{\"id\":,\"score\":5}]}', null, '18', '{\"rows\":[{\"id\":,\"score\":3},{\"id\":,\"score\":3},{\"id\":,\"score\":3},{\"id\":,\"score\":3},{\"id\":,\"score\":3},{\"id\":,\"score\":3}]}', null, '37', '{\"rows\":[{\"id\":,\"score\":14},{\"id\":,\"score\":15},{\"id\":,\"score\":8}]}', '150.0', '1', null);
INSERT INTO `ruleinfo` VALUES ('13', '30', '60', null, '20', '40', null, '10', '10', null, '10', '10', null, '3', '30', null, '150.0', '2', null);
INSERT INTO `ruleinfo` VALUES ('14', '20', '40', null, '10', '20', null, '10', '10', null, '10', '10', null, '4', '20', null, '100.0', '2', null);

-- ----------------------------
-- Table structure for scoreinfo
-- ----------------------------
DROP TABLE IF EXISTS `scoreinfo`;
CREATE TABLE `scoreinfo` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `paperId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `objectiveScore` float DEFAULT NULL,
  `subjectiveScore` float DEFAULT NULL,
  PRIMARY KEY (`scoreId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of scoreinfo
-- ----------------------------

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `stuId` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(30) DEFAULT NULL,
  `stuClass` varchar(30) DEFAULT NULL,
  `Account` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuId`),
  UNIQUE KEY `stuAccount` (`Account`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('1', '王五', null, 'wangwu', '123', '3');

-- ----------------------------
-- Table structure for subjectiveanswerinfo
-- ----------------------------
DROP TABLE IF EXISTS `subjectiveanswerinfo`;
CREATE TABLE `subjectiveanswerinfo` (
  `subId` int(11) NOT NULL,
  `answer` text,
  `paperId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subjectiveanswerinfo
-- ----------------------------

-- ----------------------------
-- Table structure for subjectiveinfo
-- ----------------------------
DROP TABLE IF EXISTS `subjectiveinfo`;
CREATE TABLE `subjectiveinfo` (
  `subId` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `answer` text CHARACTER SET utf8,
  `courseId` int(11) DEFAULT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subjectiveinfo
-- ----------------------------
INSERT INTO `subjectiveinfo` VALUES ('1', '汉字输入编码可以分为几类，各有何特点？', '汉字输入编码大致可以分为以下几类  （1）音码。特点：根据汉字的发音进行编码，简单易学，但重码太多，输入速度慢； （2）形码。特点：根据汉字的字形结构进行编码，重码少，输入速度快，但记忆量大； （3）音形码。特点：结合汉字的发音和字形结构进行编码，编码规则简单，重码少； （4）等长流水码。特点：采用相同长度的数字对每个汉字进行编码，无重码，难于记忆。', '1');
INSERT INTO `subjectiveinfo` VALUES ('2', '简述计算机在信息社会的主要应用', '（1）科学计算 （2）数据处理 （3）过程控制 （4）计算机辅助系统 （5）人工智能（6）网络应用', '1');
INSERT INTO `subjectiveinfo` VALUES ('3', '简述ROM与RAM的主要特点。', 'ROM：只读存储器，可读不可写，容量较小，用于存储计算机中极为重要的基本指令和数据，断电后信息不会丢失；', '1');
INSERT INTO `subjectiveinfo` VALUES ('4', '一个完整的计算机系统包括哪两大部分？二者有何关系？什么叫裸机？', '计算机系统由硬件系统和软件系统组成。  硬件是计算机的物质基础，软件是计算机的灵魂。 裸机，是指没有安装任何软件的计算机', '1');
INSERT INTO `subjectiveinfo` VALUES ('5', '计算机软件是如何分类的？', '计算机软件分为系统软件和应用软件两大类。  系统软件是为提高计算机效率和方便用户使用计算机而设计的各种软件。包括操作系统、支撑软件、编译系统和数据库管理系统等。', '1');
INSERT INTO `subjectiveinfo` VALUES ('6', 'windows的窗口主要包括哪些部分？', 'Windows窗口的组成部分主要有：标题栏、菜单栏、工具栏、地址栏、工作区、滚动条、状态栏等等。', '1');
INSERT INTO `subjectiveinfo` VALUES ('7', 'windows对话框的构成元素主要有哪些？', '对话框的构成元素主要有标题栏、标签与选项卡、输入框和按钮等', '1');
INSERT INTO `subjectiveinfo` VALUES ('8', '回收站的功能是什么？', '（1）存放用户临时删除的文件和文件夹；（2）恢复误删除（临时）的文件；（3）永久性删除文件', '1');
INSERT INTO `subjectiveinfo` VALUES ('9', '简述操作系统的主要功能。', '操作系统的主要功能有处理机管理、存储器管理、文件管理、设备管理及操作接口等', '1');
INSERT INTO `subjectiveinfo` VALUES ('10', '什么是路径？什么是路径名？', '路径是指从根目录到目标文件的一条通路。  路径名是由驱动器名、文件夹名和文件名依次连接而成的一个串，文件夹名之间用“\\”隔开。', '1');

-- ----------------------------
-- Table structure for teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `teaId` int(11) NOT NULL AUTO_INCREMENT,
  `teaName` varchar(20) NOT NULL,
  `Account` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`teaId`),
  UNIQUE KEY `thAccount` (`Account`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('2', '李四', 'lisi', '123', '2');
INSERT INTO `teacherinfo` VALUES ('4', '赵六', 'zhaoliu', '123', '1');
