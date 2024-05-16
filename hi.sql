#创建视图
create or replace view s_view  as select id ,name from student where id=2023101271;

#查询视图
show create view s_view;
select *from s_view;

#修改视图
create or replace view  s_view as select id,name,sex from student;
alter view s_view as select name,sex from student;

#删除视图
drop view if exists s_view;
#检查选项 防止插入的数据不满足条件
#cascaded
create or replace view  s1_view as select sn,age,sex from s where age>18;
create or replace view  s2_view as select sn,age,sex from s1_view where age<20
with cascaded check option;
#cascaded 当一个视图的数据来自另一个视图时若第一个视图没有 with cascaded check option第二个有时第一个视为有
#local则只管自己这一条