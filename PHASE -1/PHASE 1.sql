-- _______________________________________
-- FINAL PROJECT - REAL ESTATE DATABASE 
-- _______________________________________
-- ================================================


-- ===============================================
-- P H A S E - 1
-- ===============================================


Create database RealEstateDBS;
USE RealEstateDBS; 
-- ================================================
-- 1) Users table
-- ================================================
DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(120) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  phone VARCHAR(15) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role ENUM('Admin','Agent','Customer') NOT NULL DEFAULT 'Customer',
  date_joined DATE NOT NULL DEFAULT (CURRENT_DATE),
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  address VARCHAR(255),
  city VARCHAR(80),
  state VARCHAR(80),
  country VARCHAR(80) DEFAULT 'India',
  postal_code VARCHAR(12),
  CHECK (CHAR_LENGTH(phone) >= 10)
);

INSERT INTO Users (user_id, full_name, email, phone, password, role, date_joined, address, city, state, postal_code)
VALUES
(1,'Rohit Sharma','rohit.sharma@example.com','9999900001','pass123','Admin','2025-01-02','12 Marine Drive','Mumbai','Maharashtra','400001'),
(2,'Anita Desai','anita.desai@example.com','9999900002','pass123','Agent','2025-01-05','5 MG Road','Pune','Maharashtra','411001'),
(3,'Rahul Mehta','rahul.mehta@example.com','9999900003','pass123','Customer','2025-01-08','45 Connaught Place','Delhi','Delhi','110001'),
(4,'Simran Kaur','simran.kaur@example.com','9999900004','pass123','Customer','2025-01-10','33 Sector 22','Chandigarh','Chandigarh','160017'),
(5,'Vikram Patel','vikram.patel@example.com','9999900005','pass123','Agent','2025-01-15','21 Ashram Road','Ahmedabad','Gujarat','380001'),
(6,'Sneha Iyer','sneha.iyer@example.com','9999900006','pass123','Customer','2025-01-20','18 Mount Road','Chennai','Tamil Nadu','600001'),
(7,'Amit Bansal','amit.bansal@example.com','9999900007','pass123','Customer','2025-01-22','9 MI Road','Jaipur','Rajasthan','302001'),
(8,'Priya Nair','priya.nair@example.com','9999900008','pass123','Agent','2025-01-25','6 MG Road','Kochi','Kerala','682001'),
(9,'Manish Verma','manish.verma@example.com','9999900009','pass123','Customer','2025-02-01','78 Hazratganj','Lucknow','Uttar Pradesh','226001'),
(10,'Neha Singh','neha.singh@example.com','9999900010','pass123','Customer','2025-02-05','14 New Market','Bhopal','Madhya Pradesh','462001'),
(11,'Karan Malhotra','karan.malhotra@example.com','9999900011','pass123','Agent','2025-02-10','8 Cyber City','Gurugram','Haryana','122001'),
(12,'Pooja Joshi','pooja.joshi@example.com','9999900012','pass123','Customer','2025-02-12','34 Residency Road','Nagpur','Maharashtra','440001'),
(13,'Ravi Kumar','ravi.kumar@example.com','9999900013','pass123','Customer','2025-02-15','23 Fraser Road','Patna','Bihar','800001'),
(14,'Meera Chawla','meera.chawla@example.com','9999900014','pass123','Customer','2025-02-18','56 Palasia','Indore','Madhya Pradesh','452001'),
(15,'Devendra Yadav','devendra.yadav@example.com','9999900015','pass123','Agent','2025-02-20','17 Mall Road','Kanpur','Uttar Pradesh','208001'),
(16,'Shreya Dutta','shreya.dutta@example.com','9999900016','pass123','Customer','2025-02-22','19 Park Street','Kolkata','West Bengal','700001'),
(17,'Harsh Vora','harsh.vora@example.com','9999900017','pass123','Customer','2025-02-25','8 Ring Road','Surat','Gujarat','395003'),
(18,'Tanya Kapoor','tanya.kapoor@example.com','9999900018','pass123','Agent','2025-03-01','4 Sector 18','Noida','Uttar Pradesh','201301'),
(19,'Rakesh Pillai','rakesh.pillai@example.com','9999900019','pass123','Customer','2025-03-05','27 MG Road','Thiruvananthapuram','Kerala','695001'),
(20,'Arjun Bhalla','arjun.bhalla@example.com','9999900020','pass123','Customer','2025-03-08','31 Golden Temple Road','Amritsar','Punjab','143001');

INSERT INTO Users (user_id, full_name, email, phone, password, role, date_joined, address, city, state, postal_code)
VALUES
(21,'Gauri Shah','gauri.shah@example.com','9999900021','pass123','Agent','2025-03-10','12 Link Road','Mumbai','Maharashtra','400006'),
(22,'Suresh Menon','suresh.menon@example.com','9999900022','pass123','Agent','2025-03-12','8 Palm Street','Kochi','Kerala','682002'),
(23,'Nina Kapoor','nina.kapoor@example.com','9999900023','pass123','Agent','2025-03-15','3 Lake View','Udaipur','Rajasthan','313002'),
(24,'Rohan Deshmukh','rohan.deshmukh@example.com','9999900024','pass123','Agent','2025-03-18','22 Hill Road','Pune','Maharashtra','411002'),
(25,'Kavita Rao','kavita.rao@example.com','9999900025','pass123','Agent','2025-03-20','7 Coastal Lane','Panaji','Goa','403002'),
(26,'Ajay Kumar','ajay.kumar@example.com','9999900026','pass123','Agent','2025-03-22','90 Industrial Area','Surat','Gujarat','395004');

INSERT INTO Users (user_id, full_name, email, phone, password, role, date_joined, address, city, state, postal_code)
VALUES
(27,'Anuj Sharma','anuj.sharma@example.com','9999900027','pass123','Customer','2025-03-25','44 Central Ave','Gurugram','Haryana','122002'),
(28,'Rina Roy','rina.roy@example.com','9999900028','pass123','Customer','2025-03-28','61 Park Lane','Kolkata','West Bengal','700002'),
(29,'Vivek Singh','vivek.singh@example.com','9999900029','pass123','Customer','2025-04-01','88 Bay Road','Mumbai','Maharashtra','400009'),
(30,'Maya Gupta','maya.gupta@example.com','9999900030','pass123','Customer','2025-04-05','12 Lake Road','Hyderabad','Telangana','500002'),
(31,'Rohini Bhat','rohini.bhat@example.com','9999900031','pass123','Customer','2025-04-10','9 River St','Pune','Maharashtra','411003'),
(32,'Sandeep Rao','sandeep.rao@example.com','9999900032','pass123','Customer','2025-04-12','7 Market Street','Bengaluru','Karnataka','560001'),
(33,'Kriti Jain','kriti.jain@example.com','9999900033','pass123','Customer','2025-04-18','5 Hilltop','Udaipur','Rajasthan','313003');

-- DML query for Users
-- SELECT all users
SELECT * FROM Users;

-- UPDATE a user's phone
UPDATE Users SET phone='9999911111' WHERE user_id=3;

-- DELETE a user (note: will fail if FK dependencies exist)
DELETE FROM Users WHERE user_id=20;

-- TRUNCATE users (remove all rows, keep table) -- use with caution
TRUNCATE TABLE Users;

-- DROP Users table (removes structure and data)
DROP TABLE IF EXISTS Users;


