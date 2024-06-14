use Stu_Cou 
select count (distinct Student.[Sno ])as "班级的学生人数",AVG(Grade)as "平均分"
from Student left join SC on Student.[Sno ]=SC.[Sno ]
group by [Sclass ]
--查询每个班级student.sclass的学生人数sno及其总平均成绩sc.grade。 