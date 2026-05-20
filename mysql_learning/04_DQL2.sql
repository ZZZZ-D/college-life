CREATE DATABASE IF NOT EXISTS test04_dql;
USE test04_dql;
DROP TABLE IF EXISTS `t_employee`;

CREATE TABLE `t_employee` (
  `eid` INT NOT NULL COMMENT '员工编号',
  `ename` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  `salary` DOUBLE NOT NULL COMMENT '薪资',
  `commission_pct` DECIMAL(3,2) DEFAULT NULL COMMENT '奖金比例',
  `birthday` DATE NOT NULL COMMENT '出生日期',
  `gender` ENUM('男','女') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `tel` CHAR(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '手机号码',
  `email` VARCHAR(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `address` VARCHAR(150) DEFAULT NULL COMMENT '地址',
  `work_place` SET('北京','深圳','上海','武汉') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '北京' COMMENT '工作地点'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


INSERT  INTO `t_employee`(`eid`,`ename`,`salary`,`commission_pct`,`birthday`,`gender`,`tel`,`email`,`address`,`work_place`) 
VALUES (1,'孙洪亮',28000,'0.65','1980-10-08','男','13789098765','shl@atguigu.com','白庙村西街','北京,深圳'),
(2,'何进',7001,'0.10','1984-08-03','男','13456732145','hj@atguigu.com','半截塔存','深圳,上海'),
(3,'邓超远',8000,NULL,'1985-04-09','男','18678973456','dcy666@atguigu.com','宏福苑','北京,深圳,上海,武汉'),
(4,'黄熙萌',9456,NULL,'1986-09-07','女','13609876789','hxm@atguigu.com','白庙村东街','深圳,上海,武汉'),
(5,'陈浩',8567,NULL,'1978-08-02','男','13409876545','ch888@atguigu.com','回龙观','北京,深圳,上海'),
(6,'韩庚年',12000,NULL,'1985-04-03','男','18945678986','hgn@atguigu.com','龙泽','深圳,上海'),
(7,'贾宝玉',15700,'0.24','1982-08-02','男','15490876789','jby@atguigu.com','霍营','北京,武汉'),
(8,'李晨熙',9000,'0.40','1983-03-02','女','13587689098','lc@atguigu.com','东三旗','深圳,上海,武汉'),
(9,'李易峰',7897,NULL,'1984-09-01','男','13467676789','lyf@atguigu.com','西山旗','武汉'),
(10,'陆风',8789,NULL,'1989-04-02','男','13689876789','lf@atguigu.com','天通苑一区','北京'),
(11,'黄冰茹',15678,NULL,'1983-05-07','女','13787876565','hbr@atguigu.com','立水桥','深圳'),
(12,'孙红梅',9000,NULL,'1986-04-02','女','13576234554','shm@atguigu.com','立城苑','上海'),
(13,'李冰冰',18760,NULL,'1987-04-09','女','13790909887','lbb@atguigu.com','王府温馨公寓','北京'),
(14,'谢吉娜',18978,'0.25','1990-01-01','女','13234543245','xjn@atguigu.com','园中园','上海,武汉'),
(15,'董吉祥',8978,NULL,'1987-05-05','男','13876544333','djx@atguigu.com','小辛庄','北京,上海'),
(16,'彭超越',9878,NULL,'1988-03-06','男','18264578930','pcy@atguigu.com','西二旗','深圳,武汉'),
(17,'李诗雨',9000,NULL,'1990-08-09','女','18567899098','lsy@atguigu.com','清河','北京,深圳,武汉'),
(18,'舒淇格',16788,'0.10','1978-09-04','女','18654565634','sqg@atguigu.com','名流花园','北京,深圳,武汉'),
(19,'周旭飞',7876,NULL,'1988-06-13','女','13589893434','sxf@atguigu.com','小汤山','北京,深圳'),
(20,'章嘉怡',15099,'0.10','1989-12-11','女','15634238979','zjy@atguigu.com','望都家园','北京'),
(21,'白露',9787,NULL,'1989-09-04','女','18909876789','bl@atguigu.com','西湖新村','上海'),
(22,'刘烨',13099,'0.32','1990-11-09','男','18890980989','ly@atguigu.com','多彩公寓','北京,上海'),
(23,'陈纲',13090,NULL,'1990-02-04','男','18712345632','cg@atguigu.com','天通苑二区','深圳'),
(24,'吉日格勒',10289,NULL,'1990-04-01','男','17290876543','jrgl@163.com','北苑','北京'),
(25,'额日古那',9087,NULL,'1989-08-01','女','18709675645','ergn@atguigu.com','望京','北京,上海'),
(26,'李红',5000,NULL,'1995-02-15','女','15985759663','lihong@atguigu.com','冠雅苑','北京'),
(27,'周洲',8000,NULL,'1990-01-01','男','13574528569','zhouzhou@atguigu.com','冠华苑','北京,深圳');
#非表查询
/*
    SELECT 运算,函数;
*/
SELECT now();
#指定表查询
/*
    SELECT 列名1,列名2 FROM 表名;
    SELECT * FROM 表名;*代表所有列

*/
SELECT * FROM  t_employee;
SELECT ename,salary FROM t_employee;
#查询列并起别名
/*
    SELECT 列名 (AS) 别名 FROM 表名;
*/
SELECT ename name,salary FROM t_employee;
#去掉重复行数据
/*
SELECT DISTINCT 列名 FROM 表名;
*/
SELECT DISTINCT gender FROM t_employee;
#查询常数列
/*
    SELECT '常数值' AS 新建列名,列名 FROM 表名
*/
SELECT ename,salary, 'DOUBLE Z' AS company FROM t_employee;
SELECT t_employee. * FROM t_employee;
SELECT *,'总部' AS etype FROM t_employee;
SELECT ename,salary,work_place FROM t_employee;
SELECT ename,salary,salary * 12 AS '年薪' FROM t_employee;
SELECT ename,salary,salary * commission_pct AS '奖金',salary + salary * commission_pct AS '月总' FROM t_employee;
#null与任何值运算都为空null
#ifnull(列名,为空的值)
SELECT ename,salary,salary * IFNULL(commission_pct,0) AS '奖金',salary + salary * IFNULL(commission_pct,0) AS '月总' FROM t_employee;
SELECT DISTINCT salary FROM t_employee;
DESCRIBE t_employee;
#条件查询
/*
SELECT 列信息 FROM 表信息 WHERE 条件
*/
SELECT * FROM t_employee WHERE salary > 9000;
SELECT ename,salary,salary * 12 AS '年薪' FROM t_employee WHERE `年薪` > 200000;
SELECT ename,salary,salary * 12 AS '年薪' FROM t_employee WHERE salary > 200000 / 12;
SELECT * FROM t_employee WHERE salary > 8000 AND gender = '女';
SELECT * FROM t_employee WHERE salary * (1 + IFNULL(commission_pct,0)) > 20000;
SELECT * FROM t_employee WHERE salary * (1 - IFNULL(commission_pct,0)) < 8000;
SELECT ename,salary,salary * IFNULL(commission_pct,0) AS '奖金' FROM t_employee;
SELECT * FROM t_employee WHERE eid % 2 = 0;
SELECT * FROM t_employee WHERE eid = 1;
SELECT * FROM t_employee WHERE salary > 5000;
SELECT * FROM t_employee WHERE birthday BETWEEN '1990-01-01' AND '2000-01-01';
SELECT * FROM t_employee WHERE gender = '女';
SELECT * FROM t_employee WHERE tel LIKE '138%';
SELECT * FROM t_employee WHERE email LIKE '%@company.com';
SELECT * FROM t_employee WHERE address IS NULL;
SELECT * FROM t_employee WHERE work_place IN('北京','上海','深圳');
SELECT * FROM t_employee WHERE ename LIKE '张%';
SELECT * FROM t_employee WHERE birthday NOT BETWEEN '1980-01-01' AND '2000-01-01';
SELECT * FROM t_employee WHERE gender <> '男';
SELECT * FROM t_employee WHERE eid % 2 = 1;
SELECT * FROM t_employee WHERE salary > 5000 AND work_place LIKE '%北京%';
#FIND_IN_SET('值',列名) -> 值是否出现,出现为1,不出现为0.
SELECT * FROM t_employee WHERE salary > 5000 AND FIND_IN_SET('北京',work_place) = 1;
SELECT * FROM t_employee WHERE commission_pct IS NULL OR address IS NULL;
SELECT * FROM t_employee WHERE birthday < '1985-01-01' OR salary < 4000;
SELECT * FROM t_employee WHERE gender = '男' AND work_place <> '上海';
SELECT * FROM t_employee WHERE salary > 5000 AND FIND_IN_SET('上海',work_place) = 0;
SELECT * FROM t_employee WHERE salary > 6000 OR email LIKE '%@gmail.com';
SELECT * FROM t_employee WHERE FIND_IN_SET('上海',work_place) = 1 OR salary < 4500;
SELECT * FROM t_employee WHERE eid % 2 = 0 AND address IS NOT NULL;
SELECT * FROM t_employee WHERE gender = '女' OR salary < 5500;
SELECT * FROM t_employee WHERE salary > 5000 AND FIND_IN_SET('上海',work_place) = 1 OR FIND_IN_SET('北京',work_place) = 1;
SELECT * FROM t_employee WHERE email LIKE '%b%';
