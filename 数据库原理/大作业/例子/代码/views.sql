use Traffic
go
--建立视图，分别显示指定的处罚方式的违章处罚信息
create view panish_warning
as
	select carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and punishWay = '警告'
go

create view panish_fine
as
	select carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and punishWay = '罚款'
go

create view panish_score
as
	select carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and punishWay = '扣分'
go

create view panish_hold
as
	select carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and punishWay = '暂扣驾驶执照'
go



use Traffic
go
--建立存储过程，输入车牌照号，显示未处理的违章罚单的相关信息
if exists(select name from sysobjects where name='driver_punish_todo' and type='p')
	drop procedure driver_punish_todo
go
create procedure driver_punish_todo(@carid char(12))
as
	select carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and carId = @carid
		   and punishState = '未处理'
go

--建立存储过程，输入警号，显示该警察经办的未处理的违章罚单的相关信息
if exists(select name from sysobjects where name='police_punish_todo' and type='p')
	drop procedure police_punish_todo
go
create procedure police_punish_todo(@policeid char(12))
as
	select policeId, carId, licenseId, punishTime, punishAddr,
			punishWay, fine, punishState
	from  Notification a, Punishiment b, Include c
	where  a.notificationId = c.notificationId 
	       and b.punishId = c.punishId
		   and policeId = @policeid
		   and punishState = '未处理'
go



use Traffic
go
--为Notification表，建立按时间降序排序的非聚簇索引
create unique nonclustered
index noti_time
on Notification(punishTime desc)