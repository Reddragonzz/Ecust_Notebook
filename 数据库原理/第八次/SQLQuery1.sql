1�� ����һ���洢���� no_grade����ʾ����ѡ�γ�û�гɼ���ѧ����ѧ�š���������ѡȫ��
�γ����Ƽ���ɼ���

use Stu_Cou
go
create procedure no_grade
as
BEGIN
select a.[Sno ],a.[Sname ],c.[Cname ],b.[Grade ]
from Student a,sc b,Course c
where a.[Sno ]=b.[Sno ] and b.[Grade ] is null and b.[Cno ]=c.[Cno ]
END




2�� ����� SC ���д�����ѧ���Ŀγ�û�гɼ�����ִ�д洢���� no_grade��
exec no_grade





3�� ����һ���洢���� c_pro����ʾ�û�ָ���γ������ҿγ������а���ָ�����ֵĿγ̵�
�γ̺š��γ����ơ��γ����͡�ѧ������
use Stu_Cou
go
create procedure c_pro ( @ctype varchar(5),@cname varchar(10))
 as
select a.[Cno ],a.[Cname ],a.[Ctype ],a.[Ccredit ] from course a
where a.[Cname ] like @cname 
exec c_pro '����','%ϵͳ%'



1�� ��������ʲô����ʲô��;��
������(trigger)���û������ڹ�ϵ���ϵ�һ�����¼������Ĵ洢���̣��ɷ������Զ����
��������һ������Ĵ洢���̣�����ʲôԭ����ɵ����ݱ仯�����Զ���Ӧ������ÿ��SQL��䣬��������ִ��һ�Σ���������ڴ������С�
�����������ڱ�֤�����ԣ�����һ���̶���ʵ�ְ�ȫ�ԣ�������ô�������������ơ�

2�� ����һ��������������Բ�����ĳɼ������޸ģ�������ʾ��Ϣ��ȡ������
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
       print'��ֹ�޸�'
	     ROLLBACK    
end


use Stu_Cou
update SC
set  [Grade ]=54 where [Sno ]='95002' and [Cno ]='3'use Stu_Cou
update SC
set  [Grade ]=80 where [Sno ]='95002' and [Cno ]='2'