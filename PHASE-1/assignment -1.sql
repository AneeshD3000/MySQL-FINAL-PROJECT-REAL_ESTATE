create database Hospital;
use HOSPITal;
create table patients( patient_id int primary key, name char(20),age varchar(50),gender char(15),contact_no varchar(50));
create table Doctors( doctor_id int primary key, name char(50),specialization char(50), experience char(20), contact_no varchar(50));
create table appointments( appointment_id  int primary key, doctor_id int, patient_id int, appointment_date date, appointment_time TIME);
create table bills(bill_id int primary key, appointment_id int, payement varchar(30), status char(20), Date DATE);
create table Medications( medication_id int primary key, patient_id int, medicine_name char(20), dosage varchar(20), duration varchar(20) );
drop table medications;
TRUNCATE TABLE Appointments;

INSERT INTO Patients VALUES
(1,'Ramesh Kumar',45,'Male','9876500010'),
(2,'Anita Sharma',32,'Female','9876500011'),
(3,'Suresh Gupta',60,'Male','9876500012'),
(4,'Priya Nair',29,'Female','9876500013'),
(5,'Rahul Mehta',38,'Male','9876500014'),
(6,'Kavita Joshi',50,'Female','9876500015'),
(7,'Arjun Desai',41,'Male','9876500016'),
(8,'Pooja Iyer',26,'Female','9876500017'),
(9,'Vikram Singh',55,'Male','9876500018'),
(10,'Neha Verma',35,'Female','9876500019');
select * from patients;
drop table patients;


INSERT INTO Appointments VALUES
(1,1,1,'2022-08-01','10:00'),
(2,2,2,'2022-08-02','11:00'),
(3,3,3,'2022-08-02','15:00'),
(4,4,4,'2022-08-03','09:30'),
(5,5,5,'2022-08-03','13:00'),
(6,6,6,'2022-08-04','12:00'),
(7,7,7,'2022-08-05','14:00'),
(8,8,8,'2022-08-05','16:00'),
(9,9,9,'2022-08-06','11:30'),
(10,10,10,'2022-08-07','10:30');
select * from appointments;
drop table appointments;


INSERT INTO Doctors VALUES
(1,'Dr. Amit Rao','Cardiologist',15,'9000011111'),
(2,'Dr. Neha Kulkarni','Dermatologist',10,'9000011112'),
(3,'Dr. Rakesh Nair','Neurologist',20,'9000011113'),
(4,'Dr. Priya Sen','Pediatrician',12,'9000011114'),
(5,'Dr. Arvind Mishra','Orthopedic',18,'9000011115'),
(6,'Dr. Anjali Deshpande','Psychiatrist',8,'9000011116'),
(7,'Dr. Kiran Patil','Oncologist',14,'9000011117'),
(8,'Dr. Sunita Sharma','ENT',9,'9000011118'),
(9,'Dr. Manish Yadav','General Physician',7,'9000011119'),
(10,'Dr. Shreya Mehta','Gynecologist',11,'9000011120');
select * from doctors;
drop table doctors;



INSERT INTO Bills VALUES
(1,1,2000,'Paid','2022-08-01'),
(2,2,1500,'Unpaid','2022-08-02'),
(3,3,5000,'Paid','2022-08-02'),
(4,4,1200,'Paid','2022-08-03'),
(5,5,2500,'Unpaid','2022-08-03'),
(6,6,3000,'Paid','2022-08-04'),
(7,7,1800,'Unpaid','2022-08-05'),
(8,8,4000,'Paid','2022-08-05'),
(9,9,3500,'Paid','2022-08-06'),
(10,10,2700,'Unpaid','2022-08-07');
select * from bills;
drop table bills;



INSERT INTO Medications VALUES
(1,1,'Aspirin','75mg','7 days'),
(2,2,'Cetirizine','10mg','5 days'),
(3,3,'Paracetamol','500mg','10 days'),
(4,4,'Amoxicillin','250mg','7 days'),
(5,5,'Metformin','500mg','15 days'),
(6,6,'Atorvastatin','20mg','30 days'),
(7,7,'Losartan','50mg','20 days'),
(8,8,'Omeprazole','20mg','14 days'),
(9,9,'Levothyroxine','100mcg','25 days'),
(10,10,'Cough Syrup','10ml','5 days');
select * from medications;
drop table medications;







create database airline;
use airline;


create table flights(flight_id int primary key, name char(20), source char(20), destination char(50), departure  char(30));
drop table flights;
create table passengers(passenger_id int primary key, name char(20), age varchar(20), gender char(30), passport_number varchar(50));
drop table passengers;
create table tickets( ticket_id int primary key,flight_id int,passenger_id int, seat_number varchar(20), price varchar(20));
drop table tickets;
create table Crew( crew_id int primary key, name char(20), role char(20), flight_id int, experience varchar(20));
drop table crew;
create table baggage( baggage_id int primary key, passenger_id int, weight varchar(30), status char(20), checkin_time time);
drop table baggage;



INSERT INTO Flights VALUES
(1,'Air India','Delhi','Mumbai','08:00'),
(2,'IndiGo','Mumbai','Chennai','09:30'),
(3,'SpiceJet','Kolkata','Delhi','14:00'),
(4,'Vistara','Delhi','Bangalore','16:00'),
(5,'GoAir','Pune','Hyderabad','18:30'),
(6,'Air Asia','Mumbai','Jaipur','07:00'),
(7,'IndiGo','Chennai','Kolkata','10:15'),
(8,'Air India','Lucknow','Delhi','12:45'),
(9,'SpiceJet','Ahmedabad','Goa','20:00'),
(10,'Vistara','Bangalore','Delhi','21:30');
select * from flights;

INSERT INTO Passengers VALUES
(1,'Rahul Sharma',28,'Male','P12345'),
(2,'Anjali Mehta',32,'Female','P12346'),
(3,'Vikram Rao',45,'Male','P12347'),
(4,'Neha Singh',29,'Female','P12348'),
(5,'Amit Verma',36,'Male','P12349'),
(6,'Priya Kapoor',40,'Female','P12350'),
(7,'Rohan Das',33,'Male','P12351'),
(8,'Kavita Joshi',27,'Female','P12352'),
(9,'Arjun Nair',50,'Male','P12353'),
(10,'Simran Kaur',31,'Female','P12354');
select * from passengers;

INSERT INTO Tickets VALUES
(1,1,1,'12A',4500),
(2,2,2,'14B',3200),
(3,3,3,'16C',5600),
(4,4,4,'11D',4800),
(5,5,5,'09F',3000),
(6,6,6,'18A',4200),
(7,7,7,'20B',3700),
(8,8,8,'10C',4100),
(9,9,9,'06E',2800),
(10,10,10,'15F',6000);
select * from tickets;

INSERT INTO Crew VALUES
(1,'Rakesh Sharma','Pilot',1,12),
(2,'Anita Desai','Co-Pilot',2,8),
(3,'Vijay Kumar','Cabin Crew',3,5),
(4,'Meera Iyer','Cabin Crew',4,4),
(5,'Sanjay Gupta','Pilot',5,15),
(6,'Pooja Nair','Cabin Crew',6,6),
(7,'Ajay Rao','Engineer',7,10),
(8,'Sunita Sharma','Cabin Crew',8,7),
(9,'Kiran Patil','Pilot',9,20),
(10,'Manish Yadav','Ground Staff',10,9);
select * from crew;

INSERT INTO Baggage VALUES
(1,1,15,'Checked','07:30'),
(2,2,12,'Checked','08:45'),
(3,3,20,'Checked','13:15'),
(4,4,10,'Checked','15:20'),
(5,5,18,'Checked','17:50'),
(6,6,14,'Checked','06:15'),
(7,7,16,'Checked','09:40'),
(8,8,11,'Checked','12:00'),
(9,9,19,'Checked','19:10'),
(10,10,13,'Checked','20:45');
select * from baggage;



create database College;
use college;

create table students(student_id int primary key, name char(20), age int, gender char(20), course varchar(20));
drop table students;

create table professors(professor_id int primary key, name char(20), department char(20), contact_no varchar(20), experience varchar(20));
drop table professors;

create table courses(course_id int primary key, name varchar(20),credits varchar(20), department varchar(20), duration varchar(20));
drop table courses;

create table exams(exam_id int primary key, course_id int, date date, time time, location varchar(20));
drop table exams;

create table results (result_id int primary key, student_id int, course_id varchar(20), marks varchar(20), grade varchar(20));
drop table results;


INSERT INTO Students VALUES
(1,'Ravi Sharma',20,'Male','B.Com'),
(2,'Neha Kapoor',21,'Female','B.Sc'),
(3,'Arjun Mehta',22,'Male','B.A'),
(4,'Kavita Joshi',20,'Female','BBA'),
(5,'Rahul Singh',23,'Male','MBA'),
(6,'Pooja Nair',19,'Female','BCA'),
(7,'Vikram Rao',22,'Male','M.Com'),
(8,'Sneha Iyer',21,'Female','B.Sc'),
(9,'Rohan Desai',20,'Male','B.Tech'),
(10,'Simran Kaur',21,'Female','M.Sc');
select * from students;



INSERT INTO Professors VALUES
(1,'Dr. Arvind Sharma','Commerce','9000012001',15),
(2,'Dr. Meera Nair','Physics','9000012002',10),
(3,'Dr. Sanjay Rao','History','9000012003',12),
(4,'Dr. Priya Menon','Management','9000012004',8),
(5,'Dr. Amit Kumar','Economics','9000012005',20),
(6,'Dr. Neha Sen','Computer Science','9000012006',9),
(7,'Dr. Manish Gupta','Mathematics','9000012007',11),
(8,'Dr. Kavita Desai','Biology','9000012008',7),
(9,'Dr. Anjali Patel','Engineering','9000012009',13),
(10,'Dr. Rajeev Malhotra','Statistics','9000012010',14);
select * from professors;


INSERT INTO Courses VALUES
(1,'B.Com',6,'Commerce','3 years'),
(2,'B.Sc',4,'Science','3 years'),
(3,'B.A',3,'Arts','3 years'),
(4,'BBA',5,'Management','3 years'),
(5,'MBA',5,'Management','2 years'),
(6,'BCA',4,'Computer Science','3 years'),
(7,'M.Com',6,'Commerce','2 years'),
(8,'M.Sc',4,'Science','2 years'),
(9,'B.Tech',5,'Engineering','4 years'),
(10,'PhD',8,'Research','5 years');
select * from courses;


INSERT INTO Exams VALUES
(1,1,'2022-08-01','10:00','Hall A'),
(2,2,'2022-08-02','14:00','Hall B'),
(3,3,'2022-08-03','09:00','Hall C'),
(4,4,'2022-08-04','11:30','Hall D'),
(5,5,'2022-08-05','13:00','Hall E'),
(6,6,'2022-08-06','10:15','Hall F'),
(7,7,'2022-08-07','15:00','Hall G'),
(8,8,'2022-08-08','12:00','Hall H'),
(9,9,'2022-08-09','16:30','Hall I'),
(10,10,'2022-08-10','09:30','Hall J');
select * from exams;


INSERT INTO Results VALUES
(1,1,1,85,'A'),
(2,2,2,75,'B'),
(3,3,3,65,'C'),
(4,4,4,90,'A'),
(5,5,5,88,'A'),
(6,6,6,70,'B'),
(7,7,7,55,'D'),
(8,8,8,80,'B'),
(9,9,9,95,'A'),
(10,10,10,60,'C');
select * from results;



create database bank;
use bank;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(200),
    Contact VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE
);
select * from customers;

drop table customers;

