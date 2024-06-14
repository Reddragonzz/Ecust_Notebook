1、在 Course 表中插入一条记录
（’10’, ’C 语言’ ，’选修’ , ‘7’ , 4 ）。

use Stu_Cou
insert into Course (Cno,Cname,ctype,cpno,ccredit)
values ( '10', 'C 语言' ,'选修' , '7' , 4 )

2、 建立基本表是 Sc_avg ( Sno , Avgrade ), 对每个学生求其平均成绩，
并把结果存入表Sc_svg 中。
use Stu_Cou
create table Sc_avg
 ( Sno int ,
 Avgrade int ) 
insert into Sc_avg ( Sno , Avgrade )
 select Sno, avg(grade)
 from sc
 group by Sno

3、将 Course 表中‘10’号课程的课程类型修改为‘必修’。
use Stu_Cou
update Course
set [Ctype ] = '必修'
where [Cno ] = '10'

4、将英语系全体学生的成绩增加 2 分。
use Stu_Cou
update SC
set Grade = Grade+2 --注意 SQL 一些算法运算符表示
from SC, Student
where SC. Sno = Student. Sno and Student.[Sdept ]='英语'

use Stu_Cou
update SC
set Grade = Grade+2 --注意 SQL 一些算法运算符表示
from SC, Student
where SC. Sno = Student. Sno and Student.[Sno ] ='95002'
5、删除表 Sc_avg 中学号为 ‘95001’学生的记录。
delete from Sc_avg
where Sno = '95001'

6、删除表 Sc_avg 中所有男生的相关记录。
use Stu_Cou
delete from Sc_avg
where '男' = 
 ( select [Ssex ]
 from Student
 where Student . Sno = Sc_avg . Sno )