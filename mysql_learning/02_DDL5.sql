#1.DDL之数据库操作
/*
1.1数据库创建
    创建数据库
    create database 数据库名;
    判断再创建数据库名
    create database if not exists 数据库名;
    创建数据库指定字符集
    craete database 数据库名 character set 字符集名;
    创建数据库指定排序规则
    create database 数据库名 collate 排序规则;
    查询数据库的字符集和排序规则
    mysql>show variables like 'character_set_database' ----->utf8mb4
    mysql>show variables like 'collation_database' ----->utf8mb4_0900_ai_ci
*/
create database if not exists ddl_d1 character set utf8mb4 collate utf8mb4_0900_as_cs;
/*
1.2数据库查看
    查看所有库
    SHOW DATABASES;
    查看当前使用库
    SELECT DATABASE();
    查看库下所有表
    SHOW TABLES FROM 数据库名;
    查看创建库的信息
    SHOW CRAETE DATABASE 数据库;
    选中库
    USE 数据库名;
    注意:对数据操作之前必须选中库
*/
show databases;
select database();
show tables from `MYSQL_STUDY`;
show create database ddl_d1;
/*
1.3数据库的修改
    修改字符集
    alter database 数据库名 character set 字符集名;
    修改排序方式
    alter database 数据库名 collate 排序规则;
    都修改
    alter database 数据库名 character set 字符集名 collate 排序规则;
    注意:数据库中没有修改名称的指令
*/

/*
1.4数据库的删除
    删除库
    drop database 数据库名;
    判断删除
    drop database if exists 数据库名;
*/
#1.5实战练习
create database if not exists blog_platform character set utf8mb4;
use blog_platform;
show variables like 'character_set_database';
show variables like 'collation_database';
alter database blog_platform collate utf8mb4_0900_as_cs;
show variables like 'character_set_database';
show variables like 'collation_database';
drop database if exists blog_platform;

#2.DDL之数据表操作
/*
2.1建表语法
    create table [if not exists] 表名(
    #列的信息
    列名 类型 [列的约束] [表的注释],
    列名 类型 [列的约束] [表的注释],
    ....
    列名 类型 [列的约束] [表的注释]
    )[描述] [注释]
    注意:
    1.表名 列名 类型必须填写的
    2.推荐使用if not exists
    3.最好写注释
    4.列之间用逗号隔开,最后一列没有逗号
*/
#实战
CREATE DATABASE IF NOT EXISTS book_libs CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;
USE book_libs;
CREATE TABLE IF NOT EXISTS books(
    book_name VARCHAR(20) COMMENT '图书名',
    book_price DOUBLE(4,1) COMMENT '价格',
    book_num INT COMMENT '图书数量'
)CHARSET = utf8mb4 COMMENT '图书表';
DROP TABLE IF EXISTS books;
/*
2.3整数类型
    INT SMALLINT TINYINT MEDIUMINT BIGINT
*/
USE ddl_d1;
CREATE TABLE t1(
    t1_age TINYINT UNSIGNED COMMENT '年龄',
    t1_number MEDIUMINT UNSIGNED COMMENT '学号'
);
/*
2.4浮点数和定点数
    FLOAT(M,D) 4字节 M 24 D 8
    DOUBLE(M,D) 8字节 M 53 D 30
    DECIMAL(M,D)精度最高 动态占有 M 65 D 30
*/
/*
2.6字符串
    CHAR(M) 固定长度 
    VARCHAR(M) 可变长度
    TEXT 可变 不受65535限制
    注意:MySQL一行数据大小不能超过65535字节
*/
/*
2.7时间类型
    year 1 yyyy 2033|'2033'
    time 3 HH:MM:SS '10:10:10'
    date 3 YY-MM-DD '2000:10:10'
    datetime 8 YY-MM-DD HH:MM:SS '...'
    timestamp 4 YY-MM-DD HH:MM:SS '...'
    插入当前时间和修改自动更新当前时间
    `ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT TIMESTAMP`
    `dt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT TIMESTAMP`
    插入默认当前时间
    `ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP`
    `dt DATETIME DEFAULT CURRENT_TIMESTAMP`
*/
USE ddl_d1;
CREATE TABLE IF NOT EXISTS t2(
    registeration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    up_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
DROP DATABASE IF EXISTS book_libs;
#实战
CREATE DATABASE IF NOT EXISTS book_libs CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;
USE book_libs;
CREATE TABLE IF NOT EXISTS student (
    stu_name VARCHAR(20) COMMENT '学生姓名',
    stu_age TINYINT COMMENT '学生年龄',
    stu_height DOUBLE(4,1) COMMENT '学生身高',
    stu_birth DATE COMMENT '学生生日',
    register_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
/*
2.8 修改和删除表
    添加列
    ALTER TABLE 表名 ADD 列名 类型 [FIRST|AFTER 原列名]
    修改列名
    ALTER TABLE 表名 CHANGE 原列名 新列名 新类型 [FIRST|AFTER 原列名]
    修改列类型
    ALTER TABLE 表名 MODFIY 列名 新类型 [FIRST|AFTER 原列名]
    删除列
    ALTER TABLE 表名 DROP 列名
    修改表名
    ALTER TABLE 表名 RENAME [TO] 新表名
    删除表
    DROP TABLE [IF EXISTS] 表名
    清空表
    TURNCATE TABLE 表名 #删除表的数据与关联
*/
#实战
USE ddl_d1;
CREATE TABLE IF NOT EXISTS employees (
    emp_num INT(11),
    last_name VARCHAR(50),
    first_name VARCHAR(50),
    mobile VARCHAR(25),
    code_ INT,
    job_title VARCHAR(50),
    birth DATE,
    note VARCHAR(50),
    sex VARCHAR(50)
)CHARSET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
ALTER TABLE employees MODIFY mobile VARCHAR(25) AFTER code_;
ALTER TABLE employees CHANGE birth birthday DATE;
ALTER TABLE employees MODIFY sex CHAR(1);
ALTER TABLE employees DROP note;
ALTER TABLE employees ADD favoriate_activity VARCHAR(100);
