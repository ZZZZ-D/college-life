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