-- ============================
-- 2) Properties table
-- ============================
DROP TABLE IF EXISTS Properties;
CREATE TABLE Properties (
  property_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  description TEXT,
  property_type ENUM('Apartment','House','Villa','Plot','Commercial') NOT NULL,
  status ENUM('Available','Sold','Rented','Under Construction') NOT NULL DEFAULT 'Available',
  price DECIMAL(15,2) NOT NULL CHECK(price >= 0),
  area_sqft DECIMAL(10,2) NOT NULL CHECK(area_sqft > 0),
  bedrooms INT NOT NULL DEFAULT 0 CHECK(bedrooms >= 0),
  bathrooms INT NOT NULL DEFAULT 0 CHECK(bathrooms >= 0),
  owner_id INT NOT NULL,
  address VARCHAR(255) NOT NULL,
  city VARCHAR(80) NOT NULL,
  state VARCHAR(80),
  country VARCHAR(80) DEFAULT 'India',
  postal_code VARCHAR(12),
  listed_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  is_featured BOOLEAN NOT NULL DEFAULT FALSE,
  CONSTRAINT fk_properties_owner FOREIGN KEY (owner_id) REFERENCES Users(user_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO Properties 
(title, description, property_type, status, price, area_sqft, bedrooms, bathrooms, owner_id, address, city, state, country, postal_code, listed_date, is_featured)
VALUES
('2BHK Luxury Apartment in Bandra', 'Sea-facing, furnished, 2 balconies.', 'Apartment', 'Available', 12500000.00, 1200.00, 2, 2, 1, '12 Sea Breeze Road', 'Mumbai', 'Maharashtra', 'India', '400050', '2025-01-12', TRUE),
('3BHK Villa with Garden', 'Private garden, covered parking.', 'Villa', 'Available', 21500000.00, 2500.00, 3, 3, 2, '5 Green Park Lane', 'Pune', 'Maharashtra', 'India', '411001', '2025-02-08', FALSE),
('Commercial Office in Connaught Place', 'Prime office in Central Delhi.', 'Commercial', 'Available', 35000000.00, 4000.00, 0, 4, 3, '45 CP Central Block', 'Delhi', 'Delhi', 'India', '110001', '2025-02-25', TRUE),
('1BHK Affordable Flat', 'Budget-friendly near college.', 'Apartment', 'Available', 4500000.00, 650.00, 1, 1, 4, '21 University Road', 'Ahmedabad', 'Gujarat', 'India', '380001', '2025-03-10', FALSE),
('Beachside Villa with Pool', 'Sea view and private pool.', 'Villa', 'Available', 60000000.00, 5000.00, 5, 6, 5, '6 Palm Beach Road', 'Kochi', 'Kerala', 'India', '682001', '2025-03-22', TRUE),
('Penthouse in Cyber City', 'Skyline views and terrace.', 'Apartment', 'Available', 28000000.00, 3000.00, 4, 4, 6, '8 Skyline Avenue', 'Gurugram', 'Haryana', 'India', '122001', '2025-04-01', TRUE),
('Commercial Plot in Surat', 'Industrial plot near highway.', 'Plot', 'Available', 18000000.00, 6000.00, 0, 0, 7, '8 Ring Road', 'Surat', 'Gujarat', 'India', '395003', '2025-04-12', FALSE),
('Luxury Bungalow in Jaipur', 'Blend of heritage and modern.', 'House', 'Available', 17500000.00, 2800.00, 4, 3, 8, '17 Heritage Colony', 'Jaipur', 'Rajasthan', 'India', '302001', '2025-04-18', TRUE),
('Modern 2BHK in Indore', 'City-center, bright and airy.', 'Apartment', 'Available', 8000000.00, 1100.00, 2, 2, 9, '56 Palasia Main', 'Indore', 'Madhya Pradesh', 'India', '452001', '2025-05-02', FALSE),
('Gated Community Plot', 'Residential plot with amenities.', 'Plot', 'Available', 9500000.00, 2400.00, 0, 0, 10, 'Sector 77', 'Noida', 'Uttar Pradesh', 'India', '201301', '2025-05-15', FALSE),
('Commercial Building in Nagpur', 'Four storeys, elevators.', 'Commercial', 'Available', 40000000.00, 8000.00, 0, 8, 11, '34 Residency Road', 'Nagpur', 'Maharashtra', 'India', '440001', '2025-06-01', TRUE),
('4BHK Duplex in Lucknow', 'Large lawn and built-in storage.', 'House', 'Available', 15000000.00, 2300.00, 4, 4, 12, '78 Hazratganj Lane', 'Lucknow', 'Uttar Pradesh', 'India', '226001', '2025-06-18', FALSE),
('Lake View Apartment', '3BHK with large balcony.', 'Apartment', 'Available', 13000000.00, 1600.00, 3, 2, 13, '60 Lake Road', 'Hyderabad', 'Telangana', 'India', '500001', '2025-07-01', TRUE),
('Budget Apartment in Bhopal', 'Near market and public transport.', 'Apartment', 'Available', 6000000.00, 900.00, 2, 1, 14, '14 New Market Road', 'Bhopal', 'Madhya Pradesh', 'India', '462001', '2025-07-15', FALSE),
('Villa in Thiruvananthapuram', 'Spacious lawn and storage room.', 'Villa', 'Available', 30000000.00, 4500.00, 4, 5, 15, '27 MG Road', 'Thiruvananthapuram', 'Kerala', 'India', '695001', '2025-07-28', TRUE),
('Hilltop Plot in Udaipur', 'Scenic view, ideal for resort.', 'Plot', 'Available', 12500000.00, 3500.00, 0, 0, 16, '5 Lake View Hill', 'Udaipur', 'Rajasthan', 'India', '313001', '2025-08-05', FALSE),
('Commercial Space in Kolkata', 'High footfall area near Park Street.', 'Commercial', 'Available', 42000000.00, 7000.00, 0, 6, 17, '19 Park Street', 'Kolkata', 'West Bengal', 'India', '700001', '2025-08-19', TRUE),
('3BHK Apartment in Chennai', 'Close to metro, semi-furnished.', 'Apartment', 'Available', 11000000.00, 1400.00, 3, 2, 18, '18 Mount Road', 'Chennai', 'Tamil Nadu', 'India', '600001', '2025-09-03', FALSE),
('Heritage Bungalow in Amritsar', 'Traditional home near Golden Temple.', 'House', 'Available', 21000000.00, 2700.00, 3, 3, 19, '31 Golden Temple Road', 'Amritsar', 'Punjab', 'India', '143001', '2025-09-18', TRUE),
('Beach Plot in Goa', 'Perfect for resort or villa.', 'Plot', 'Available', 30000000.00, 5000.00, 0, 0, 20, '9 Church Street', 'Panaji', 'Goa', 'India', '403001', '2025-10-01', FALSE);

-- select and DML query for Properties
SELECT * FROM Properties WHERE city='Mumbai';
UPDATE Properties SET status='Sold', price=12000000 WHERE property_id=1;
DELETE FROM Properties WHERE property_id=20; -- remove beach plot (if required)

-- TRUNCATE and DROP examples
TRUNCATE TABLE Properties;
DROP TABLE IF EXISTS Properties;

-- ============================
-- 3) Agents table
-- ============================
DROP TABLE IF EXISTS Agents;
CREATE TABLE Agents (
  agent_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL UNIQUE,
  license_number VARCHAR(60) NOT NULL UNIQUE,
  experience_years INT NOT NULL DEFAULT 0 CHECK(experience_years >= 0),
  agency_name VARCHAR(120),
  rating DECIMAL(2,1) DEFAULT 0 CHECK(rating BETWEEN 0 AND 5),
  total_sales INT DEFAULT 0 CHECK(total_sales >= 0),
  specialization VARCHAR(120),
  joining_date DATE DEFAULT (CURRENT_DATE),
  is_active BOOLEAN DEFAULT TRUE,
  phone_office VARCHAR(15),
  CONSTRAINT fk_agents_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Agents (agent_id, user_id, license_number, experience_years, agency_name, rating, total_sales, specialization, joining_date, is_active, phone_office)
VALUES
(1,2,'LIC-MH-2025-0001',6,'Prime Realty',4.6,45,'Residential, Luxury','2025-01-05',TRUE,'022-40011001'),
(2,5,'LIC-GJ-2025-0002',10,'Gujarat Estates',4.8,120,'Commercial, Industrial','2025-01-15',TRUE,'079-25550022'),
(3,8,'LIC-KL-2025-0003',8,'Kerala Homes',4.5,78,'Villa, Beach Properties','2025-01-25',TRUE,'0484-410033'),
(4,11,'LIC-HR-2025-0004',5,'Cyber City Agents',4.2,36,'Office Spaces, Apartments','2025-02-10',TRUE,'0124-330044'),
(5,15,'LIC-UP-2025-0005',12,'Kanpur Realty',4.9,210,'Houses, Plots','2025-02-20',TRUE,'0512-220055'),
(6,18,'LIC-UP-2025-0006',9,'Noida Brokers',4.4,88,'Apartments, New Projects','2025-03-01',TRUE,'0120-440066'),
(7,21,'LIC-MH-2025-0007',4,'Mumbai Elite',4.1,25,'Luxury Apartments','2025-03-10',TRUE,'022-40012007'),
(8,22,'LIC-KL-2025-0008',11,'Cochin Realty',4.7,140,'Beach Villas','2025-03-12',TRUE,'0484-411122'),
(9,23,'LIC-RJ-2025-0009',7,'Udaipur Properties',4.3,60,'Resorts, Plots','2025-03-15',TRUE,'0294-550033'),
(10,24,'LIC-MH-2025-0010',3,'Pune Property Hub',3.9,18,'Starter Homes','2025-03-18',TRUE,'020-660044'),
(11,25,'LIC-GA-2025-0011',8,'Goa Shores',4.6,92,'Tourist Villas','2025-03-20',TRUE,'0832-770055'),
(12,26,'LIC-GJ-2025-0012',6,'Surat Spaces',4.0,40,'Industrial Plots','2025-03-22',TRUE,'0261-880066'),
(13,3,'LIC-DL-2025-0013',2,'Independent Agent',3.5,5,'Small Apartments','2025-04-01',TRUE,'011-990011'),
(14,4,'LIC-CH-2025-0014',1,'Chandigarh Realty',3.0,2,'Rentals','2025-04-05',TRUE,'0172-990022'),
(15,6,'LIC-TN-2025-0015',4,'Chennai Homes',4.2,35,'Apartments','2025-04-12',TRUE,'044-990033'),
(16,7,'LIC-RJ-2025-0016',5,'Jaipur Realty',4.0,40,'Heritage Houses','2025-04-18',TRUE,'0141-990044'),
(17,9,'LIC-UP-2025-0017',3,'Lucknow Agents',3.8,12,'Local Sales','2025-05-01',TRUE,'0522-990055'),
(18,12,'LIC-MH-2025-0018',2,'Nagpur Brokers',3.6,8,'Commercial Leasing','2025-05-10',TRUE,'0712-990066'),
(19,13,'LIC-BR-2025-0019',4,'Patna Realtors',4.0,22,'Affordable Homes','2025-05-15',TRUE,'0612-990077'),
(20,14,'LIC-MP-2025-0020',6,'Indore Properties',4.1,48,'Family Homes','2025-05-20',TRUE,'0731-990088');

-- SELECT query agents
SELECT * FROM Agents ORDER BY agent_id;
-- UPDATE agent rating example
UPDATE Agents SET rating = 4.9 WHERE agent_id = 5;
-- DELETE an agent (will cascade delete if user deleted due to ON DELETE CASCADE)
DELETE FROM Agents WHERE agent_id = 13;

-- TRUNCATE and DROP examples
TRUNCATE TABLE Agents;
DROP TABLE IF EXISTS Agents;


-- ============================
-- 4) Customers table
-- ============================
DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT NOT NULL UNIQUE,
  preferred_city VARCHAR(100),
  budget_min DECIMAL(15,2) DEFAULT 0 CHECK(budget_min >= 0),
  budget_max DECIMAL(15,2) DEFAULT 0 CHECK(budget_max >= 0),
  interested_in ENUM('Buy','Rent','Both') DEFAULT 'Buy',
  occupation VARCHAR(100),
  family_size INT DEFAULT 1 CHECK(family_size >= 1),
  preferred_property_type ENUM('Apartment','House','Villa','Plot','Commercial','Any') DEFAULT 'Any',
  created_on DATE DEFAULT (CURRENT_DATE),
  is_verified BOOLEAN DEFAULT FALSE,
  CONSTRAINT fk_customers_user FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Customers (customer_id, user_id, preferred_city, budget_min, budget_max, interested_in, occupation, family_size, preferred_property_type, is_verified)
VALUES
(1,3,'Delhi',5000000,20000000,'Buy','Software Engineer',3,'Apartment',TRUE),
(2,4,'Chandigarh',2000000,7000000,'Rent','Student',1,'Apartment',FALSE),
(3,6,'Chennai',4000000,12000000,'Buy','Teacher',4,'House',TRUE),
(4,7,'Jaipur',3000000,10000000,'Buy','Small Business',5,'House',FALSE),
(5,9,'Lucknow',5000000,15000000,'Buy','Banker',4,'House',TRUE),
(6,10,'Bhopal',2000000,8000000,'Buy','Government Employee',3,'Apartment',FALSE),
(7,12,'Nagpur',6000000,25000000,'Buy','Business Owner',6,'Commercial',TRUE),
(8,13,'Patna',1500000,5000000,'Buy','Clerk',2,'Apartment',FALSE),
(9,14,'Indore',3500000,9000000,'Rent','Consultant',3,'Apartment',TRUE),
(10,16,'Kolkata',4000000,14000000,'Buy','Designer',2,'Apartment',FALSE),
(11,17,'Surat',3000000,10000000,'Both','Manufacturer',5,'Plot',TRUE),
(12,19,'Thiruvananthapuram',10000000,40000000,'Buy','Doctor',4,'Villa',TRUE),
(13,27,'Gurugram',7000000,30000000,'Buy','IT Manager',3,'Apartment',TRUE),
(14,28,'Kolkata',1500000,6000000,'Rent','Teacher',2,'Apartment',FALSE),
(15,29,'Mumbai',8000000,35000000,'Buy','Entrepreneur',4,'Apartment',TRUE),
(16,30,'Hyderabad',3000000,12000000,'Buy','Sys Admin',2,'Apartment',FALSE),
(17,31,'Pune',4000000,12000000,'Buy','Marketing',3,'Apartment',TRUE),
(18,32,'Bengaluru',6000000,50000000,'Buy','Startup Founder',4,'Villa',TRUE),
(19,33,'Udaipur',2000000,8000000,'Buy','Tourism',2,'Plot',FALSE),
(20,11,'Gurugram',5000000,25000000,'Buy','HR Manager',3,'Commercial',FALSE);

-- SELECT all customers
SELECT * FROM Customers;

-- UPDATE a customer's budget
UPDATE Customers SET budget_max = 22000000 WHERE customer_id = 1;

-- DELETE a customer
DELETE FROM Customers WHERE customer_id = 8;

-- TRUNCATE and DROP examples
TRUNCATE TABLE Customers;
DROP TABLE IF EXISTS Customers;


-- ============================
-- 5) PropertyImages table
-- ============================
DROP TABLE IF EXISTS PropertyImages;
CREATE TABLE PropertyImages (
  image_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  caption VARCHAR(150),
  uploaded_on DATETIME DEFAULT CURRENT_TIMESTAMP,
  is_primary BOOLEAN DEFAULT FALSE,
  file_size_kb INT CHECK(file_size_kb >= 0),
  mime_type VARCHAR(50),
  resolution VARCHAR(30), /* e.g. 1920x1080 */
  uploader_id INT,
  camera_model VARCHAR(80),
  CONSTRAINT fk_images_property FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_images_uploader FOREIGN KEY (uploader_id) REFERENCES Users(user_id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO PropertyImages (image_id, property_id, image_url, caption, uploaded_on, is_primary, file_size_kb, mime_type, resolution, uploader_id, camera_model)
VALUES
(1,1,'https://example.com/images/p1_1.jpg','Sea view balcony','2025-01-13 10:20:00',TRUE,345,'image/jpeg','1920x1080',1,'Canon EOS 80D'),
(2,1,'https://example.com/images/p1_2.jpg','Living room wide','2025-01-13 10:22:00',FALSE,290,'image/jpeg','1600x900',2,'Canon EOS 80D'),
(3,2,'https://example.com/images/p2_1.jpg','Garden view','2025-02-09 09:00:00',TRUE,520,'image/jpeg','2048x1365',2,'Nikon D5600'),
(4,2,'https://example.com/images/p2_2.jpg','Main entrance','2025-02-09 09:05:00',FALSE,210,'image/jpeg','1280x720',5,'Nikon D5600'),
(5,3,'https://example.com/images/p3_1.jpg','Office lobby','2025-02-26 11:30:00',TRUE,620,'image/jpeg','3000x2000',1,'Sony Alpha 7'),
(6,4,'https://example.com/images/p4_1.jpg','Studio layout','2025-03-11 14:12:00',TRUE,180,'image/jpeg','1280x800',5,'iPhone 12'),
(7,5,'https://example.com/images/p5_1.jpg','Pool & deck','2025-03-23 13:45:00',TRUE,1250,'image/jpeg','4000x3000',8,'Canon EOS R'),
(8,6,'https://example.com/images/p6_1.jpg','Penthouse terrace','2025-04-02 17:00:00',TRUE,980,'image/jpeg','3500x2000',11,'Sony Alpha 7'),
(9,7,'https://example.com/images/p7_1.jpg','Empty plot aerial','2025-04-13 08:22:00',TRUE,1500,'image/jpeg','4000x3000',5,'DJI Phantom 4'),
(10,8,'https://example.com/images/p8_1.jpg','Front facade','2025-04-19 09:50:00',TRUE,760,'image/jpeg','2800x1800',15,'Nikon D750'),
(11,9,'https://example.com/images/p9_1.jpg','Kitchen and dining','2025-05-03 12:05:00',TRUE,420,'image/jpeg','2000x1300',2,'iPhone 13 Pro'),
(12,10,'https://example.com/images/p10_1.jpg','Plot aerial view','2025-05-16 16:30:00',TRUE,1700,'image/jpeg','4000x3000',18,'DJI Mavic 2'),
(13,11,'https://example.com/images/p11_1.jpg','Building exterior','2025-06-02 09:10:00',TRUE,2000,'image/jpeg','4500x3000',1,'Sony Alpha 7'),
(14,12,'https://example.com/images/p12_1.jpg','Backyard and lawn','2025-06-19 12:40:00',TRUE,800,'image/jpeg','2500x1600',11,'Canon EOS 5D'),
(15,13,'https://example.com/images/p13_1.jpg','Lake view from balcony','2025-07-02 07:20:00',TRUE,730,'image/jpeg','2600x1600',22,'Nikon Z6'),
(16,14,'https://example.com/images/p14_1.jpg','Compact living','2025-07-16 10:00:00',TRUE,300,'image/jpeg','1200x800',15,'iPhone 11'),
(17,15,'https://example.com/images/p15_1.jpg','Villa facade and drive','2025-07-29 15:30:00',TRUE,1500,'image/jpeg','3500x2000',8,'Canon EOS R'),
(18,16,'https://example.com/images/p16_1.jpg','Hilltop panoramic','2025-08-06 06:45:00',TRUE,1600,'image/jpeg','4000x2500',23,'DJI Phantom 4'),
(19,17,'https://example.com/images/p17_1.jpg','High street frontage','2025-08-20 11:11:00',TRUE,2100,'image/jpeg','4500x3000',1,'Sony Alpha 7'),
(20,18,'https://example.com/images/p18_1.jpg','Open plan living','2025-09-04 14:44:00',TRUE,600,'image/jpeg','2000x1300',5,'iPhone 13 Pro');

-- SELECT images for a property
SELECT * FROM PropertyImages WHERE property_id = 1;

-- UPDATE image caption example
UPDATE PropertyImages SET caption = 'Sea view balcony - updated' WHERE image_id = 1;

-- DELETE an image
DELETE FROM PropertyImages WHERE image_id = 20;

-- TRUNCATE and DROP examples
TRUNCATE TABLE PropertyImages;
DROP TABLE IF EXISTS PropertyImages;

-- ============================
-- 6) Amenities table
-- ============================
DROP TABLE IF EXISTS Amenities;
CREATE TABLE Amenities (
  amenity_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT NOT NULL,
  has_parking BOOLEAN NOT NULL DEFAULT FALSE,
  parking_slots INT DEFAULT 0 CHECK(parking_slots >= 0),
  has_garden BOOLEAN NOT NULL DEFAULT FALSE,
  garden_area_sqft INT DEFAULT 0 CHECK(garden_area_sqft >= 0),
  has_pool BOOLEAN NOT NULL DEFAULT FALSE,
  pool_size_m FLOAT DEFAULT 0 CHECK(pool_size_m >= 0),
  has_gym BOOLEAN NOT NULL DEFAULT FALSE,
  gym_area_sqft INT DEFAULT 0 CHECK(gym_area_sqft >= 0),
  has_security BOOLEAN NOT NULL DEFAULT TRUE,
  has_wifi BOOLEAN NOT NULL DEFAULT FALSE,
  additional_notes VARCHAR(255),
  updated_on DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  CONSTRAINT fk_amenities_property FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Amenities (amenity_id, property_id, has_parking, parking_slots, has_garden, garden_area_sqft, has_pool, pool_size_m, has_gym, gym_area_sqft, has_security, has_wifi, additional_notes)
VALUES
(1,1,TRUE,1,FALSE,0,FALSE,0,FALSE,0,TRUE,TRUE,'Balcony sea view'),
(2,2,TRUE,2,TRUE,450,TRUE,12.5,TRUE,200,TRUE,TRUE,'Private garden with fruit trees'),
(3,3,TRUE,10,FALSE,0,FALSE,0,FALSE,0,TRUE,TRUE,'Basement parking for multiple vehicles'),
(4,4,FALSE,0,FALSE,0,FALSE,0,FALSE,0,TRUE,FALSE,'No parking - street parking available'),
(5,5,TRUE,3,TRUE,800,TRUE,20.0,TRUE,400,TRUE,TRUE,'Pool heated, lifeguard on request'),
(6,6,TRUE,4,FALSE,0,TRUE,10.0,TRUE,150,TRUE,TRUE,'Rooftop terrace with gym equipment'),
(7,7,TRUE,6,FALSE,0,FALSE,0,FALSE,0,TRUE,FALSE,'Industrial plot - basic security only'),
(8,8,TRUE,2,TRUE,300,FALSE,0,TRUE,100,TRUE,TRUE,'Garden maintained monthly'),
(9,9,TRUE,1,FALSE,0,FALSE,0,FALSE,0,TRUE,TRUE,'Parking for one car'),
(10,10,TRUE,5,TRUE,200,FALSE,0,FALSE,0,TRUE,FALSE,'Community park nearby'),
(11,11,TRUE,20,FALSE,0,FALSE,0,TRUE,600,TRUE,TRUE,'Full building security and concierge'),
(12,12,TRUE,2,TRUE,350,TRUE,8.0,TRUE,180,TRUE,TRUE,'Family-friendly amenities'),
(13,13,TRUE,1,FALSE,0,FALSE,0,TRUE,120,TRUE,TRUE,'Lake-facing units have WiFi hotspot'),
(14,14,FALSE,0,FALSE,0,FALSE,0,FALSE,0,TRUE,FALSE,'Small apartment block, no gym'),
(15,15,TRUE,3,TRUE,1000,TRUE,25.0,TRUE,500,TRUE,TRUE,'Large estate with caretakers'),
(16,16,TRUE,0,TRUE,1500,FALSE,0,FALSE,0,TRUE,FALSE,'Plot with landscaping potential'),
(17,17,TRUE,10,FALSE,0,FALSE,0,TRUE,300,TRUE,TRUE,'Commercial space with HVAC & security'),
(18,18,TRUE,1,FALSE,0,FALSE,0,FALSE,0,TRUE,TRUE,'Basic amenities included'),
(19,19,TRUE,2,TRUE,180,FALSE,0,TRUE,90,TRUE,TRUE,'Heritage property with maintained garden'),
(20,20,TRUE,8,TRUE,700,FALSE,0,TRUE,200,TRUE,TRUE,'Beach access nearby');

-- SELECT example
SELECT * FROM Amenities WHERE has_pool = TRUE;

-- UPDATE example
UPDATE Amenities SET has_wifi = TRUE WHERE amenity_id IN (1,3,5);

-- DELETE example
DELETE FROM Amenities WHERE amenity_id = 16;

-- TRUNCATE and DROP examples
TRUNCATE TABLE Amenities;
DROP TABLE IF EXISTS Amenities;


-- ============================
-- 7) PropertyFeatures table
-- ============================
DROP TABLE IF EXISTS PropertyFeatures;
CREATE TABLE PropertyFeatures (
  feature_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT NOT NULL,
  furnishing ENUM('Furnished','Semi-Furnished','Unfurnished') DEFAULT 'Unfurnished',
  floor_no INT DEFAULT 0 CHECK(floor_no >= 0),
  total_floors INT DEFAULT 1 CHECK(total_floors >= 1),
  facing_direction ENUM('East','West','North','South','North-East','South-West') DEFAULT 'East',
  flooring_type VARCHAR(50) DEFAULT 'Vitrified',
  power_backup BOOLEAN DEFAULT FALSE,
  water_supply ENUM('Municipal','Borewell','Tank','Both') DEFAULT 'Municipal',
  balcony_count INT DEFAULT 0 CHECK(balcony_count >= 0),
  pet_friendly BOOLEAN DEFAULT TRUE,
  built_year YEAR,
  additional_features VARCHAR(255),
  CONSTRAINT fk_features_property FOREIGN KEY (property_id) 
    REFERENCES Properties(property_id) 
    ON DELETE CASCADE 
    ON UPDATE CASCADE
);

INSERT INTO PropertyFeatures 
(property_id, furnishing, floor_no, total_floors, facing_direction, flooring_type, power_backup, water_supply, balcony_count, pet_friendly, built_year, additional_features)
VALUES
(1,  'Furnished',      4, 10, 'West',       'Hardwood',  TRUE,  'Municipal', 2, TRUE, 2018, 'Sea-view balconies, modular kitchen'),
(2,  'Semi-Furnished', 1,  2, 'North',      'Marble',    TRUE,  'Both',      3, TRUE, 2015, 'Solar water heater, plantation area'),
(3,  'Unfurnished',    5, 10, 'South',      'Tiles',     TRUE,  'Municipal', 0, FALSE,2012, 'Raised flooring, dedicated power backup'),
(4,  'Unfurnished',    2,  8, 'East',       'Vitrified', FALSE, 'Municipal', 1, TRUE, 2020, 'Compact layout for students'),
(5,  'Furnished',      1,  2, 'North-East', 'Marble',    TRUE,  'Borewell',  4, TRUE, 2019, 'Private pool, outdoor kitchen'),
(6,  'Furnished',     25, 25, 'North',      'Hardwood',  TRUE,  'Municipal', 2, TRUE, 2021, 'Penthouse with terrace garden'),
(7,  'Unfurnished',    0,  1, 'South',      'Soil',      FALSE, 'Tank',      0, TRUE, 2010, 'Bare plot, ready to build'),
(8,  'Semi-Furnished', 1,  1, 'East',       'Tiles',     TRUE,  'Municipal', 1, TRUE, 2016, 'Traditional architecture features'),
(9,  'Furnished',      6, 12, 'West',       'Laminate',  TRUE,  'Municipal', 2, TRUE, 2017, 'Open kitchen, sunlight exposure'),
(10, 'Unfurnished',    0,  1, 'South',      'Soil',      FALSE, 'Tank',      0, TRUE, 2014, 'Plot in gated community'),
(11, 'Unfurnished',    1,  5, 'East',       'Tiles',     TRUE,  'Municipal', 0, FALSE,2011, 'Commercial grade flooring'),
(12, 'Semi-Furnished', 1,  2, 'West',       'Vitrified', TRUE,  'Municipal', 2, TRUE, 2013, 'Landscaped backyard'),
(13, 'Furnished',      8, 12, 'North',      'Marble',    TRUE,  'Municipal', 3, TRUE, 2020, 'Lake-facing balcony'),
(14, 'Semi-Furnished', 3,  6, 'East',       'Tiles',     FALSE, 'Municipal', 1, TRUE, 2018, 'Near marketplace'),
(15, 'Furnished',      1,  2, 'South',      'Hardwood',  TRUE,  'Borewell',  2, TRUE, 2014, 'Servant room, storage'),
(16, 'Unfurnished',    0,  1, 'North',      'Soil',      FALSE, 'Tank',      0, TRUE, 2022, 'Plot with retaining walls'),
(17, 'Unfurnished',    2,  6, 'West',       'Tiles',     TRUE,  'Municipal', 1, FALSE,2010, 'Multiple loading docks'),
(18, 'Semi-Furnished', 5, 10, 'South-West', 'Laminate',  TRUE,  'Municipal', 2, TRUE, 2019, 'Open-plan living'),
(19, 'Semi-Furnished', 1,  1, 'North-East', 'Marble',    TRUE,  'Municipal', 2, TRUE, 2005, 'Heritage finishing, restored'),
(20, 'Unfurnished',    0,  1, 'East',       'Soil',      FALSE, 'Tank',      0, TRUE, 2024, 'Beachfront plot');


-- SELECT sample
SELECT property_id, furnishing, floor_no, total_floors FROM PropertyFeatures WHERE built_year >= 2018;

-- UPDATE example
UPDATE PropertyFeatures SET power_backup = TRUE WHERE property_id IN (4,14);

-- DELETE example
DELETE FROM PropertyFeatures WHERE feature_id = 16;

-- TRUNCATE and DROP examples
TRUNCATE TABLE PropertyFeatures;
DROP TABLE IF EXISTS PropertyFeatures;


-- ============================
-- 8) Transactions table
-- ============================
DROP TABLE IF EXISTS Transactions;
CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  transaction_code VARCHAR(30) NOT NULL UNIQUE,
  property_id INT NOT NULL,
  customer_id INT NOT NULL,
  agent_id INT,
  amount DECIMAL(15,2) NOT NULL CHECK(amount >= 0),
  transaction_type ENUM('Sale','Rent') NOT NULL,
  transaction_date DATE NOT NULL DEFAULT (CURRENT_DATE),
  payment_mode ENUM('Cash','Bank Transfer','UPI','Card') NOT NULL,
  status ENUM('Pending','Completed','Cancelled','Refunded') DEFAULT 'Pending',
  remarks VARCHAR(255),
  created_by INT, -- user who created transaction
  created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_transactions_property FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_transactions_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_transactions_agent FOREIGN KEY (agent_id) REFERENCES Agents(agent_id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT fk_transactions_creator FOREIGN KEY (created_by) REFERENCES Users(user_id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO Transactions (transaction_id, transaction_code, property_id, customer_id, agent_id, amount, transaction_type, transaction_date, payment_mode, status, remarks, created_by)
VALUES
(1,'TXN-MH-0001',1,15,1,12000000,'Sale','2025-02-15','Bank Transfer','Completed','Finalized sale after negotiation',1),
(2,'TXN-PU-0002',2,17,2,21000000,'Sale','2025-03-10','UPI','Completed','Garden maintenance included',2),
(3,'TXN-DL-0003',3,7,4,35000000,'Sale','2025-04-20','Bank Transfer','Pending','Due diligence in progress',1),
(4,'TXN-AH-0004',4,6,6,4500000,'Sale','2025-04-30','Card','Completed','Student buyer',5),
(5,'TXN-KC-0005',5,12,3,60000000,'Sale','2025-05-15','Bank Transfer','Completed','Pool-servicing contract included',8),
(6,'TXN-GR-0006',6,13,11,27500000,'Sale','2025-06-01','Bank Transfer','Pending','Awaiting NOC',11),
(7,'TXN-SR-0007',7,11,12,18000000,'Sale','2025-06-18','UPI','Completed','Industrial use',5),
(8,'TXN-JP-0008',8,4,5,17500000,'Sale','2025-06-25','Bank Transfer','Completed','Heritage documentation attached',15),
(9,'TXN-IN-0009',9,17,7,8000000,'Sale','2025-07-05','Cash','Completed','Immediate possession',2),
(10,'TXN-NO-0010',10,20,6,9500000,'Sale','2025-07-20','Bank Transfer','Completed','Gated community charges included',18),
(11,'TXN-NP-0011',11,2,1,40000000,'Sale','2025-08-01','Bank Transfer','Pending','Corporate buyer',1),
(12,'TXN-LW-0012',12,5,4,15000000,'Sale','2025-08-15','UPI','Completed','Garden has irrigation system',11),
(13,'TXN-HY-0013',13,16,8,13000000,'Sale','2025-09-01','Card','Completed','Lake view premium paid',22),
(14,'TXN-BP-0014',14,14,15,6000000,'Sale','2025-09-10','Bank Transfer','Completed','Close to market',15),
(15,'TXN-TV-0015',15,19,3,30000000,'Sale','2025-09-25','Bank Transfer','Pending','Title verification underway',8),
(16,'TXN-UD-0016',16,19,9,12500000,'Sale','2025-10-05','UPI','Completed','Hilltop view transfer',23),
(17,'TXN-KO-0017',17,10,1,42000000,'Sale','2025-10-12','Bank Transfer','Completed','Commercial lease agreement ready',1),
(18,'TXN-CH-0018',18,6,15,11000000,'Sale','2025-10-18','Card','Pending','Buyer negotiating furnishings',5),
(19,'TXN-AS-0019',19,9,5,21000000,'Sale','2025-10-22','Bank Transfer','Pending','Heritage paperwork being checked',15),
(20,'TXN-PN-0020',20,12,11,30000000,'Sale','2025-10-25','Bank Transfer','Pending','Beachfront transfer process',8);

-- SELECT example: recent pending transactions
SELECT * FROM Transactions WHERE status='Pending' ORDER BY transaction_date DESC LIMIT 10;

-- UPDATE example: mark a transaction as completed
UPDATE Transactions SET status='Completed', remarks=CONCAT(IFNULL(remarks,''),' | Payment cleared') WHERE transaction_id = 3;

-- DELETE example
DELETE FROM Transactions WHERE transaction_id = 20;

-- TRUNCATE and DROP examples
TRUNCATE TABLE Transactions;
DROP TABLE IF EXISTS Transactions;


-- ============================
-- 9) Appointments table
-- ============================
DROP TABLE IF EXISTS Appointments;
CREATE TABLE Appointments (
  appointment_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT NOT NULL,
  customer_id INT NOT NULL,
  agent_id INT,
  appointment_datetime DATETIME NOT NULL,
  duration_minutes INT DEFAULT 30 CHECK(duration_minutes > 0),
  status ENUM('Scheduled','Completed','Cancelled','No-Show') DEFAULT 'Scheduled',
  created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
  notes TEXT,
  rating_given_by_customer DECIMAL(2,1) CHECK(rating_given_by_customer BETWEEN 0 AND 5),
  feedback_by_customer VARCHAR(255),
  created_by INT,
  reminder_sent BOOLEAN DEFAULT FALSE,
  CONSTRAINT fk_appointments_property FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_appointments_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_appointments_agent FOREIGN KEY (agent_id) REFERENCES Agents(agent_id) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT fk_appointments_creator FOREIGN KEY (created_by) REFERENCES Users(user_id) ON DELETE SET NULL ON UPDATE CASCADE
);

INSERT INTO Appointments (appointment_id, property_id, customer_id, agent_id, appointment_datetime, duration_minutes, status, notes, rating_given_by_customer, feedback_by_customer, created_by, reminder_sent)
VALUES
(1,1,15,1,'2025-02-10 11:00:00',45,'Completed','Customer liked terrace','4.5','Spacious and bright',1,TRUE),
(2,2,17,2,'2025-03-05 15:30:00',60,'Completed','Discussed landscaping','5.0','Excellent property',2,TRUE),
(3,3,7,4,'2025-04-18 10:00:00',30,'Cancelled','Inspection postponed',NULL,NULL,1,FALSE),
(4,4,6,6,'2025-04-25 17:00:00',30,'Completed','Student-friendly layout','4.0','Good for students',5,TRUE),
(5,5,12,3,'2025-05-10 09:00:00',120,'Completed','Pool timings discussed','4.8','Loved the pool',8,TRUE),
(6,6,13,11,'2025-05-28 13:00:00',60,'Completed','Penthouse viewing','4.7','Great view',11,TRUE),
(7,7,11,12,'2025-06-10 08:00:00',30,'Completed','Plot boundaries checked',NULL,'Satisfactory',5,TRUE),
(8,8,4,5,'2025-06-20 16:00:00',45,'Completed','Heritage features tour','4.2','Beautiful craftsmanship',15,TRUE),
(9,9,17,7,'2025-07-01 12:00:00',30,'Completed','Immediate move-in discussed','4.3','Convenient locality',2,TRUE),
(10,10,20,6,'2025-07-14 11:00:00',60,'Completed','Gated community rules explained','3.8','Good security',18,TRUE),
(11,11,2,1,'2025-07-28 10:30:00',90,'Completed','Corporate inspection','4.0','Fits our requirements',1,TRUE),
(12,12,5,4,'2025-08-05 15:00:00',45,'Completed','Garden irrigation demo','4.6','Well-maintained',11,TRUE),
(13,13,16,8,'2025-08-18 09:00:00',60,'Completed','Lake-facing walk-through','4.9','Amazing sunrise view',22,TRUE),
(14,14,14,15,'2025-09-01 10:00:00',30,'Completed','Quick visit','3.5','Small but neat',15,TRUE),
(15,15,19,3,'2025-09-20 16:30:00',90,'Completed','Discussing renovation quotes',NULL,NULL,8,FALSE),
(16,16,19,9,'2025-10-06 07:00:00',60,'Scheduled','Plot inspection at sunrise',NULL,NULL,23,FALSE),
(17,17,10,1,'2025-10-13 14:00:00',120,'Scheduled','Commercial lease negotiation',NULL,NULL,1,TRUE),
(18,18,6,15,'2025-10-19 10:30:00',45,'Scheduled','Check furnishing options',NULL,NULL,5,TRUE),
(19,19,9,5,'2025-10-23 11:15:00',60,'Scheduled','Heritage clause discussed',NULL,NULL,15,FALSE),
(20,20,12,11,'2025-10-26 09:30:00',90,'Scheduled','Beachfront usage review',NULL,NULL,8,FALSE);

-- SELECT upcoming appointments
SELECT * FROM Appointments WHERE appointment_datetime > '2025-10-01' ORDER BY appointment_datetime;

-- UPDATE appointment status example
UPDATE Appointments SET status='Completed', rating_given_by_customer=4.6, feedback_by_customer='Seller cooperative' WHERE appointment_id = 15;

-- DELETE an appointment
DELETE FROM Appointments WHERE appointment_id = 3;

-- TRUNCATE and DROP examples
TRUNCATE TABLE Appointments;
DROP TABLE IF EXISTS Appointments;


-- ============================
-- 10) PropertyReviews table
-- ============================
DROP TABLE IF EXISTS PropertyReviews;
CREATE TABLE PropertyReviews (
  review_id INT PRIMARY KEY AUTO_INCREMENT,
  property_id INT NOT NULL,
  customer_id INT NOT NULL,
  rating DECIMAL(2,1) NOT NULL CHECK(rating BETWEEN 0 AND 5),
  title VARCHAR(120),
  comment TEXT,
  review_date DATE DEFAULT (CURRENT_DATE),
  is_verified_buyer BOOLEAN DEFAULT FALSE,
  response_by_agent TEXT,
  visible BOOLEAN DEFAULT TRUE,
  helpful_count INT DEFAULT 0 CHECK(helpful_count >= 0),
  created_on DATETIME DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_reviews_property FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_reviews_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO PropertyReviews (review_id, property_id, customer_id, rating, title, comment, review_date, is_verified_buyer, response_by_agent, visible, helpful_count)
VALUES
(1,1,15,4.5,'Great location','Loved the balcony and daylight. Smooth process.', '2025-02-20',TRUE,'Thank you for the visit!',TRUE,12),
(2,2,17,5.0,'Perfect family home','Spacious garden and safe neighborhood. Highly recommended.','2025-03-12',TRUE,'Pleasure doing business with you.',TRUE,20),
(3,3,7,3.8,'Good for offices','Solid structure but parking is tight.','2025-04-22',FALSE,'We can arrange extra parking.',TRUE,4),
(4,4,6,4.0,'Affordable & Cozy','Close to college, perfect for a student.', '2025-04-30',TRUE,'Glad it suits your needs.',TRUE,7),
(5,5,12,4.9,'Luxury at its best','Pool and service staff were impressive.','2025-05-18',TRUE,'Welcome anytime!',TRUE,15),
(6,6,13,4.7,'Fantastic penthouse','Views are spectacular; tidy handover.','2025-06-03',TRUE,'Thanks for the kind words.',TRUE,18),
(7,7,11,3.5,'Good plot option','Needs some boundary fencing but location is good.','2025-06-15',FALSE,NULL,TRUE,2),
(8,8,4,4.2,'Heritage charm','Beautiful craftsmanship - a bit of restoration needed.','2025-06-22',FALSE,'Restoration partners available.',TRUE,6),
(9,9,17,4.3,'Convenient location','Quick commute to office.','2025-07-07',TRUE,NULL,TRUE,9),
(10,10,20,3.8,'Decent plot','Gated community but monthly fees extra.', '2025-07-21',FALSE,'Fees cover security and facilities.',TRUE,3),
(11,11,2,4.0,'Corporate fit-out friendly','Great floorplans for offices.','2025-08-03',TRUE,'We provide fit-out help.',TRUE,8),
(12,12,5,4.6,'Lovely lawns','Green and peaceful living area.','2025-08-10',TRUE,'We maintain the garden monthly.',TRUE,11),
(13,13,16,4.9,'Unbeatable view','Sunrise view from balcony is worth it.', '2025-08-20',TRUE,'Glad you enjoyed it.',TRUE,25),
(14,14,14,3.5,'Small but functional','Compact living near market.', '2025-09-02',FALSE,NULL,TRUE,1),
(15,15,19,4.1,'Spacious villa','Good for extended family gatherings.','2025-09-28',TRUE,'We can assist with renovation quotes.',TRUE,5),
(16,16,19,4.0,'Great hilltop','Peaceful and scenic. Needs access road improvements.','2025-10-07',FALSE,NULL,TRUE,2),
(17,17,10,4.2,'High footfall area','Excellent for retail, steady customers.','2025-10-13',TRUE,NULL,TRUE,7),
(18,18,6,3.9,'Good layout','Furnishings missing some items.','2025-10-20',FALSE,'Agent can propose furnishing options',TRUE,2),
(19,19,9,4.4,'Heritage experience','Unique home but paperwork took time.','2025-10-24',TRUE,NULL,TRUE,6),
(20,20,12,4.0,'Beachside spot','Excellent location for potential resort.','2025-10-26',FALSE,NULL,TRUE,3);

-- SELECT top-rated reviews
SELECT * FROM PropertyReviews WHERE rating >= 4.5 ORDER BY helpful_count DESC LIMIT 10;

-- UPDATE example: agent response to a review
UPDATE PropertyReviews SET response_by_agent = 'Thank you — we appreciate your feedback.' WHERE review_id = 1;

-- DELETE example
DELETE FROM PropertyReviews WHERE review_id = 14;

-- TRUNCATE and DROP examples
TRUNCATE TABLE PropertyReviews;
DROP TABLE IF EXISTS PropertyReviews;

-- ============================
-- 11️ PAYMENTS TABLE
-- ============================

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    unit_id INT NOT NULL,
    amount DECIMAL(15,2) NOT NULL CHECK (amount > 0),
    payment_date DATE NOT NULL,
    payment_method ENUM('Bank Transfer','Credit Card','Cash','Cheque') NOT NULL,
    reference_number VARCHAR(50) UNIQUE NOT NULL,
    status ENUM('Successful','Pending','Failed') DEFAULT 'Pending',
    remarks VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE
);

