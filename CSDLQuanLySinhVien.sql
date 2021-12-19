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
-- Sử dụng hàm count để hiển thị số lượng sinh viên ở từng nơi
SELECT Address, COUNT(StudentId) AS 'Số lượng học viên'
FROM student
GROUP BY Address;
-- Tính điểm trung bình các môn học của mỗi học viên bằng cách sử dụng hàm AVG
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 15
-- Đầu tiên hiển thị điểm trung bình các môn học của mỗi học viên
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- Sử dụng having để xét điều kiện điểm trung bình các môn học phải lớn hơn 15
SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
-- Hiển thị danh sách điểm trung bình của các học viên
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName;

-- Sử dụng Having và All để tìm học viên có điểm trung bình lớn nhất
SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);


