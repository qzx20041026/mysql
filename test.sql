create database Teaching;
create table t(
ton varchar(10) primary key comment '教师号',
tn varchar(10) not null comment '姓名',
sex char(1) not null comment '性别',
age tinyint comment '年龄',
prof varchar(10) comment '职称',
sal float(7,2) comment'工资',
maj varchar(10) comment '专业',
dept varchar(10)comment '院系'
);
create table s(
son varchar(10) primary key comment '学号',
sn varchar(10) not null comment '姓名',
sex char(1) not null comment '性别',
age tinyint comment '年龄',
maj varchar(10) comment '专业',
dept varchar(10)comment '院系'
);
create table c(
con varchar(10)primary key comment '课程号',
cn varchar(10)comment '课程名',
ct int comment '课时'
);
create table sc(
son varchar(10)  comment '学号',
con varchar(10) comment '课程号',
score float(4,1) comment '成绩',
foreign key (con)references c(con) on update cascade on delete cascade ,
foreign key (son)references s(son) on update cascade on delete cascade
);
create table tc(
ton varchar(10)  comment '教师号',
con varchar(10) comment '课程号',
tcdate date comment '开课时间',
foreign key (ton)references t(ton) on update cascade on delete cascade,
foreign key (con)references c(con) on update cascade on delete cascade
);
insert into t values ('t1','刘杨','男',40,'教授',3610.5,'计算机','信息学院'),
                     ('t2','石丽','女',26,'讲师',2923.3,'信息','信息学院'),
                     ('t3','顾伟','男',32,'副教授',3145,'计算机','信息学院'),
                     ('t4','赵礼','女',50,'教授',4267.9,'自动化','工学院'),
                     ('t5','赵希希','女',36,'副教授',3332.67,'数学','理学院'),
                     ('t6','张刚','男',30,'讲师',3012,'自动化','工学院');
insert into s value ('s1','王彤','女',18,'计算机','信息学院'),
                    ('s2','苏东','男',20,'信息','信息学院'),
                    ('s3','林昕','男',19,'信息','信息学院'),
                    ('s4','陶然','女',17,'自动化','工学院'),
                    ('s5','魏立','男',17,'数学','理学院'),
                    ('s6','何欣荣','女',21,'计算机','信息学院'),
                    ('s7','赵琳琳','女',19,'数学','理学院'),
                    ('s8','李轩','男',19,'自动化','工学院');
insert into c values ('c1','java程序设计',40),
                     ('c2','程序设计基础',48),
                     ('c3','线性代数',48),
                     ('c4','数据结构',64),
                     ('c5','数据库系统',56),
                     ('c6','数据挖掘',32),
                     ('c7','高等数学',60),
                     ('c8','控制理论',32);
insert into sc values('s1','c1' ,90.5),('s1','c2',85.0),('s2','c5',57.0),('s2','c6',81.5),('s2','c7',null),
                     ('s2','c4',70.0),('s3','c1',75.0),('s3','c2',70.5),('s3','c4',85.0),('s4','c1',93.0),
                     ('s4','c2',85.0),('s4','c3',83.0),('s4','c6',null),('s5','c2',89.0),('s5','c7',60.0),
                     ('s7','c2',62.0),('s7','c5',80.0),('s7','c7',100),('s8','c3',96.0),('s8','c7',78.5);
insert into tc values('t1','c1',20210903),('t1','c2',20210904),('t2','c5',20210906),('t2','c6',20210910),
                    ('t3','c2',20210308),('t3','c4',20210306),('t4','c3',20210910),('t5','c7',20210309),
                    ('t5','c8',20210910);


select son  学号,sn 姓名,dept 院校 from s where sn='李轩';
select * from t where prof='教授'and age>40;
select avg(sal) ,sex from t group by sex;
select son ,avg(score) 平均成绩,sum(score) 总成绩 from sc group by son;
select con 科目,avg(score) 平均分,max(score) 最高分,min(score) 最低分 from sc group by con;
select t.* from tc  join t  on t.ton = tc.ton  group by tc.ton having  count(tc.con)>1;
select cn from c where cn like('%数%');
select cn from c where cn like('_序%');


select s.son,s.sn,c.cn,sc.score
from  (c join sc on c.con=sc.con)join s  on s.son=sc.son
where c.cn='线性代数'and s.sn='李轩';


select s.son,s.sn,count(sc.con)
from s join sc on s.son=sc.son
group by s.son;

select t.ton,t.tn,tc.con,c.cn,tc.tcdate
from t join (tc join c on tc.con=c.con) on tc.ton=t.ton
where t.tn='顾伟';

select t.ton,t.tn,count(con)
from t join tc on tc.ton=t.ton
where t.prof='教授'
group by ton having count(con)>=2;


select *
from s
where s.maj=(select s.maj from s where s.sn='王彤');
select s1.*
from s s1 join s s2 on s1.maj=s2.maj
where s2.sn='王彤';