create database QuanLySinhVien;
-- tao bang class
create table class(
ClassID int auto_increment primary key not null,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);
alter table class
modify column StartDate date;
-- nhap du lieu cho bang class
insert into class(ClassName,StartDate,Status) values('A1','2008/12/20',1);
insert into class(ClassName,StartDate,Status) values('A2','2008/12/22',1);
insert into class(ClassName,StartDate,Status) values('B3',current_date,0);
-- tao bang student
create table student(
StudentID int auto_increment primary key not null,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references class(ClassID)
);
-- nhap du lieu cho bang student
insert into student(StudentName,Address,Phone,Status,ClassID) values('Hung','Ha Noi','0912113113',1,1);
insert into student(StudentName,Address,Phone,Status,ClassID) values('Hoa','Hai Phong','',1,1);
insert into student(StudentName,Address,Phone,Status,ClassID) values('Manh','HCM','0123123123',0,2);
-- tao bang subject
create table subject(
SubID int auto_increment primary key not null,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (Credit>=1),
Status bit default 1
);
-- nhap du lieu cho bang Subject
insert into subject(SubName,Credit,Status) values('CF',5,1);
insert into subject(SubName,Credit,Status) values('C',6,1);
insert into subject(SubName,Credit,Status) values('HDJ',5,1);
insert into subject(SubName,Credit,Status) values('RDBMS',10,1);
-- tao bang mark
create table mark(
MarkID int auto_increment primary key not null,
SubID int not null,
foreign key (SubID) references subject(SubID),
StudentID int not null,
foreign key (StudentID) references student(StudentID), 
Mark float default 0 check (Mark between 0 and 100),
ExamTimes tinyint default 1,
unique (SubID,StudentID)
);
-- nhap du lieu cho bang mark
insert into mark(MarkID,SubID,StudentID,Mark,ExamTimes) values(1,1,1,8,1);
insert into mark(MarkID,SubID,StudentID,Mark,ExamTimes) values(2,1,2,10,2);
insert into mark(MarkID,SubID,StudentID,Mark,ExamTimes) values(3,2,1,12,1);

-- hien thi danh sach tat ca cac hoc vien
select * from student;
-- Hiển thị danh sách các học viên đang theo học
select * from student where Status =1;
-- Hiển thị danh sách các môn học có thời gian học nhỏ hơn 10 giờ.
select * from subject where Credit<10;
-- Hiển thị danh sách học viên lớp A1
select student.*,ClassName
from student
join class on student.ClassID = class.ClassID
where ClassName = 'A1';
-- Hiển thị điểm môn CF của các học viên.
select student.*,SubName,Mark
from student
join mark on student.StudentID = mark.StudentID
join subject on subject.SubID = mark.SubID
where SubName = 'CF';