CREATE TABLE Accounts (
    Account_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Account_Type VARCHAR(20) CHECK (Account_Type IN ('Savings','Current','Fixed Deposit')),
    Balance DECIMAL(12,2) DEFAULT 0.00,
    Branch VARCHAR(100),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
select * from accounts;
drop table accounts;

CREATE TABLE Transactions (
    Transaction_ID INT PRIMARY KEY AUTO_INCREMENT,
    Account_ID INT NOT NULL,
    Amount DECIMAL(12,2) NOT NULL,
    Transaction_Date DATE NOT NULL,
    Transaction_Type VARCHAR(20) CHECK (Transaction_Type IN ('Deposit','Withdrawal','Transfer')),
    FOREIGN KEY (Account_ID) REFERENCES Accounts(Account_ID)
);
select * from transactions;

drop table transactions;


CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Loan_Type VARCHAR(50) CHECK (Loan_Type IN 
        ('Home Loan','Car Loan','Personal Loan','Education Loan','Business Loan')),
    Amount DECIMAL(15,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Active','Closed','Default')),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);
select * from loans;
drop table loans;


CREATE TABLE Branches (
    Branch_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100) NOT NULL,
    Manager_Name VARCHAR(100),
    Contact VARCHAR(15) UNIQUE,
    IFSC_Code VARCHAR(20) UNIQUE
);
select * from branches;
drop table branches;


INSERT INTO Customers (Customer_ID, Name, Address, Contact, Email) VALUES
(1,'Ramesh Kumar','Delhi','9876000011','ramesh.kumar@example.com'),
(2,'Neha Sharma','Mumbai','9876000012','neha.sharma@example.com'),
(3,'Vikram Rao','Bangalore','9876000013','vikram.rao@example.com'),
(4,'Pooja Iyer','Chennai','9876000014','pooja.iyer@example.com'),
(5,'Rahul Singh','Kolkata','9876000015','rahul.singh@example.com'),
(6,'Kavita Joshi','Hyderabad','9876000016','kavita.joshi@example.com'),
(7,'Arjun Mehta','Pune','9876000017','arjun.mehta@example.com'),
(8,'Simran Kaur','Jaipur','9876000018','simran.kaur@example.com'),
(9,'Suresh Gupta','Lucknow','9876000019','suresh.gupta@example.com'),
(10,'Anita Desai','Ahmedabad','9876000020','anita.desai@example.com');

INSERT INTO Accounts (Account_ID, Customer_ID, Account_Type, Balance, Branch) VALUES
(1,1,'Savings',45000,'Delhi'),
(2,2,'Current',60000,'Mumbai'),
(3,3,'Savings',55000,'Bangalore'),
(4,4,'Savings',40000,'Chennai'),
(5,5,'Current',70000,'Kolkata'),
(6,6,'Savings',30000,'Hyderabad'),
(7,7,'Savings',48000,'Pune'),
(8,8,'Current',82000,'Jaipur'),
(9,9,'Savings',25000,'Lucknow'),
(10,10,'Current',91000,'Ahmedabad');

INSERT INTO Transactions (Transaction_ID, Account_ID, Amount, Transaction_Date, Transaction_Type) VALUES
(1,1,5000,'2022-08-01','Deposit'),
(2,1,2000,'2022-08-02','Withdrawal'),
(3,2,15000,'2022-08-03','Deposit'),
(4,3,5000,'2022-08-04','Withdrawal'),
(5,4,7000,'2022-08-05','Deposit'),
(6,5,10000,'2022-08-05','Withdrawal'),
(7,6,2500,'2022-08-06','Deposit'),
(8,7,6000,'2022-08-06','Withdrawal'),
(9,8,20000,'2022-08-07','Deposit'),
(10,9,3500,'2022-08-07','Withdrawal');


INSERT INTO Loans (Loan_ID, Customer_ID, Loan_Type, Amount, Status) VALUES
(1,1,'Home Loan',2500000,'Active'),
(2,2,'Car Loan',800000,'Closed'),
(3,3,'Personal Loan',300000,'Active'),
(4,4,'Education Loan',500000,'Active'),
(5,5,'Business Loan',1000000,'Closed'),
(6,6,'Home Loan',1500000,'Active'),
(7,7,'Car Loan',600000,'Active'),
(8,8,'Personal Loan',200000,'Closed'),
(9,9,'Education Loan',400000,'Active'),
(10,10,'Business Loan',1200000,'Active');


INSERT INTO Branches (Branch_ID, Location, Manager_Name, Contact, IFSC_Code) VALUES
(1,'Delhi','Rajesh Malhotra','011-40001001','BKID000DEL'),
(2,'Mumbai','Sunita Agarwal','022-40001002','BKID000MUM'),
(3,'Bangalore','Manoj Reddy','080-40001003','BKID000BLR'),
(4,'Chennai','Priya Narayan','044-40001004','BKID000CHE'),
(5,'Kolkata','Arvind Ghosh','033-40001005','BKID000KOL'),
(6,'Hyderabad','Rohit Reddy','040-40001006','BKID000HYD'),
(7,'Pune','Shreya Kulkarni','020-40001007','BKID000PUN'),
(8,'Jaipur','Meenakshi Singh','0141-40001008','BKID000JAI'),
(9,'Lucknow','Nidhi Verma','0522-40001009','BKID000LKO'),
(10,'Ahmedabad','Kiran Desai','079-40001010','BKID000AMD');



CREATE DATABASE LibraryDB;
USE LibraryDB;


CREATE TABLE Books (
    Book_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Availability BOOLEAN DEFAULT TRUE
);
select * from books;
drop table books;

CREATE TABLE Members (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Membership_Type VARCHAR(30) CHECK (Membership_Type IN ('Regular','Premium','Student')),
    Join_Date DATE not null
);
select * from members;
drop table members;



CREATE TABLE Loans (
    Loan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Book_ID INT NOT NULL,
    Member_ID INT NOT NULL,
    Issue_Date DATE NOT NULL,
    Return_Date DATE,
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);
select * from loans;
drop table loans;

CREATE TABLE Fines (
    Fine_ID INT PRIMARY KEY AUTO_INCREMENT,
    Loan_ID INT NOT NULL,
    Amount DECIMAL(8,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Pending','Paid')),
    Fine_Date DATE NOT NULL,
    FOREIGN KEY (Loan_ID) REFERENCES Loans(Loan_ID)
);
select * from fines;
drop table fines;


CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Shift VARCHAR(20) CHECK (Shift IN ('Morning','Evening','Night'))
);
select * from staff;
drop table staff;

INSERT INTO Books (Book_ID, Title, Author, Genre, Availability) VALUES
(1,'The Alchemist','Paulo Coelho','Fiction', TRUE),
(2,'Wings of Fire','A.P.J Abdul Kalam','Autobiography', TRUE),
(3,'1984','George Orwell','Dystopian', TRUE),
(4,'To Kill a Mockingbird','Harper Lee','Classic', TRUE),
(5,'Rich Dad Poor Dad','Robert Kiyosaki','Finance', TRUE),
(6,'Sapiens','Yuval Noah Harari','History', TRUE),
(7,'The Monk Who Sold His Ferrari','Robin Sharma','Self-help', TRUE),
(8,'Half Girlfriend','Chetan Bhagat','Romance', TRUE),
(9,'War and Peace','Leo Tolstoy','Classic', TRUE),
(10,'Harry Potter','J.K. Rowling','Fantasy', TRUE);

INSERT INTO Members (Member_ID, Name, Contact, Membership_Type, Join_Date) VALUES
(1,'Ravi Sharma','9876100011','Regular','2022-01-15'),
(2,'Neha Kapoor','9876100012','Premium','2022-02-10'),
(3,'Vikram Rao','9876100013','Regular','2022-03-05'),
(4,'Pooja Iyer','9876100014','Student','2022-04-12'),
(5,'Rahul Singh','9876100015','Regular','2022-05-18'),
(6,'Sneha Nair','9876100016','Premium','2022-06-20'),
(7,'Arjun Mehta','9876100017','Student','2022-07-22'),
(8,'Simran Kaur','9876100018','Regular','2022-08-25'),
(9,'Suresh Gupta','9876100019','Regular','2022-09-28'),
(10,'Anita Desai','9876100020','Premium','2022-10-30');

INSERT INTO Loans VALUES
(1,1,1,'2022-08-01','2022-08-10'),
(2,2,2,'2022-08-02','2022-08-12'),
(3,3,3,'2022-08-03','2022-08-15'),
(4,4,4,'2022-08-04','2022-08-14'),
(5,5,5,'2022-08-05','2022-08-20'),
(6,6,6,'2022-08-06','2022-08-16'),
(7,7,7,'2022-08-07','2022-08-17'),
(8,8,8,'2022-08-08','2022-08-18'),
(9,9,9,'2022-08-09','2022-08-19'),
(10,10,10,'2022-08-10','2022-08-25');


INSERT INTO Fines VALUES
(1,1,50,'Late Return','2022-08-12'),
(2,2,30,'Late Return','2022-08-13'),
(3,3,70,'Lost Book','2022-08-16'),
(4,4,40,'Late Return','2022-08-15'),
(5,5,20,'Late Return','2022-08-21'),
(6,6,60,'Lost Book','2022-08-18'),
(7,7,25,'Late Return','2022-08-17'),
(8,8,80,'Lost Book','2022-08-20'),
(9,9,35,'Late Return','2022-08-19'),
(10,10,90,'Lost Book','2022-08-25');


INSERT INTO Staff (Staff_ID, Name, Role, Contact, Shift) VALUES
(1,'Anil Verma','Librarian','9876200011','Morning'),
(2,'Sunita Joshi','Assistant Librarian','9876200012','Evening'),
(3,'Rohit Sharma','Clerk','9876200013','Morning'),
(4,'Kiran Gupta','Technician','9876200014','Night'),
(5,'Meena Iyer','Library Assistant','9876200015','Evening'),
(6,'Amit Kumar','Security Guard','9876200016','Night'),
(7,'Pooja Nair','Cataloguer','9876200017','Morning'),
(8,'Suresh Rathi','Janitor','9876200018','Evening'),
(9,'Neha Desai','Receptionist','9876200019','Morning'),
(10,'Vikram Singh','IT Support','9876200020','Night');




CREATE DATABASE HotelDB;

USE HotelDB;


CREATE TABLE Guests (
    Guest_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE NOT NULL,
    Address VARCHAR(200),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Rooms (
    Room_ID INT PRIMARY KEY AUTO_INCREMENT,
    Room_Type VARCHAR(50) CHECK (Room_Type IN ('Single','Double','Suite','Deluxe')),
    Price DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Available','Occupied','Maintenance')),
    Floor INT
);

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    Guest_ID INT NOT NULL,
    Room_ID INT NOT NULL,
    Checkin_Date DATE NOT NULL,
    Checkout_Date DATE,
    FOREIGN KEY (Guest_ID) REFERENCES Guests(Guest_ID),
    FOREIGN KEY (Room_ID) REFERENCES Rooms(Room_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT NOT NULL,
    Amount DECIMAL(10,2) NOT NULL,
    Method VARCHAR(20) CHECK (Method IN ('Cash','Card','Online')),
    Status VARCHAR(20) CHECK (Status IN ('Pending','Paid','Failed')),
    FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10,2),
    Shift VARCHAR(20) CHECK (Shift IN ('Morning','Evening','Night'))
);


INSERT INTO Guests (Name, Contact, Address, Email) VALUES
('Ravi Sharma','9876500011','Delhi','ravi.sharma@example.com'),
('Neha Kapoor','9876500012','Mumbai','neha.kapoor@example.com'),
('Vikram Rao','9876500013','Bangalore','vikram.rao@example.com'),
('Pooja Iyer','9876500014','Chennai','pooja.iyer@example.com'),
('Rahul Singh','9876500015','Kolkata','rahul.singh@example.com'),
('Sneha Nair','9876500016','Hyderabad','sneha.nair@example.com'),
('Arjun Mehta','9876500017','Pune','arjun.mehta@example.com'),
('Simran Kaur','9876500018','Jaipur','simran.kaur@example.com'),
('Suresh Gupta','9876500019','Lucknow','suresh.gupta@example.com'),
('Anita Desai','9876500020','Ahmedabad','anita.desai@example.com');
select *from guests;
drop table guests;


INSERT INTO Rooms (Room_Type, Price, Status, Floor) VALUES
('Single',1500.00,'Available',1),
('Double',2500.00,'Occupied',2),
('Suite',5000.00,'Available',3),
('Deluxe',4000.00,'Maintenance',4),
('Single',1600.00,'Available',1),
('Double',2600.00,'Occupied',2),
('Suite',5200.00,'Available',3),
('Deluxe',4200.00,'Available',4),
('Single',1700.00,'Occupied',1),
('Double',2700.00,'Available',2);
select * from rooms;
drop table rooms;


INSERT INTO Bookings (Guest_ID, Room_ID, Checkin_Date, Checkout_Date) VALUES
(1,1,'2023-01-10','2023-01-12'),
(2,2,'2023-01-11','2023-01-14'),
(3,3,'2023-01-15','2023-01-18'),
(4,4,'2023-01-20','2023-01-22'),
(5,5,'2023-01-25','2023-01-28'),
(6,6,'2023-02-01','2023-02-04'),
(7,7,'2023-02-05','2023-02-07'),
(8,8,'2023-02-10','2023-02-12'),
(9,9,'2023-02-15','2023-02-17'),
(10,10,'2023-02-20','2023-02-23');
select * from bookings;
drop table bookings;


INSERT INTO Payments (Booking_ID, Amount, Method, Status) VALUES
(1,3000.00,'Card','Paid'),
(2,7500.00,'Cash','Paid'),
(3,15000.00,'Online','Pending'),
(4,8000.00,'Card','Paid'),
(5,4800.00,'Cash','Paid'),
(6,7800.00,'Online','Failed'),
(7,10400.00,'Card','Paid'),
(8,8400.00,'Online','Paid'),
(9,3400.00,'Cash','Pending'),
(10,8100.00,'Card','Paid');
select * from payments;
drop table payments;


INSERT INTO Staff (Name, Role, Salary, Shift) VALUES
('Anil Verma','Manager',50000.00,'Morning'),
('Sunita Joshi','Receptionist',25000.00,'Evening'),
('Rohit Sharma','Chef',40000.00,'Morning'),
('Kiran Gupta','Housekeeping',20000.00,'Night'),
('Meena Iyer','Waitress',22000.00,'Evening'),
('Amit Kumar','Security',18000.00,'Night'),
('Pooja Nair','Clerk',24000.00,'Morning'),
('Suresh Rathi','Technician',28000.00,'Evening'),
('Neha Desai','HR',30000.00,'Morning'),
('Vikram Singh','Driver',20000.00,'Night');
select * from staff;
drop table staff;



CREATE DATABASE SchoolDB;

USE SchoolDB;


CREATE TABLE Students (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age BETWEEN 5 AND 20),
    Gender VARCHAR(10) CHECK (Gender IN ('Male','Female','Other')),
    Grade VARCHAR(10) NOT NULL
);

CREATE TABLE Teachers (
    Teacher_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Subject VARCHAR(50),
    Experience INT CHECK (Experience >= 0),
    Contact VARCHAR(15) UNIQUE
);

CREATE TABLE Classes (
    Class_ID INT PRIMARY KEY AUTO_INCREMENT,
    Grade VARCHAR(10) NOT NULL,
    Section VARCHAR(5),
    Teacher_ID INT NOT NULL,
    Room_Number VARCHAR(10),
    FOREIGN KEY (Teacher_ID) REFERENCES Teachers(Teacher_ID)
);

-- Exams Table
CREATE TABLE Exams (
    Exam_ID INT PRIMARY KEY AUTO_INCREMENT,
    Class_ID INT NOT NULL,
    Subject VARCHAR(50),
    Exam_Date DATE,
    Exam_Time TIME,
    FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID)
);

CREATE TABLE Results (
    Result_ID INT PRIMARY KEY AUTO_INCREMENT,
    Student_ID INT NOT NULL,
    Exam_ID INT NOT NULL,
    Marks DECIMAL(5,2) CHECK (Marks BETWEEN 0 AND 100),
    Grade VARCHAR(5),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Exam_ID) REFERENCES Exams(Exam_ID)
);


INSERT INTO Students (Name, Age, Gender, Grade) VALUES
('Ravi Sharma',15,'Male','10A'),
('Neha Kapoor',14,'Female','9B'),
('Vikram Rao',16,'Male','11A'),
('Pooja Iyer',13,'Female','8C'),
('Rahul Singh',17,'Male','12A'),
('Sneha Nair',15,'Female','10B'),
('Arjun Mehta',14,'Male','9A'),
('Simran Kaur',13,'Female','8A'),
('Suresh Gupta',12,'Male','7B'),
('Anita Desai',16,'Female','11B');

INSERT INTO Teachers (Name, Subject, Experience, Contact) VALUES
('Anil Verma','Maths',10,'9876100011'),
('Sunita Joshi','Science',8,'9876100012'),
('Rohit Sharma','English',12,'9876100013'),
('Kiran Gupta','History',7,'9876100014'),
('Meena Iyer','Geography',9,'9876100015'),
('Amit Kumar','Physics',11,'9876100016'),
('Pooja Nair','Chemistry',6,'9876100017'),
('Suresh Rathi','Biology',5,'9876100018'),
('Neha Desai','Computer',10,'9876100019'),
('Vikram Singh','Economics',8,'9876100020');

INSERT INTO Classes (Grade, Section, Teacher_ID, Room_Number) VALUES
('10','A',1,'101'),
('9','B',2,'102'),
('11','A',3,'103'),
('8','C',4,'104'),
('12','A',5,'105'),
('10','B',6,'106'),
('9','A',7,'107'),
('8','A',8,'108'),
('7','B',9,'109'),
('11','B',10,'110');

INSERT INTO Exams (Class_ID, Subject, Exam_Date, Exam_Time) VALUES
(1,'Maths','2023-03-10','10:00:00'),
(2,'Science','2023-03-11','09:30:00'),
(3,'English','2023-03-12','11:00:00'),
(4,'History','2023-03-13','10:15:00'),
(5,'Geography','2023-03-14','12:00:00'),
(6,'Physics','2023-03-15','09:00:00'),
(7,'Chemistry','2023-03-16','10:30:00'),
(8,'Biology','2023-03-17','11:30:00'),
(9,'Computer','2023-03-18','09:45:00'),
(10,'Economics','2023-03-19','12:30:00');

INSERT INTO Results (Student_ID, Exam_ID, Marks, Grade) VALUES
(1,1,88.5,'A'),
(2,2,76.0,'B'),
(3,3,91.0,'A'),
(4,4,65.5,'C'),
(5,5,84.0,'B'),
(6,6,79.5,'B'),
(7,7,92.0,'A'),
(8,8,58.0,'D'),
(9,9,70.0,'C'),
(10,10,85.0,'B');

SELECT * FROM Students;
SELECT * FROM Teachers;
SELECT * FROM Classes;
SELECT * FROM Exams;
SELECT * FROM Results;

DROP TABLE Results;
DROP TABLE Exams;
DROP TABLE Classes;
DROP TABLE Teachers;
DROP TABLE Students;



CREATE DATABASE EcommerceDB;

USE EcommerceDB;


CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Address VARCHAR(200)
);

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price >= 0),
    Stock INT CHECK (Stock >= 0)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Order_Date DATE,
    Status VARCHAR(20) CHECK (Status IN ('Pending','Shipped','Delivered','Cancelled')),
    Total_Amount DECIMAL(10,2) CHECK (Total_Amount >= 0),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT NOT NULL,
    Method VARCHAR(20) CHECK (Method IN ('Card','Cash','Online','UPI')),
    Amount DECIMAL(10,2) CHECK (Amount >= 0),
    Status VARCHAR(20) CHECK (Status IN ('Paid','Pending','Failed')),
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);

CREATE TABLE Reviews (
    Review_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Comment VARCHAR(300),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);


INSERT INTO Users (Name, Email, Contact, Address) VALUES
('Ravi Sharma','ravi@example.com','9876100011','Delhi'),
('Neha Kapoor','neha@example.com','9876100012','Mumbai'),
('Vikram Rao','vikram@example.com','9876100013','Bangalore'),
('Pooja Iyer','pooja@example.com','9876100014','Chennai'),
('Rahul Singh','rahul@example.com','9876100015','Kolkata'),
('Sneha Nair','sneha@example.com','9876100016','Hyderabad'),
('Arjun Mehta','arjun@example.com','9876100017','Pune'),
('Simran Kaur','simran@example.com','9876100018','Jaipur'),
('Suresh Gupta','suresh@example.com','9876100019','Lucknow'),
('Anita Desai','anita@example.com','9876100020','Ahmedabad');

INSERT INTO Products (Name, Category, Price, Stock) VALUES
('Laptop','Electronics',55000.00,10),
('Smartphone','Electronics',25000.00,20),
('Headphones','Electronics',2000.00,50),
('Refrigerator','Appliances',30000.00,5),
('Microwave','Appliances',8000.00,15),
('Table','Furniture',5000.00,25),
('Chair','Furniture',2000.00,40),
('Novel Book','Books',400.00,100),
('T-shirt','Clothing',800.00,60),
('Shoes','Footwear',3000.00,30);

INSERT INTO Orders (User_ID, Order_Date, Status, Total_Amount) VALUES
(1,'2023-05-01','Delivered',55000.00),
(2,'2023-05-02','Shipped',25000.00),
(3,'2023-05-03','Pending',2000.00),
(4,'2023-05-04','Cancelled',30000.00),
(5,'2023-05-05','Delivered',8000.00),
(6,'2023-05-06','Delivered',5000.00),
(7,'2023-05-07','Shipped',2000.00),
(8,'2023-05-08','Pending',400.00),
(9,'2023-05-09','Delivered',800.00),
(10,'2023-05-10','Delivered',3000.00);

