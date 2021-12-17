create database QuanLySinhVien;
-- tao bang class
create table class(
ClassID int auto_increment primary key not null,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);
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
-- tao bang subject
create table subject(
SubID int auto_increment primary key not null,
SubName varchar(30) not null,
Credit tinyint not null default 1 check (Credit>=1),
Status bit default 1
);
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
