#函数
    #字符串函数
        select concat('aa','bbb');#拼接字符串
        SELECT LOWER('AAA');#转换为小写
        SELECT upper('aaa')ER;#转换为大写
        SELECT LPAD('aaa',6,'b');#左填充
        SELECT RPAD('aaa',6,'b');#右填充
        select trim('   qzx     ');#去掉头部和尾部的空格
        select substring('qzx6666',1,2);#截取
    #数值函数
        select ceil(1.1);#向上取整
        select floor(1.1);#向下取整
        select mod(3,2);#取模
        select rand();#0~1的随机数
        select round(5.56,1);#四舍五入保留n位小数
    #日期函数
        select curdate();#返回当前日期
        select curtime();#返回当前时间
        select now();#返回当前日期和时间
        select year(curdate());#获取指定的年份
        select month(curdate());#获取指定的月份
        select day(curdate());#获取指定的日期
        select date_add(curdate(),interval 5 month);#返回一个时间加上一个时间间隔后的时间
        select datediff('2024-1-1','2023-1-1');#返回两个日期之间的天数
    #流程函数
        select if(false,1,2);#第一个值为正确返回第二个值否则返回第三个
        select ifnull(null,2);#第一个值不为空返回第一个否则返回第二个
        select case when 1>2 then 'qzx' else 666 end;#when的值为正确的返回then 否则返回 else
        select case 1 when 1 then'qzx'else 666 end;#case的值为when的值返回then否则返回 else