INSERT INTO Payments (Order_ID, Method, Amount, Status) VALUES
(1,'Card',55000.00,'Paid'),
(2,'Cash',25000.00,'Paid'),
(3,'Online',2000.00,'Pending'),
(4,'Card',30000.00,'Failed'),
(5,'UPI',8000.00,'Paid'),
(6,'Online',5000.00,'Paid'),
(7,'Cash',2000.00,'Paid'),
(8,'Card',400.00,'Pending'),
(9,'UPI',800.00,'Paid'),
(10,'Online',3000.00,'Paid');

INSERT INTO Reviews (Product_ID, User_ID, Rating, Comment) VALUES
(1,1,5,'Excellent laptop!'),
(2,2,4,'Very good smartphone'),
(3,3,3,'Average sound quality'),
(4,4,5,'Great refrigerator'),
(5,5,4,'Good microwave'),
(6,6,4,'Sturdy table'),
(7,7,5,'Comfortable chair'),
(8,8,3,'Decent read'),
(9,9,4,'Nice quality T-shirt'),
(10,10,5,'Perfect fit shoes');

SELECT * FROM Users;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;
SELECT * FROM Reviews;

DROP TABLE Reviews;
DROP TABLE Payments;
DROP TABLE Orders;
DROP TABLE Products;
DROP TABLE Users;


CREATE DATABASE SocialMediaDB;

USE SocialMediaDB;


CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Join_Date DATE
);

CREATE TABLE Posts (
    Post_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT NOT NULL,
    Content VARCHAR(500),
    Post_Date DATE,
    Likes INT DEFAULT 0,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Comments (
    Comment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Post_ID INT NOT NULL,
    User_ID INT NOT NULL,
    Text VARCHAR(300),
    Comment_Date DATE,
    FOREIGN KEY (Post_ID) REFERENCES Posts(Post_ID),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Messages (
    Message_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sender_ID INT NOT NULL,
    Receiver_ID INT NOT NULL,
    Content VARCHAR(500),
    Message_Date DATE,
    FOREIGN KEY (Sender_ID) REFERENCES Users(User_ID),
    FOREIGN KEY (Receiver_ID) REFERENCES Users(User_ID)
);

CREATE TABLE Friends (
    Friend_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID1 INT NOT NULL,
    User_ID2 INT NOT NULL,
    Status VARCHAR(20) CHECK (Status IN ('Pending','Accepted','Blocked')),
    Since DATE,
    FOREIGN KEY (User_ID1) REFERENCES Users(User_ID),
    FOREIGN KEY (User_ID2) REFERENCES Users(User_ID)
);


INSERT INTO Users (Username, Email, Password, Join_Date) VALUES
('ravi_sharma','ravi@example.com','pass123','2023-01-10'),
('neha_kapoor','neha@example.com','pass234','2023-01-12'),
('vikram_rao','vikram@example.com','pass345','2023-01-15'),
('pooja_iyer','pooja@example.com','pass456','2023-01-20'),
('rahul_singh','rahul@example.com','pass567','2023-02-01'),
('sneha_nair','sneha@example.com','pass678','2023-02-05'),
('arjun_mehta','arjun@example.com','pass789','2023-02-10'),
('simran_kaur','simran@example.com','pass890','2023-02-15'),
('suresh_gupta','suresh@example.com','pass901','2023-02-20'),
('anita_desai','anita@example.com','pass101','2023-02-25');

INSERT INTO Posts (User_ID, Content, Post_Date, Likes) VALUES
(1,'Excited to join this platform!','2023-01-11',15),
(2,'Good morning everyone!','2023-01-13',20),
(3,'Just finished reading a great book.','2023-01-16',10),
(4,'Happy weekend folks!','2023-01-21',25),
(5,'Exploring new tech today.','2023-02-02',30),
(6,'Sharing my latest artwork.','2023-02-06',40),
(7,'Pune weather is amazing today.','2023-02-11',18),
(8,'Feeling blessed!','2023-02-16',22),
(9,'Working on a new project.','2023-02-21',12),
(10,'Happy to be here!','2023-02-26',28);

INSERT INTO Comments (Post_ID, User_ID, Text, Comment_Date) VALUES
(1,2,'Welcome aboard!','2023-01-11'),
(2,3,'Good morning Neha!','2023-01-13'),
(3,4,'Which book was it?','2023-01-16'),
(4,5,'Happy weekend!','2023-01-21'),
(5,6,'Sounds interesting!','2023-02-02'),
(6,7,'Great artwork Sneha!','2023-02-06'),
(7,8,'Yes, Pune weather rocks!','2023-02-11'),
(8,9,'Stay happy always!','2023-02-16'),
(9,10,'Good luck with your project.','2023-02-21'),
(10,1,'Glad to see you here!','2023-02-26');

INSERT INTO Messages (Sender_ID, Receiver_ID, Content, Message_Date) VALUES
(1,2,'Hi Neha, how are you?','2023-01-12'),
(2,1,'I am good, thanks Ravi!','2023-01-12'),
(3,4,'Hey Pooja, long time no see!','2023-01-17'),
(4,3,'Yes Vikram, been busy!','2023-01-17'),
(5,6,'Sneha, did you check the tech news?','2023-02-03'),
(6,5,'Yes Rahul, very exciting updates!','2023-02-03'),
(7,8,'Simran, want to catch up this weekend?','2023-02-12'),
(8,7,'Sure Arjun, let’s do it.','2023-02-12'),
(9,10,'Anita, let’s collaborate on project.','2023-02-22'),
(10,9,'Yes Suresh, happy to join.','2023-02-22');

INSERT INTO Friends (User_ID1, User_ID2, Status, Since) VALUES
(1,2,'Accepted','2023-01-12'),
(2,3,'Accepted','2023-01-14'),
(3,4,'Accepted','2023-01-18'),
(4,5,'Pending','2023-01-22'),
(5,6,'Accepted','2023-02-04'),
(6,7,'Accepted','2023-02-07'),
(7,8,'Pending','2023-02-13'),
(8,9,'Accepted','2023-02-17'),
(9,10,'Blocked','2023-02-23'),
(1,10,'Accepted','2023-02-27');

SELECT * FROM Users;
SELECT * FROM Posts;
SELECT * FROM Comments;
SELECT * FROM Messages;
SELECT * FROM Friends;

DROP TABLE Friends;
DROP TABLE Messages;
DROP TABLE Comments;
DROP TABLE Posts;
DROP TABLE Users;



CREATE DATABASE RailwayDB;

USE RailwayDB;


CREATE TABLE Trains (
    Train_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Source VARCHAR(100),
    Destination VARCHAR(100),
    Type VARCHAR(50) CHECK (Type IN ('Express','Passenger','Superfast','Local'))
);

CREATE TABLE Passengers (
    Passenger_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 0),
    Gender VARCHAR(10) CHECK (Gender IN ('Male','Female','Other')),
    Ticket_Number VARCHAR(20) UNIQUE
);

CREATE TABLE Tickets (
    Ticket_ID INT PRIMARY KEY AUTO_INCREMENT,
    Train_ID INT NOT NULL,
    Passenger_ID INT NOT NULL,
    Date DATE,
    Seat_Number VARCHAR(10),
    FOREIGN KEY (Train_ID) REFERENCES Trains(Train_ID),
    FOREIGN KEY (Passenger_ID) REFERENCES Passengers(Passenger_ID)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Train_ID INT,
    Contact VARCHAR(15),
    FOREIGN KEY (Train_ID) REFERENCES Trains(Train_ID)
);

CREATE TABLE Stations (
    Station_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Code VARCHAR(10) UNIQUE,
    Capacity INT CHECK (Capacity >= 0)
);


INSERT INTO Trains (Name, Source, Destination, Type) VALUES
('Shatabdi Express','Delhi','Bhopal','Express'),
('Rajdhani Express','Mumbai','Delhi','Superfast'),
('Duronto Express','Kolkata','Mumbai','Superfast'),
('Chennai Express','Chennai','Mumbai','Express'),
('Howrah Mail','Howrah','Chennai','Passenger'),
('Gatimaan Express','Delhi','Agra','Superfast'),
('Deccan Queen','Pune','Mumbai','Local'),
('Intercity Express','Lucknow','Delhi','Passenger'),
('Garib Rath','Delhi','Patna','Express'),
('Jan Shatabdi','Ahmedabad','Surat','Passenger');

INSERT INTO Passengers (Name, Age, Gender, Ticket_Number) VALUES
('Ravi Sharma',30,'Male','T1001'),
('Neha Kapoor',25,'Female','T1002'),
('Vikram Rao',40,'Male','T1003'),
('Pooja Iyer',22,'Female','T1004'),
('Rahul Singh',35,'Male','T1005'),
('Sneha Nair',28,'Female','T1006'),
('Arjun Mehta',33,'Male','T1007'),
('Simran Kaur',29,'Female','T1008'),
('Suresh Gupta',45,'Male','T1009'),
('Anita Desai',32,'Female','T1010');

INSERT INTO Tickets (Train_ID, Passenger_ID, Date, Seat_Number) VALUES
(1,1,'2023-05-01','A1-01'),
(2,2,'2023-05-02','B2-15'),
(3,3,'2023-05-03','C1-20'),
(4,4,'2023-05-04','D3-10'),
(5,5,'2023-05-05','E1-05'),
(6,6,'2023-05-06','F2-08'),
(7,7,'2023-05-07','G1-30'),
(8,8,'2023-05-08','H2-12'),
(9,9,'2023-05-09','I1-25'),
(10,10,'2023-05-10','J3-18');

INSERT INTO Staff (Name, Role, Train_ID, Contact) VALUES
('Amit Verma','Conductor',1,'9876100101'),
('Rakesh Kumar','Driver',2,'9876100102'),
('Sunil Joshi','Ticket Checker',3,'9876100103'),
('Meena Gupta','Attendant',4,'9876100104'),
('Rajesh Singh','Conductor',5,'9876100105'),
('Priya Nair','Driver',6,'9876100106'),
('Arun Sharma','Ticket Checker',7,'9876100107'),
('Kavita Iyer','Attendant',8,'9876100108'),
('Deepak Rao','Conductor',9,'9876100109'),
('Sanjay Patel','Driver',10,'9876100110');

INSERT INTO Stations (Name, Location, Code, Capacity) VALUES
('New Delhi','Delhi','NDLS',50000),
('Mumbai Central','Mumbai','BCT',40000),
('Howrah Junction','Kolkata','HWH',60000),
('Chennai Central','Chennai','MAS',45000),
('Pune Junction','Pune','PUNE',30000),
('Lucknow Charbagh','Lucknow','LKO',35000),
('Patna Junction','Patna','PNBE',32000),
('Surat Station','Surat','ST',28000),
('Agra Cantt','Agra','AGC',25000),
('Ahmedabad Junction','Ahmedabad','ADI',40000);

SELECT * FROM Trains;
SELECT * FROM Passengers;
SELECT * FROM Tickets;
SELECT * FROM Staff;
SELECT * FROM Stations;

DROP TABLE Tickets;
DROP TABLE Staff;
DROP TABLE Passengers;
DROP TABLE Trains;
DROP TABLE Stations;




CREATE DATABASE RestaurantDB;

USE RestaurantDB;


CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(200)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT NOT NULL,
    Order_Date DATE,
    Total_Amount DECIMAL(10,2) CHECK (Total_Amount >= 0),
    Status VARCHAR(20) CHECK (Status IN ('Pending','Completed','Cancelled')),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Menu (
    Item_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2) CHECK (Price >= 0),
    Availability VARCHAR(20) CHECK (Availability IN ('Available','Unavailable'))
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10,2) CHECK (Salary >= 0),
    Shift VARCHAR(20)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Order_ID INT NOT NULL,
    Method VARCHAR(20) CHECK (Method IN ('Cash','Card','Online','UPI')),
    Amount DECIMAL(10,2) CHECK (Amount >= 0),
    Payment_Date DATE,
    FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID)
);


INSERT INTO Customers (Name, Contact, Email, Address) VALUES
('Ravi Sharma','9876001001','ravi@example.com','Delhi'),
('Neha Kapoor','9876001002','neha@example.com','Mumbai'),
('Vikram Rao','9876001003','vikram@example.com','Bangalore'),
('Pooja Iyer','9876001004','pooja@example.com','Chennai'),
('Rahul Singh','9876001005','rahul@example.com','Kolkata'),
('Sneha Nair','9876001006','sneha@example.com','Hyderabad'),
('Arjun Mehta','9876001007','arjun@example.com','Pune'),
('Simran Kaur','9876001008','simran@example.com','Jaipur'),
('Suresh Gupta','9876001009','suresh@example.com','Lucknow'),
('Anita Desai','9876001010','anita@example.com','Ahmedabad');

INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount, Status) VALUES
(1,'2023-06-01',1500.00,'Completed'),
(2,'2023-06-02',2000.00,'Completed'),
(3,'2023-06-03',1200.00,'Pending'),
(4,'2023-06-04',1800.00,'Cancelled'),
(5,'2023-06-05',2500.00,'Completed'),
(6,'2023-06-06',3000.00,'Completed'),
(7,'2023-06-07',900.00,'Pending'),
(8,'2023-06-08',2200.00,'Completed'),
(9,'2023-06-09',1100.00,'Completed'),
(10,'2023-06-10',1750.00,'Completed');

INSERT INTO Menu (Name, Category, Price, Availability) VALUES
('Paneer Butter Masala','Main Course',250.00,'Available'),
('Chicken Biryani','Main Course',300.00,'Available'),
('Veg Burger','Snacks',150.00,'Available'),
('French Fries','Snacks',100.00,'Available'),
('Masala Dosa','South Indian',120.00,'Unavailable'),
('Idli Sambar','South Indian',100.00,'Available'),
('Gulab Jamun','Dessert',80.00,'Available'),
('Ice Cream','Dessert',90.00,'Available'),
('Cold Coffee','Beverage',120.00,'Available'),
('Lassi','Beverage',100.00,'Unavailable');

INSERT INTO Staff (Name, Role, Salary, Shift) VALUES
('Amit Verma','Manager',45000.00,'Morning'),
('Rakesh Kumar','Chef',35000.00,'Evening'),
('Sunil Joshi','Waiter',15000.00,'Morning'),
('Meena Gupta','Waitress',16000.00,'Evening'),
('Rajesh Singh','Cashier',20000.00,'Morning'),
('Priya Nair','Chef',34000.00,'Evening'),
('Arun Sharma','Cleaner',12000.00,'Morning'),
('Kavita Iyer','Receptionist',18000.00,'Evening'),
('Deepak Rao','Delivery Boy',14000.00,'Morning'),
('Sanjay Patel','Chef',36000.00,'Evening');

INSERT INTO Payments (Order_ID, Method, Amount, Payment_Date) VALUES
(1,'Card',1500.00,'2023-06-01'),
(2,'Cash',2000.00,'2023-06-02'),
(3,'Online',1200.00,'2023-06-03'),
(4,'UPI',1800.00,'2023-06-04'),
(5,'Card',2500.00,'2023-06-05'),
(6,'Online',3000.00,'2023-06-06'),
(7,'Cash',900.00,'2023-06-07'),
(8,'Card',2200.00,'2023-06-08'),
(9,'UPI',1100.00,'2023-06-09'),
(10,'Online',1750.00,'2023-06-10');

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM Menu;
SELECT * FROM Staff;
SELECT * FROM Payments;

DROP TABLE Payments;
DROP TABLE Orders;
DROP TABLE Menu;
DROP TABLE Staff;
DROP TABLE Customers;




CREATE DATABASE CinemaDB;
USE CinemaDB;

CREATE TABLE Movies (
    Movie_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Duration INT,
    Rating DECIMAL(2,1)
);

CREATE TABLE Theatres (
    Theatre_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Capacity INT,
    Contact VARCHAR(15)
);

CREATE TABLE Shows (
    Show_ID INT PRIMARY KEY AUTO_INCREMENT,
    Movie_ID INT,
    Theatre_ID INT,
    Show_Date DATE,
    Show_Time TIME,
    FOREIGN KEY (Movie_ID) REFERENCES Movies(Movie_ID),
    FOREIGN KEY (Theatre_ID) REFERENCES Theatres(Theatre_ID)
);

CREATE TABLE Tickets (
    Ticket_ID INT PRIMARY KEY AUTO_INCREMENT,
    Show_ID INT,
    Seat_Number VARCHAR(10),
    Price DECIMAL(10,2),
    Status VARCHAR(20),
    FOREIGN KEY (Show_ID) REFERENCES Shows(Show_ID)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Contact VARCHAR(15),
    Shift VARCHAR(20)
);

INSERT INTO Movies (Title, Genre, Duration, Rating) VALUES
('Inception','Sci-Fi',148,8.8),
('Titanic','Romance',195,7.9),
('The Dark Knight','Action',152,9.0),
('3 Idiots','Comedy',170,8.4),
('Avengers: Endgame','Action',181,8.5),
('Interstellar','Sci-Fi',169,8.6),
('Dangal','Drama',161,8.3),
('Jurassic Park','Adventure',127,8.1),
('The Lion King','Animation',118,8.5),
('Parasite','Thriller',132,8.6);

