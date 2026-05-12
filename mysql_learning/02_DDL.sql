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
