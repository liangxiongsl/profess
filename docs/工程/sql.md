
SQL (Structured Query Language) 用于对数据库中存储的记录执行操作；如：更新记录，插入记录，删除记录，创建和修改数据库表，视图等

SQL 不是数据库系统DBMS，但它是一种查询语言

SQL 发音为 See-Quell

!!! note "SQL 的四个组件"
	- `Query Dispatcher` 查询调度程序
	- `Optimization Engines` 优化引擎
	- `Classic Query Engine` 经典查询引擎
	- `SQL Query Engine` SQL 查询引擎等

![](https://static.javatpoint.com/sqlpages/images/sql-process.png)

!!! note "SQL 命令"
	1. `CREATE`：创建 `database`，`table`，`view`，以及其他数据库对象
	2. `DROP`：删除 `table`，`view` 等对象
	3. `INSERT`：将数据或记录插入 `table` 中
	4. `DELETE`：删除 `table` 中的记录，它从表中删除单个或多个元组
	5. `UPDATE`：更新数据
	6. `SELECT`：访问 `table` 中的多行记录，经常与 `WHERE` 子句一起使用

!!! note "SQL & No-SQL"
	|SQL    |No-SQL|
	|:-|:-|
	|1.SQL是一个关系型数据库管理系统。      |1. 虽然No-SQL是一个非关系或分布式数据库管理系统。|
	|2. 本数据库系统使用的查询语言为结构化查询语言。        |2. No-SQL 数据库系统中使用的查询语言是非声明性查询语言。|
	|3. SQL 数据库的架构是预定义的、固定的和静态的。        |3. No-SQL 数据库的架构是非结构化数据的动态架构。|
	|4. 这些数据库是可垂直扩展的。  |4. 这些数据库是可水平扩展的。|
	|5. SQL的数据库类型是表格的形式，即行和列的形式。       |5. No-SQL 的数据库类型为文档、键值和图形的形式。|
	|6.它遵循ACID模型。     |6. 它遵循 BASE 模型。|
	|7. 在 SQL 数据库中可以轻松管理复杂的查询。     |7. NoSQL 数据库无法处理复杂的查询。|
	|8. 此数据库不是存储分层数据的最佳选择。        |8.No-SQL数据库是存储分层数据的完美选择。|
	|9. 所有 SQL 数据库都需要对象关系映射。 |9. 许多 No-SQL 数据库不需要对象关系映射。|
	|10. Gauges、CircleCI、Hootsuite等是使用这种查询语言的顶级企业。        |10. Airbnb、Uber和Kickstarter是使用这种查询语言的顶级企业。|
	|11. SQLite，Ms-SQL，Oracle，PostgreSQL和MySQL是SQL数据库系统的例子。   |11. Redis、MongoDB、Hbase、BigTable、CouchDB 和 Cassandra 是 NoSQL 数据库系统的例子|

!!! note "SQL优缺点"
	- 优点：无需编程，高速查询处理，标准化语言，便携性，互动语言，多个数据视图
	- 缺点：成本高，界面复杂，部分数据库控制

###  ###

### 语法 ###

!!! tip
	- SQL 语法依赖于关系代数和元组关系演算
	- SQL 大小写不敏感

!!! note "常见 SQL 语句语法"
	1. `SELECT`：查询 `table`
	```sql
	SELECT column_name1, column_name2, .…, column_nameN  
	    [ FROM table_name ]  
	    [ WHERE condition ]  
	    [ ORDER BY order_column_name1 [ ASC | DESC ], .... ];  
	```
	2. `UPDATE`：更新 `table` 的记录
	
	```sql
	UPDATE table_name  
	SET column_name1 = new_value_1, column_name2 = new_value_2, ...., column_nameN = new_value_N  
	[ WHERE  CONDITION ];  
	```
	3. `DELETE`：删除 `table` 的记录
	```sql
	DELETE FROM table_name  
	[ WHERE CONDITION ];  
	```
	4. `CREATE TABLE`：创建 `table`
	```sql
	CREATE TABLE table_name  (  
		column_name1 data_type [column1 constraint(s)],  
		column_name2 data_type [column2 constraint(s)],  
		.....  
		.....,  
		column_nameN data_type [columnN constraint(s)],  
		PRIMARY KEY(one or more col)  
	); 
	```
	5. `ALTER TABLE`：添加，删除，修改 `table` 的列
	```sql
	ALTER TABLE table_name ADD column_name datatype[(size)];
	ALTER TABLE table_name MODIFY column_name column_datatype[(size)];
	ALTER TABLE table_name DROP COLUMN column_name;
	```
	6. `DROP TABLE`：删除整个 `table`
	```sql
	DROP TABLE [ IF EXISTS ]  
	table_name1, table_name2, ……, table_nameN;  
	```
	7. `CREATE DATABASE`：创建 `database`
	```sql
	CREATE DATABASE database_name;
	```
	8. `DROP DATABASE`：删除整个 `database`
	```sql
	DROP DATABASE database_name;
	```
	9. `INSERT INTO`：往 `table` 中插入多行记录
	```sql
	INSERT INTO table_name(
		column_name1,   
		column_name2, .…,   
		column_nameN  
	)  
	VALUES( value_1, value_2, ..…, value_N  ),
	VALUES( value_1, value_2, ..…, value_N  ), ...;
	```
	10. `TRUNCATE TABLE`：删除 `table` 的所有记录
	```sql
	TRUNCATE TABLE table_name;
	```
	11. `DESCRIBE`：查询 `table` 或 `view` 的信息
	```sql
	DESCRIBE table_name | view_name; 
	```
	12. `DISTINCT` 子句：对 `SELECT` 语句的结果进行去重
	```sql
	SELECT DISTINCT column_name1, column_name2, ...  
	FROM table_name; 
	```
	13. `COMMIT`：此 SQL 语句永久保存更改，这些更改在 SQL 数据库的事务中完成
	```sql
	COMMIT  
	```
	14. `ROLLBACK`：撤消尚未保存到 SQL 数据库的事务和操作
	```sql
	ROLLBACK 
	```
	15. `CREATE INDEX`：对`table`创建索引
	```sql
	CREATE INDEX index_name  
	ON table_name ( column_name1, column_name2, …, column_nameN );
	```
	16. `DROP INDEX`：按索引名删除索引
	```sql
	DROP INDEX index_name;
	```
	17. `USE`：选择数据库
	```
	USE database_name;  
	```




