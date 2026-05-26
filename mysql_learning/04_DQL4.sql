CREATE DATABASE IF NOT EXISTS test04_lib;
USE test04_lib;
CREATE TABLE books (
    id INT COMMENT '书编号',
    name VARCHAR(50) COMMENT '书名',
    authors VARCHAR(50) COMMENT '作者',
    price FLOAT COMMENT '价格',
    pubdate YEAR COMMENT '出版日期',
    note VARCHAR(100) COMMENT '说明',
    num INT COMMENT '库存'
);
INSERT INTO books VALUES (1,'Tal of AAA','Dickes',23,1995,'novel',11);
INSERT INTO books(id,name,authors,price,pubdate,note,num) VALUES(2,'EmmaT','Jane lura',35,1993,'joke',22);
INSERT INTO books VALUES (3,'Story of Jane','Jane Tim',40,2001,'novel',0),
(4,'Lovely Day','George Byron',20,2005,'novel',30),
(5,'Old land','Honore Blade',30,2010,'law',0),
(6,'The Battle','Upton Sara',30,1999,'medicine',40),
(7,'Rose Hood','Richard haggard',28,2008,'cartoon',28);
UPDATE books SET price = price + 5 WHERE note = 'novel';
UPDATE books SET price = 40,note = 'drama' WHERE name = 'EmmaT';
DELETE FROM books WHERE num = 0;
SELECT * FROM books WHERE name LIKE '%a%';
SELECT COUNT(1),SUM(num) FROM books WHERE name LIKE '%a%';
SELECT * FROM books WHERE note = 'novel' ORDER BY price DESC;
SELECT * from books ORDER BY num DESC,note ASC;
SELECT note,COUNT(1) FROM books GROUP BY note;
SELECT note,SUM(num) FROM books GROUP BY note HAVING SUM(num) > 30;
SELECT * FROM books LIMIT 5,5;
SELECT note,SUM(num) AS '总库存量' FROM books GROUP BY note ORDER BY 总库存量 DESC LIMIT 1;
SELECT * FROM books WHERE CHAR_LENGTH(REPLACE(name,' ','')) > 10; # REPLACE(列名,'原值','替换值')
SELECT name,note,
    CASE note
    WHEN 'novel' THEN '小说' 
    WHEN 'law' THEN '法律'
    WHEN 'medicine' THEN '医药'
    WHEN 'cartoon' THEN '卡通'
    WHEN 'joke' THEN '笑话'
    ELSE  '其他'
END AS type FROM books;
SELECT name,num,CASE 
    WHEN num > 30 THEN '滞销' 
    WHEN num > 0 AND num < 10 THEN '畅销'
    WHEN num = 0 THEN '无货'
    ELSE  '正常'
END AS '情况' FROM books;
SELECT IFNULL(note,'总量'),sum(num) FROM books GROUP BY note WITH ROLLUP;
SELECT IFNULL(note,'总量'),COUNT(*) FROM books GROUP BY note WITH ROLLUP;
# WITH ROLLUP 生成数据汇总行
SELECT * FROM books ORDER BY num DESC LIMIT 3;
SELECT * FROM books ORDER BY pubdate ASC LIMIT 1;
SELECT * FROM books WHERE note = 'novel' ORDER BY price DESC LIMIT 1;
SELECT * FROM books ORDER BY CHAR_LENGTH(REPLACE(name,' ','')) DESC LIMIT 1;