INSERT INTO Theatres (Name, Location, Capacity, Contact) VALUES
('PVR Cinemas','Delhi',250,'9876002001'),
('INOX','Mumbai',300,'9876002002'),
('Cinepolis','Bangalore',280,'9876002003'),
('Carnival Cinemas','Chennai',200,'9876002004'),
('Wave Cinemas','Noida',220,'9876002005'),
('Mukti Cinemas','Kolkata',180,'9876002006'),
('Satyam Cinemas','Hyderabad',260,'9876002007'),
('City Pride','Pune',240,'9876002008'),
('Raj Mandir','Jaipur',320,'9876002009'),
('Prasad IMAX','Hyderabad',500,'9876002010');

INSERT INTO Shows (Movie_ID, Theatre_ID, Show_Date, Show_Time) VALUES
(1,1,'2023-07-01','18:30:00'),
(2,2,'2023-07-02','20:00:00'),
(3,3,'2023-07-03','21:00:00'),
(4,4,'2023-07-04','19:00:00'),
(5,5,'2023-07-05','22:00:00'),
(6,6,'2023-07-06','17:30:00'),
(7,7,'2023-07-07','20:30:00'),
(8,8,'2023-07-08','19:15:00'),
(9,9,'2023-07-09','18:00:00'),
(10,10,'2023-07-10','21:45:00');

INSERT INTO Tickets (Show_ID, Seat_Number, Price, Status) VALUES
(1,'A1',300.00,'Booked'),
(2,'B5',350.00,'Booked'),
(3,'C10',400.00,'Available'),
(4,'D15',250.00,'Booked'),
(5,'E20',500.00,'Available'),
(6,'F25',320.00,'Booked'),
(7,'G30',280.00,'Available'),
(8,'H35',450.00,'Booked'),
(9,'I40',380.00,'Available'),
(10,'J45',420.00,'Booked');

INSERT INTO Staff (Name, Role, Contact, Shift) VALUES
('Amit Verma','Manager','9876103001','Morning'),
('Rakesh Kumar','Ticket Counter','9876103002','Evening'),
('Sunil Joshi','Cleaner','9876103003','Morning'),
('Meena Gupta','Security','9876103004','Evening'),
('Rajesh Singh','Projectionist','9876103005','Morning'),
('Priya Nair','Manager','9876103006','Evening'),
('Arun Sharma','Ticket Counter','9876103007','Morning'),
('Kavita Iyer','Receptionist','9876103008','Evening'),
('Deepak Rao','Cleaner','9876103009','Morning'),
('Sanjay Patel','Security','9876103010','Evening');

SELECT * FROM Movies;
SELECT * FROM Theatres;
SELECT * FROM Shows;
SELECT * FROM Tickets;
SELECT * FROM Staff;

DROP TABLE Movies;
DROP TABLE Theatres;
DROP TABLE Shows;
DROP TABLE Tickets;
DROP TABLE Staff;



CREATE DATABASE SportsClubDB;
USE SportsClubDB;

CREATE TABLE Members (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Membership_Type VARCHAR(50)
);

CREATE TABLE Trainers (
    Trainer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(50),
    Contact VARCHAR(15),
    Experience INT
);

CREATE TABLE Activities (
    Activity_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Schedule VARCHAR(50),
    Trainer_ID INT,
    Fee DECIMAL(10,2),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainers(Trainer_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Member_ID INT,
    Amount DECIMAL(10,2),
    Payment_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);

CREATE TABLE Events (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Event_Date DATE,
    Location VARCHAR(100),
    Fee DECIMAL(10,2)
);

INSERT INTO Members (Name, Age, Gender, Membership_Type) VALUES
('Ravi Sharma',25,'Male','Annual'),
('Neha Kapoor',22,'Female','Monthly'),
('Arjun Mehta',28,'Male','Quarterly'),
('Simran Kaur',24,'Female','Annual'),
('Rahul Singh',30,'Male','Monthly'),
('Pooja Iyer',26,'Female','Annual'),
('Suresh Gupta',35,'Male','Quarterly'),
('Anita Desai',29,'Female','Annual'),
('Vikram Rao',27,'Male','Monthly'),
('Sneha Nair',23,'Female','Annual');

INSERT INTO Trainers (Name, Specialization, Contact, Experience) VALUES
('Amit Verma','Yoga','9876204001',5),
('Rakesh Kumar','Zumba','9876204002',3),
('Sunil Joshi','Weight Training','9876204003',7),
('Meena Gupta','Aerobics','9876204004',4),
('Rajesh Singh','Swimming','9876204005',6),
('Priya Nair','Dance','9876204006',2),
('Arun Sharma','Martial Arts','9876204007',8),
('Kavita Iyer','Pilates','9876204008',4),
('Deepak Rao','Boxing','9876204009',5),
('Sanjay Patel','Running','9876204010',3);

INSERT INTO Activities (Name, Schedule, Trainer_ID, Fee) VALUES
('Yoga','Mon-Wed-Fri',1,1000.00),
('Zumba','Tue-Thu-Sat',2,1200.00),
('Weight Training','Daily',3,1500.00),
('Aerobics','Mon-Wed-Fri',4,900.00),
('Swimming','Daily',5,2000.00),
('Dance','Tue-Thu',6,1100.00),
('Martial Arts','Mon-Wed',7,1700.00),
('Pilates','Tue-Thu-Sat',8,1300.00),
('Boxing','Daily',9,1600.00),
('Running','Mon-Fri',10,800.00);

INSERT INTO Payments (Member_ID, Amount, Payment_Date, Status) VALUES
(1,5000.00,'2023-07-01','Paid'),
(2,1500.00,'2023-07-02','Paid'),
(3,3000.00,'2023-07-03','Pending'),
(4,5000.00,'2023-07-04','Paid'),
(5,1500.00,'2023-07-05','Paid'),
(6,5000.00,'2023-07-06','Pending'),
(7,3000.00,'2023-07-07','Paid'),
(8,5000.00,'2023-07-08','Paid'),
(9,1500.00,'2023-07-09','Failed'),
(10,5000.00,'2023-07-10','Paid');

INSERT INTO Events (Name, Event_Date, Location, Fee) VALUES
('Yoga Workshop','2023-08-01','Delhi',500.00),
('Zumba Fest','2023-08-05','Mumbai',600.00),
('Weight Training Camp','2023-08-10','Bangalore',800.00),
('Aerobics Marathon','2023-08-15','Chennai',400.00),
('Swimming Gala','2023-08-20','Hyderabad',1000.00),
('Dance Night','2023-08-25','Pune',700.00),
('Martial Arts Show','2023-08-30','Jaipur',900.00),
('Pilates Retreat','2023-09-01','Goa',1200.00),
('Boxing Challenge','2023-09-05','Lucknow',750.00),
('Running Marathon','2023-09-10','Ahmedabad',500.00);

SELECT * FROM Members;
SELECT * FROM Trainers;
SELECT * FROM Activities;
SELECT * FROM Payments;
SELECT * FROM Events;

DROP TABLE Members;
DROP TABLE Trainers;
DROP TABLE Activities;
DROP TABLE Payments;
DROP TABLE Events;




CREATE DATABASE GovernmentDB;
USE GovernmentDB;

CREATE TABLE Citizens (
    Citizen_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender VARCHAR(10),
    Address VARCHAR(200)
);

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Head VARCHAR(100),
    Location VARCHAR(100),
    Contact VARCHAR(15)
);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Department_ID INT,
    Role VARCHAR(50),
    Salary DECIMAL(10,2),
    FOREIGN KEY (Department_ID) REFERENCES Departments(Department_ID)
);

CREATE TABLE Schemes (
    Scheme_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(200),
    Start_Date DATE,
    End_Date DATE
);

CREATE TABLE Applications (
    Application_ID INT PRIMARY KEY AUTO_INCREMENT,
    Citizen_ID INT,
    Scheme_ID INT,
    Application_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Citizen_ID) REFERENCES Citizens(Citizen_ID),
    FOREIGN KEY (Scheme_ID) REFERENCES Schemes(Scheme_ID)
);

INSERT INTO Citizens (Name, DOB, Gender, Address) VALUES
('Ravi Sharma','1990-05-12','Male','Delhi'),
('Neha Kapoor','1985-09-20','Female','Mumbai'),
('Arjun Mehta','1992-11-15','Male','Bangalore'),
('Simran Kaur','1995-03-25','Female','Chennai'),
('Rahul Singh','1988-07-10','Male','Kolkata'),
('Pooja Iyer','1993-12-30','Female','Hyderabad'),
('Suresh Gupta','1980-08-08','Male','Pune'),
('Anita Desai','1991-01-18','Female','Jaipur'),
('Vikram Rao','1987-06-05','Male','Lucknow'),
('Sneha Nair','1994-04-22','Female','Ahmedabad');

INSERT INTO Departments (Name, Head, Location, Contact) VALUES
('Health','Dr. Arvind Kumar','Delhi','9876305001'),
('Education','Ms. Sunita Sharma','Mumbai','9876305002'),
('Transport','Mr. Rajesh Verma','Bangalore','9876305003'),
('Finance','Mr. Suresh Rao','Chennai','9876305004'),
('Defence','Mr. Manoj Singh','Kolkata','9876305005'),
('IT','Mr. Vivek Joshi','Hyderabad','9876305006'),
('Tourism','Ms. Rekha Gupta','Pune','9876305007'),
('Agriculture','Mr. Sanjay Mehta','Jaipur','9876305008'),
('Environment','Mr. Deepak Kumar','Lucknow','9876305009'),
('Law','Ms. Kavita Iyer','Ahmedabad','9876305010');

INSERT INTO Employees (Name, Department_ID, Role, Salary) VALUES
('Amit Verma',1,'Doctor',75000.00),
('Rakesh Kumar',2,'Teacher',50000.00),
('Sunil Joshi',3,'Driver',30000.00),
('Meena Gupta',4,'Accountant',55000.00),
('Rajesh Singh',5,'Officer',65000.00),
('Priya Nair',6,'Engineer',70000.00),
('Arun Sharma',7,'Guide',35000.00),
('Kavita Iyer',8,'Analyst',60000.00),
('Deepak Rao',9,'Scientist',80000.00),
('Sanjay Patel',10,'Lawyer',90000.00);

INSERT INTO Schemes (Name, Description, Start_Date, End_Date) VALUES
('Ayushman Bharat','Healthcare for all','2018-09-01','2028-09-01'),
('Midday Meal','Free meals for students','2000-01-01','2030-01-01'),
('PM Awas Yojana','Affordable housing scheme','2015-06-25','2025-06-25'),
('Startup India','Encouraging startups','2016-01-16','2026-01-16'),
('Digital India','Promoting digital services','2015-07-01','2025-07-01'),
('Ujjwala Yojana','LPG connections for women','2016-05-01','2026-05-01'),
('Skill India','Skill development program','2015-07-15','2025-07-15'),
('Make in India','Boosting manufacturing','2014-09-25','2024-09-25'),
('Swachh Bharat','Clean India mission','2014-10-02','2024-10-02'),
('Smart Cities','Urban development','2015-06-25','2025-06-25');

INSERT INTO Applications (Citizen_ID, Scheme_ID, Application_Date, Status) VALUES
(1,1,'2023-01-10','Approved'),
(2,2,'2023-01-12','Pending'),
(3,3,'2023-01-15','Approved'),
(4,4,'2023-01-20','Rejected'),
(5,5,'2023-01-22','Approved'),
(6,6,'2023-01-25','Pending'),
(7,7,'2023-01-30','Approved'),
(8,8,'2023-02-01','Rejected'),
(9,9,'2023-02-05','Pending'),
(10,10,'2023-02-08','Approved');

SELECT * FROM Citizens;
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Schemes;
SELECT * FROM Applications;

DROP TABLE Citizens;
DROP TABLE Departments;
DROP TABLE Employees;
DROP TABLE Schemes;
DROP TABLE Applications;


CREATE DATABASE TransportDB;
USE TransportDB;

CREATE TABLE Vehicles (
    Vehicle_ID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(50),
    Capacity INT,
    Number VARCHAR(20) UNIQUE,
    Owner VARCHAR(100)
);

CREATE TABLE Drivers (
    Driver_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    License_Number VARCHAR(20) UNIQUE,
    Contact VARCHAR(15),
    Experience INT
);

CREATE TABLE Routes (
    Route_ID INT PRIMARY KEY AUTO_INCREMENT,
    Start_Point VARCHAR(100),
    End_Point VARCHAR(100),
    Distance DECIMAL(6,2),
    Duration TIME
);

CREATE TABLE Trips (
    Trip_ID INT PRIMARY KEY AUTO_INCREMENT,
    Vehicle_ID INT,
    Driver_ID INT,
    Route_ID INT,
    Trip_Date DATE,
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID),
    FOREIGN KEY (Route_ID) REFERENCES Routes(Route_ID)
);

CREATE TABLE Tickets (
    Ticket_ID INT PRIMARY KEY AUTO_INCREMENT,
    Trip_ID INT,
    Passenger_Name VARCHAR(100),
    Seat_Number VARCHAR(10),
    Price DECIMAL(10,2),
    FOREIGN KEY (Trip_ID) REFERENCES Trips(Trip_ID)
);

INSERT INTO Vehicles (Type, Capacity, Number, Owner) VALUES
('Bus',50,'MH12AB1234','Ravi Sharma'),
('Mini Bus',30,'DL08CD5678','Neha Kapoor'),
('Van',15,'KA05EF9012','Arjun Mehta'),
('Truck',40,'TN22GH3456','Simran Kaur'),
('Taxi',4,'WB20IJ7890','Rahul Singh'),
('Bus',60,'AP09KL1234','Pooja Iyer'),
('Van',12,'RJ14MN5678','Suresh Gupta'),
('Truck',35,'UP32OP9012','Anita Desai'),
('Mini Bus',25,'GJ01QR3456','Vikram Rao'),
('Taxi',4,'HR26ST7890','Sneha Nair');

INSERT INTO Drivers (Name, License_Number, Contact, Experience) VALUES
('Amit Verma','DL12345','9876406001',5),
('Rakesh Kumar','MH67890','9876406002',7),
('Sunil Joshi','KA54321','9876406003',10),
('Meena Gupta','TN98765','9876406004',6),
('Rajesh Singh','WB45678','9876406005',8),
('Priya Nair','AP11223','9876406006',4),
('Arun Sharma','RJ33445','9876406007',12),
('Kavita Iyer','UP66789','9876406008',9),
('Deepak Rao','GJ99887','9876406009',3),
('Sanjay Patel','HR77665','9876406010',15);

INSERT INTO Routes (Start_Point, End_Point, Distance, Duration) VALUES
('Delhi','Mumbai',1400,'20:00:00'),
('Bangalore','Chennai',350,'06:00:00'),
('Hyderabad','Pune',560,'10:00:00'),
('Kolkata','Patna',600,'09:00:00'),
('Jaipur','Agra',240,'05:00:00'),
('Lucknow','Kanpur',90,'02:00:00'),
('Chennai','Hyderabad',630,'11:00:00'),
('Mumbai','Goa',590,'12:00:00'),
('Delhi','Amritsar',450,'08:00:00'),
('Bhopal','Indore',190,'03:30:00');

INSERT INTO Trips (Vehicle_ID, Driver_ID, Route_ID, Trip_Date) VALUES
(1,1,1,'2023-07-01'),
(2,2,2,'2023-07-02'),
(3,3,3,'2023-07-03'),
(4,4,4,'2023-07-04'),
(5,5,5,'2023-07-05'),
(6,6,6,'2023-07-06'),
(7,7,7,'2023-07-07'),
(8,8,8,'2023-07-08'),
(9,9,9,'2023-07-09'),
(10,10,10,'2023-07-10');

INSERT INTO Tickets (Trip_ID, Passenger_Name, Seat_Number, Price) VALUES
(1,'Rohit Kumar','A1',1200.00),
(2,'Neha Sharma','B5',600.00),
(3,'Vikram Rao','C10',950.00),
(4,'Pooja Iyer','D15',700.00),
(5,'Rahul Singh','E20',500.00),
(6,'Sneha Nair','F25',200.00),
(7,'Arjun Mehta','G30',800.00),
(8,'Simran Kaur','H35',1100.00),
(9,'Suresh Gupta','I40',900.00),
(10,'Anita Desai','J45',400.00);

SELECT * FROM Vehicles;
SELECT * FROM Drivers;
SELECT * FROM Routes;
SELECT * FROM Trips;
SELECT * FROM Tickets;

DROP TABLE Vehicles;
DROP TABLE Drivers;
DROP TABLE Routes;
DROP TABLE Trips;
DROP TABLE Tickets;



