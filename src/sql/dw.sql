create database dw;

use dw;

-- 用户表
create table user(
user_id varchar(50) primary key comment '用户编号',
user_login_name varchar(20) not null comment '登录名',
user_nickname varchar(20) not null comment '昵称',
user_emil varchar(30) not null comment '邮箱',
user_password varchar(50) not null comment '密码',
user_create_time datetime not null default now() comment '创建时间，默认当前时间',
user_last_login_time datetime not null comment '最后登录时间',
user_status int not null default 0 comment '状态ID，默认0,外键',
user_context varchar(100) default null comment '备注字段' ,
user_del_time datetime default null comment '物理删除时间:逻辑删除一个月后物理删除'
);

-- 问卷表
create table questionnaire(
questionnaire_id varchar(50) primary key comment '问题编号',
questionnaire_title varchar(50) not null comment '问卷标题',
questionnaire_explain 	varchar(50) not null comment '问卷说明',
questionnaire_creat_time  datetime not null default now() comment '创建时间 默认为当前时间',
questionnaire_stutas_id int not null comment '问卷状态id ,0,1表示已发布,2已完成',
questionnaire_style_id int not null default 0 comment '问卷样式 默认为0',
questionnaire_user_id varchar(50) comment '问卷创建的用户编号',
questionnaire_url varchar(100)  not null comment '问卷访问路径',
questionnaire_join_num int comment '参与人数',
questionnaire_Contexts varchar(50) default null comment '备注字段'
 ); 

-- 问卷样式表
create table questionnaire_style(
style_id int primary key comment '样式编号',
questionnaire_style_id varchar(50)  comment '问卷编号外键',
style_image varchar(255) default null comment '样式背景图',
style_title_color varchar(50) default null comment '标题块颜色',
style_Context varchar(50) default null comment '备注字段' 
);

-- 问卷答案收集表
create table questionnaire_answer(
answer_id int primary key auto_increment comment '问卷答案id',
questionnaire_answer_id varchar(50) comment '问卷表id',
user_id varchar(50) comment '用户id',
answer_ip varchar(50) comment '用户回答的ip',
answer_time date comment '用户回答的时间',
answer_Context varchar(50) default null comment '备注字段'

);


-- 问卷属性表
create table questionnaire_setup
(
	setup_id int primary key comment '问卷属性id',
	setup_name varchar(10) not null comment '风格名称',
	questionnaire_setup_id varchar(10) comment '问卷id',
	setup_limit_num int default 1 comment '每台电脑或手机只能回答一次',
	setup_limit_ip int default 1 comment '每个ip只能答一次',
	setup_pwd varchar(50) comment '令牌',
	setup_end_num int comment '收集多少条',
	setup_end_time date comment '收集到何时',
	show_share_link int default 1 comment '显示分享按钮，分享答题链接到更多社交网站',
	look_result int default 1 comment '允许受访人答完问卷后查看结果',
	setup_context varchar(200) comment '备注'
);

-- 问题表
create table question
(
	question_id int primary key auto_increment comment'问题id',
	questionnaire_id varchar(20) not null comment '问卷表id',
	question_type_id int not null comment'问题类型id',
	title_id int not null comment'题干',
	must_answer int default 1 comment'是否必答',
	sort int comment'排序1代表在第一个显示',
	blowoff int default 1 comment '横竖排列',
	contacts int  comment '联系人属性',
	question_context varchar(50) comment '备注字段'
);

-- 选项表
create table options 
(
	options_id int primary key auto_increment comment '选项表id',
	options_text varchar(50) not null comment '选项题干',
	options_value varchar(50) not null comment '选项值',
	question_id int not null comment '问题id',
	action varchar(50) comment '动作',
	options_context varchar(50) comment '备注'
);
-- 角色表
CREATE TABLE role(
role_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '角色ID',
NAME VARCHAR(30) NOT NULL COMMENT '角色名称',
user_role_context VARCHAR(50) DEFAULT NULL COMMENT '备注字段'
);
-- 资源表
CREATE TABLE resource(
resource_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '资源ID',
path VARCHAR(50) NOT NULL COMMENT '资源路径',
menu_parent_id INT NOT NULL COMMENT '父菜单资源ID',
menu_text VARCHAR(100),
menu_order INT DEFAULT 0,
show_menu INT NOT NULL COMMENT '是否涉及菜单显示',
user_role_context VARCHAR(50) DEFAULT NULL COMMENT '备注字段'
);
-- 资源角色关系表
CREATE TABLE role_resource(
id INT PRIMARY KEY AUTO_INCREMENT COMMENT '资源ID',
resource_id INT NOT NULL COMMENT '资源ID',
role_id INT NOT NULL COMMENT '角色ID',
context VARCHAR(50) DEFAULT NULL COMMENT '备注字段'
);
-- 操作日志表
CREATE TABLE operate_log(
log_id INT PRIMARY KEY AUTO_INCREMENT COMMENT '日志ID',
log_time DATETIME NOT NULL COMMENT '记录时间',
log_operate VARCHAR(50) NOT NULL COMMENT '操作',
log_ip VARCHAR(30) NOT NULL COMMENT '操作IP',
log_Context VARCHAR(50) DEFAULT NULL COMMENT '备注字段'
)