INSERT INTO Payments (user_id, unit_id, amount, payment_date, payment_method, reference_number, status, remarks) VALUES
(3,1,7500000,'2022-02-15','Bank Transfer','PAY2022001','Successful','Full payment done'),
(4,2,9500000,'2022-03-10','Cheque','PAY2022002','Successful','Final installment'),
(5,5,10200000,'2022-03-20','Bank Transfer','PAY2022003','Pending','Processing'),
(6,10,7400000,'2022-04-05','Credit Card','PAY2022004','Successful','Paid in full'),
(7,14,9400000,'2022-04-18','Cash','PAY2022005','Successful','Spot booking'),
(8,9,4500000,'2022-05-22','Bank Transfer','PAY2022006','Pending','Awaiting bank clearance'),
(9,7,7500000,'2022-06-01','Cheque','PAY2022007','Successful','Final payment'),
(10,15,8000000,'2022-06-15','Bank Transfer','PAY2022008','Successful','No remarks'),
(11,18,9200000,'2022-07-12','Credit Card','PAY2022009','Successful','Installment 2'),
(12,20,6000000,'2022-07-20','Bank Transfer','PAY2022010','Failed','Reference mismatch'),
(13,11,7000000,'2022-08-01','Cash','PAY2022011','Successful','Payment received'),
(14,13,8000000,'2022-08-18','Bank Transfer','PAY2022012','Pending','In process'),
(15,12,4000000,'2022-09-05','Cheque','PAY2022013','Successful','Final installment'),
(16,6,6900000,'2022-09-22','Bank Transfer','PAY2022014','Successful','Full'),
(17,8,4500000,'2022-10-11','Credit Card','PAY2022015','Successful','Spot booking');