CREATE DATABASE InsuranceDB;
USE InsuranceDB;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15),
    Address VARCHAR(200),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Policies (
    Policy_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Policy_Type VARCHAR(50),
    Amount DECIMAL(12,2),
    Duration INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Claims (
    Claim_ID INT PRIMARY KEY AUTO_INCREMENT,
    Policy_ID INT,
    Claim_Date DATE,
    Amount DECIMAL(12,2),
    Status VARCHAR(20),
    FOREIGN KEY (Policy_ID) REFERENCES Policies(Policy_ID)
);

CREATE TABLE Agents (
    Agent_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15),
    Branch VARCHAR(100),
    Experience INT
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Policy_ID INT,
    Amount DECIMAL(12,2),
    Payment_Date DATE,
    Method VARCHAR(20),
    FOREIGN KEY (Policy_ID) REFERENCES Policies(Policy_ID)
);

INSERT INTO Customers (Name, Contact, Address, Email) VALUES
('Ravi Sharma','9876507001','Delhi','ravi@example.com'),
('Neha Kapoor','9876507002','Mumbai','neha@example.com'),
('Arjun Mehta','9876507003','Bangalore','arjun@example.com'),
('Simran Kaur','9876507004','Chennai','simran@example.com'),
('Rahul Singh','9876507005','Kolkata','rahul@example.com'),
('Pooja Iyer','9876507006','Hyderabad','pooja@example.com'),
('Suresh Gupta','9876507007','Pune','suresh@example.com'),
('Anita Desai','9876507008','Jaipur','anita@example.com'),
('Vikram Rao','9876507009','Lucknow','vikram@example.com'),
('Sneha Nair','9876507010','Ahmedabad','sneha@example.com');

INSERT INTO Policies (Customer_ID, Policy_Type, Amount, Duration) VALUES
(1,'Life',500000.00,20),
(2,'Health',200000.00,10),
(3,'Vehicle',300000.00,5),
(4,'Travel',100000.00,2),
(5,'Life',800000.00,25),
(6,'Health',250000.00,12),
(7,'Vehicle',150000.00,7),
(8,'Travel',120000.00,3),
(9,'Life',600000.00,15),
(10,'Health',180000.00,8);

INSERT INTO Claims (Policy_ID, Claim_Date, Amount, Status) VALUES
(1,'2023-01-10',50000.00,'Approved'),
(2,'2023-02-15',30000.00,'Pending'),
(3,'2023-03-20',20000.00,'Rejected'),
(4,'2023-04-05',15000.00,'Approved'),
(5,'2023-05-12',70000.00,'Pending'),
(6,'2023-06-18',40000.00,'Approved'),
(7,'2023-07-22',25000.00,'Rejected'),
(8,'2023-08-30',10000.00,'Approved'),
(9,'2023-09-10',35000.00,'Pending'),
(10,'2023-10-05',15000.00,'Approved');

INSERT INTO Agents (Name, Contact, Branch, Experience) VALUES
('Amit Verma','9876507101','Delhi',5),
('Rakesh Kumar','9876507102','Mumbai',7),
('Sunil Joshi','9876507103','Bangalore',10),
('Meena Gupta','9876507104','Chennai',6),
('Rajesh Singh','9876507105','Kolkata',8),
('Priya Nair','9876507106','Hyderabad',4),
('Arun Sharma','9876507107','Pune',12),
('Kavita Iyer','9876507108','Jaipur',9),
('Deepak Rao','9876507109','Lucknow',3),
('Sanjay Patel','9876507110','Ahmedabad',15);

INSERT INTO Payments (Policy_ID, Amount, Payment_Date, Method) VALUES
(1,25000.00,'2023-01-05','Card'),
(2,10000.00,'2023-02-01','Cash'),
(3,15000.00,'2023-03-10','Online'),
(4,8000.00,'2023-04-01','Card'),
(5,30000.00,'2023-05-01','Cash'),
(6,12000.00,'2023-06-01','Online'),
(7,7000.00,'2023-07-01','Card'),
(8,9000.00,'2023-08-01','Cash'),
(9,20000.00,'2023-09-01','Online'),
(10,11000.00,'2023-10-01','Card');

SELECT * FROM Customers;
SELECT * FROM Policies;
SELECT * FROM Claims;
SELECT * FROM Agents;
SELECT * FROM Payments;

DROP TABLE Customers;
DROP TABLE Policies;
DROP TABLE Claims;
DROP TABLE Agents;
DROP TABLE Payments;



CREATE DATABASE TelecomDB;
USE TelecomDB;

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Address VARCHAR(200),
    Plan VARCHAR(50)
);

CREATE TABLE Plans (
    Plan_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Data_Limit VARCHAR(20),
    Price DECIMAL(10,2),
    Validity INT
);

CREATE TABLE Bills (
    Bill_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Amount DECIMAL(10,2),
    Due_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Calls (
    Call_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Duration INT,
    Call_Date DATE,
    Charge DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

CREATE TABLE Complaints (
    Complaint_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Issue VARCHAR(200),
    Complaint_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

INSERT INTO Customers (Name, Contact, Address, Plan) VALUES
('Ravi Sharma','9876100011','Delhi','Plan A'),
('Neha Kapoor','9876100012','Mumbai','Plan B'),
('Arjun Mehta','9876100013','Bangalore','Plan C'),
('Simran Kaur','9876100014','Chennai','Plan A'),
('Rahul Singh','9876100015','Kolkata','Plan B'),
('Pooja Iyer','9876100016','Hyderabad','Plan C'),
('Suresh Gupta','9876100017','Pune','Plan A'),
('Anita Desai','9876100018','Jaipur','Plan B'),
('Vikram Rao','9876100019','Lucknow','Plan C'),
('Sneha Nair','9876100020','Ahmedabad','Plan A');

INSERT INTO Plans (Name, Data_Limit, Price, Validity) VALUES
('Plan A','1GB/day',199.00,28),
('Plan B','1.5GB/day',249.00,28),
('Plan C','2GB/day',299.00,28),
('Plan D','3GB/day',399.00,56),
('Plan E','1GB/day',499.00,84),
('Plan F','2GB/day',599.00,84),
('Plan G','3GB/day',699.00,84),
('Plan H','1.5GB/day',799.00,168),
('Plan I','2.5GB/day',899.00,168),
('Plan J','Unlimited',999.00,365);

INSERT INTO Bills (Customer_ID, Amount, Due_Date, Status) VALUES
(1,500.00,'2023-01-10','Paid'),
(2,700.00,'2023-02-12','Unpaid'),
(3,650.00,'2023-03-15','Paid'),
(4,800.00,'2023-04-10','Paid'),
(5,550.00,'2023-05-12','Unpaid'),
(6,900.00,'2023-06-15','Paid'),
(7,450.00,'2023-07-10','Paid'),
(8,750.00,'2023-08-12','Unpaid'),
(9,600.00,'2023-09-15','Paid'),
(10,500.00,'2023-10-10','Unpaid');

INSERT INTO Calls (Customer_ID, Duration, Call_Date, Charge) VALUES
(1,5,'2023-01-01',2.50),
(2,10,'2023-01-02',5.00),
(3,3,'2023-01-03',1.50),
(4,8,'2023-01-04',4.00),
(5,15,'2023-01-05',7.50),
(6,6,'2023-01-06',3.00),
(7,12,'2023-01-07',6.00),
(8,4,'2023-01-08',2.00),
(9,20,'2023-01-09',10.00),
(10,7,'2023-01-10',3.50);

INSERT INTO Complaints (Customer_ID, Issue, Complaint_Date, Status) VALUES
(1,'Network issue','2023-01-05','Resolved'),
(2,'Billing error','2023-02-10','Pending'),
(3,'Slow internet','2023-03-12','Resolved'),
(4,'Call drops','2023-04-15','Pending'),
(5,'Recharge not updated','2023-05-20','Resolved'),
(6,'Data balance mismatch','2023-06-22','Pending'),
(7,'Network coverage','2023-07-25','Resolved'),
(8,'Overcharging','2023-08-28','Pending'),
(9,'App login issue','2023-09-05','Resolved'),
(10,'SMS not delivered','2023-10-10','Pending');

SELECT * FROM Customers;
SELECT * FROM Plans;
SELECT * FROM Bills;
SELECT * FROM Calls;
SELECT * FROM Complaints;

DROP TABLE Customers;
DROP TABLE Plans;
DROP TABLE Bills;
DROP TABLE Calls;
DROP TABLE Complaints;



CREATE DATABASE ManufacturingDB;
USE ManufacturingDB;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Address VARCHAR(200),
    Rating DECIMAL(3,2)
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY AUTO_INCREMENT,
    Product_ID INT,
    Supplier_ID INT,
    Quantity INT,
    Order_Date DATE,
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Suppliers(Supplier_ID)
);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50),
    Role VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Machines (
    Machine_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Type VARCHAR(50),
    Status VARCHAR(20),
    Last_Service_Date DATE
);

INSERT INTO Products (Name, Category, Price, Stock) VALUES
('Bolt','Hardware',5.00,1000),
('Nut','Hardware',2.00,2000),
('Steel Sheet','Raw Material',1500.00,300),
('Gear','Mechanical',250.00,150),
('Bearing','Mechanical',100.00,400),
('Motor','Electrical',5000.00,50),
('Wire','Electrical',20.00,800),
('Pipe','Plumbing',100.00,500),
('Valve','Plumbing',200.00,250),
('Paint','Chemical',350.00,300);

INSERT INTO Suppliers (Name, Contact, Address, Rating) VALUES
('ABC Supplies','9876101011','Delhi',4.5),
('XYZ Traders','9876101012','Mumbai',4.2),
('Global Metals','9876101013','Chennai',4.7),
('Fasteners Ltd','9876101014','Bangalore',4.3),
('ElectroMart','9876101015','Hyderabad',4.6),
('PipeWorks','9876101016','Pune',4.1),
('GearTech','9876101017','Kolkata',4.4),
('BearingHub','9876101018','Jaipur',4.0),
('SteelWorld','9876101019','Ahmedabad',4.8),
('ColorChem','9876101020','Lucknow',4.2);

INSERT INTO Orders (Product_ID, Supplier_ID, Quantity, Order_Date) VALUES
(1,1,500,'2023-01-10'),
(2,2,1000,'2023-02-12'),
(3,3,200,'2023-03-15'),
(4,4,50,'2023-04-10'),
(5,5,300,'2023-05-12'),
(6,6,20,'2023-06-15'),
(7,7,600,'2023-07-18'),
(8,8,400,'2023-08-20'),
(9,9,150,'2023-09-22'),
(10,10,250,'2023-10-25');

INSERT INTO Employees (Name, Department, Role, Salary) VALUES
('Ravi Sharma','Production','Manager',60000.00),
('Neha Kapoor','Quality','Inspector',40000.00),
('Arjun Mehta','Maintenance','Technician',35000.00),
('Simran Kaur','Production','Worker',25000.00),
('Rahul Singh','Logistics','Coordinator',30000.00),
('Pooja Iyer','HR','Executive',28000.00),
('Suresh Gupta','Accounts','Clerk',27000.00),
('Anita Desai','Production','Supervisor',45000.00),
('Vikram Rao','IT','Support',32000.00),
('Sneha Nair','R&D','Engineer',50000.00);

INSERT INTO Machines (Name, Type, Status, Last_Service_Date) VALUES
('Lathe Machine','Mechanical','Active','2023-01-15'),
('Drill Press','Mechanical','Active','2023-02-20'),
('CNC Machine','Computerized','Inactive','2023-03-25'),
('Milling Machine','Mechanical','Active','2023-04-10'),
('Welding Machine','Electrical','Active','2023-05-18'),
('Compressor','Electrical','Inactive','2023-06-22'),
('Hydraulic Press','Mechanical','Active','2023-07-30'),
('Paint Booth','Chemical','Active','2023-08-12'),
('Packaging Machine','Automated','Active','2023-09-05'),
('Conveyor Belt','Automated','Inactive','2023-10-15');

SELECT * FROM Products;
SELECT * FROM Suppliers;
SELECT * FROM Orders;
SELECT * FROM Employees;
SELECT * FROM Machines;

DROP TABLE Products;
DROP TABLE Suppliers;
DROP TABLE Orders;
DROP TABLE Employees;
DROP TABLE Machines;



CREATE DATABASE RetailStoreDB;
USE RetailStoreDB;

CREATE TABLE Products (
    Product_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Quantity INT
);

CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Address VARCHAR(200),
    Email VARCHAR(100) UNIQUE
);

CREATE TABLE Sales (
    Sale_ID INT PRIMARY KEY AUTO_INCREMENT,
    Customer_ID INT,
    Product_ID INT,
    Sale_Date DATE,
    Total DECIMAL(10,2),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

CREATE TABLE Employees (
    Employee_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Salary DECIMAL(10,2),
    Shift VARCHAR(20)
);

CREATE TABLE Suppliers (
    Supplier_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Location VARCHAR(100),
    Rating DECIMAL(3,2)
);

INSERT INTO Products (Name, Category, Price, Quantity) VALUES
('Shampoo','Personal Care',150.00,200),
('Soap','Personal Care',40.00,500),
('Rice','Grocery',60.00,1000),
('Sugar','Grocery',45.00,800),
('Notebook','Stationery',50.00,300),
('Pen','Stationery',10.00,1000),
('T-shirt','Clothing',400.00,150),
('Jeans','Clothing',1200.00,100),
('Shoes','Footwear',2000.00,80),
('Milk','Dairy',50.00,600);

INSERT INTO Customers (Name, Contact, Address, Email) VALUES
('Ravi Sharma','9876500011','Delhi','ravi@example.com'),
('Neha Kapoor','9876500012','Mumbai','neha@example.com'),
('Arjun Mehta','9876500013','Bangalore','arjun@example.com'),
('Simran Kaur','9876500014','Chennai','simran@example.com'),
('Rahul Singh','9876500015','Kolkata','rahul@example.com'),
('Pooja Iyer','9876500016','Hyderabad','pooja@example.com'),
('Suresh Gupta','9876500017','Pune','suresh@example.com'),
('Anita Desai','9876500018','Jaipur','anita@example.com'),
('Vikram Rao','9876500019','Lucknow','vikram@example.com'),
('Sneha Nair','9876500020','Ahmedabad','sneha@example.com');

INSERT INTO Sales (Customer_ID, Product_ID, Sale_Date, Total) VALUES
(1,1,'2023-01-10',300.00),
(2,2,'2023-02-12',120.00),
(3,3,'2023-03-15',600.00),
(4,4,'2023-04-10',450.00),
(5,5,'2023-05-12',250.00),
(6,6,'2023-06-15',100.00),
(7,7,'2023-07-18',800.00),
(8,8,'2023-08-20',1200.00),
(9,9,'2023-09-22',2000.00),
(10,10,'2023-10-25',500.00);

INSERT INTO Employees (Name, Role, Salary, Shift) VALUES
('Amit Verma','Manager',60000.00,'Morning'),
('Sunita Joshi','Cashier',25000.00,'Evening'),
('Rohit Sharma','Salesman',20000.00,'Morning'),
('Kiran Gupta','Stock Keeper',22000.00,'Night'),
('Meena Iyer','Cashier',26000.00,'Evening'),
('Amit Kumar','Salesman',21000.00,'Morning'),
('Pooja Nair','Receptionist',23000.00,'Evening'),
('Suresh Rathi','Cleaner',15000.00,'Night'),
('Neha Desai','Assistant Manager',40000.00,'Morning'),
('Vikram Singh','Security Guard',18000.00,'Night');

INSERT INTO Suppliers (Name, Contact, Location, Rating) VALUES
('ABC Suppliers','9876600011','Delhi',4.5),
('XYZ Traders','9876600012','Mumbai',4.2),
('Global Foods','9876600013','Chennai',4.7),
('Stationery Hub','9876600014','Bangalore',4.3),
('ElectroMart','9876600015','Hyderabad',4.6),
('Cloth World','9876600016','Pune',4.1),
('Footwear Co.','9876600017','Kolkata',4.4),
('Fresh Dairy','9876600018','Jaipur',4.0),
('SteelWorld','9876600019','Ahmedabad',4.8),
('ColorChem','9876600020','Lucknow',4.2);

SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM Sales;
SELECT * FROM Employees;
SELECT * FROM Suppliers;

DROP TABLE Products;
DROP TABLE Customers;
DROP TABLE Sales;
DROP TABLE Employees;
DROP TABLE Suppliers;





CREATE DATABASE RealEstateDB;
USE RealEstateDB;

CREATE TABLE Properties (
    Property_ID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(50),
    Location VARCHAR(100),
    Price DECIMAL(12,2),
    Status VARCHAR(20)
);

CREATE TABLE Agents (
    Agent_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Contact VARCHAR(15) UNIQUE,
    Experience INT,
    Branch VARCHAR(50)
);

CREATE TABLE Clients (
    Client_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Contact VARCHAR(15) UNIQUE,
    Requirement VARCHAR(100),
    Budget DECIMAL(12,2)
);

CREATE TABLE Deals (
    Deal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Property_ID INT,
    Client_ID INT,
    Agent_ID INT,
    Deal_Date DATE,
    FOREIGN KEY (Property_ID) REFERENCES Properties(Property_ID),
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID),
    FOREIGN KEY (Agent_ID) REFERENCES Agents(Agent_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Deal_ID INT,
    Amount DECIMAL(12,2),
    Method VARCHAR(50),
    Status VARCHAR(20),
    FOREIGN KEY (Deal_ID) REFERENCES Deals(Deal_ID)
);

INSERT INTO Properties (Type, Location, Price, Status) VALUES
('Apartment','Delhi',5000000.00,'Available'),
('Villa','Mumbai',15000000.00,'Sold'),
('Plot','Bangalore',3000000.00,'Available'),
('Apartment','Chennai',4500000.00,'Available'),
('Villa','Hyderabad',12000000.00,'Sold'),
('Office','Pune',8000000.00,'Available'),
('Shop','Kolkata',6000000.00,'Available'),
('Apartment','Jaipur',4000000.00,'Sold'),
('Plot','Ahmedabad',3500000.00,'Available'),
('Villa','Lucknow',10000000.00,'Available');

INSERT INTO Agents (Name, Contact, Experience, Branch) VALUES
('Ravi Sharma','9876700011',5,'Delhi'),
('Neha Kapoor','9876700012',8,'Mumbai'),
('Arjun Mehta','9876700013',6,'Bangalore'),
('Simran Kaur','9876700014',4,'Chennai'),
('Rahul Singh','9876700015',7,'Hyderabad'),
('Pooja Iyer','9876700016',10,'Pune'),
('Suresh Gupta','9876700017',3,'Kolkata'),
('Anita Desai','9876700018',6,'Jaipur'),
('Vikram Rao','9876700019',9,'Ahmedabad'),
('Sneha Nair','9876700020',4,'Lucknow');

INSERT INTO Clients (Name, Contact, Requirement, Budget) VALUES
('Amit Verma','9876800011','Apartment',6000000.00),
('Sunita Joshi','9876800012','Villa',16000000.00),
('Rohit Sharma','9876800013','Plot',4000000.00),
('Kiran Gupta','9876800014','Office',9000000.00),
('Meena Iyer','9876800015','Shop',7000000.00),
('Amit Kumar','9876800016','Apartment',5500000.00),
('Pooja Nair','9876800017','Villa',13000000.00),
('Suresh Rathi','9876800018','Apartment',5000000.00),
('Neha Desai','9876800019','Plot',3800000.00),
('Vikram Singh','9876800020','Villa',11000000.00);

INSERT INTO Deals (Property_ID, Client_ID, Agent_ID, Deal_Date) VALUES
(1,1,1,'2023-01-10'),
(2,2,2,'2023-02-15'),
(3,3,3,'2023-03-12'),
(4,4,4,'2023-04-20'),
(5,5,5,'2023-05-25'),
(6,6,6,'2023-06-18'),
(7,7,7,'2023-07-22'),
(8,8,8,'2023-08-30'),
(9,9,9,'2023-09-10'),
(10,10,10,'2023-10-05');

INSERT INTO Payments (Deal_ID, Amount, Method, Status) VALUES
(1,5000000.00,'Cheque','Paid'),
(2,15000000.00,'Bank Transfer','Paid'),
(3,3000000.00,'Cash','Pending'),
(4,4500000.00,'Cheque','Paid'),
(5,12000000.00,'Bank Transfer','Paid'),
(6,8000000.00,'Cash','Pending'),
(7,6000000.00,'Cheque','Paid'),
(8,4000000.00,'Bank Transfer','Paid'),
(9,3500000.00,'Cash','Pending'),
(10,10000000.00,'Cheque','Paid');

SELECT * FROM Properties;
SELECT * FROM Agents;
SELECT * FROM Clients;
SELECT * FROM Deals;
SELECT * FROM Payments;

DROP TABLE Properties;
DROP TABLE Agents;
DROP TABLE Clients;
DROP TABLE Deals;
DROP TABLE Payments;




CREATE DATABASE TourismDB;
USE TourismDB;

CREATE TABLE Tourists (
    Tourist_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Country VARCHAR(50),
    Contact VARCHAR(15) UNIQUE,
    Age INT
);

CREATE TABLE Tours (
    Tour_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Duration INT,
    Price DECIMAL(10,2)
);

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    Tourist_ID INT,
    Tour_ID INT,
    Booking_Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Tourist_ID) REFERENCES Tourists(Tourist_ID),
    FOREIGN KEY (Tour_ID) REFERENCES Tours(Tour_ID)
);

