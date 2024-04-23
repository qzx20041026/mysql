# #添加字段
alter table hi add gender char(1);
alter table hi add age integer;
# #删除字段
alter table hi drop gender;
#修改字段类型
alter table hi modify id integer;
#修改字段名和字段类型
alter table hi change id id1 int;
# 修改表名
alter table hi rename to hi;
#删除表并重建
truncate table hi;
#添加数据
insert into hi values (01,"王五",'男',18),(02,"张三",'男',22),(03,"李四",'男',25);
insert into hi value (04,"王",'女',20);
#修改数据   可以不接条件
update hi set id=01 where name='王五';
update hi set age=20;
#删除数据   不加条件删除整张全部数据
delete from hi where id=3;
delete from hi ;