SELECT * FROM Payments;
UPDATE Payments SET status='Successful' WHERE payment_id=5;
DELETE FROM Payments WHERE payment_id=15;
-- ============================
-- 12️ INVOICES TABLE
-- ============================
-- Linked to Payments (1:1 relationship)

CREATE TABLE Invoices (
    invoice_id INT AUTO_INCREMENT PRIMARY KEY,
    payment_id INT NOT NULL UNIQUE,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    invoice_date DATE NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    tax DECIMAL(10,2) DEFAULT 0.00,
    total_amount DECIMAL(15,2) NOT NULL,
    status ENUM('Generated','Sent','Cancelled') DEFAULT 'Generated',
    pdf_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (payment_id) REFERENCES Payments(payment_id) ON DELETE CASCADE
);

INSERT INTO Invoices (payment_id, invoice_number, invoice_date, amount, tax, total_amount, status, pdf_url) VALUES
(1,'INV2022001','2022-02-16',7500000,375000,7875000,'Generated','/invoices/INV2022001.pdf'),
(2,'INV2022002','2022-03-11',9500000,475000,9975000,'Sent','/invoices/INV2022002.pdf'),
(3,'INV2022003','2022-03-21',10200000,510000,10710000,'Generated','/invoices/INV2022003.pdf'),
(4,'INV2022004','2022-04-06',7400000,370000,7770000,'Sent','/invoices/INV2022004.pdf'),
(5,'INV2022005','2022-04-19',9400000,470000,9870000,'Generated','/invoices/INV2022005.pdf'),
(6,'INV2022006','2022-05-23',4500000,225000,4725000,'Sent','/invoices/INV2022006.pdf'),
(7,'INV2022007','2022-06-02',7500000,375000,7875000,'Sent','/invoices/INV2022007.pdf'),
(8,'INV2022008','2022-06-16',8000000,400000,8400000,'Generated','/invoices/INV2022008.pdf'),
(9,'INV2022009','2022-07-13',9200000,460000,9660000,'Sent','/invoices/INV2022009.pdf'),
(10,'INV2022010','2022-07-21',6000000,300000,6300000,'Cancelled','/invoices/INV2022010.pdf'),
(11,'INV2022011','2022-08-02',7000000,350000,7350000,'Generated','/invoices/INV2022011.pdf'),
(12,'INV2022012','2022-08-19',8000000,400000,8400000,'Sent','/invoices/INV2022012.pdf'),
(13,'INV2022013','2022-09-06',4000000,200000,4200000,'Sent','/invoices/INV2022013.pdf'),
(14,'INV2022014','2022-09-23',6900000,345000,7245000,'Generated','/invoices/INV2022014.pdf'),
(15,'INV2022015','2022-10-12',4500000,225000,4725000,'Sent','/invoices/INV2022015.pdf');

