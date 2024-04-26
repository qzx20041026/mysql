#方式一
    #查看/设置事务提交方式
    select @@autocommit;
    set @@autocommit=0;/*0为手动提交，1为自动*/


    #提交事务
    commit;

    #回滚事务
    rollback;
#方式二
    #开启事务
    start transaction;
    #或
    begin;
 #提交事务
    commit;

    #回滚事务
    rollback;