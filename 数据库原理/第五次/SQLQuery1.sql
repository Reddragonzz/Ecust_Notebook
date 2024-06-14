use Stu_Cou
alter table course
add constraint s_xh_pk primary key ( cno )
--向 Course 表中增加课程号 Cno 为主码的约束。


use Stu_Cou
alter table SC
add constraint fk_sc_s foreign key(cno )
references course( cno )
--在 SC 表中增加一外码约束，使得 SC 表中的课程号（Cno）参照到 Course 表中的课程号（Cno）。



use Stu_Cou
create unique nonclustered index sc_c ON SC (Sno DESC,Cno DESC)
-- SC 表按学号（Sno）降序和课程号（Cno）降序建唯一非聚簇索引 sc_c。







use Stu_Cou
drop index SC.sc_c
--删除索引 sc_c。