CREATE TABLE Guides (
    Guide_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Language VARCHAR(50),
    Contact VARCHAR(15) UNIQUE,
    Experience INT
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Booking_ID INT,
    Amount DECIMAL(10,2),
    Payment_Date DATE,
    Method VARCHAR(50),
    FOREIGN KEY (Booking_ID) REFERENCES Bookings(Booking_ID)
);

INSERT INTO Tourists (Name, Country, Contact, Age) VALUES
('Ravi Sharma','India','9876900011',30),
('Neha Kapoor','India','9876900012',28),
('John Smith','USA','9876900013',35),
('Maria Garcia','Spain','9876900014',32),
('Chen Wei','China','9876900015',29),
('David Brown','UK','9876900016',40),
('Fatima Ali','UAE','9876900017',33),
('Olga Ivanova','Russia','9876900018',31),
('Hiro Tanaka','Japan','9876900019',27),
('Sophia Rossi','Italy','9876900020',36);

INSERT INTO Tours (Name, Location, Duration, Price) VALUES
('Taj Mahal Visit','Agra',1,1500.00),
('Jaipur Heritage','Jaipur',2,3000.00),
('Kerala Backwaters','Kerala',3,7500.00),
('Goa Beaches','Goa',4,10000.00),
('Delhi City Tour','Delhi',1,1200.00),
('Golden Temple Visit','Amritsar',1,2000.00),
('Mysore Palace','Mysore',2,4000.00),
('Himalayan Trek','Manali',5,15000.00),
('Ranthambore Safari','Rajasthan',2,5000.00),
('Darjeeling Tea Tour','Darjeeling',3,6000.00);

INSERT INTO Bookings (Tourist_ID, Tour_ID, Booking_Date, Status) VALUES
(1,1,'2023-01-10','Confirmed'),
(2,2,'2023-02-12','Pending'),
(3,3,'2023-03-15','Confirmed'),
(4,4,'2023-04-10','Cancelled'),
(5,5,'2023-05-12','Confirmed'),
(6,6,'2023-06-15','Pending'),
(7,7,'2023-07-18','Confirmed'),
(8,8,'2023-08-20','Confirmed'),
(9,9,'2023-09-22','Pending'),
(10,10,'2023-10-25','Confirmed');

INSERT INTO Guides (Name, Language, Contact, Experience) VALUES
('Amit Verma','English','9876910011',5),
('Sunita Joshi','Spanish','9876910012',7),
('Rohit Sharma','French','9876910013',4),
('Kiran Gupta','German','9876910014',6),
('Meena Iyer','Chinese','9876910015',8),
('Amit Kumar','English','9876910016',10),
('Pooja Nair','Russian','9876910017',3),
('Suresh Rathi','Japanese','9876910018',5),
('Neha Desai','Italian','9876910019',6),
('Vikram Singh','Arabic','9876910020',4);

INSERT INTO Payments (Booking_ID, Amount, Payment_Date, Method) VALUES
(1,1500.00,'2023-01-09','Cash'),
(2,3000.00,'2023-02-11','Card'),
(3,7500.00,'2023-03-14','Online'),
(4,10000.00,'2023-04-09','Cash'),
(5,1200.00,'2023-05-11','Card'),
(6,2000.00,'2023-06-14','Online'),
(7,4000.00,'2023-07-17','Cash'),
(8,15000.00,'2023-08-19','Card'),
(9,5000.00,'2023-09-21','Online'),
(10,6000.00,'2023-10-24','Cash');

SELECT * FROM Tourists;
SELECT * FROM Tours;
SELECT * FROM Bookings;
SELECT * FROM Guides;
SELECT * FROM Payments;

DROP TABLE Tourists;
DROP TABLE Tours;
DROP TABLE Bookings;
DROP TABLE Guides;
DROP TABLE Payments;




CREATE DATABASE FitnessCenterDB;
USE FitnessCenterDB;

CREATE TABLE Members (
    Member_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT,
    Gender VARCHAR(10),
    Membership_Type VARCHAR(50)
);

CREATE TABLE Trainers (
    Trainer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(50),
    Experience INT,
    Contact VARCHAR(15) UNIQUE
);

CREATE TABLE Workouts (
    Workout_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Duration INT,
    Trainer_ID INT,
    Level VARCHAR(20),
    FOREIGN KEY (Trainer_ID) REFERENCES Trainers(Trainer_ID)
);

CREATE TABLE Schedules (
    Schedule_ID INT PRIMARY KEY AUTO_INCREMENT,
    Member_ID INT,
    Workout_ID INT,
    Date DATE,
    Time TIME,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Workout_ID) REFERENCES Workouts(Workout_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Member_ID INT,
    Amount DECIMAL(10,2),
    Date DATE,
    Status VARCHAR(20),
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID)
);

INSERT INTO Members (Name, Age, Gender, Membership_Type) VALUES
('Ravi Sharma',28,'Male','Annual'),
('Neha Kapoor',25,'Female','Monthly'),
('Vikram Rao',30,'Male','Quarterly'),
('Pooja Iyer',27,'Female','Annual'),
('Rahul Singh',32,'Male','Monthly'),
('Sneha Nair',26,'Female','Annual'),
('Arjun Mehta',29,'Male','Quarterly'),
('Simran Kaur',24,'Female','Annual'),
('Suresh Gupta',35,'Male','Monthly'),
('Anita Desai',31,'Female','Annual');

INSERT INTO Trainers (Name, Specialization, Experience, Contact) VALUES
('Amit Verma','Yoga',5,'9877000011'),
('Sunita Joshi','Cardio',7,'9877000012'),
('Rohit Sharma','Strength',4,'9877000013'),
('Kiran Gupta','CrossFit',6,'9877000014'),
('Meena Iyer','Pilates',8,'9877000015'),
('Amit Kumar','Zumba',10,'9877000016'),
('Pooja Nair','Aerobics',3,'9877000017'),
('Suresh Rathi','Bodybuilding',5,'9877000018'),
('Neha Desai','Functional',6,'9877000019'),
('Vikram Singh','HIIT',4,'9877000020');

INSERT INTO Workouts (Name, Duration, Trainer_ID, Level) VALUES
('Morning Yoga',60,1,'Beginner'),
('Cardio Blast',45,2,'Intermediate'),
('Strength Training',75,3,'Advanced'),
('CrossFit Challenge',90,4,'Advanced'),
('Pilates Basics',60,5,'Beginner'),
('Zumba Dance',50,6,'Beginner'),
('Aerobics Fun',40,7,'Intermediate'),
('Bodybuilding Routine',80,8,'Advanced'),
('Functional Fitness',70,9,'Intermediate'),
('HIIT Express',30,10,'Advanced');

INSERT INTO Schedules (Member_ID, Workout_ID, Date, Time) VALUES
(1,1,'2023-01-10','07:00:00'),
(2,2,'2023-01-11','08:00:00'),
(3,3,'2023-01-12','09:00:00'),
(4,4,'2023-01-13','07:30:00'),
(5,5,'2023-01-14','08:30:00'),
(6,6,'2023-01-15','09:30:00'),
(7,7,'2023-01-16','07:15:00'),
(8,8,'2023-01-17','08:15:00'),
(9,9,'2023-01-18','09:15:00'),
(10,10,'2023-01-19','07:45:00');

INSERT INTO Payments (Member_ID, Amount, Date, Status) VALUES
(1,12000.00,'2023-01-09','Paid'),
(2,1500.00,'2023-01-10','Pending'),
(3,4000.00,'2023-01-11','Paid'),
(4,12000.00,'2023-01-12','Paid'),
(5,1500.00,'2023-01-13','Failed'),
(6,12000.00,'2023-01-14','Paid'),
(7,4000.00,'2023-01-15','Pending'),
(8,12000.00,'2023-01-16','Paid'),
(9,1500.00,'2023-01-17','Paid'),
(10,12000.00,'2023-01-18','Paid');

SELECT * FROM Members;
SELECT * FROM Trainers;
SELECT * FROM Workouts;
SELECT * FROM Schedules;
SELECT * FROM Payments;

DROP TABLE Members;
DROP TABLE Trainers;
DROP TABLE Workouts;
DROP TABLE Schedules;
DROP TABLE Payments;




CREATE DATABASE PoliceDeptDB;
USE PoliceDeptDB;

CREATE TABLE Officers (
    Officer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    Contact VARCHAR(15) UNIQUE,
    Station VARCHAR(100)
);

CREATE TABLE Criminals (
    Criminal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Crime_Type VARCHAR(100),
    Arrest_Date DATE,
    Status VARCHAR(50)
);

CREATE TABLE Cases (
    Case_ID INT PRIMARY KEY AUTO_INCREMENT,
    Criminal_ID INT,
    Officer_ID INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Criminal_ID) REFERENCES Criminals(Criminal_ID),
    FOREIGN KEY (Officer_ID) REFERENCES Officers(Officer_ID)
);

CREATE TABLE Stations (
    Station_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Contact VARCHAR(15),
    Capacity INT
);

CREATE TABLE Complaints (
    Complaint_ID INT PRIMARY KEY AUTO_INCREMENT,
    Citizen_Name VARCHAR(100),
    Issue VARCHAR(255),
    Date DATE,
    Status VARCHAR(50)
);

INSERT INTO Officers (Name, position, Contact, Station) VALUES
('Rajesh Kumar','Inspector','9878000011','Central Station'),
('Neha Sharma','Sub-Inspector','9878000012','North Station'),
('Vikram Singh','Constable','9878000013','East Station'),
('Pooja Iyer','Inspector','9878000014','South Station'),
('Ravi Patel','Head Constable','9878000015','West Station'),
('Sunita Mehra','Constable','9878000016','Central Station'),
('Amit Verma','Inspector','9878000017','North Station'),
('Kiran Gupta','Sub-Inspector','9878000018','East Station'),
('Sneha Desai','Constable','9878000019','South Station'),
('Suresh Nair','Head Constable','9878000020','West Station');

INSERT INTO Criminals (Name, Crime_Type, Arrest_Date, Status) VALUES
('Ramesh Yadav','Theft','2023-01-10','Under Trial'),
('Anil Sharma','Fraud','2023-01-12','Convicted'),
('Vikas Gupta','Assault','2023-01-15','Under Trial'),
('Sandeep Kumar','Robbery','2023-01-18','Convicted'),
('Mohit Verma','Drug Trafficking','2023-01-20','Under Investigation'),
('Ajay Singh','Burglary','2023-01-22','Under Trial'),
('Deepak Nair','Cyber Crime','2023-01-25','Convicted'),
('Arun Joshi','Kidnapping','2023-01-28','Under Trial'),
('Vivek Iyer','Extortion','2023-01-30','Convicted'),
('Manish Mehra','Smuggling','2023-02-02','Under Investigation');

INSERT INTO Cases (Criminal_ID, Officer_ID, Date, Status) VALUES
(1,1,'2023-01-11','Open'),
(2,2,'2023-01-13','Closed'),
(3,3,'2023-01-16','Open'),
(4,4,'2023-01-19','Closed'),
(5,5,'2023-01-21','Open'),
(6,6,'2023-01-23','Open'),
(7,7,'2023-01-26','Closed'),
(8,8,'2023-01-29','Open'),
(9,9,'2023-01-31','Closed'),
(10,10,'2023-02-03','Open');

INSERT INTO Stations (Name, Location, Contact, Capacity) VALUES
('Central Station','Delhi','011220011','200'),
('North Station','Delhi','011220012','150'),
('East Station','Delhi','011220013','180'),
('South Station','Delhi','011220014','170'),
('West Station','Delhi','011220015','160'),
('New Town Station','Delhi','011220016','140'),
('Civil Lines Station','Delhi','011220017','130'),
('Karol Bagh Station','Delhi','011220018','120'),
('Rohini Station','Delhi','011220019','190'),
('Dwarka Station','Delhi','011220020','210');

INSERT INTO Complaints (Citizen_Name, Issue, Date, Status) VALUES
('Amit Sharma','Theft Complaint','2023-01-05','Resolved'),
('Neha Kapoor','Noise Complaint','2023-01-07','Pending'),
('Ravi Singh','Fraud Complaint','2023-01-09','Resolved'),
('Pooja Nair','Harassment','2023-01-11','Pending'),
('Suresh Gupta','Missing Person','2023-01-13','Open'),
('Anita Desai','Robbery Complaint','2023-01-15','Resolved'),
('Vikram Rao','Cyber Crime','2023-01-17','Open'),
('Kavita Joshi','Land Dispute','2023-01-19','Pending'),
('Arjun Mehta','Domestic Violence','2023-01-21','Open'),
('Simran Kaur','Public Disturbance','2023-01-23','Resolved');

