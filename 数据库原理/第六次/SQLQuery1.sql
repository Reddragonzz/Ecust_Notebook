1���� Course ���в���һ����¼
����10��, ��C ���ԡ� ����ѡ�ޡ� , ��7�� , 4 ����

use Stu_Cou
insert into Course (Cno,Cname,ctype,cpno,ccredit)
values ( '10', 'C ����' ,'ѡ��' , '7' , 4 )

2�� ������������ Sc_avg ( Sno , Avgrade ), ��ÿ��ѧ������ƽ���ɼ���
���ѽ�������Sc_svg �С�
use Stu_Cou
create table Sc_avg
 ( Sno int ,
 Avgrade int ) 
insert into Sc_avg ( Sno , Avgrade )
 select Sno, avg(grade)
 from sc
 group by Sno

3���� Course ���С�10���ſγ̵Ŀγ������޸�Ϊ�����ޡ���
use Stu_Cou
update Course
set [Ctype ] = '����'
where [Cno ] = '10'

4����Ӣ��ϵȫ��ѧ���ĳɼ����� 2 �֡�
use Stu_Cou
update SC
set Grade = Grade+2 --ע�� SQL һЩ�㷨�������ʾ
from SC, Student
where SC. Sno = Student. Sno and Student.[Sdept ]='Ӣ��'

use Stu_Cou
update SC
set Grade = Grade+2 --ע�� SQL һЩ�㷨�������ʾ
from SC, Student
where SC. Sno = Student. Sno and Student.[Sno ] ='95002'
5��ɾ���� Sc_avg ��ѧ��Ϊ ��95001��ѧ���ļ�¼��
delete from Sc_avg
where Sno = '95001'

6��ɾ���� Sc_avg ��������������ؼ�¼��
use Stu_Cou
delete from Sc_avg
where '��' = 
 ( select [Ssex ]
 from Student
 where Student . Sno = Sc_avg . Sno )