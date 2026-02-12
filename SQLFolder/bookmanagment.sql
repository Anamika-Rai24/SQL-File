create database Library_Index;
use Library_Index;

create table Library_Index(
book_id int primary key,
book_name varchar(100),
author varchar(100),
category varchar(50),
publisher varchar(50),
year_of_publication int,
price int,
quantity int);

INSERT INTO Library_Index VALUES
(1,'Let Us C','Yashavant Kanetkar','Programming','BPB',2019,350,10),
(2,'Python Crash Course','Eric Matthes','Programming','No Starch',2021,550,8),
(3,'Java Complete Reference','Herbert Schildt','Programming','McGraw Hill',2020,650,6),
(4,'Clean Code','Robert C Martin','Software','Prentice Hall',2018,700,5),
(5,'Data Structures Using C','Reema Thareja','CS','Oxford',2019,450,7),

(6,'Operating System Concepts','Silberschatz','OS','Wiley',2020,750,4),
(7,'Computer Networks','Tanenbaum','Networking','Pearson',2018,680,6),
(8,'Artificial Intelligence','Stuart Russell','AI','Pearson',2021,800,3),
(9,'Machine Learning','Tom Mitchell','AI','McGraw Hill',2019,720,5),
(10,'Deep Learning','Ian Goodfellow','AI','MIT Press',2022,900,2),

(11,'DBMS','Ramakrishnan','Database','McGraw Hill',2018,600,7),
(12,'SQL in 10 Minutes','Ben Forta','Database','SAMS',2020,400,9),
(13,'HTML & CSS','Jon Duckett','Web','Wiley',2021,500,10),
(14,'JavaScript & JQuery','Jon Duckett','Web','Wiley',2020,550,8),
(15,'Learning React','Alex Banks','Web','OReilly',2022,650,6),

(16,'Cloud Computing','Rajkumar Buyya','Cloud','McGraw Hill',2019,720,5),
(17,'AWS Solutions Architect','Ben Piper','Cloud','Wiley',2021,680,4),
(18,'Linux Basics','Christopher Negus','OS','Wiley',2018,480,7),
(19,'Cyber Security','Charles Brooks','Security','Wiley',2020,750,3),
(20,'Ethical Hacking','Daniel Graham','Security','McGraw Hill',2019,800,4),

(21,'Digital Electronics','Morris Mano','Electronics','Pearson',2018,650,6),
(22,'Microprocessors','Ramesh Gaonkar','Electronics','PHI',2019,700,5),
(23,'Engineering Mathematics','B S Grewal','Maths','Khanna',2017,500,12),
(24,'Discrete Mathematics','Kenneth Rosen','Maths','McGraw Hill',2018,620,7),
(25,'Statistics for Engineers','Hogg','Maths','Pearson',2020,550,6),

(26,'Soft Skills','Meenakshi Raman','Management','Oxford',2021,300,15),
(27,'Principles of Management','Koontz','Management','McGraw Hill',2019,480,9),
(28,'Business Communication','Lesikar','Management','McGraw Hill',2018,420,10),
(29,'Economics for Engineers','Raghbendra Jha','Economics','Pearson',2017,450,6),
(30,'Environmental Studies','Erach Bharucha','Environment','Universities Press',2020,350,14),

(31,'C Programming','Dennis Ritchie','Programming','PHI',2016,400,10),
(32,'C++ Primer','Stanley Lippman','Programming','Pearson',2019,680,6),
(33,'Effective Java','Joshua Bloch','Programming','Pearson',2020,750,4),
(34,'Spring in Action','Craig Walls','Programming','Manning',2021,720,5),
(35,'Head First Java','Kathy Sierra','Programming','OReilly',2018,650,7),

(36,'Data Science Handbook','Jake VanderPlas','Data Science','OReilly',2020,850,4),
(37,'Pandas Cookbook','Theodore Petrou','Data Science','Packt',2019,600,6),
(38,'NumPy Guide','Travis Oliphant','Data Science','OReilly',2018,550,5),
(39,'Power BI Guide','Adam Aspin','BI','Packt',2021,700,4),
(40,'Excel Bible','John Walkenbach','BI','Wiley',2019,650,8),

(41,'Big Data','Viktor Mayer','Big Data','OReilly',2018,720,5),
(42,'Hadoop Explained','Tom White','Big Data','OReilly',2017,680,4),
(43,'Spark Essentials','Bill Chambers','Big Data','OReilly',2019,750,3),
(44,'IoT Basics','Raj Kamal','IoT','McGraw Hill',2020,620,6),
(45,'Embedded Systems','Mazidi','IoT','Pearson',2018,700,5),

