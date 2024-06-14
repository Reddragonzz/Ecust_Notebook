use Stu_Cou
alter table course
add constraint s_xh_pk primary key ( cno )
--�� Course �������ӿγ̺� Cno Ϊ�����Լ����


use Stu_Cou
alter table SC
add constraint fk_sc_s foreign key(cno )
references course( cno )
--�� SC ��������һ����Լ����ʹ�� SC ���еĿγ̺ţ�Cno�����յ� Course ���еĿγ̺ţ�Cno����



use Stu_Cou
create unique nonclustered index sc_c ON SC (Sno DESC,Cno DESC)
-- SC ��ѧ�ţ�Sno������Ϳγ̺ţ�Cno������Ψһ�Ǿ۴����� sc_c��







use Stu_Cou
drop index SC.sc_c
--ɾ������ sc_c��
