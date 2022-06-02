# Mysql

```shell
sudo pacman -S mariadb
sudo mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
sudo mysqladmin -u root password 'sql'
sudo systmctl enable mysqld
```



database

```shell
# 选中
use <sql>

# 查看
show databases

# 增
create database <table>

# 删
drop databases <table>

# 改

# 查
desc <table>name
```



table

数据类型



表操作

```shell
# 查看
desc <table>
 
#	 增加表
creata table <table> (
	<filed> type
	...
)

# 更名
alter table <table> rename to <new_table>

# 增加一列
alter table <table> add address varchar(50)

# 修改数据类型
alter table <table> modify <filed> <new_type>

# 修改列名和数据类型
alter table <table> change <filed> <new_filed> <new_type>

# 删除列
alter table <table> drop <filed>
```



DQL（navicat）

```shell
# 给指定列添加数据
insert into <table>(list1, list2) values(v1,v2)

# （批量）给所有列添加数据(列名可省)
insert into <table> values(<all_value>),(),()...

# 修改表数据
update  <table> set <list> = <val> ... where <list2> = <val> ... #（即条件筛选）

# 删除记录
delete from <table> where <list> = <val> ... # (条件筛选)

# 查询语法
select 		字段列表	<list>
from 		表名列表	<table> 
where 		条件列表	<<list> = <val>>
group by 	分组字段	
having		分组后条件
order by	排序字段
limit		分页限定

# 查询所有数据
select * from <table> 	# <list> as <list2> 别名

# 去除重复记录
select DISTINCT <list> from <table>;

# 条件查询
select * from <table> where <condition>
# like , _ %

# 排序查询
# asc		升序
# desc		降序
select * from <table> order by <list>

# 聚合函数
count max min sum avg
select <group>(list) from <table> 

# 分组排序
select <group>(list) from <table> <where> group by <list> <having> # 分别为条件前过滤和条件后过滤， having条件可以对聚合函数进行判断

# 分页查询
select * from <table> limit <page>,<num> # <page> = page - 1 * num 
```



关于 约束、数据库设计、多表查询、事务

约束

- 非空——NOT NULL

- 唯一——UNIQUE

- 主键——PRIMARY KEY

- 检查——CHECK

- 默认——DEFAULT

- 外键——FOREIGN KEY

  







