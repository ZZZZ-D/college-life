CREATE DATABASE IF NOT EXISTS dml_d1;
USE dml_d1;
CREATE TABLE IF NOT EXISTS students(
    stu_id INT COMMENT '学号',
    stu_name VARCHAR(100) COMMENT '姓名',
    stu_age TINYINT UNSIGNED COMMENT '年龄',
    stu_birthday DATE COMMENT '生日',
    stu_height DECIMAL(4,1) DEFAULT 200 COMMENT '身高,保留一位小数'
);
INSERT INTO students VALUES(1,'王思杰',20,'2006-04-03',176);
INSERT INTO students(stu_id,stu_name,stu_age) VALUES (2,'超级大大大',20);
INSERT INTO students VALUES(3,'草原大射',20,'2006-02-03',177),(4,'ztwo',20,'2006-04-24',172);
INSERT INTO students VALUES (5,'ex',20,NULL,NULL);
UPDATE students SET stu_height = 176 WHERE stu_id = 5;
UPDATE students SET stu_age = stu_age + 2 WHERE stu_height < 173;
UPDATE students SET stu_age = stu_age - 1;
UPDATE students SET stu_height = 180,stu_id = 0 WHERE stu_name = 'ztwo';