(46,'Blockchain Basics','Daniel Drescher','Blockchain','Apress',2020,650,4),
(47,'Cryptocurrency','Paul Vigna','Blockchain','Harper',2019,600,5),
(48,'DevOps Handbook','Gene Kim','DevOps','IT Revolution',2018,780,4),
(49,'Docker Deep Dive','Nigel Poulton','DevOps','Leanpub',2021,650,6),
(50,'Kubernetes Guide','Kelsey Hightower','DevOps','OReilly',2022,820,3),

(51,'Agile Project Management','Jim Highsmith','Management','Pearson',2019,520,6),
(52,'Scrum Guide','Ken Schwaber','Management','Scrum Org',2020,300,10),
(53,'Design Patterns','GoF','Software','Pearson',2018,750,5),
(54,'Refactoring','Martin Fowler','Software','Addison',2019,780,4),
(55,'Software Engineering','Pressman','Software','McGraw Hill',2017,650,7),

(56,'Network Security','William Stallings','Security','Pearson',2019,720,5),
(57,'Firewalls & VPN','Gupta','Security','McGraw Hill',2018,600,4),
(58,'Ethics in IT','Deborah Johnson','Ethics','Pearson',2017,450,6),
(59,'Human Computer Interaction','Dix','HCI','Pearson',2019,580,5),
(60,'UX Design','Don Norman','HCI','Basic Books',2020,650,4),

(61,'Computer Graphics','Hearn','Graphics','Pearson',2018,700,6),
(62,'Multimedia Systems','Steinmetz','Graphics','Springer',2017,680,5),
(63,'Compiler Design','Aho','CS','Pearson',2019,750,4),
(64,'Theory of Computation','Sipser','CS','Cengage',2018,720,5),
(65,'Algorithms','CLRS','CS','MIT Press',2020,900,3),

(66,'Mobile Computing','Asoke Talukder','Mobile','McGraw Hill',2017,600,6),
(67,'Android Programming','Big Nerd Ranch','Mobile','Pearson',2021,700,5),
(68,'iOS Programming','Apple','Mobile','Apple',2020,750,4),
(69,'Game Development','Unity','Game','Packt',2019,650,5),
(70,'Game Design','Jesse Schell','Game','CRC Press',2018,720,4),

(71,'Digital Marketing','Philip Kotler','Marketing','Pearson',2020,550,8),
(72,'SEO Guide','Eric Enge','Marketing','OReilly',2019,600,6),
(73,'Content Strategy','Kristina Halvorson','Marketing','OReilly',2018,520,7),
(74,'Financial Accounting','Tulsian','Accounting','Pearson',2017,480,9),
(75,'Cost Accounting','Jain','Accounting','McGraw Hill',2018,520,8),

(76,'Business Analytics','James Evans','Analytics','Pearson',2020,650,6),
(77,'Operations Research','Kanti Swarup','OR','S Chand',2017,600,7),
(78,'Supply Chain','Sunil Chopra','Management','Pearson',2019,720,5),
(79,'Entrepreneurship','Robert Hisrich','Business','McGraw Hill',2018,580,6),
(80,'Startup Basics','Ash Maurya','Business','OReilly',2020,550,7),

(81,'Physics for Engineers','H C Verma','Physics','Bharati Bhawan',2016,450,10),
(82,'Chemistry Basics','Morrison Boyd','Chemistry','Pearson',2017,480,8),
(83,'Biology Today','Trueman','Biology','Trueman',2018,420,9),
(84,'Psychology','Morgan','Psychology','McGraw Hill',2019,520,6),
(85,'Sociology','Giddens','Sociology','Polity',2018,560,5),

(86,'Political Science','Laxmikanth','Polity','McGraw Hill',2021,650,12),
(87,'Indian Economy','Ramesh Singh','Economy','McGraw Hill',2020,620,10),
(88,'Indian History','Romila Thapar','History','Penguin',2017,580,7),
(89,'Geography','Majid Husain','Geography','McGraw Hill',2018,600,8),
(90,'Current Affairs','Pratiyogita','GK','PD Group',2022,300,15),

(91,'English Grammar','Wren & Martin','English','S Chand',2016,350,12),
(92,'Business English','Bovee','English','Pearson',2019,480,7),
(93,'Creative Writing','Stephen King','English','Scribner',2020,650,5),
(94,'Technical Writing','David McKenzie','English','Pearson',2018,520,6),
(95,'Communication Skills','Pushpa Lata','English','Oxford',2019,450,8),

(96,'Yoga & Wellness','B K S Iyengar','Wellness','Harper',2017,400,10),
(97,'Physical Education','Sharma','Sports','Khel Sahitya',2018,350,9),
(98,'Sports Psychology','Cox','Sports','McGraw Hill',2019,550,6),
(99,'Nutrition Basics','Swaminathan','Health','Oxford',2018,480,7),
(100,'First Aid','WHO','Health','WHO',2021,300,20);

create index name_author on Library_Index(book_name,author);

select * from Library_Index where book_name='Cyber Security' and author='Charles Brooks';

create index category_name on Library_Index(category);

select * from Library_Index where category='Programming';