SELECT * FROM Invoices;
UPDATE Invoices SET status='Sent' WHERE invoice_id=1;
DELETE FROM Invoices WHERE invoice_id=15;

-- =======================
-- 13️ LOANS TABLE
-- =======================

CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    unit_id INT NOT NULL,
    bank_name VARCHAR(100) NOT NULL,
    loan_amount DECIMAL(15,2) NOT NULL,
    interest_rate DECIMAL(5,2) CHECK (interest_rate > 0),
    tenure_years INT CHECK (tenure_years > 0),
    emi_amount DECIMAL(15,2),
    start_date DATE,
    status ENUM('Approved','Pending','Rejected','Closed') DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
    );

INSERT INTO Loans (user_id, unit_id, bank_name, loan_amount, interest_rate, tenure_years, emi_amount, start_date, status) VALUES
(3,1,'HDFC Bank',4000000,7.50,15,37000,'2022-03-01','Approved'),
(4,2,'SBI',6000000,7.10,20,47000,'2022-04-01','Approved'),
(5,5,'ICICI Bank',8000000,7.25,15,73000,'2022-04-15','Pending'),
(6,10,'Axis Bank',4000000,7.00,10,46500,'2022-05-01','Approved'),
(7,14,'SBI',5000000,7.40,15,46000,'2022-05-10','Approved'),
(8,9,'HDFC Bank',3000000,7.20,10,35000,'2022-06-01','Pending'),
(9,7,'ICICI Bank',5000000,7.50,15,47000,'2022-06-15','Approved'),
(10,15,'HDFC Bank',3500000,7.30,15,33500,'2022-07-01','Approved'),
(11,18,'SBI',4500000,7.10,10,51000,'2022-07-10','Rejected'),
(12,20,'Axis Bank',2500000,7.25,10,29000,'2022-08-01','Approved'),
(13,11,'ICICI Bank',3700000,7.35,15,34000,'2022-08-15','Approved'),
(14,13,'HDFC Bank',4200000,7.50,20,40500,'2022-09-01','Pending'),
(15,12,'SBI',2000000,7.10,10,23000,'2022-09-10','Closed'),
(16,6,'Axis Bank',3100000,7.25,15,28000,'2022-09-20','Approved'),
(17,8,'ICICI Bank',2500000,7.40,10,26500,'2022-10-01','Pending');

