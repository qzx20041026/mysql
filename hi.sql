
#查询 //distinct跳过重复数据
    select *from hi;
    select distinct id  from hi;
    #聚合函数  数量
        select count(*)
        from hi;
    #最大值
        select max(id)
        from hi;
    #最小值
        select min(id)
        from hi;
    #平均值
        select avg(id)
        from hi;
    #和
        select sum(id)
        from hi;
    #分组查询
        select gender,count(*)
        from hi
        where id>1
        group by gender
        having gender='男';
    #排序查询
        #升序
            select *
            from hi
            order by age asc;
        #降序
            select *
            from hi
            order by age desc;
    #分页查询
        select *
        from hi
        limit 0,2;
    #多表查询
        select s.son,s.sn
        from s join sc on s.son=sc.son;
    #子查询
        select *
        from s
        where s.maj=(select s.maj from s where s.sn='王彤');






