use HireStage
go
create procedure AddAccount
@Email nvarchar(500),
@Name nvarchar(50),
@Pass nvarchar(50),
@Type bit
as 
insert into Account (Email, Name, Pass, Type) values (@Email, @Name, @Pass, @Type);

go
create procedure UpdateAccount
	@Email nvarchar(500),
	@Name nvarchar(50),
	@Pass nvarchar(50),
	@Des nvarchar(1000),
	@LastJobs nvarchar(1000)

as
update Account set Name = @Name where Email = @Email;
update Account set Pass = @Pass where Email = @Email;
update Account set Des = @Des where Email = @Email;
update Account set LastJobs = @LastJobs where Email = @Email;

go 
create procedure Addjob
@Name nvarchar(50),
@Des nvarchar(1000),
@Sal money,
@Owner nvarchar(500)
as 
insert into Jobs (Name, Des, Sal, Owner) values (@Name, @Des, @Sal, @Owner);

go
create procedure AddJS
@JID int,
@Seeker nvarchar(500),
@Req nvarchar(1000)
as 
insert into JSeekeres (JID, Seeker, Req) values (@JID, @Seeker, @Req);

go 
create procedure AddPhone
@account nvarchar(500),
@number nvarchar(15)
as
insert into PhoneNumbers (account, number) values (@account, @number);

go
create procedure AddServ
@Name nvarchar(50),
@Des nvarchar(1000),
@Rent money,
@Owner nvarchar(500),
@DToEnd int
as 
insert into Services(Name, Des, Rent, Owner, DToEnd) values (@Name, @Des, @Rent, @Owner, @DToEnd);

go
create procedure AddSSeeker
@SeekID int,
@Seeker nvarchar(500),
@Req nvarchar(1000)
as 
insert into SSeekeres(SeekID, Seeker, Req) values (@SeekID, @Seeker, @Req);