SELECT * FROM Loans;
UPDATE Loans SET status='Approved' WHERE loan_id=5;
DELETE FROM Loans WHERE loan_id=15;

-- =========================
-- 14️ INSTALLMENTS TABLE
-- =========================
-- Linked to Loans (1:N)

CREATE TABLE Installments (
    installment_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_id INT NOT NULL,
    installment_number INT NOT NULL,
    due_date DATE NOT NULL,
    amount DECIMAL(15,2) NOT NULL,
    paid_date DATE,
    status ENUM('Paid','Pending','Overdue') DEFAULT 'Pending',
    remarks VARCHAR(255),
    FOREIGN KEY (loan_id) REFERENCES Loans(loan_id) ON DELETE CASCADE
);

INSERT INTO Installments (loan_id, installment_number, due_date, amount, paid_date, status, remarks) VALUES
(1,1,'2022-04-01',37000,'2022-04-01','Paid','On time'),
(1,2,'2022-05-01',37000,'2022-05-02','Paid','1 day delay'),
(1,3,'2022-06-01',37000,NULL,'Pending',''),
(2,1,'2022-05-01',47000,'2022-05-01','Paid',''),
(2,2,'2022-06-01',47000,'2022-06-03','Paid','Late'),
(3,1,'2022-05-15',73000,NULL,'Pending','First installment'),
(4,1,'2022-06-01',46500,'2022-06-01','Paid',''),
(5,1,'2022-06-10',46000,'2022-06-12','Paid',''),
(5,2,'2022-07-10',46000,NULL,'Pending',''),
(6,1,'2022-07-01',35000,NULL,'Pending',''),
(7,1,'2022-07-15',47000,'2022-07-15','Paid',''),
(7,2,'2022-08-15',47000,NULL,'Pending',''),
(8,1,'2022-08-01',33500,'2022-08-02','Paid',''),
(9,1,'2022-08-10',51000,NULL,'Overdue','Missed'),
(10,1,'2022-09-01',29000,'2022-09-01','Paid',''),
(11,1,'2022-09-15',34000,NULL,'Pending',''),
(12,1,'2022-10-01',40500,NULL,'Pending',''),
(13,1,'2022-10-10',23000,'2022-10-11','Paid',''),
(14,1,'2022-10-20',28000,NULL,'Pending',''),
(15,1,'2022-10-25',26500,NULL,'Pending','');

SELECT * FROM Installments;
UPDATE Installments SET status='Paid' WHERE installment_id=3;
DELETE FROM Installments WHERE installment_id=20;

-- ======================
-- 15️ COMMISSIONS TABLE
-- ======================

-- Linked to Agents (Users.role='Agent') and Payments

CREATE TABLE Commissions (
    commission_id INT AUTO_INCREMENT PRIMARY KEY,
    agent_id INT NOT NULL,
    payment_id INT NOT NULL,
    commission_percentage DECIMAL(5,2) CHECK (commission_percentage BETWEEN 0 AND 100),
    commission_amount DECIMAL(15,2) NOT NULL,
    status ENUM('Pending','Paid','Cancelled') DEFAULT 'Pending',
    paid_date DATE,
    remarks VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (agent_id) REFERENCES Users(user_id),
    FOREIGN KEY (payment_id) REFERENCES Payments(payment_id)
);

INSERT INTO Commissions (agent_id, payment_id, commission_percentage, commission_amount, status, paid_date, remarks) VALUES
(2,1,2.00,150000,'Paid','2022-03-01','Agent sale'),
(5,2,2.50,237500,'Paid','2022-04-01','Excellent conversion'),
(8,3,2.00,204000,'Pending',NULL,'Booking done'),
(11,4,2.25,166500,'Paid','2022-04-10',''),
(15,5,2.00,188000,'Paid','2022-05-01',''),
(18,6,2.50,112500,'Pending',NULL,'Commercial unit'),
(11,7,2.00,150000,'Paid','2022-06-10',''),
(5,8,2.00,160000,'Pending',NULL,''),
(2,9,2.25,207000,'Paid','2022-07-15',''),
(8,10,2.00,120000,'Cancelled',NULL,'Failed payment'),
(11,11,2.00,140000,'Paid','2022-08-10',''),
(15,12,2.25,180000,'Paid','2022-08-25',''),
(18,13,2.00,80000,'Pending',NULL,'Small flat'),
(5,14,2.50,172500,'Pending',NULL,''),
(2,15,2.00,90000,'Paid','2022-10-15','Finalized');

SELECT * FROM Commissions;
UPDATE Commissions SET status='Paid' WHERE commission_id=3;
DELETE FROM Commissions WHERE commission_id=15;


-- ============================
-- 16. MAINTENANCEREQUESTS TABLE
-- ============================

CREATE TABLE MaintenanceRequests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    client_id INT NOT NULL,
    request_date DATE NOT NULL,
    issue_type VARCHAR(50) NOT NULL,
    description TEXT,
    status ENUM('Pending','In Progress','Completed','Cancelled') DEFAULT 'Pending',
    assigned_to INT,
    completion_date DATE,
    cost DECIMAL(12,2) DEFAULT 0,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id) ON DELETE CASCADE,
    FOREIGN KEY (assigned_to) REFERENCES Agents(agent_id) ON DELETE SET NULL
);

INSERT INTO MaintenanceRequests (property_id, client_id, request_date, issue_type, description, status, assigned_to, completion_date, cost) VALUES
(1,1,'2024-02-01','Plumbing','Leakage in bathroom','Completed',1,'2024-02-03',1500),
(2,2,'2024-02-15','Electrical','Power outage in living room','In Progress',2,NULL,0),
(3,3,'2024-03-05','Painting','Wall paint peeling off','Pending',3,NULL,0),
(4,4,'2024-03-12','AC','AC not cooling properly','Completed',4,'2024-03-14',3000),
(5,5,'2024-04-01','Plumbing','Clogged kitchen sink','Completed',5,'2024-04-02',1200),
(6,6,'2024-04-15','Carpentry','Wardrobe door broken','Pending',6,NULL,0),
(7,7,'2024-05-01','Painting','Living room wall paint','In Progress',7,NULL,0),
(8,8,'2024-05-10','Electrical','Fuse blown in kitchen','Completed',8,'2024-05-11',800),
(9,9,'2024-05-20','Plumbing','Bathroom faucet leak','Pending',9,NULL,0),
(10,10,'2024-06-01','AC','Service AC','In Progress',10,NULL,0),
(11,11,'2024-06-10','Plumbing','Pipe replacement','Completed',11,'2024-06-12',5000),
(12,12,'2024-06-15','Electrical','Switchboard repair','Pending',12,NULL,0),
(13,13,'2024-07-01','Carpentry','Kitchen cabinets adjustment','Completed',13,'2024-07-03',2000),
(14,14,'2024-07-12','Painting','Bedroom repaint','Pending',14,NULL,0),
(15,15,'2024-07-20','Plumbing','Toilet flush not working','Completed',15,'2024-07-22',1500),
(16,16,'2024-08-01','AC','AC filter cleaning','Completed',16,'2024-08-02',500),
(17,17,'2024-08-10','Electrical','Light fixture replacement','In Progress',17,NULL,0),
(18,18,'2024-08-20','Plumbing','Water leakage in balcony','Pending',18,NULL,0),
(19,19,'2024-09-01','Carpentry','Door lock repair','Completed',19,'2024-09-03',1000),
(20,20,'2024-09-10','Painting','Exterior wall painting','In Progress',20,NULL,0);

SELECT * FROM MaintenanceRequests;
UPDATE MaintenanceRequests SET status='Completed' WHERE request_id=2;
DELETE FROM MaintenanceRequests WHERE request_id=20;
TRUNCATE TABLE MaintenanceRequests;
DROP TABLE MaintenanceRequests;


-- ============================
-- 17. TENANCIES TABLE
-- ============================