SELECT * FROM Officers;
SELECT * FROM Criminals;
SELECT * FROM Cases;
SELECT * FROM Stations;
SELECT * FROM Complaints;

DROP TABLE Officers;
DROP TABLE Criminals;
DROP TABLE Cases;
DROP TABLE Stations;
DROP TABLE Complaints;



CREATE DATABASE FireDeptDB;
USE FireDeptDB;

CREATE TABLE Firefighters (
    Firefighter_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    position VARCHAR(50),
    Contact VARCHAR(15) UNIQUE,
    Station VARCHAR(100)
);

CREATE TABLE Stations (
    Station_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Capacity INT,
    Contact VARCHAR(15)
);

CREATE TABLE Incidents (
    Incident_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100),
    Date DATE,
    Time TIME,
    Severity VARCHAR(50)
);

CREATE TABLE Vehicles (
    Vehicle_ID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(50),
    Station_ID INT,
    Status VARCHAR(50),
    Capacity INT,
    FOREIGN KEY (Station_ID) REFERENCES Stations(Station_ID)
);

CREATE TABLE Shifts (
    Shift_ID INT PRIMARY KEY AUTO_INCREMENT,
    Firefighter_ID INT,
    Station_ID INT,
    Start_Time TIME,
    End_Time TIME,
    FOREIGN KEY (Firefighter_ID) REFERENCES Firefighters(Firefighter_ID),
    FOREIGN KEY (Station_ID) REFERENCES Stations(Station_ID)
);

INSERT INTO Firefighters (Name, position, Contact, Station) VALUES
('Ravi Sharma','Chief','9879000011','Central Station'),
('Anil Kumar','Deputy Chief','9879000012','North Station'),
('Neha Verma','Captain','9879000013','East Station'),
('Vikram Singh','Lieutenant','9879000014','South Station'),
('Pooja Iyer','Firefighter','9879000015','West Station'),
('Suresh Gupta','Firefighter','9879000016','Central Station'),
('Kiran Desai','Captain','9879000017','North Station'),
('Arjun Mehta','Lieutenant','9879000018','East Station'),
('Simran Kaur','Firefighter','9879000019','South Station'),
('Amit Joshi','Firefighter','9879000020','West Station');

INSERT INTO Stations (Name, Location, Capacity, Contact) VALUES
('Central Station','Delhi','200','011230001'),
('North Station','Delhi','150','011230002'),
('East Station','Delhi','180','011230003'),
('South Station','Delhi','170','011230004'),
('West Station','Delhi','160','011230005'),
('New Town Station','Delhi','140','011230006'),
('Civil Lines Station','Delhi','130','011230007'),
('Karol Bagh Station','Delhi','120','011230008'),
('Rohini Station','Delhi','190','011230009'),
('Dwarka Station','Delhi','210','011230010');

INSERT INTO Incidents (Location, Date, Time, Severity) VALUES
('Connaught Place','2023-01-10','10:00:00','High'),
('Karol Bagh','2023-01-12','11:30:00','Medium'),
('Rohini','2023-01-14','14:00:00','Low'),
('Dwarka','2023-01-16','16:15:00','High'),
('Lajpat Nagar','2023-01-18','18:00:00','Medium'),
('Saket','2023-01-20','09:45:00','High'),
('Janakpuri','2023-01-22','12:30:00','Low'),
('Kashmere Gate','2023-01-24','13:15:00','High'),
('Chanakyapuri','2023-01-26','15:00:00','Medium'),
('Greater Kailash','2023-01-28','17:20:00','High');

INSERT INTO Vehicles (Type, Station_ID, Status, Capacity) VALUES
('Fire Engine',1,'Active',10),
('Water Tanker',2,'Active',15),
('Ladder Truck',3,'Under Maintenance',8),
('Rescue Van',4,'Active',6),
('Ambulance',5,'Active',4),
('Fire Engine',6,'Active',10),
('Water Tanker',7,'Under Maintenance',15),
('Ladder Truck',8,'Active',8),
('Rescue Van',9,'Active',6),
('Ambulance',10,'Active',4);

INSERT INTO Shifts (Firefighter_ID, Station_ID, Start_Time, End_Time) VALUES
(1,1,'08:00:00','16:00:00'),
(2,2,'09:00:00','17:00:00'),
(3,3,'10:00:00','18:00:00'),
(4,4,'11:00:00','19:00:00'),
(5,5,'12:00:00','20:00:00'),
(6,1,'13:00:00','21:00:00'),
(7,2,'14:00:00','22:00:00'),
(8,3,'15:00:00','23:00:00'),
(9,4,'16:00:00','00:00:00'),
(10,5,'17:00:00','01:00:00');

SELECT * FROM Firefighters;
SELECT * FROM Stations;
SELECT * FROM Incidents;
SELECT * FROM Vehicles;
SELECT * FROM Shifts;

DROP TABLE Firefighters;
DROP TABLE Stations;
DROP TABLE Incidents;
DROP TABLE Vehicles;
DROP TABLE Shifts;




CREATE DATABASE NGODB;
USE NGODB;

CREATE TABLE Volunteers (
    Volunteer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Age INT,
    Role VARCHAR(50)
);

CREATE TABLE Donors (
    Donor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) UNIQUE,
    Donation_Amount DECIMAL(10,2),
    Date DATE
);

CREATE TABLE Projects (
    Project_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Start_Date DATE,
    Budget DECIMAL(12,2),
    Status VARCHAR(50)
);

CREATE TABLE Events (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Date DATE,
    Cost DECIMAL(10,2)
);

CREATE TABLE Beneficiaries (
    Beneficiary_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    Assistance_Received VARCHAR(100)
);

INSERT INTO Volunteers (Name, Contact, Age, Role) VALUES
('Ravi Sharma','9879100011',28,'Coordinator'),
('Neha Verma','9879100012',24,'Field Worker'),
('Vikram Singh','9879100013',30,'Trainer'),
('Pooja Iyer','9879100014',26,'Volunteer'),
('Suresh Gupta','9879100015',35,'Manager'),
('Kiran Desai','9879100016',22,'Volunteer'),
('Simran Kaur','9879100017',27,'Fundraiser'),
('Amit Joshi','9879100018',32,'Coordinator'),
('Anita Mehra','9879100019',29,'Field Worker'),
('Arjun Patel','9879100020',31,'Trainer');

INSERT INTO Donors (Name, Contact, Donation_Amount, Date) VALUES
('Ramesh Kumar','9988000011',5000.00,'2023-01-10'),
('Sunita Sharma','9988000012',7500.00,'2023-01-12'),
('Vikas Gupta','9988000013',10000.00,'2023-01-15'),
('Sneha Nair','9988000014',3000.00,'2023-01-18'),
('Rahul Singh','9988000015',12000.00,'2023-01-20'),
('Meena Iyer','9988000016',4500.00,'2023-01-22'),
('Ajay Verma','9988000017',8000.00,'2023-01-25'),
('Poonam Joshi','9988000018',6000.00,'2023-01-28'),
('Anil Kumar','9988000019',7000.00,'2023-01-30'),
('Kavita Rao','9988000020',9000.00,'2023-02-02');

INSERT INTO Projects (Name, Start_Date, Budget, Status) VALUES
('Education for All','2023-01-05',100000.00,'Ongoing'),
('Healthcare Camps','2023-01-10',75000.00,'Ongoing'),
('Women Empowerment','2023-01-15',120000.00,'Planned'),
('Skill Development','2023-01-20',80000.00,'Ongoing'),
('Child Nutrition','2023-01-25',95000.00,'Completed'),
('Clean Water Project','2023-01-30',110000.00,'Ongoing'),
('Housing Support','2023-02-02',130000.00,'Planned'),
('Disaster Relief','2023-02-05',150000.00,'Ongoing'),
('Senior Citizen Care','2023-02-08',70000.00,'Planned'),
('Environment Awareness','2023-02-10',85000.00,'Ongoing');

INSERT INTO Events (Name, Location, Date, Cost) VALUES
('Fundraising Gala','Delhi','2023-01-12',50000.00),
('Health Awareness Camp','Mumbai','2023-01-15',30000.00),
('Education Drive','Bangalore','2023-01-18',25000.00),
('Cleanliness Drive','Chennai','2023-01-20',20000.00),
('Tree Plantation','Kolkata','2023-01-22',15000.00),
('Skill Workshop','Hyderabad','2023-01-25',40000.00),
('Women Empowerment Seminar','Pune','2023-01-28',35000.00),
('Blood Donation Camp','Jaipur','2023-01-30',10000.00),
('Nutrition Awareness','Lucknow','2023-02-02',18000.00),
('Cultural Fundraiser','Ahmedabad','2023-02-05',60000.00);

INSERT INTO Beneficiaries (Name, Age, Gender, Assistance_Received) VALUES
('Rohan Kumar',12,'Male','Education'),
('Meena Sharma',35,'Female','Healthcare'),
('Amit Verma',40,'Male','Housing'),
('Sneha Gupta',25,'Female','Skill Training'),
('Rajesh Singh',10,'Male','Nutrition'),
('Kavita Joshi',60,'Female','Elderly Care'),
('Anil Kumar',18,'Male','Education'),
('Pooja Desai',22,'Female','Employment Support'),
('Vikas Nair',30,'Male','Healthcare'),
('Simran Kaur',28,'Female','Women Empowerment');

SELECT * FROM Volunteers;
SELECT * FROM Donors;
SELECT * FROM Projects;
SELECT * FROM Events;
SELECT * FROM Beneficiaries;

DROP TABLE Volunteers;
DROP TABLE Donors;
DROP TABLE Projects;
DROP TABLE Events;
DROP TABLE Beneficiaries;



CREATE DATABASE MusicStreamingDB;
USE MusicStreamingDB;

-- Users Table
CREATE TABLE Users (
    User_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Subscription_Type VARCHAR(50),
    Join_Date DATE
);

-- Artists Table
CREATE TABLE Artists (
    Artist_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Genre VARCHAR(50),
    Country VARCHAR(50),
    Followers INT
);

-- Songs Table
CREATE TABLE Songs (
    Song_ID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100) NOT NULL,
    Artist_ID INT,
    Album VARCHAR(100),
    Duration TIME,
    FOREIGN KEY (Artist_ID) REFERENCES Artists(Artist_ID)
);

-- Playlists Table
CREATE TABLE Playlists (
    Playlist_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Name VARCHAR(100),
    Date_Created DATE,
    Visibility VARCHAR(20),
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

-- Subscriptions Table
CREATE TABLE Subscriptions (
    Subscription_ID INT PRIMARY KEY AUTO_INCREMENT,
    User_ID INT,
    Plan VARCHAR(50),
    Start_Date DATE,
    End_Date DATE,
    FOREIGN KEY (User_ID) REFERENCES Users(User_ID)
);

-- Insert Users
INSERT INTO Users (Name, Email, Subscription_Type, Join_Date) VALUES
('Ravi Sharma','ravi@example.com','Premium','2023-01-10'),
('Neha Verma','neha@example.com','Free','2023-01-12'),
('Vikram Singh','vikram@example.com','Premium','2023-01-15'),
('Pooja Iyer','pooja@example.com','Free','2023-01-18'),
('Suresh Gupta','suresh@example.com','Premium','2023-01-20'),
('Kiran Desai','kiran@example.com','Free','2023-01-22'),
('Simran Kaur','simran@example.com','Premium','2023-01-25'),
('Amit Joshi','amit@example.com','Free','2023-01-28'),
('Anita Mehra','anita@example.com','Premium','2023-01-30'),
('Arjun Patel','arjun@example.com','Free','2023-02-02');

-- Insert Artists
INSERT INTO Artists (Name, Genre, Country, Followers) VALUES
('Arijit Singh','Bollywood','India',5000000),
('Shreya Ghoshal','Bollywood','India',4000000),
('Ed Sheeran','Pop','UK',10000000),
('Taylor Swift','Pop','USA',15000000),
('A R Rahman','Classical','India',6000000),
('Drake','Hip-Hop','Canada',12000000),
('BTS','K-Pop','South Korea',20000000),
('Coldplay','Rock','UK',9000000),
('Shawn Mendes','Pop','Canada',8000000),
('Billie Eilish','Pop','USA',14000000);

-- Insert Songs
INSERT INTO Songs (Title, Artist_ID, Album, Duration) VALUES
('Tum Hi Ho',1,'Aashiqui 2','00:04:22'),
('Sun Raha Hai',2,'Aashiqui 2','00:05:10'),
('Shape of You',3,'Divide','00:03:54'),
('Blank Space',4,'1989','00:03:52'),
('Kun Faya Kun',5,'Rockstar','00:08:07'),
('God’s Plan',6,'Scorpion','00:03:19'),
('Dynamite',7,'BE','00:03:00'),
('Yellow',8,'Parachutes','00:04:29'),
('Senorita',9,'Shawn Mendes','00:03:11'),
('Bad Guy',10,'When We All Fall Asleep','00:03:14');

-- Insert Playlists
INSERT INTO Playlists (User_ID, Name, Date_Created, Visibility) VALUES
(1,'Bollywood Hits','2023-01-15','Public'),
(2,'Pop Favourites','2023-01-18','Private'),
(3,'Workout Mix','2023-01-20','Public'),
(4,'Chill Vibes','2023-01-22','Private'),
(5,'Romantic Songs','2023-01-25','Public'),
(6,'Top 50','2023-01-28','Public'),
(7,'Party Mix','2023-01-30','Private'),
(8,'Relaxing','2023-02-02','Public'),
(9,'Classical Collection','2023-02-04','Private'),
(10,'K-Pop Fever','2023-02-06','Public');

-- Insert Subscriptions
INSERT INTO Subscriptions (User_ID, Plan, Start_Date, End_Date) VALUES
(1,'Premium','2023-01-10','2024-01-10'),
(2,'Free','2023-01-12','2023-07-12'),
(3,'Premium','2023-01-15','2024-01-15'),
(4,'Free','2023-01-18','2023-07-18'),
(5,'Premium','2023-01-20','2024-01-20'),
(6,'Free','2023-01-22','2023-07-22'),
(7,'Premium','2023-01-25','2024-01-25'),
(8,'Free','2023-01-28','2023-07-28'),
(9,'Premium','2023-01-30','2024-01-30'),
(10,'Free','2023-02-02','2023-08-02');

-- View Data
SELECT * FROM Users;
SELECT * FROM Artists;
SELECT * FROM Songs;
SELECT * FROM Playlists;
SELECT * FROM Subscriptions;



CREATE DATABASE OnlineEducationDB;
USE OnlineEducationDB;

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Course VARCHAR(100),
    Join_Date DATE
);

CREATE TABLE Courses (
    Course_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Duration VARCHAR(50),
    Instructor VARCHAR(100),
    Price DECIMAL(10,2)
);

CREATE TABLE Instructors (
    Instructor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Expertise VARCHAR(100),
    Experience INT,
    Contact VARCHAR(50)
);

CREATE TABLE Enrollments (
    Enrollment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Student_ID INT,
    Course_ID INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID)
);

CREATE TABLE Payments (
    Payment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Enrollment_ID INT,
    Amount DECIMAL(10,2),
    Date DATE,
    Method VARCHAR(50),
    FOREIGN KEY (Enrollment_ID) REFERENCES Enrollments(Enrollment_ID)
);

INSERT INTO Students (Name, Email, Course, Join_Date) VALUES
('Ravi Sharma','ravi@example.com','Python Programming','2023-01-10'),
('Neha Verma','neha@example.com','Data Science','2023-01-12'),
('Vikram Singh','vikram@example.com','Web Development','2023-01-15'),
('Pooja Iyer','pooja@example.com','Machine Learning','2023-01-18'),
('Suresh Gupta','suresh@example.com','Cyber Security','2023-01-20'),
('Kiran Desai','kiran@example.com','Cloud Computing','2023-01-22'),
('Simran Kaur','simran@example.com','AI Fundamentals','2023-01-25'),
('Amit Joshi','amit@example.com','Blockchain','2023-01-28'),
('Anita Mehra','anita@example.com','Digital Marketing','2023-01-30'),
('Arjun Patel','arjun@example.com','UI/UX Design','2023-02-02');

INSERT INTO Courses (Name, Duration, Instructor, Price) VALUES
('Python Programming','3 Months','Dr. Mehta',5000.00),
('Data Science','6 Months','Prof. Kapoor',12000.00),
('Web Development','4 Months','Mr. Rao',8000.00),
('Machine Learning','5 Months','Dr. Iyer',15000.00),
('Cyber Security','6 Months','Ms. Sharma',10000.00),
('Cloud Computing','4 Months','Mr. Nair',9000.00),
('AI Fundamentals','3 Months','Dr. Verma',7000.00),
('Blockchain','5 Months','Mr. Singh',11000.00),
('Digital Marketing','2 Months','Ms. Kaur',6000.00),
('UI/UX Design','3 Months','Mr. Joshi',7500.00);

