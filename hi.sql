#查询用户
use mysql;
select * from user;
#创建用户
create user 'qzx'@'localhost' identified by'123456';
#修改密码
alter user 'qzx'@'localhost' identified with mysql_native_password by '12345678';
#删除用户
drop user 'qzx'@'localhost';


#查询权限
show grants for'qzx'@'localhost';

#授予权限
grant all on *.* to'qzx'@'localhost';
#撤销权限
revoke all on * from'qzx'@'localhost';