CREATE TABLE Tenancies (
    tenancy_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    rent_amount DECIMAL(12,2) NOT NULL,
    security_deposit DECIMAL(12,2),
    payment_frequency ENUM('Monthly','Quarterly','Yearly') DEFAULT 'Monthly',
    status ENUM('Active','Expired','Terminated') DEFAULT 'Active',
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

INSERT INTO Tenancies (client_id, property_id, start_date, end_date, rent_amount, security_deposit, payment_frequency, status, notes) VALUES
(3,3,'2024-01-01','2025-01-01',25000,50000,'Monthly','Active','First rental agreement'),
(4,4,'2024-02-01','2025-02-01',40000,80000,'Monthly','Active','Villa rental'),
(5,5,'2024-03-01','2024-09-01',15000,30000,'Monthly','Expired','Short-term lease'),
(6,6,'2024-04-01','2025-04-01',35000,70000,'Monthly','Active','Apartment rental'),
(7,7,'2024-05-01','2025-05-01',30000,60000,'Monthly','Active','Includes parking'),
(8,8,'2024-06-01','2025-06-01',28000,56000,'Monthly','Active','Tenant prefers ground floor'),
(9,9,'2024-07-01','2025-07-01',22000,44000,'Monthly','Active',''),
(10,10,'2024-08-01','2025-08-01',32000,64000,'Monthly','Active','Includes maintenance'),
(11,11,'2024-09-01','2025-09-01',18000,36000,'Monthly','Active',''),
(12,12,'2024-10-01','2025-10-01',27000,54000,'Monthly','Active',''),
(13,13,'2024-11-01','2025-11-01',25000,50000,'Monthly','Active',''),
(14,14,'2024-12-01','2025-12-01',30000,60000,'Monthly','Active',''),
(15,15,'2025-01-01','2026-01-01',35000,70000,'Monthly','Active',''),
(16,16,'2025-02-01','2026-02-01',28000,56000,'Monthly','Active',''),
(17,17,'2025-03-01','2026-03-01',32000,64000,'Monthly','Active',''),
(18,18,'2025-04-01','2026-04-01',30000,60000,'Monthly','Active',''),
(19,19,'2025-05-01','2026-05-01',22000,44000,'Monthly','Active',''),
(20,20,'2025-06-01','2026-06-01',35000,70000,'Monthly','Active',''),
(1,1,'2025-07-01','2026-07-01',40000,80000,'Monthly','Active','Premium apartment'),
(2,2,'2025-08-01','2026-08-01',45000,90000,'Monthly','Active','Luxury villa');

SELECT * FROM Tenancies;
UPDATE Tenancies SET status='Terminated' WHERE tenancy_id=3;
DELETE FROM Tenancies WHERE tenancy_id=20;

-- ============================
-- 18. PROPERTYDOCUMENTS TABLE
-- ============================

CREATE TABLE PropertyDocuments (
    document_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    document_type VARCHAR(50) NOT NULL,
    document_name VARCHAR(100) NOT NULL,
    file_path VARCHAR(255),
    uploaded_date DATE,
    expiry_date DATE,
    status ENUM('Valid','Expired','Pending') DEFAULT 'Pending',
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

INSERT INTO PropertyDocuments (property_id, document_type, document_name, file_path, uploaded_date, expiry_date, status, notes) VALUES
(1,'Sale Deed','SaleDeed_Apt1.pdf','/docs/saledeed1.pdf','2024-01-01','2034-01-01','Valid',''),
(2,'Title','TitleDoc_Villa1.pdf','/docs/titlevilla1.pdf','2024-01-05','2034-01-05','Valid',''),
(3,'NOC','NOC_Apt3.pdf','/docs/nocapt3.pdf','2024-02-01','2024-08-01','Pending',''),
(4,'Occupancy Certificate','OC_Villa2.pdf','/docs/ocvilla2.pdf','2024-02-10','2034-02-10','Valid',''),
(5,'Tax Receipt','Tax_Apt5.pdf','/docs/taxapt5.pdf','2024-03-01','2025-03-01','Valid',''),
(6,'Sale Deed','SaleDeed_Apt6.pdf','/docs/saledeed6.pdf','2024-03-10','2034-03-10','Valid',''),
(7,'Title','TitleDoc_Com7.pdf','/docs/titlecom7.pdf','2024-04-01','2034-04-01','Valid',''),
(8,'NOC','NOC_Apt8.pdf','/docs/nocapt8.pdf','2024-04-10','2024-10-10','Pending',''),
(9,'Occupancy Certificate','OC_Apt9.pdf','/docs/ocapt9.pdf','2024-05-01','2034-05-01','Valid',''),
(10,'Tax Receipt','Tax_Villa3.pdf','/docs/taxvilla3.pdf','2024-05-10','2025-05-10','Valid',''),
(11,'Sale Deed','SaleDeed_Com11.pdf','/docs/saledeedcom11.pdf','2024-06-01','2034-06-01','Valid',''),
(12,'Title','TitleDoc_Apt12.pdf','/docs/titleapt12.pdf','2024-06-10','2034-06-10','Valid',''),
(13,'NOC','NOC_Apt13.pdf','/docs/nocapt13.pdf','2024-07-01','2024-12-01','Pending',''),
(14,'Occupancy Certificate','OC_Villa4.pdf','/docs/ocvilla4.pdf','2024-07-10','2034-07-10','Valid',''),
(15,'Tax Receipt','Tax_Apt15.pdf','/docs/taxapt15.pdf','2024-08-01','2025-08-01','Valid',''),
(16,'Sale Deed','SaleDeed_Apt16.pdf','/docs/saledeed16.pdf','2024-08-10','2034-08-10','Valid',''),
(17,'Title','TitleDoc_Villa5.pdf','/docs/titlevilla5.pdf','2024-09-01','2034-09-01','Valid',''),
(18,'NOC','NOC_Apt18.pdf','/docs/nocapt18.pdf','2024-09-10','2024-10-10','Pending',''),
(19,'Occupancy Certificate','OC_Com19.pdf','/docs/occom19.pdf','2024-10-01','2034-10-01','Valid',''),
(20,'Tax Receipt','Tax_Apt20.pdf','/docs/taxapt20.pdf','2024-10-10','2025-10-10','Valid','');

SELECT * FROM PropertyDocuments;
UPDATE PropertyDocuments SET status='Expired' WHERE document_id=3;
DELETE FROM PropertyDocuments WHERE document_id=20;


-- ============================
-- 19. FEEDBACK TABLE
-- ============================

CREATE TABLE Feedback (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    property_id INT NOT NULL,
    agent_id INT,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comments TEXT,
    feedback_date DATE,
    status ENUM('Reviewed','Pending') DEFAULT 'Pending',
    FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);

INSERT INTO Feedback (client_id, property_id, agent_id, rating, comments, feedback_date, status) VALUES
(1,1,1,5,'Very satisfied with apartment','2024-01-21','Reviewed'),
(2,2,2,4,'Villa was good, minor issues','2024-02-28','Reviewed'),
(3,3,3,3,'Average experience','2024-03-16','Reviewed'),
(4,4,4,5,'Excellent service','2024-03-31','Reviewed'),
(5,5,5,4,'Good support from agent','2024-04-06','Reviewed'),
(6,6,6,5,'Smooth transaction','2024-04-21','Reviewed'),
(7,7,7,2,'Not happy with the response','2024-05-11','Pending'),
(8,8,8,4,'Property as expected','2024-05-26','Reviewed'),
(9,9,9,5,'Highly recommend agent','2024-06-09','Reviewed'),
(10,10,10,3,'Average rental experience','2024-06-21','Pending'),
(11,11,11,4,'Good follow-up','2024-07-08','Reviewed'),
(12,12,12,5,'Very professional','2024-07-19','Reviewed'),
(13,13,13,4,'Satisfied','2024-08-02','Reviewed'),
(14,14,14,5,'Excellent apartment','2024-08-16','Reviewed'),
(15,15,15,4,'Transaction smooth','2024-09-02','Reviewed'),
(16,16,16,3,'Minor issues','2024-09-11','Pending'),
(17,17,17,5,'Agent very cooperative','2024-09-26','Reviewed'),
(18,18,18,4,'Property met expectations','2024-10-08','Reviewed'),
(19,19,19,5,'Highly satisfied','2024-10-19','Reviewed'),
(20,20,20,3,'Average service','2024-10-26','Pending');

SELECT * FROM Feedback;
UPDATE Feedback SET status='Reviewed' WHERE feedback_id=10;
DELETE FROM Feedback WHERE feedback_id=20;

-- ============================
-- 20. CONTRACTS TABLE
-- ============================

CREATE TABLE Contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    client_id INT NOT NULL,
    agent_id INT NOT NULL,
    contract_date DATE NOT NULL,
    contract_type ENUM('Sale','Rent','Lease') DEFAULT 'Sale',
    start_date DATE,
    end_date DATE,
    total_amount DECIMAL(15,2) CHECK(total_amount >= 0),
    payment_terms VARCHAR(255),
    status ENUM('Active','Completed','Terminated') DEFAULT 'Active',
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);

INSERT INTO Contracts (property_id, client_id, agent_id, contract_date, contract_type, start_date, end_date, total_amount, payment_terms, status, notes) VALUES
(1,1,1,'2024-01-20','Sale','2024-01-21','2025-01-21',5000000,'50% upfront, 50% on possession','Active','Premium apartment'),
(2,2,2,'2024-02-28','Sale','2024-03-01','2025-03-01',12000000,'40% upfront, rest in 3 installments','Active','Luxury villa'),
(3,3,3,'2024-03-15','Rent','2024-03-16','2025-03-15',300000,'Monthly','Active','Rental agreement for apartment'),
(4,4,4,'2024-03-31','Lease','2024-04-01','2025-03-31',800000,'Quarterly payments','Active','Commercial plot lease'),
(5,5,5,'2024-04-06','Sale','2024-04-07','2025-04-07',7000000,'50% upfront','Completed','Kolkata apartment deal'),
(6,6,6,'2024-04-21','Sale','2024-04-22','2025-04-22',10000000,'30% upfront, 70% later','Active','Commercial property purchase'),
(7,7,7,'2024-05-11','Rent','2024-05-12','2025-05-11',200000,'Monthly','Active','Apartment rental'),
(8,8,8,'2024-05-26','Lease','2024-05-27','2025-05-26',450000,'Quarterly','Active','Residential lease'),
(9,9,9,'2024-06-09','Sale','2024-06-10','2025-06-09',9000000,'50% upfront','Completed','Chennai villa purchase'),
(10,10,10,'2024-06-21','Sale','2024-06-22','2025-06-21',6000000,'40% upfront, rest in 2 installments','Active','Jaipur apartment sale'),
(11,11,11,'2024-07-08','Rent','2024-07-09','2025-07-08',250000,'Monthly','Active','Lucknow house rental'),
(12,12,12,'2024-07-19','Lease','2024-07-20','2025-07-19',300000,'Quarterly','Active','Bhopal apartment lease'),
(13,13,13,'2024-08-02','Sale','2024-08-03','2025-08-02',8000000,'50% upfront','Active','Pune villa'),
(14,14,14,'2024-08-16','Rent','2024-08-17','2025-08-16',180000,'Monthly','Active','Udaipur apartment rental'),
(15,15,15,'2024-09-02','Lease','2024-09-03','2025-09-02',500000,'Quarterly','Active','Noida commercial lease'),
(16,16,16,'2024-09-11','Sale','2024-09-12','2025-09-11',7500000,'40% upfront','Active','Indore house sale'),
(17,17,17,'2024-09-26','Rent','2024-09-27','2025-09-26',220000,'Monthly','Active','Surat apartment rental'),
(18,18,18,'2024-10-08','Lease','2024-10-09','2025-10-08',350000,'Quarterly','Active','Kochi apartment lease'),
(19,19,19,'2024-10-19','Sale','2024-10-20','2025-10-19',10000000,'50% upfront','Active','Delhi apartment sale'),
(20,20,20,'2024-10-26','Sale','2024-10-27','2025-10-26',15000000,'30% upfront, 70% later','Active','Gurugram commercial sale');

SELECT * FROM Contracts;
UPDATE Contracts SET status='Completed' WHERE contract_id=4;
DELETE FROM Contracts WHERE contract_id=20;
TRUNCATE TABLE Contracts;
DROP TABLE Contracts;


-- ============================
-- 21. INSPECTIONS TABLE
-- ============================

CREATE TABLE Inspections (
    inspection_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    agent_id INT NOT NULL,
    inspection_date DATE NOT NULL,
    inspector_name VARCHAR(100),
    report TEXT,
    status ENUM('Scheduled','Completed','Cancelled') DEFAULT 'Scheduled',
    comments TEXT,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);

INSERT INTO Inspections (property_id, agent_id, inspection_date, inspector_name, report, status, comments, rating) VALUES
(1,1,'2024-01-18','John Doe','Initial inspection done','Completed','Good condition',5),
(2,2,'2024-02-25','Alice Smith','Minor repairs needed','Completed','Requires minor fixes',4),
(3,3,'2024-03-12','Mike Johnson','Rented unit inspection','Completed','Satisfactory',4),
(4,4,'2024-03-29','Jane Doe','Lease property inspection','Completed','Well maintained',5),
(5,5,'2024-04-04','Peter Parker','Sale inspection','Completed','Excellent',5),
(6,6,'2024-04-18','Bruce Wayne','Commercial property inspection','Completed','Good',4),
(7,7,'2024-05-09','Clark Kent','Rental inspection','Completed','Average',3),
(8,8,'2024-05-24','Diana Prince','Lease inspection','Completed','Satisfactory',4),
(9,9,'2024-06-07','Barry Allen','Villa inspection','Completed','Excellent',5),
(10,10,'2024-06-20','Tony Stark','Apartment inspection','Completed','Good',4),
(11,11,'2024-07-06','Natasha Romanoff','Rental unit','Completed','Good',4),
(12,12,'2024-07-18','Steve Rogers','Lease inspection','Completed','Average',3),
(13,13,'2024-08-01','Bruce Banner','Villa inspection','Completed','Excellent',5),
(14,14,'2024-08-14','Peter Parker','Apartment inspection','Completed','Good',4),
(15,15,'2024-09-01','Clark Kent','Commercial unit','Completed','Satisfactory',4),
(16,16,'2024-09-09','Diana Prince','House inspection','Completed','Good',4),
(17,17,'2024-09-25','Tony Stark','Apartment inspection','Completed','Very good',5),
(18,18,'2024-10-06','Natasha Romanoff','Rental inspection','Completed','Satisfactory',4),
(19,19,'2024-10-18','Steve Rogers','Apartment inspection','Completed','Excellent',5),
(20,20,'2024-10-25','Bruce Banner','Commercial inspection','Scheduled','Pending',NULL);

SELECT * FROM Inspections;
UPDATE Inspections SET status='Cancelled' WHERE inspection_id=20;
DELETE FROM Inspections WHERE inspection_id=10;


-- ============================
-- 22. UTILITIES TABLE
-- ============================

CREATE TABLE Utilities (
    utility_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    utility_name VARCHAR(50) NOT NULL,
    provider VARCHAR(100),
    account_number VARCHAR(50) UNIQUE,
    status ENUM('Active','Inactive') DEFAULT 'Active',
    start_date DATE,
    end_date DATE,
    monthly_cost DECIMAL(10,2) CHECK(monthly_cost>=0),
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

INSERT INTO Utilities (property_id, utility_name, provider, account_number, status, start_date, end_date, monthly_cost, notes) VALUES
(1,'Electricity','Tata Power','ELEC001','Active','2024-01-01',NULL,3500,'Billed monthly'),
(2,'Water','Mumbai Water Board','WTR002','Active','2024-01-05',NULL,800,'Billed monthly'),
(3,'Gas','Indane','GAS003','Active','2024-02-01',NULL,600,'Cylinder supply'),
(4,'Internet','Jio Fiber','INT004','Active','2024-02-10',NULL,1200,'Fiber connection'),
(5,'Electricity','Reliance','ELEC005','Active','2024-03-01',NULL,4000,'Commercial property'),
(6,'Water','Pune Water Board','WTR006','Active','2024-03-10',NULL,1000,'Monthly billing'),
(7,'Gas','Bharat Gas','GAS007','Active','2024-04-01',NULL,700,'Cylinder gas'),
(8,'Internet','Airtel Fiber','INT008','Active','2024-04-10',NULL,1500,'High-speed internet'),
(9,'Electricity','TNEB','ELEC009','Active','2024-05-01',NULL,3200,'Billed monthly'),
(10,'Water','Chennai Water Board','WTR010','Active','2024-05-10',NULL,900,''),
(11,'Gas','Indane','GAS011','Active','2024-06-01',NULL,600,''),
(12,'Internet','ACT Fibernet','INT012','Active','2024-06-10',NULL,1300,''),
(13,'Electricity','BSES','ELEC013','Active','2024-07-01',NULL,2800,''),
(14,'Water','Delhi Jal Board','WTR014','Active','2024-07-10',NULL,750,''),
(15,'Gas','HP Gas','GAS015','Active','2024-08-01',NULL,650,''),
(16,'Internet','Tata Sky Broadband','INT016','Active','2024-08-10',NULL,1400,''),
(17,'Electricity','Reliance','ELEC017','Active','2024-09-01',NULL,3600,''),
(18,'Water','Noida Water','WTR018','Active','2024-09-10',NULL,800,''),
(19,'Gas','Bharat Gas','GAS019','Active','2024-10-01',NULL,600,''),
(20,'Internet','Jio Fiber','INT020','Active','2024-10-10',NULL,1200,'');

SELECT * FROM Utilities;
UPDATE Utilities SET status='Inactive' WHERE utility_id=5;
DELETE FROM Utilities WHERE utility_id=20;


-- ============================
-- 23. OFFERS TABLE
-- ============================

CREATE TABLE Offers (
    offer_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    client_id INT NOT NULL,
    agent_id INT NOT NULL,
    offer_date DATE NOT NULL,
    offer_amount DECIMAL(15,2) CHECK(offer_amount >= 0),
    status ENUM('Pending','Accepted','Rejected') DEFAULT 'Pending',
    counter_offer DECIMAL(15,2),
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id),
    FOREIGN KEY (agent_id) REFERENCES Agents(agent_id)
);

INSERT INTO Offers (property_id, client_id, agent_id, offer_date, offer_amount, status, counter_offer, notes) VALUES
(1,1,1,'2024-01-15',4800000,'Pending',5000000,'First offer on apartment'),
(2,2,2,'2024-02-20',11500000,'Accepted',NULL,'Villa offer accepted'),
(3,3,3,'2024-03-10',290000,'Rejected',300000,'Rent offer rejected'),
(4,4,4,'2024-03-25',780000,'Pending',800000,'Lease negotiation'),
(5,5,5,'2024-04-05',6800000,'Accepted',NULL,'Apartment sale accepted'),
(6,6,6,'2024-04-18',9500000,'Pending',10000000,'Commercial property negotiation'),
(7,7,7,'2024-05-09',195000,'Accepted',NULL,'Rental accepted'),
(8,8,8,'2024-05-23',440000,'Pending',450000,'Lease negotiation ongoing'),
(9,9,9,'2024-06-07',8800000,'Accepted',NULL,'Villa sale confirmed'),
(10,10,10,'2024-06-19',5900000,'Pending',6000000,'Apartment sale negotiation'),
(11,11,11,'2024-07-06',240000,'Accepted',NULL,'Rental offer accepted'),
(12,12,12,'2024-07-17',295000,'Pending',300000,'Lease pending'),
(13,13,13,'2024-08-01',7900000,'Accepted',NULL,'Villa purchase accepted'),
(14,14,14,'2024-08-15',175000,'Rejected',180000,'Rental offer rejected'),
(15,15,15,'2024-09-01',490000,'Pending',500000,'Lease negotiation'),
(16,16,16,'2024-09-10',7300000,'Accepted',NULL,'House sale completed'),
(17,17,17,'2024-09-25',215000,'Pending',220000,'Rental offer under review'),
(18,18,18,'2024-10-06',345000,'Accepted',NULL,'Lease accepted'),
(19,19,19,'2024-10-17',9800000,'Pending',10000000,'Apartment sale negotiation'),
(20,20,20,'2024-10-25',14500000,'Accepted',NULL,'Commercial property sold');

SELECT * FROM Offers;
UPDATE Offers SET status='Accepted' WHERE offer_id=1;
DELETE FROM Offers WHERE offer_id=20;


-- ============================
-- 24. RATINGS TABLE
-- ============================

CREATE TABLE Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    client_id INT NOT NULL,
    rating INT CHECK(rating BETWEEN 1 AND 5),
    comments TEXT,
    rating_date DATE,
    category ENUM('Property','Agent','Service') DEFAULT 'Property',
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

INSERT INTO Ratings (property_id, client_id, rating, comments, rating_date, category) VALUES
(1,1,5,'Excellent property','2024-01-22','Property'),
(2,2,4,'Good villa','2024-02-29','Property'),
(3,3,3,'Average apartment','2024-03-17','Property'),
(4,4,5,'Lease property excellent','2024-03-31','Property'),
(5,5,4,'Good condition','2024-04-07','Property'),
(6,6,5,'Professional handling','2024-04-22','Service'),
(7,7,2,'Poor maintenance','2024-05-12','Service'),
(8,8,4,'Good support','2024-05-27','Service'),
(9,9,5,'Highly recommend','2024-06-10','Property'),
(10,10,3,'Average apartment','2024-06-22','Property'),
(11,11,4,'Good agent support','2024-07-09','Agent'),
(12,12,5,'Very professional','2024-07-20','Agent'),
(13,13,4,'Satisfied','2024-08-03','Property'),
(14,14,5,'Excellent apartment','2024-08-17','Property'),
(15,15,4,'Smooth transaction','2024-09-03','Service'),
(16,16,3,'Minor issues','2024-09-12','Property'),
(17,17,5,'Cooperative agent','2024-09-27','Agent'),
(18,18,4,'Met expectations','2024-10-09','Property'),
(19,19,5,'Highly satisfied','2024-10-20','Property'),
(20,20,3,'Average service','2024-10-27','Service');

SELECT * FROM Ratings;
UPDATE Ratings SET rating=5 WHERE rating_id=16;
DELETE FROM Ratings WHERE rating_id=20;

-- ============================
-- 25. PROPERTYINSURANCE TABLE
-- ============================

CREATE TABLE PropertyInsurance (
    insurance_id INT AUTO_INCREMENT PRIMARY KEY,
    property_id INT NOT NULL,
    insurance_provider VARCHAR(100) NOT NULL,
    policy_number VARCHAR(50) UNIQUE NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    premium_amount DECIMAL(12,2) CHECK(premium_amount >= 0),
    coverage_amount DECIMAL(15,2) CHECK(coverage_amount >= 0),
    status ENUM('Active','Expired','Cancelled') DEFAULT 'Active',
    claim_status ENUM('No Claim','Claimed','Rejected') DEFAULT 'No Claim',
    notes TEXT,
    FOREIGN KEY (property_id) REFERENCES Properties(property_id)
);

INSERT INTO PropertyInsurance (property_id, insurance_provider, policy_number, start_date, end_date, premium_amount, coverage_amount, status, claim_status, notes) VALUES
(1,'HDFC ERGO','POL1001','2024-01-01','2025-01-01',50000,5000000,'Active','No Claim','Premium apartment insurance'),
(2,'ICICI Lombard','POL1002','2024-02-01','2025-02-01',120000,12000000,'Active','No Claim','Luxury villa insurance'),
(3,'Bajaj Allianz','POL1003','2024-03-01','2025-03-01',30000,3000000,'Active','No Claim','Apartment rental insurance'),
(4,'Tata AIG','POL1004','2024-04-01','2025-04-01',80000,8000000,'Active','No Claim','Commercial lease insurance'),
(5,'HDFC ERGO','POL1005','2024-05-01','2025-05-01',70000,7000000,'Active','No Claim','Apartment sale insurance'),
(6,'ICICI Lombard','POL1006','2024-06-01','2025-06-01',100000,10000000,'Active','No Claim','Commercial property insurance'),
(7,'Bajaj Allianz','POL1007','2024-07-01','2025-07-01',20000,2000000,'Active','No Claim','Rental property insurance'),
(8,'Tata AIG','POL1008','2024-08-01','2025-08-01',45000,4500000,'Active','No Claim','Residential lease insurance'),
(9,'HDFC ERGO','POL1009','2024-09-01','2025-09-01',90000,9000000,'Active','No Claim','Villa insurance'),
(10,'ICICI Lombard','POL1010','2024-10-01','2025-10-01',60000,6000000,'Active','No Claim','Apartment sale insurance'),
(11,'Bajaj Allianz','POL1011','2024-11-01','2025-11-01',25000,2500000,'Active','No Claim','Rental insurance'),
(12,'Tata AIG','POL1012','2024-12-01','2025-12-01',30000,3000000,'Active','No Claim','Lease insurance'),
(13,'HDFC ERGO','POL1013','2025-01-01','2026-01-01',80000,8000000,'Active','No Claim','Villa insurance'),
(14,'ICICI Lombard','POL1014','2025-02-01','2026-02-01',18000,1800000,'Active','No Claim','Apartment rental insurance'),
(15,'Bajaj Allianz','POL1015','2025-03-01','2026-03-01',49000,4900000,'Active','No Claim','Lease insurance'),
(16,'Tata AIG','POL1016','2025-04-01','2026-04-01',75000,7500000,'Active','No Claim','House insurance'),
(17,'HDFC ERGO','POL1017','2025-05-01','2026-05-01',22000,2200000,'Active','No Claim','Rental insurance'),
(18,'ICICI Lombard','POL1018','2025-06-01','2026-06-01',34500,3450000,'Active','No Claim','Lease insurance'),
(19,'Bajaj Allianz','POL1019','2025-07-01','2026-07-01',98000,9800000,'Active','No Claim','Apartment insurance'),
(20,'Tata AIG','POL1020','2025-08-01','2026-08-01',145000,14500000,'Active','No Claim','Commercial property insurance');

SELECT * FROM PropertyInsurance;
UPDATE PropertyInsurance SET status='Expired' WHERE insurance_id=5;
DELETE FROM PropertyInsurance WHERE insurance_id=20;
TRUNCATE TABLE PropertyInsurance;
DROP TABLE PropertyInsurance;



-- =======================================================================     END OF PHASE - 1     =========================================================================================