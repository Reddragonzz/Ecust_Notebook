use Stu_Cou
select Sname, Ssex
from Student where Sdept='�����' and exists
(select *
 from SC
 where Sno=Student.Sno and Cno='1')


--��1����ѯ�����ϵѡ�ޡ�1���ſγ̵�ѧ���������Ա�

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
--������ѧ��ѡ�α�γ�����֣��γ�û�ж�ѡ�ϵ����
--��2����ѯ����ѧ����ѡ�޵Ŀγ������

use Stu_Cou
select distinct Sno
from SC SCX
where not exists--������ѡ�޵Ŀγ�����֣���ѧ��Ϊ��96001����ѧ��ѡ�޵�ȫ���γ̲�һ���Ŀγ�
 (select *
 from SC SCY
 where SCY.Sno = '96001' and
not exists
 ( select *
 from SC SCZ
where SCZ.Sno=SCX.Sno and
 SCZ.Cno=SCY.Cno))
--��3����ѯ  ����  ѡ����ѧ��Ϊ��96001����ѧ��ѡ�޵�ȫ���γ̵�ѧ����ѧ��



use Stu_Cou
select Cno
from SC
where Sno = '95001'
UNION
select Cno
from SC
where Sno = '95002'

--��1����ѯѧ��Ϊ��95001����95002����ѧ��ѡ�޵Ŀγ̺š�

use Stu_Cou
select cno
from SC SC1
where Sno = '95001' and not exists
 ( select cno
 from SC SC2
where Sno = '95002'  ) 
--��2����ѯѧ��Ϊ��95001����ѧ��ѡ�޶�ѧ��Ϊ��95002����ѧ��û��ѡ�޵Ŀγ̺š�

use Stu_Cou
select cno
from SC SC1
where Sno = '95001' and exists
 ( select cno
 from SC SC2
where Sno = '95002' )
--��3����ѯѧ��Ϊ��95001���͡�95002����ѧ����ѡ�޵Ŀγ̺š