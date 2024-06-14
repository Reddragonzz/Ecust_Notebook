use Stu_Cou
select * into S2
from Student


create view ms
 as
 select s2.[Sno ] , s2.[Sname ] , sc.[Grade ],SC.[Cno ]
 from S2 ,SC
 where s2.[Sdept ] ='数学'and sc.[Sno ]=s2.[Sno ]
 1、 建立和表 Student 一样的表 S2，根据表 S2、SC，建立数学系学生选修情况的视图 ms，
包括学号、姓名、所选课程号、成绩。


 use Stu_Cou
select cno,grade
from ms
where sno='96001'
2、 查询视图 ms 中学号为‘96001’的学生所选课程号及相应成绩。

use Stu_Cou
update ms
set Sname = '林屏'
where Sno = '96001'

select [Sname ]
from ms
where sno='96001'

select [Sname ]
from SC,Student
where student.[Sno ]='96001' and sc.[Sno ]=Student.[Sno ]

select [Sname ]
from S2
where sno='96001'
3、 将视图 ms 中学号为‘96001’学生的姓名修改为‘林屏’，并查询表 S2、SC、ms 有无
变化。



use Stu_Cou
delete from ms
where Sno ='96001'
4、 删除视图 ms 中学号为‘96001’学生的记录，是否成功，若成功，请查询表 S2、SC、
ms 有无变化。








use Stu_Cou
drop view ms
5、 删除视图 ms。