INSERT INTO Instructors (Name, Expertise, Experience, Contact) VALUES
('Dr. Mehta','Python',10,'9876543210'),
('Prof. Kapoor','Data Science',12,'9876501234'),
('Mr. Rao','Web Development',8,'9876512345'),
('Dr. Iyer','Machine Learning',15,'9876523456'),
('Ms. Sharma','Cyber Security',9,'9876534567'),
('Mr. Nair','Cloud Computing',7,'9876545678'),
('Dr. Verma','Artificial Intelligence',14,'9876556789'),
('Mr. Singh','Blockchain',6,'9876567890'),
('Ms. Kaur','Marketing',5,'9876578901'),
('Mr. Joshi','Design',11,'9876589012');

INSERT INTO Enrollments (Student_ID, Course_ID, Date, Status) VALUES
(1,1,'2023-01-11','Active'),
(2,2,'2023-01-13','Active'),
(3,3,'2023-01-16','Active'),
(4,4,'2023-01-19','Completed'),
(5,5,'2023-01-21','Active'),
(6,6,'2023-01-23','Pending'),
(7,7,'2023-01-26','Active'),
(8,8,'2023-01-29','Completed'),
(9,9,'2023-01-31','Active'),
(10,10,'2023-02-03','Active');

INSERT INTO Payments (Enrollment_ID, Amount, Date, Method) VALUES
(1,5000.00,'2023-01-12','Card'),
(2,12000.00,'2023-01-14','UPI'),
(3,8000.00,'2023-01-17','Cash'),
(4,15000.00,'2023-01-20','Card'),
(5,10000.00,'2023-01-22','Net Banking'),
(6,9000.00,'2023-01-24','Card'),
(7,7000.00,'2023-01-27','UPI'),
(8,11000.00,'2023-01-30','Card'),
(9,6000.00,'2023-02-01','Cash'),
(10,7500.00,'2023-02-04','UPI');

SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Instructors;
SELECT * FROM Enrollments;
SELECT * FROM Payments;

DROP TABLE Payments;
DROP TABLE Enrollments;
DROP TABLE Instructors;
DROP TABLE Courses;
DROP TABLE Students;



CREATE DATABASE JobPortalDB;
USE JobPortalDB;

CREATE TABLE Candidates (
    Candidate_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Skills VARCHAR(200),
    Experience INT
);

CREATE TABLE Companies (
    Company_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Industry VARCHAR(100),
    Contact VARCHAR(50)
);

CREATE TABLE Jobs (
    Job_ID INT PRIMARY KEY AUTO_INCREMENT,
    Company_ID INT,
    Title VARCHAR(100),
    Salary DECIMAL(10,2),
    Requirements VARCHAR(200),
    FOREIGN KEY (Company_ID) REFERENCES Companies(Company_ID)
);

CREATE TABLE Applications (
    Application_ID INT PRIMARY KEY AUTO_INCREMENT,
    Candidate_ID INT,
    Job_ID INT,
    Date DATE,
    Status VARCHAR(50),
    FOREIGN KEY (Candidate_ID) REFERENCES Candidates(Candidate_ID),
    FOREIGN KEY (Job_ID) REFERENCES Jobs(Job_ID)
);

CREATE TABLE Interviews (
    Interview_ID INT PRIMARY KEY AUTO_INCREMENT,
    Application_ID INT,
    Date DATE,
    Time TIME,
    Result VARCHAR(50),
    FOREIGN KEY (Application_ID) REFERENCES Applications(Application_ID)
);

INSERT INTO Candidates (Name, Email, Skills, Experience) VALUES
('Ravi Sharma','ravi@example.com','Java, SQL',3),
('Neha Verma','neha@example.com','Python, ML',2),
('Vikram Singh','vikram@example.com','JavaScript, React',4),
('Pooja Iyer','pooja@example.com','C++, Data Structures',1),
('Suresh Gupta','suresh@example.com','Cloud, AWS',5),
('Kiran Desai','kiran@example.com','UI/UX, Figma',3),
('Simran Kaur','simran@example.com','HR, Recruitment',2),
('Amit Joshi','amit@example.com','Finance, Excel',6),
('Anita Mehra','anita@example.com','Digital Marketing, SEO',4),
('Arjun Patel','arjun@example.com','Cyber Security, Linux',3);

INSERT INTO Companies (Name, Location, Industry, Contact) VALUES
('TechSoft','Bangalore','IT','9876000011'),
('HealthCare Inc','Delhi','Healthcare','9876000012'),
('FinServe','Mumbai','Finance','9876000013'),
('EduWorld','Pune','Education','9876000014'),
('BuildCorp','Chennai','Construction','9876000015'),
('AgriLife','Hyderabad','Agriculture','9876000016'),
('TravelEasy','Jaipur','Tourism','9876000017'),
('Foodies','Kolkata','Hospitality','9876000018'),
('GreenEnergy','Ahmedabad','Energy','9876000019'),
('MediTech','Lucknow','Medical','9876000020');

INSERT INTO Jobs (Company_ID, Title, Salary, Requirements) VALUES
(1,'Software Developer',600000,'Java, SQL'),
(2,'Data Analyst',450000,'Python, ML'),
(3,'Frontend Developer',550000,'JavaScript, React'),
(4,'Teacher',300000,'C++, OOPS'),
(5,'Project Manager',900000,'Construction Mgmt'),
(6,'Agri Consultant',400000,'Agri Science'),
(7,'Travel Guide',250000,'Communication Skills'),
(8,'Chef',350000,'Cooking, Hygiene'),
(9,'Solar Engineer',700000,'Electrical Engg'),
(10,'Lab Technician',280000,'Lab Work');

INSERT INTO Applications (Candidate_ID, Job_ID, Date, Status) VALUES
(1,1,'2023-01-12','Applied'),
(2,2,'2023-01-13','Reviewed'),
(3,3,'2023-01-15','Shortlisted'),
(4,4,'2023-01-16','Applied'),
(5,5,'2023-01-17','Interview Scheduled'),
(6,6,'2023-01-18','Rejected'),
(7,7,'2023-01-19','Applied'),
(8,8,'2023-01-20','Reviewed'),
(9,9,'2023-01-21','Shortlisted'),
(10,10,'2023-01-22','Applied');

INSERT INTO Interviews (Application_ID, Date, Time, Result) VALUES
(1,'2023-01-20','10:00:00','Pending'),
(2,'2023-01-21','11:30:00','Pending'),
(3,'2023-01-22','09:00:00','Selected'),
(4,'2023-01-23','14:00:00','Pending'),
(5,'2023-01-24','16:00:00','Pending'),
(6,'2023-01-25','13:00:00','Rejected'),
(7,'2023-01-26','15:00:00','Pending'),
(8,'2023-01-27','10:30:00','Selected'),
(9,'2023-01-28','12:00:00','Pending'),
(10,'2023-01-29','11:00:00','Pending');

SELECT * FROM Candidates;
SELECT * FROM Companies;
SELECT * FROM Jobs;
SELECT * FROM Applications;
SELECT * FROM Interviews;

DROP TABLE Interviews;
DROP TABLE Applications;
DROP TABLE Jobs;
DROP TABLE Companies;
DROP TABLE Candidates;




CREATE DATABASE EventManagementDB;
USE EventManagementDB;

CREATE TABLE Events (
    Event_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100),
    Date DATE,
    Cost DECIMAL(10,2)
);

CREATE TABLE Clients (
    Client_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(50),
    Budget DECIMAL(10,2),
    Requirement VARCHAR(200)
);

CREATE TABLE Vendors (
    Vendor_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Service VARCHAR(100),
    Contact VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Bookings (
    Booking_ID INT PRIMARY KEY AUTO_INCREMENT,
    Event_ID INT,
    Client_ID INT,
    Vendor_ID INT,
    Date DATE,
    FOREIGN KEY (Event_ID) REFERENCES Events(Event_ID),
    FOREIGN KEY (Client_ID) REFERENCES Clients(Client_ID),
    FOREIGN KEY (Vendor_ID) REFERENCES Vendors(Vendor_ID)
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(100),
    Contact VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Events (Name, Location, Date, Cost) VALUES
('Wedding','Delhi','2023-02-10',500000),
('Birthday Party','Mumbai','2023-03-12',150000),
('Corporate Event','Bangalore','2023-04-05',300000),
('Concert','Chennai','2023-05-20',800000),
('Exhibition','Hyderabad','2023-06-15',400000),
('Workshop','Pune','2023-07-10',120000),
('Seminar','Ahmedabad','2023-08-18',200000),
('Festival','Kolkata','2023-09-25',600000),
('Sports Meet','Jaipur','2023-10-05',350000),
('Charity Event','Lucknow','2023-11-12',250000);

INSERT INTO Clients (Name, Contact, Budget, Requirement) VALUES
('Ravi Sharma','9876100011',600000,'Wedding Decoration'),
('Neha Verma','9876100012',200000,'Birthday Catering'),
('Vikram Singh','9876100013',400000,'Corporate Setup'),
('Pooja Iyer','9876100014',900000,'Concert Management'),
('Suresh Gupta','9876100015',450000,'Exhibition Stalls'),
('Kiran Desai','9876100016',150000,'Workshop Venue'),
('Simran Kaur','9876100017',250000,'Seminar Arrangements'),
('Amit Joshi','9876100018',700000,'Festival Management'),
('Anita Mehra','9876100019',300000,'Sports Arrangements'),
('Arjun Patel','9876100020',280000,'Charity Event');

INSERT INTO Vendors (Name, Service, Contact, Price) VALUES
('Flora Decor','Decoration','9876200011',200000),
('Tasty Bites','Catering','9876200012',100000),
('SoundMax','Sound System','9876200013',150000),
('LightPro','Lighting','9876200014',120000),
('StageCraft','Stage Setup','9876200015',180000),
('EventCars','Transport','9876200016',80000),
('PrintWorld','Printing','9876200017',50000),
('PhotoSnap','Photography','9876200018',100000),
('CleanIt','Cleaning','9876200019',40000),
('SecurityPlus','Security','9876200020',90000);

INSERT INTO Bookings (Event_ID, Client_ID, Vendor_ID, Date) VALUES
(1,1,1,'2023-02-05'),
(2,2,2,'2023-03-10'),
(3,3,3,'2023-04-01'),
(4,4,4,'2023-05-15'),
(5,5,5,'2023-06-10'),
(6,6,6,'2023-07-05'),
(7,7,7,'2023-08-15'),
(8,8,8,'2023-09-20'),
(9,9,9,'2023-10-01'),
(10,10,10,'2023-11-05');

INSERT INTO Staff (Name, Role, Contact, Salary) VALUES
('Anil Kumar','Manager','9876300011',50000),
('Sunita Joshi','Coordinator','9876300012',35000),
('Rohit Sharma','Technician','9876300013',25000),
('Kiran Gupta','Decorator','9876300014',30000),
('Meena Iyer','Caterer','9876300015',28000),
('Amit Kumar','Driver','9876300016',20000),
('Pooja Nair','Photographer','9876300017',32000),
('Suresh Rathi','Cleaner','9876300018',18000),
('Neha Desai','Receptionist','9876300019',22000),
('Vikram Singh','Security','9876300020',25000);

SELECT * FROM Events;
SELECT * FROM Clients;
SELECT * FROM Vendors;
SELECT * FROM Bookings;
SELECT * FROM Staff;

DROP TABLE Staff;
DROP TABLE Bookings;
DROP TABLE Vendors;
DROP TABLE Clients;
DROP TABLE Events;




CREATE DATABASE LogisticsDB;
USE LogisticsDB;

CREATE TABLE Packages (
    Package_ID INT PRIMARY KEY AUTO_INCREMENT,
    Sender VARCHAR(100) NOT NULL,
    Receiver VARCHAR(100) NOT NULL,
    Weight DECIMAL(6,2),
    Status VARCHAR(50)
);

CREATE TABLE Drivers (
    Driver_ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    License_Number VARCHAR(50) UNIQUE,
    Contact VARCHAR(50),
    Experience INT
);

CREATE TABLE Vehicles (
    Vehicle_ID INT PRIMARY KEY AUTO_INCREMENT,
    Type VARCHAR(50),
    Capacity DECIMAL(6,2),
    Driver_ID INT,
    Status VARCHAR(50),
    FOREIGN KEY (Driver_ID) REFERENCES Drivers(Driver_ID)
);

CREATE TABLE Shipments (
    Shipment_ID INT PRIMARY KEY AUTO_INCREMENT,
    Package_ID INT,
    Vehicle_ID INT,
    Date DATE,
    Destination VARCHAR(100),
    FOREIGN KEY (Package_ID) REFERENCES Packages(Package_ID),
    FOREIGN KEY (Vehicle_ID) REFERENCES Vehicles(Vehicle_ID)
);

CREATE TABLE Warehouses (
    Warehouse_ID INT PRIMARY KEY AUTO_INCREMENT,
    Location VARCHAR(100),
    Capacity INT,
    Manager VARCHAR(100),
    Contact VARCHAR(50)
);

INSERT INTO Packages (Sender, Receiver, Weight, Status) VALUES
('Ravi Sharma','Neha Verma',5.50,'In Transit'),
('Vikram Singh','Pooja Iyer',2.30,'Delivered'),
('Suresh Gupta','Kiran Desai',10.00,'Pending'),
('Simran Kaur','Amit Joshi',7.20,'In Transit'),
('Anita Mehra','Arjun Patel',4.10,'Delivered'),
('Rahul Mehta','Sneha Kapoor',3.60,'Pending'),
('Kavita Joshi','Rohan Kumar',8.90,'In Transit'),
('Deepak Nair','Meena Gupta',6.40,'Delivered'),
('Nisha Singh','Manoj Rao',12.00,'Pending'),
('Alok Verma','Divya Shah',9.80,'In Transit');

INSERT INTO Drivers (Name, License_Number, Contact, Experience) VALUES
('Anil Kumar','DL12345','9876500011',5),
('Sunita Joshi','DL12346','9876500012',3),
('Rohit Sharma','DL12347','9876500013',7),
('Kiran Gupta','DL12348','9876500014',4),
('Meena Iyer','DL12349','9876500015',6),
('Amit Kumar','DL12350','9876500016',2),
('Pooja Nair','DL12351','9876500017',8),
('Suresh Rathi','DL12352','9876500018',5),
('Neha Desai','DL12353','9876500019',3),
('Vikram Singh','DL12354','9876500020',6);

INSERT INTO Vehicles (Type, Capacity, Driver_ID, Status) VALUES
('Truck',20.00,1,'Active'),
('Van',10.00,2,'Active'),
('Mini Truck',8.00,3,'Maintenance'),
('Bike',1.00,4,'Active'),
('Truck',25.00,5,'Active'),
('Van',12.00,6,'Inactive'),
('Mini Truck',9.00,7,'Active'),
('Truck',30.00,8,'Active'),
('Van',15.00,9,'Active'),
('Truck',18.00,10,'Active');

INSERT INTO Shipments (Package_ID, Vehicle_ID, Date, Destination) VALUES
(1,1,'2023-01-10','Delhi'),
(2,2,'2023-01-12','Mumbai'),
(3,3,'2023-01-14','Bangalore'),
(4,4,'2023-01-15','Chennai'),
(5,5,'2023-01-17','Hyderabad'),
(6,6,'2023-01-18','Pune'),
(7,7,'2023-01-20','Jaipur'),
(8,8,'2023-01-22','Kolkata'),
(9,9,'2023-01-25','Ahmedabad'),
(10,10,'2023-01-28','Lucknow');

INSERT INTO Warehouses (Location, Capacity, Manager, Contact) VALUES
('Delhi',1000,'Rajesh Kumar','9876600011'),
('Mumbai',800,'Suresh Sharma','9876600012'),
('Bangalore',1200,'Anita Singh','9876600013'),
('Chennai',900,'Ravi Iyer','9876600014'),
('Hyderabad',1100,'Kiran Rao','9876600015'),
('Pune',700,'Deepak Joshi','9876600016'),
('Jaipur',600,'Pooja Desai','9876600017'),
('Kolkata',950,'Vikram Gupta','9876600018'),
('Ahmedabad',850,'Simran Mehta','9876600019'),
('Lucknow',750,'Arjun Patel','9876600020');

SELECT * FROM Packages;
SELECT * FROM Drivers;
SELECT * FROM Vehicles;
SELECT * FROM Shipments;
SELECT * FROM Warehouses;

DROP TABLE Warehouses;
DROP TABLE Shipments;
DROP TABLE Vehicles;
DROP TABLE Drivers;
DROP TABLE Packages;
