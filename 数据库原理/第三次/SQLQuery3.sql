use Stu_Cou 
select count (distinct Student.[Sno ])as "�༶��ѧ������",AVG(Grade)as "ƽ����"
from Student left join SC on Student.[Sno ]=SC.[Sno ]
group by [Sclass ]
--��ѯÿ���༶student.sclass��ѧ������sno������ƽ���ɼ�sc.grade�� 