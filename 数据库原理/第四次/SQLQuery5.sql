use Stu_Cou
select Sname, Ssex
from Student where Sdept='计算机' and exists
(select *
 from SC
 where Sno=Student.Sno and Cno='1')


--（1）查询计算机系选修‘1’号课程的学生姓名、性别。

use Stu_Cou
select *
from course
where  not exists
(select *
 from Student
 where  not exists  
(select *
 from SC
 where Sno=Student.Sno and cno=Course.[Cno ])
 )
--不存在学生选课表课程里出现，课程没有都选上的情况
--（2）查询所有学生都选修的课程情况。

use Stu_Cou
select distinct Sno
from SC SCX
where not exists--不存在选修的课程里出现，和学号为‘96001’的学生选修的全部课程不一样的课程
 (select *
 from SC SCY
 where SCY.Sno = '96001' and
not exists
 ( select *
 from SC SCZ
where SCZ.Sno=SCX.Sno and
 SCZ.Cno=SCY.Cno))
--（3）查询  至少  选修了学号为‘96001’的学生选修的全部课程的学生的学号



use Stu_Cou
select Cno
from SC
where Sno = '95001'
UNION
select Cno
from SC
where Sno = '95002'

--（1）查询学号为‘95001’或‘95002’的学生选修的课程号。

use Stu_Cou
select cno
from SC SC1
where Sno = '95001' and not exists
 ( select cno
 from SC SC2
where Sno = '95002'  ) 
--（2）查询学号为‘95001’的学生选修而学号为‘95002’的学生没有选修的课程号。

use Stu_Cou
select cno
from SC SC1
where Sno = '95001' and exists
 ( select cno
 from SC SC2
where Sno = '95002' )
--（3）查询学号为‘95001’和‘95002’的学生都选修的课程号。