create table Qcomments(Question_Id Integer, User_Id Integer, Comment Varchar(400), Foreign Key(Question_Id) references Question(Question_Id), Foreign Key(User_Id) references Users(User_Id));

Create Table Intrests(User_Id Integer, Intrest Varchar(40), Foreign Key(User_Id) references Users(User_Id));

create table Answers(Answer_Id Integer Primary Key, Question_Id Integer, User_Id Integer, Answer Varchar(200), Foreign Key(Question_Id) references Questions(Question_Id) ON DELETE CASCADE, Foreign Key(User_Id) references Users(User_Id) ON DELETE CASCADE);

create table Department(Dept_Name varchar(20) Primary Key, Domain1 varchar(20) Default 'None', Domain2 varchar(20) Default 'None', Domain3 varchar(30) Default 'None', Domain4 varchar(20) Default 'None', Domain5 varchar(20) Default 'None', Domain6 varchar(20) Default 'None', Domain7 varchar(20) Default 'None', Domain8 varchar(20) Default 'None', Domain9 varchar(20) Default 'None', Domain10 varchar(20) Default 'None');

create table USERS
(
	USER_ID INTEGER not null primary key,
	USER_NAME VARCHAR(20) not null,
	USER_AGE INTEGER not null,
	GENDER VARCHAR(10) not null,
	OCCUPATION VARCHAR(50) not null,
	PASSWORD VARCHAR(30) not null,
	EMAIL VARCHAR(30) default 'None' not null,
	DISPLAY_NAME VARCHAR(40) default 'None' not null
)


create table QUESTIONS
(
	QUESTION_ID INTEGER not null primary key,
	TITLE VARCHAR(50) not null,
	QUESTION VARCHAR(500) not null,
	DEPARTMENT VARCHAR(20) not null,
	DOMAIN VARCHAR(20) not null,
	USER_ID INTEGER not null,
	QUESTION_DATE TIMESTAMP
)



insert into Department(Dept_Name, Domain1, Domain2, Domain3, Domain4, Domain5, Domain6, Domain7) values('Electrical','Digital Electronics', 'Analog Electronics', 'Basic Electrical', 'Motors', 'Networks', 'Design Of Circuit', 'Raspberry');
insert into Department(Dept_Name, Domain1, Domain2, Domain3, Domain4, Domain5) values('Mechanical','Robotics', 'AI', 'Automation', 'Construction', 'Machine Learning');
insert into Department(Dept_Name, Domain1, Domain2, Domain3) values('Medical','General', 'Health Advise', 'Others');
insert into Department(Dept_Name, Domain1, Domain2) values('Medical','General', 'Health Advise', 'Others');
insert into Department(Dept_Name, Domain1, Domain2, Domain3, Domain4) values('General', 'Physics', 'Chemistry','Mathematics', 'Social Science');
insert into Department values('Computer Science', 'C', 'C++','Java', 'Java Script', 'Python', 'Kotlin', 'Coffee Script', 'Django Framework', 'Scala', 'Html');
