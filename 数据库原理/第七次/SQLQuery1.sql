use Stu_Cou
select * into S2
from Student


create view ms
 as
 select s2.[Sno ] , s2.[Sname ] , sc.[Grade ],SC.[Cno ]
 from S2 ,SC
 where s2.[Sdept ] ='��ѧ'and sc.[Sno ]=s2.[Sno ]
 1�� �����ͱ� Student һ���ı� S2�����ݱ� S2��SC��������ѧϵѧ��ѡ���������ͼ ms��
����ѧ�š���������ѡ�γ̺š��ɼ���


 use Stu_Cou
select cno,grade
from ms
where sno='96001'
2�� ��ѯ��ͼ ms ��ѧ��Ϊ��96001����ѧ����ѡ�γ̺ż���Ӧ�ɼ���

use Stu_Cou
update ms
set Sname = '����'
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
3�� ����ͼ ms ��ѧ��Ϊ��96001��ѧ���������޸�Ϊ��������������ѯ�� S2��SC��ms ����
�仯��



use Stu_Cou
delete from ms
where Sno ='96001'
4�� ɾ����ͼ ms ��ѧ��Ϊ��96001��ѧ���ļ�¼���Ƿ�ɹ������ɹ������ѯ�� S2��SC��
ms ���ޱ仯��








use Stu_Cou
drop view ms
5�� ɾ����ͼ ms��