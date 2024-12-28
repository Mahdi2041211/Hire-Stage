create database HireStage;
go
use HireStage
go
create table Account(
	Email nvarchar(500)  constraint ACC_Email_PK primary key, --„«›Ì œ«⁄Ì · —ﬁÌ„Â„ »√—ﬁ«„ ·√‰ ÂÌﬂ ÂÌﬂ «·≈Ì„Ì· „« »Ì ﬂ——
	Name nvarchar(50) constraint ACC_Name_NotNull not null,
	Pass varchar(50) constraint ACC_Pass_NotNull not null,
	Selfy image,
	Type bit constraint ACC_Type_NotNull not null,
	Des nvarchar(1000), -- ÂÊ‰ ‰»–… ⁄‰ «·‘Œ’ √Ê «·‘—ﬂ… ’«Õ» «·Õ”«»
	LastJobs nvarchar(1000), -- ÂÊ‰ »Õÿ √⁄„«·Ê «·”«»ﬁ…
	HireDate date constraint ACC_HireDate_NotNull not null
	constraint ACC_HireDate_Date default getdate()
)

create table PhoneNumbers( -- √—ﬁ«„ «·Â« › ·ﬂ· Õ”«»
	account nvarchar(500) constraint PhNumbers_ACC_FK_Acc_Email foreign key references Account(Email),
	number nvarchar(15) constraint PhNumber_Number_NotNull not null
)

create table Jobs(
	ID int constraint Jobs_ID_PK primary key identity(1,1),
	Name nvarchar(50) constraint Jobs_Name_NotNull not null,
	Des nvarchar(1000),
	Sal money constraint Jobs_Sal_NotNull not null,
	AddDate date constraint Jobs_AddDate_NotNull not null
	constraint Jobs_AddDate_DateIsNow default getdate(),
	Owner nvarchar(500) constraint Jobs_Owner_Fk_Acc_Email 
	foreign key references Account(Email),
	Winner nvarchar(500) constraint Jobs_Winner_Fk_Acc_Email 
	foreign key references Account(Email)
)

create table Services (
	ID int constraint Ser_ID_PK primary key identity(1,1),
	Name nvarchar(50) constraint Ser_Name_NotNull not null,
	Des nvarchar(1000),
	Rent money constraint Ser_Sal_NotNull not null,
	AddDate date constraint Ser_AddDate_NotNull not null
	constraint Ser_AddDate_DateIsNow default getdate(),
	Owner nvarchar(500) constraint Ser_Owner_Fk_Acc_Email 
	foreign key references Account(Email),
	Winner nvarchar(500) constraint Ser_Winner_Fk_Acc_Email 
	foreign key references Account(Email),
	DToEnd int,
	ORate int constraint Ser_ORate_Value check(ORate < 6 and ORate > -1),
	WRate int constraint Ser_WRate_Value check(WRate < 6 and WRate > -1),
	ONote nvarchar(500),
	WNote nvarchar(500)
)

create table JSeekeres(
	JID int constraint JS_ID_FK_JID foreign key references Jobs(ID),
	Seeker nvarchar(500) constraint JS_Seeker_FK_ACC_Email foreign key references Account(Email),
	Req nvarchar(1000),
	ReqDate date default getdate()
	constraint JS_PK_JID_S primary key(JID, Seeker)
)

create table SSeekeres(
	SeekID int constraint SS_ID_FK_JID foreign key references Services(ID),
	Seeker nvarchar(500) constraint SS_Seeker_FK_ACC_Email foreign key references Account(Email),
	Req nvarchar(1000),
	ReqDate date default getdate()
	constraint SS_PK_SID_S primary key(SeekID, Seeker)
)