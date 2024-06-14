1、 创建一个存储过程 no_grade，显示有所选课程没有成绩的学生的学号、姓名、所选全部
课程名称及其成绩。

use Stu_Cou
go
create procedure no_grade
as
BEGIN
select a.[Sno ],a.[Sname ],c.[Cname ],b.[Grade ]
from Student a,sc b,Course c
where a.[Sno ]=b.[Sno ] and b.[Grade ] is null and b.[Cno ]=c.[Cno ]
END




2、 如果在 SC 表中存在有学生的课程没有成绩，则执行存储过程 no_grade。
exec no_grade





3、 创建一个存储过程 c_pro，显示用户指定课程类型且课程名称中包含指定文字的课程的
课程号、课程名称、课程类型、学分数。
use Stu_Cou
go
create procedure c_pro ( @ctype varchar(5),@cname varchar(10))
 as
select a.[Cno ],a.[Cname ],a.[Ctype ],a.[Ccredit ] from course a
where a.[Cname ] like @cname 
exec c_pro '必修','%系统%'



1、 触发器是什么？有什么用途？
触发器(trigger)是用户定义在关系表上的一类由事件驱动的存储过程，由服务器自动激活。
触发器是一种特殊的存储过程，不管什么原因造成的数据变化都能自动响应，对于每条SQL语句，触发器仅执行一次，事务可用于触发器中。
触发器常用于保证完整性，并在一定程度上实现安全性，如可以用触发器来进行审计。

2、 创建一个触发器，如果对不及格的成绩进行修改，给出提示信息并取消操作
use Stu_Cou
if exists ( select name from sysobjects
 where name = 'updated' and type = 'tr' )
 drop trigger updated
go
create trigger updated
on sc for update
 as
 IF EXISTS ( SELECT * FROM inserted,sc WHERE sc.[Grade ]<=60 and sc.sno=inserted.sno and sc.cno=inserted.cno )
 begin
       print'禁止修改'
	     ROLLBACK    
end


use Stu_Cou
update SC
set  [Grade ]=54 where [Sno ]='95002' and [Cno ]='3'use Stu_Cou
update SC
set  [Grade ]=80 where [Sno ]='95002' and [Cno ]='2'