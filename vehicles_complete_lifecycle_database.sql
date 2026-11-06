

IF DB_ID(N'vehiclescomplete_lifecycle') IS NULL
BEGIN
    CREATE DATABASE vehiclescomplete_lifecycle;
END;
GO

USE vehiclescomplete_lifecycle;
go

create table dbo.owners (
    owner_id      int         primary key,
    first_name    varchar(50) not null,
    last_name     varchar(50) not null,
    date_of_birth date        null,
    gender        varchar(10) check (gender in ('male', 'female', 'other')),
    phone         varchar(15) not null unique,
    email         varchar(100) not null unique,
    address       varchar(200) not null,
    city          varchar(50) not null,
    registration_date date not null
);

INSERT INTO dbo.owners VALUES (1, 'Ravi', 'Kumar', '1985-03-12', 'male', '9000000001', 'ravi.kumar1@example.com', '12 MG Road', 'Hyderabad', '2026-01-01');
INSERT INTO dbo.owners VALUES (2, 'Sita', 'Reddy', '1990-07-25', 'female', '9000000002', 'sita.reddy2@example.com', '45 Lake View', 'Chennai', '2026-01-02');
INSERT INTO dbo.owners VALUES (3, 'Arjun', 'Mehta', '1988-11-10', 'male', '9000000003', 'arjun.mehta3@example.com', '78 Green Park', 'Delhi', '2026-01-03');
INSERT INTO dbo.owners VALUES (4, 'Priya', 'Sharma', '1992-02-18', 'female', '9000000004', 'priya.sharma4@example.com', '23 Hill Street', 'Mumbai', '2026-01-04');
INSERT INTO dbo.owners VALUES (5, 'Vikram', 'Singh', '1983-09-05', 'male', '9000000005', 'vikram.singh5@example.com', '56 River Road', 'Bangalore', '2026-01-05');
INSERT INTO dbo.owners VALUES (6, 'Anita', 'Patel', '1995-12-30', 'female', '9000000006', 'anita.patel6@example.com', '89 Rose Colony', 'Ahmedabad', '2026-01-06');
INSERT INTO dbo.owners VALUES (7, 'Rahul', 'Joshi', '1987-04-14', 'male', '9000000007', 'rahul.joshi7@example.com', '34 Lotus Lane', 'Pune', '2026-01-07');
INSERT INTO dbo.owners VALUES (8, 'Neha', 'Gupta', '1993-08-22', 'female', '9000000008', 'neha.gupta8@example.com', '67 Pearl Street', 'Kolkata', '2026-01-08');
INSERT INTO dbo.owners VALUES (9, 'Karan', 'Nair', '1989-01-09', 'male', '9000000009', 'karan.nair9@example.com', '11 Palm Avenue', 'Trivandrum', '2026-01-09');
INSERT INTO dbo.owners VALUES (10, 'Meena', 'Das', '1991-06-15', 'female', '9000000010', 'meena.das10@example.com', '90 Sunflower Road', 'Bhubaneswar', '2026-01-10');
INSERT INTO dbo.owners VALUES (11, 'Rohan', 'Iyer', '1986-04-20', 'male', '9000000011', 'rohan.iyer11@example.com', '12 Ocean Drive', 'Mumbai', '2026-01-11');
INSERT INTO dbo.owners VALUES (12, 'Sneha', 'Kapoor', '1994-09-12', 'female', '9000000012', 'sneha.kapoor12@example.com', '45 Hill View', 'Delhi', '2026-01-12');
INSERT INTO dbo.owners VALUES (13, 'Manoj', 'Rao', '1988-02-05', 'male', '9000000013', 'manoj.rao13@example.com', '78 Lotus Street', 'Hyderabad', '2026-01-13');
INSERT INTO dbo.owners VALUES (14, 'Divya', 'Nair', '1992-07-19', 'female', '9000000014', 'divya.nair14@example.com', '23 Palm Road', 'Chennai', '2026-01-14');
INSERT INTO dbo.owners VALUES (15, 'Suresh', 'Patel', '1983-11-01', 'male', '9000000015', 'suresh.patel15@example.com', '56 Rose Lane', 'Ahmedabad', '2026-01-15');
INSERT INTO dbo.owners VALUES (16, 'Anjali', 'Shah', '1995-03-22', 'female', '9000000016', 'anjali.shah16@example.com', '89 Pearl Colony', 'Pune', '2026-01-16');
INSERT INTO dbo.owners VALUES (17, 'Kiran', 'Gupta', '1987-08-09', 'male', '9000000017', 'kiran.gupta17@example.com', '34 Sunflower Road', 'Kolkata', '2026-01-17');
INSERT INTO dbo.owners VALUES (18, 'Pooja', 'Das', '1993-12-14', 'female', '9000000018', 'pooja.das18@example.com', '67 Green Park', 'Bhubaneswar', '2026-01-18');
INSERT INTO dbo.owners VALUES (19, 'Vivek', 'Singh', '1989-05-25', 'male', '9000000019', 'vivek.singh19@example.com', '11 River Road', 'Lucknow', '2026-01-19');
INSERT INTO dbo.owners VALUES (20, 'Kavita', 'Joshi', '1991-10-30', 'female', '9000000020', 'kavita.joshi20@example.com', '90 Lotus Avenue', 'Jaipur', '2026-01-20');
INSERT INTO dbo.owners VALUES (21, 'Rajesh', 'Kumar', '1985-01-12', 'male', '9000000021', 'rajesh.kumar21@example.com', '12 Market Road', 'Hyderabad', '2026-01-21');
INSERT INTO dbo.owners VALUES (22, 'Sunita', 'Reddy', '1990-03-25', 'female', '9000000022', 'sunita.reddy22@example.com', '45 Lake View', 'Chennai', '2026-01-22');
INSERT INTO dbo.owners VALUES (23, 'Amit', 'Mehta', '1988-07-10', 'male', '9000000023', 'amit.mehta23@example.com', '78 Green Park', 'Delhi', '2026-01-23');
INSERT INTO dbo.owners VALUES (24, 'Lata', 'Sharma', '1992-11-18', 'female', '9000000024', 'lata.sharma24@example.com', '23 Hill Street', 'Mumbai', '2026-01-24');
INSERT INTO dbo.owners VALUES (25, 'Deepak', 'Singh', '1983-05-05', 'male', '9000000025', 'deepak.singh25@example.com', '56 River Road', 'Bangalore', '2026-01-25');
INSERT INTO dbo.owners VALUES (26, 'Rekha', 'Patel', '1995-09-30', 'female', '9000000026', 'rekha.patel26@example.com', '89 Rose Colony', 'Ahmedabad', '2026-01-26');
INSERT INTO dbo.owners VALUES (27, 'Sanjay', 'Joshi', '1987-12-14', 'male', '9000000027', 'sanjay.joshi27@example.com', '34 Lotus Lane', 'Pune', '2026-01-27');
INSERT INTO dbo.owners VALUES (28, 'Nisha', 'Gupta', '1993-04-22', 'female', '9000000028', 'nisha.gupta28@example.com', '67 Pearl Street', 'Kolkata', '2026-01-28');
INSERT INTO dbo.owners VALUES (29, 'Harish', 'Nair', '1989-08-09', 'male', '9000000029', 'harish.nair29@example.com', '11 Palm Avenue', 'Trivandrum', '2026-01-29');
INSERT INTO dbo.owners VALUES (30, 'Shalini', 'Das', '1991-02-15', 'female', '9000000030', 'shalini.das30@example.com', '90 Sunflower Road', 'Bhubaneswar', '2026-01-30');
INSERT INTO dbo.owners VALUES (31, 'Ajay', 'Kumar', '1986-03-12', 'male', '9000000031', 'ajay.kumar31@example.com', '12 MG Road', 'Hyderabad', '2026-01-31');
INSERT INTO dbo.owners VALUES (32, 'Radha', 'Reddy', '1990-07-25', 'female', '9000000032', 'radha.reddy32@example.com', '45 Lake View', 'Chennai', '2026-02-01');
INSERT INTO dbo.owners VALUES (33, 'Sandeep', 'Mehta', '1988-11-10', 'male', '9000000033', 'sandeep.mehta33@example.com', '78 Green Park', 'Delhi', '2026-02-02');
INSERT INTO dbo.owners VALUES (34, 'Geeta', 'Sharma', '1992-02-18', 'female', '9000000034', 'geeta.sharma34@example.com', '23 Hill Street', 'Mumbai', '2026-02-03');
INSERT INTO dbo.owners VALUES (35, 'Mahesh', 'Singh', '1983-09-05', 'male', '9000000035', 'mahesh.singh35@example.com', '56 River Road', 'Bangalore', '2026-02-04');
INSERT INTO dbo.owners VALUES (36, 'Kiran', 'Patel', '1995-12-30', 'female', '9000000036', 'kiran.patel36@example.com', '89 Rose Colony', 'Ahmedabad', '2026-02-05');
INSERT INTO dbo.owners VALUES (37, 'Ramesh', 'Joshi', '1987-04-14', 'male', '9000000037', 'ramesh.joshi37@example.com', '34 Lotus Lane', 'Pune', '2026-02-06');
INSERT INTO dbo.owners VALUES (38, 'Seema', 'Gupta', '1993-08-22', 'female', '9000000038', 'seema.gupta38@example.com', '67 Pearl Street', 'Kolkata', '2026-02-07');
INSERT INTO dbo.owners VALUES (39, 'Naveen', 'Nair', '1989-01-09', 'male', '9000000039', 'naveen.nair39@example.com', '11 Palm Avenue', 'Trivandrum', '2026-02-08');
INSERT INTO dbo.owners VALUES (40, 'Pallavi', 'Das', '1991-06-15', 'female', '9000000040', 'pallavi.das40@example.com', '90 Sunflower Road', 'Bhubaneswar', '2026-02-09');
INSERT INTO dbo.owners VALUES (41, 'Ashok', 'Kumar', '1985-07-12', 'male', '9000000041', 'ashok.kumar41@example.com', '12 Market Road', 'Hyderabad', '2026-02-10');
INSERT INTO dbo.owners VALUES (42, 'Meera', 'Reddy', '1990-09-25', 'female', '9000000042', 'meera.reddy42@example.com', '45 Lake View', 'Chennai', '2026-02-11');
INSERT INTO dbo.owners VALUES (43, 'Prakash', 'Mehta', '1988-01-10', 'male', '9000000043', 'prakash.mehta43@example.com', '78 Green Park', 'Delhi', '2026-02-12');
INSERT INTO dbo.owners VALUES (44, 'Savita', 'Sharma', '1992-05-18', 'female', '9000000044', 'savita.sharma44@example.com', '23 Hill Street', 'Mumbai', '2026-02-13');
INSERT INTO dbo.owners VALUES (45, 'Gopal', 'Singh', '1983-10-05', 'male', '9000000045', 'gopal.singh45@example.com', '56 River Road', 'Bangalore', '2026-02-14');
INSERT INTO dbo.owners VALUES (46, 'Leela', 'Patel', '1995-01-30', 'female', '9000000046', 'leela.patel46@example.com', '89 Rose Colony', 'Ahmedabad', '2026-02-15');
INSERT INTO dbo.owners VALUES (47, 'Suraj', 'Joshi', '1987-06-14', 'male', '9000000047', 'suraj.joshi47@example.com', '34 Lotus Lane', 'Pune', '2026-02-16');
INSERT INTO dbo.owners VALUES (48, 'Ritu', 'Gupta', '1993-12-22', 'female', '9000000048', 'ritu.gupta48@example.com', '67 Pearl Street', 'Kolkata', '2026-02-17');
INSERT INTO dbo.owners VALUES (49, 'Anand', 'Nair', '1989-03-09', 'male', '9000000049', 'anand.nair49@example.com', '11 Palm Avenue', 'Trivandrum', '2026-02-18');
INSERT INTO dbo.owners VALUES (50, 'Shobha', 'Das', '1991-08-15', 'female', '9000000050', 'shobha.das50@example.com', '90 Sunflower Road', 'Bhubaneswar', '2026-02-19');


create table dbo.vehicles (
    vehicle_id          int primary key,
    owner_id            int not null,
    registration_number varchar(20) not null unique,
    chassis_number      varchar(50) not null unique,
    engine_number       varchar(50) not null unique,
    vehicle_type        varchar(30) not null,
    manufacturer        varchar(50) not null,
    model               varchar(50) not null,
    manufacturing_year  int not null,
    color               varchar(30) null,
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (1, 1, 'AP01CAR1001', 'CHS1001XYZ', 'ENG1001XYZ', 'Car', 'Maruti Suzuki', 'Swift', 2018, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (2, 2, 'AP01CAR1002', 'CHS1002XYZ', 'ENG1002XYZ', 'Car', 'Hyundai', 'i20', 2019, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (3, 3, 'AP01CAR1003', 'CHS1003XYZ', 'ENG1003XYZ', 'Car', 'Tata', 'Nexon', 2021, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (4, 4, 'AP01CAR1004', 'CHS1004XYZ', 'ENG1004XYZ', 'Car', 'Mahindra', 'XUV500', 2017, 'Silver');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (5, 5, 'AP01CAR1005', 'CHS1005XYZ', 'ENG1005XYZ', 'Car', 'Honda', 'City', 2020, 'Grey');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (6, 6, 'AP01CAR1006', 'CHS1006XYZ', 'ENG1006XYZ', 'Car', 'Toyota', 'Innova', 2018, 'Black');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (7, 7, 'AP01CAR1007', 'CHS1007XYZ', 'ENG1007XYZ', 'Car', 'Ford', 'EcoSport', 2021, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (8, 8, 'AP01CAR1008', 'CHS1008XYZ', 'ENG1008XYZ', 'Car', 'Maruti Suzuki', 'Baleno', 2019, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (9, 9, 'AP01CAR1009', 'CHS1009XYZ', 'ENG1009XYZ', 'Car', 'Hyundai', 'Creta', 2020, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (10, 10, 'AP01CAR1010', 'CHS1010XYZ', 'ENG1010XYZ', 'Car', 'Tata', 'Harrier', 2021, 'Black');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (11, 11, 'AP01BIK1011', 'CHS1011XYZ', 'ENG1011XYZ', 'Bike', 'Honda', 'CBR250', 2020, 'Black');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (12, 12, 'AP01BIK1012', 'CHS1012XYZ', 'ENG1012XYZ', 'Bike', 'Royal Enfield', 'Classic 350', 2019, 'Green');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (13, 13, 'AP01BIK1013', 'CHS1013XYZ', 'ENG1013XYZ', 'Bike', 'Bajaj', 'Pulsar 220', 2016, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (14, 14, 'AP01BIK1014', 'CHS1014XYZ', 'ENG1014XYZ', 'Bike', 'Yamaha', 'R15', 2021, 'Black');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (15, 15, 'AP01BIK1015', 'CHS1015XYZ', 'ENG1015XYZ', 'Bike', 'Hero', 'Splendor Plus', 2019, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (16, 16, 'AP01BIK1016', 'CHS1016XYZ', 'ENG1016XYZ', 'Bike', 'Bajaj', 'Dominar 400', 2018, 'Green');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (17, 17, 'AP01BIK1017', 'CHS1017XYZ', 'ENG1017XYZ', 'Bike', 'TVS', 'Apache RTR 160', 2019, 'Black');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (18, 18, 'AP01BIK1018', 'CHS1018XYZ', 'ENG1018XYZ', 'Bike', 'Royal Enfield', 'Himalayan', 2020, 'Grey');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (19, 19, 'AP01BIK1019', 'CHS1019XYZ', 'ENG1019XYZ', 'Bike', 'Yamaha', 'FZ-S', 2020, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (20, 20, 'AP01BIK1020', 'CHS1020XYZ', 'ENG1020XYZ', 'Bike', 'Suzuki', 'Gixxer SF', 2018, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (21, 21, 'AP01TRA1021', 'CHS1021XYZ', 'ENG1021XYZ', 'Train', 'Indian Railways', 'Vande Bharat Express', 2023, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (22, 22, 'AP01TRA1022', 'CHS1022XYZ', 'ENG1022XYZ', 'Train', 'Indian Railways', 'Rajdhani Express', 2022, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (23, 23, 'AP01TRA1023', 'CHS1023XYZ', 'ENG1023XYZ', 'Train', 'Indian Railways', 'Shatabdi Express', 2021, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (24, 24, 'AP01TRA1024', 'CHS1024XYZ', 'ENG1024XYZ', 'Train', 'Indian Railways', 'Duronto Express', 2020, 'Green');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (25, 25, 'AP01TRA1025', 'CHS1025XYZ', 'ENG1025XYZ', 'Train', 'Indian Railways', 'Tejas Express', 2022, 'Orange');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (26, 26, 'AP01TRA1026', 'CHS1026XYZ', 'ENG1026XYZ', 'Train', 'Indian Railways', 'Garib Rath Express', 2019, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (27, 27, 'AP01TRA1027', 'CHS1027XYZ', 'ENG1027XYZ', 'Train', 'Indian Railways', 'Deccan Queen', 2018, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (28, 28, 'AP01TRA1028', 'CHS1028XYZ', 'ENG1028XYZ', 'Train', 'Indian Railways', 'Intercity Express', 2020, 'Yellow');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (29, 29, 'AP01TRA1029', 'CHS1029XYZ', 'ENG1029XYZ', 'Train', 'Indian Railways', 'Jan Shatabdi', 2021, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (30, 30, 'AP01TRA1030', 'CHS1030XYZ', 'ENG1030XYZ', 'Train', 'Indian Railways', 'Humsafar Express', 2022, 'Purple');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (31, 31, 'AP01AER1031', 'CHS1031XYZ', 'ENG1031XYZ', 'Aeroplane', 'Airbus', 'A320', 2020, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (32, 32, 'AP01AER1032', 'CHS1032XYZ', 'ENG1032XYZ', 'Aeroplane', 'Boeing', '737-800', 2019, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (33, 33, 'AP01AER1033', 'CHS1033XYZ', 'ENG1033XYZ', 'Aeroplane', 'Airbus', 'A321', 2021, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (34, 34, 'AP01AER1034', 'CHS1034XYZ', 'ENG1034XYZ', 'Aeroplane', 'Boeing', '777-300ER', 2018, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (35, 35, 'AP01AER1035', 'CHS1035XYZ', 'ENG1035XYZ', 'Aeroplane', 'Airbus', 'A350', 2022, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (36, 36, 'AP01AER1036', 'CHS1036XYZ', 'ENG1036XYZ', 'Aeroplane', 'Boeing', '787 Dreamliner', 2020, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (37, 37, 'AP01AER1037', 'CHS1037XYZ', 'ENG1037XYZ', 'Aeroplane', 'Airbus', 'A330', 2019, 'Grey');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (38, 38, 'AP01AER1038', 'CHS1038XYZ', 'ENG1038XYZ', 'Aeroplane', 'Boeing', '737 MAX', 2021, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (39, 39, 'AP01AER1039', 'CHS1039XYZ', 'ENG1039XYZ', 'Aeroplane', 'Airbus', 'A380', 2017, 'White');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (40, 40, 'AP01AER1040', 'CHS1040XYZ', 'ENG1040XYZ', 'Aeroplane', 'Boeing', '747-8', 2018, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (41, 41, 'AP01TRA1041', 'CHS1041XYZ', 'ENG1041XYZ', 'Tractor', 'Mahindra', '575 DI', 2018, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (42, 42, 'AP01TRA1042', 'CHS1042XYZ', 'ENG1042XYZ', 'Tractor', 'John Deere', '5310', 2019, 'Green');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (43, 43, 'AP01TRA1043', 'CHS1043XYZ', 'ENG1043XYZ', 'Tractor', 'Swaraj', '744 FE', 2020, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (44, 44, 'AP01TRA1044', 'CHS1044XYZ', 'ENG1044XYZ', 'Tractor', 'New Holland', '3630 TX', 2021, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (45, 45, 'AP01TRA1045', 'CHS1045XYZ', 'ENG1045XYZ', 'Tractor', 'Massey Ferguson', '241 DI', 2017, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (46, 46, 'AP01TRA1046', 'CHS1046XYZ', 'ENG1046XYZ', 'Tractor', 'Sonalika', 'DI 750 III', 2019, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (47, 47, 'AP01TRA1047', 'CHS1047XYZ', 'ENG1047XYZ', 'Tractor', 'Kubota', 'MU4501', 2020, 'Orange');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (48, 48, 'AP01TRA1048', 'CHS1048XYZ', 'ENG1048XYZ', 'Tractor', 'Farmtrac', '60 PowerMaxx', 2018, 'Blue');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (49, 49, 'AP01TRA1049', 'CHS1049XYZ', 'ENG1049XYZ', 'Tractor', 'Eicher', '380', 2019, 'Red');
INSERT INTO dbo.vehicles (vehicle_id, owner_id, registration_number, chassis_number, engine_number, vehicle_type, manufacturer, model, manufacturing_year, color) VALUES (50, 50, 'AP01TRA1050', 'CHS1050XYZ', 'ENG1050XYZ', 'Tractor', 'Escorts', 'Powertrac 439', 2021, 'Blue');


create table dbo.service_centers (
    center_id        int primary key,
    center_name      varchar(100) not null unique,
    manager_name     varchar(100) not null,
    phone            varchar(15) not null,
    email            varchar(100) null,
    address          varchar(200) not null,
    city             varchar(50) not null,
    state            varchar(50) not null,
    opening_time     time not null,
    closing_time     time not null
);
INSERT INTO dbo.service_centers VALUES (1, 'Hyderabad AutoCare', 'Ravi Kumar', '9100000001', 'hyderabad.autocare1@example.com', '12 MG Road', 'Hyderabad', 'Telangana', '09:00:00', '18:00:00')

INSERT INTO dbo.service_centers VALUES (2, 'Chennai Motors Hub', 'Sita Reddy', '9100000002', 'chennai.motors2@example.com', '45 Lake View', 'Chennai', 'Tamil Nadu', '09:00:00', '18:00:00')

INSERT INTO dbo.service_centers VALUES (3, 'Delhi Vehicle Service', 'Arjun Mehta', '9100000003', 'delhi.service3@example.com', '78 Green Park', 'Delhi', 'Delhi', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (4, 'Mumbai Car Clinic', 'Priya Sharma', '9100000004', 'mumbai.clinic4@example.com', '23 Hill Street', 'Mumbai', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (5, 'Bangalore AutoWorks', 'Vikram Singh', '9100000005', 'bangalore.autoworks5@example.com', '56 River Road', 'Bangalore', 'Karnataka', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (6, 'Ahmedabad Service Point', 'Anita Patel', '9100000006', 'ahmedabad.service6@example.com', '89 Rose Colony', 'Ahmedabad', 'Gujarat', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (7, 'Pune Vehicle Care', 'Rahul Joshi', '9100000007', 'pune.care7@example.com', '34 Lotus Lane', 'Pune', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (8, 'Kolkata Auto Service', 'Neha Gupta', '9100000008', 'kolkata.service8@example.com', '67 Pearl Street', 'Kolkata', 'West Bengal', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (9, 'Trivandrum Motors', 'Karan Nair', '9100000009', 'trivandrum.motors9@example.com', '11 Palm Avenue', 'Trivandrum', 'Kerala', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (10, 'Bhubaneswar Car Care', 'Meena Das', '9100000010', 'bhubaneswar.care10@example.com', '90 Sunflower Road', 'Bhubaneswar', 'Odisha', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (11, 'Lucknow Auto Service', 'Rajesh Kumar', '9100000011', 'lucknow.service11@example.com', '12 Market Road', 'Lucknow', 'Uttar Pradesh', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (12, 'Jaipur Motors Hub', 'Sunita Reddy', '9100000012', 'jaipur.motors12@example.com', '45 Lake View', 'Jaipur', 'Rajasthan', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (13, 'Patna Vehicle Care', 'Amit Mehta', '9100000013', 'patna.care13@example.com', '78 Green Park', 'Patna', 'Bihar', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (14, 'Nagpur Car Clinic', 'Lata Sharma', '9100000014', 'nagpur.clinic14@example.com', '23 Hill Street', 'Nagpur', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (15, 'Surat AutoWorks', 'Deepak Singh', '9100000015', 'surat.autoworks15@example.com', '56 River Road', 'Surat', 'Gujarat', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (16, 'Indore Service Point', 'Rekha Patel', '9100000016', 'indore.service16@example.com', '89 Rose Colony', 'Indore', 'Madhya Pradesh', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (17, 'Kanpur Vehicle Care', 'Sanjay Joshi', '9100000017', 'kanpur.care17@example.com', '34 Lotus Lane', 'Kanpur', 'Uttar Pradesh', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (18, 'Coimbatore Auto Service', 'Nisha Gupta', '9100000018', 'coimbatore.service18@example.com', '67 Pearl Street', 'Coimbatore', 'Tamil Nadu', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (19, 'Chandigarh Motors', 'Harish Nair', '9100000019', 'chandigarh.motors19@example.com', '11 Palm Avenue', 'Chandigarh', 'Punjab', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (20, 'Bhopal Car Care', 'Shalini Das', '9100000020', 'bhopal.care20@example.com', '90 Sunflower Road', 'Bhopal', 'Madhya Pradesh', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (21, 'Hyderabad Elite Service', 'Ajay Kumar', '9100000021', 'hyderabad.elite21@example.com', '12 MG Road', 'Hyderabad', 'Telangana', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (22, 'Chennai Premium Motors', 'Radha Reddy', '9100000022', 'chennai.premium22@example.com', '45 Lake View', 'Chennai', 'Tamil Nadu', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (23, 'Delhi Auto Experts', 'Sandeep Mehta', '9100000023', 'delhi.experts23@example.com', '78 Green Park', 'Delhi', 'Delhi', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (24, 'Mumbai Vehicle Solutions', 'Geeta Sharma', '9100000024', 'mumbai.solutions24@example.com', '23 Hill Street', 'Mumbai', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (25, 'Bangalore Car Experts', 'Mahesh Singh', '9100000025', 'bangalore.experts25@example.com', '56 River Road', 'Bangalore', 'Karnataka', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (26, 'Ahmedabad Auto Clinic', 'Kiran Patel', '9100000026', 'ahmedabad.clinic26@example.com', '89 Rose Colony', 'Ahmedabad', 'Gujarat', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (27, 'Pune Motors Care', 'Ramesh Joshi', '9100000027', 'pune.motors27@example.com', '34 Lotus Lane', 'Pune', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (28, 'Kolkata Car Solutions', 'Seema Gupta', '9100000028', 'kolkata.solutions28@example.com', '67 Pearl Street', 'Kolkata', 'West Bengal', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (29, 'Trivandrum Auto Experts', 'Naveen Nair', '9100000029', 'trivandrum.experts29@example.com', '11 Palm Avenue', 'Trivandrum', 'Kerala', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (30, 'Bhubaneswar Motors Hub', 'Pallavi Das', '9100000030', 'bhubaneswar.hub30@example.com', '90 Sunflower Road', 'Bhubaneswar', 'Odisha', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (31, 'Hyderabad QuickFix Center', 'Ashok Kumar', '9100000031', 'hyderabad.quickfix31@example.com', '12 Market Road', 'Hyderabad', 'Telangana', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (32, 'Chennai Speed Motors', 'Meera Reddy', '9100000032', 'chennai.speed32@example.com', '45 Lake View', 'Chennai', 'Tamil Nadu', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (33, 'Delhi Auto Garage', 'Prakash Mehta', '9100000033', 'delhi.garage33@example.com', '78 Green Park', 'Delhi', 'Delhi', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (34, 'Mumbai Vehicle Hub', 'Savita Sharma', '9100000034', 'mumbai.hub34@example.com', '23 Hill Street', 'Mumbai', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (35, 'Bangalore Car Solutions', 'Gopal Singh', '9100000035', 'bangalore.solutions35@example.com', '56 River Road', 'Bangalore', 'Karnataka', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (36, 'Ahmedabad Auto Experts', 'Leela Patel', '9100000036', 'ahmedabad.experts36@example.com', '89 Rose Colony', 'Ahmedabad', 'Gujarat', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (37, 'Pune Service Hub', 'Suraj Joshi', '9100000037', 'pune.hub37@example.com', '34 Lotus Lane', 'Pune', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (38, 'Kolkata Motors Point', 'Ritu Gupta', '9100000038', 'kolkata.point38@example.com', '67 Pearl Street', 'Kolkata', 'West Bengal', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (39, 'Trivandrum Auto Clinic', 'Anand Nair', '9100000039', 'trivandrum.clinic39@example.com', '11 Palm Avenue', 'Trivandrum', 'Kerala', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (40, 'Bhubaneswar Vehicle Experts', 'Shobha Das', '9100000040', 'bhubaneswar.experts40@example.com', '90 Sunflower Road', 'Bhubaneswar', 'Odisha', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (41, 'Hyderabad Supreme Motors', 'Ashok Kumar', '9100000041', 'hyderabad.supreme41@example.com', '12 Market Road', 'Hyderabad', 'Telangana', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (42, 'Chennai Elite Garage', 'Meera Reddy', '9100000042', 'chennai.elite42@example.com', '45 Lake View', 'Chennai', 'Tamil Nadu', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (43, 'Delhi Speed Service', 'Prakash Mehta', '9100000043', 'delhi.speed43@example.com', '78 Green Park', 'Delhi', 'Delhi', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (44, 'Mumbai Auto Experts', 'Savita Sharma', '9100000044', 'mumbai.experts44@example.com', '23 Hill Street', 'Mumbai', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (45, 'Bangalore Premium Care', 'Gopal Singh', '9100000045', 'bangalore.premium45@example.com', '56 River Road', 'Bangalore', 'Karnataka', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (46, 'Ahmedabad Vehicle Hub', 'Leela Patel', '9100000046', 'ahmedabad.hub46@example.com', '89 Rose Colony', 'Ahmedabad', 'Gujarat', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (47, 'Pune Auto Solutions', 'Suraj Joshi', '9100000047', 'pune.solutions47@example.com', '34 Lotus Lane', 'Pune', 'Maharashtra', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (48, 'Kolkata Supreme Service', 'Ritu Gupta', '9100000048', 'kolkata.supreme48@example.com', '67 Pearl Street', 'Kolkata', 'West Bengal', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (49, 'Trivandrum Motors Care', 'Anand Nair', '9100000049', 'trivandrum.care49@example.com', '11 Palm Avenue', 'Trivandrum', 'Kerala', '09:00:00', '18:00:00');
INSERT INTO dbo.service_centers VALUES (50, 'Bhubaneswar Auto Experts', 'Shobha Das', '9100000050', 'bhubaneswar.experts50@example.com', '90 Sunflower Road', 'Bhubaneswar', 'Odisha', '09:00:00', '18:00:00');


create table dbo.parts (
    part_id         int primary key,
    part_name       varchar(100) not null,
    part_number     varchar(50) not null unique,
    category        varchar(50) not null,
    manufacturer    varchar(100) null,
    unit_price      decimal(10,2) check (unit_price >= 0),
    quantity_available int check (quantity_available >= 0),
    reorder_level      int check (reorder_level >= 0),
    warranty_period    int null,
    part_status        varchar(20) check (part_status in ('available', 'out_of_stock', 'discontinued'))
);
INSERT INTO dbo.parts values(1, 'Part 1', 'PTN0001', 'Brake', 'Valeo', 525.00, 11, 6, 13, 'available')
INSERT INTO dbo.parts values(2, 'Part 2', 'PTN0002', 'Electrical', 'Denso', 550.00, 12, 7, 14, 'available')
INSERT INTO dbo.parts values(3, 'Part 3', 'PTN0003', 'Body', 'Mando', 575.00, 13, 8, 15, 'out_of_stock')
INSERT INTO dbo.parts values(4, 'Part 4', 'PTN0004', 'Suspension', 'ZF', 600.00, 14, 9, 16, 'discontinued')
INSERT INTO dbo.parts values(5, 'Part 5', 'PTN0005', 'Engine', 'Bosch', 625.00, 15, 5, 17, 'available')
INSERT INTO dbo.parts values(6, 'Part 6', 'PTN0006', 'Brake', 'Valeo', 650.00, 16, 6, 18, 'available')
INSERT INTO dbo.parts values(7, 'Part 7', 'PTN0007', 'Electrical', 'Denso', 675.00, 17, 7, 19, 'available')
INSERT INTO dbo.parts values(8, 'Part 8', 'PTN0008', 'Body', 'Mando', 700.00, 18, 8, 20, 'out_of_stock')
INSERT INTO dbo.parts values(9, 'Part 9', 'PTN0009', 'Suspension', 'ZF', 725.00, 19, 9, 21, 'discontinued')
INSERT INTO dbo.parts values(10, 'Part 10', 'PTN0010', 'Engine', 'Bosch', 750.00, 20, 5, 22, 'available')
INSERT INTO dbo.parts values(11, 'Part 11', 'PTN0011', 'Brake', 'Valeo', 775.00, 21, 6, 23, 'available')
INSERT INTO dbo.parts values(12, 'Part 12', 'PTN0012', 'Electrical', 'Denso', 800.00, 22, 7, 24, 'available')
INSERT INTO dbo.parts values(13, 'Part 13', 'PTN0013', 'Body', 'Mando', 825.00, 23, 8, 25, 'out_of_stock')
INSERT INTO dbo.parts values(14, 'Part 14', 'PTN0014', 'Suspension', 'ZF', 850.00, 24, 9, 26, 'discontinued')
INSERT INTO dbo.parts values(15, 'Part 15', 'PTN0015', 'Engine', 'Bosch', 875.00, 25, 5, 27, 'available')
INSERT INTO dbo.parts values(16, 'Part 16', 'PTN0016', 'Brake', 'Valeo', 900.00, 26, 6, 28, 'available')
INSERT INTO dbo.parts values(17, 'Part 17', 'PTN0017', 'Electrical', 'Denso', 925.00, 27, 7, 29, 'available')
INSERT INTO dbo.parts values(18, 'Part 18', 'PTN0018', 'Body', 'Mando', 950.00, 28, 8, 30, 'out_of_stock')
INSERT INTO dbo.parts values(19, 'Part 19', 'PTN0019', 'Suspension', 'ZF', 975.00, 29, 9, 31, 'discontinued')
INSERT INTO dbo.parts values(20, 'Part 20', 'PTN0020', 'Engine', 'Bosch', 1000.00, 10, 5, 32, 'available')
INSERT INTO dbo.parts values(21, 'Part 21', 'PTN0021', 'Brake', 'Valeo', 1025.00, 11, 6, 33, 'available')
INSERT INTO dbo.parts values(22, 'Part 22', 'PTN0022', 'Electrical', 'Denso', 1050.00, 12, 7, 34, 'available')
INSERT INTO dbo.parts values(23, 'Part 23', 'PTN0023', 'Body', 'Mando', 1075.00, 13, 8, 35, 'out_of_stock')
INSERT INTO dbo.parts values(24, 'Part 24', 'PTN0024', 'Suspension', 'ZF', 1100.00, 14, 9, 12, 'discontinued')
INSERT INTO dbo.parts values(25, 'Part 25', 'PTN0025', 'Engine', 'Bosch', 1125.00, 15, 5, 13, 'available')
INSERT INTO dbo.parts values(26, 'Part 26', 'PTN0026', 'Brake', 'Valeo', 1150.00, 16, 6, 14, 'available')
INSERT INTO dbo.parts values(27, 'Part 27', 'PTN0027', 'Electrical', 'Denso', 1175.00, 17, 7, 15, 'available')
INSERT INTO dbo.parts values(28, 'Part 28', 'PTN0028', 'Body', 'Mando', 1200.00, 18, 8, 16, 'out_of_stock')
INSERT INTO dbo.parts values(29, 'Part 29', 'PTN0029', 'Suspension', 'ZF', 1225.00, 19, 9, 17, 'discontinued')
INSERT INTO dbo.parts values(30, 'Part 30', 'PTN0030', 'Engine', 'Bosch', 1250.00, 20, 5, 18, 'available')
INSERT INTO dbo.parts values(31, 'Part 31', 'PTN0031', 'Brake', 'Valeo', 1275.00, 21, 6, 19, 'available')
INSERT INTO dbo.parts values(32, 'Part 32', 'PTN0032', 'Electrical', 'Denso', 1300.00, 22, 7, 20, 'available')
INSERT INTO dbo.parts values(33, 'Part 33', 'PTN0033', 'Body', 'Mando', 1325.00, 23, 8, 21, 'out_of_stock')
INSERT INTO dbo.parts values(34, 'Part 34', 'PTN0034', 'Suspension', 'ZF', 1350.00, 24, 9, 22, 'discontinued')
INSERT INTO dbo.parts values(35, 'Part 35', 'PTN0035', 'Engine', 'Bosch', 1375.00, 25, 5, 23, 'available')
INSERT INTO dbo.parts values(36, 'Part 36', 'PTN0036', 'Brake', 'Valeo', 1400.00, 26, 6, 24, 'available')
INSERT INTO dbo.parts values(37, 'Part 37', 'PTN0037', 'Electrical', 'Denso', 1425.00, 27, 7, 25, 'available')
INSERT INTO dbo.parts values(38, 'Part 38', 'PTN0038', 'Body', 'Mando', 1450.00, 28, 8, 26, 'out_of_stock')
INSERT INTO dbo.parts values(39, 'Part 39', 'PTN0039', 'Suspension', 'ZF', 1475.00, 29, 9, 27, 'discontinued')
INSERT INTO dbo.parts values(40, 'Part 40', 'PTN0040', 'Engine', 'Bosch', 1500.00, 10, 5, 28, 'available')
INSERT INTO dbo.parts values(41, 'Part 41', 'PTN0041', 'Brake', 'Valeo', 1525.00, 11, 6, 29, 'available')
INSERT INTO dbo.parts values(42, 'Part 42', 'PTN0042', 'Electrical', 'Denso', 1550.00, 12, 7, 30, 'available')
INSERT INTO dbo.parts values(43, 'Part 43', 'PTN0043', 'Body', 'Mando', 1575.00, 13, 8, 31, 'out_of_stock')
INSERT INTO dbo.parts values(44, 'Part 44', 'PTN0044', 'Suspension', 'ZF', 1600.00, 14, 9, 32, 'discontinued')
INSERT INTO dbo.parts values(45, 'Part 45', 'PTN0045', 'Engine', 'Bosch', 1625.00, 15, 5, 33, 'available')
INSERT INTO dbo.parts values(46, 'Part 46', 'PTN0046', 'Brake', 'Valeo', 1650.00, 16, 6, 34, 'available')
INSERT INTO dbo.parts values(47, 'Part 47', 'PTN0047', 'Electrical', 'Denso', 1675.00, 17, 7, 35, 'available')
INSERT INTO dbo.parts values(48, 'Part 48', 'PTN0048', 'Body', 'Mando', 1700.00, 18, 8, 12, 'out_of_stock')
INSERT INTO dbo.parts values(49, 'Part 49', 'PTN0049', 'Suspension', 'ZF', 1725.00, 19, 9, 13, 'discontinued')
INSERT INTO dbo.parts values(50, 'Part 50', 'PTN0050', 'Engine', 'Bosch', 1750.00, 20, 5, 14, 'available');
create table dbo.part_suppliers (
    supplier_id     int primary key,
    supplier_name   varchar(100) not null,
    contact_person  varchar(100) not null,
    phone           varchar(15) not null,
    email           varchar(100) null,
    address         varchar(200) not null,
    city            varchar(50) not null,
    state           varchar(50) not null,
    supplied_parts  varchar(200) null,
    supplier_status varchar(20) check (supplier_status in ('active', 'inactive', 'blacklisted'))
);

INSERT INTO dbo.part_suppliers values(1, 'Supplier 1', 'Contact 1', '9200000001', 'supplier1@example.com', '1 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 1, Parts 2', 'active')
INSERT INTO dbo.part_suppliers values(2, 'Supplier 2', 'Contact 2', '9200000002', 'supplier2@example.com', '2 Industrial Road', 'Delhi', 'Delhi', 'Parts 2, Parts 3', 'active')
INSERT INTO dbo.part_suppliers values(3, 'Supplier 3', 'Contact 3', '9200000003', 'supplier3@example.com', '3 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 3, Parts 4', 'inactive')
INSERT INTO dbo.part_suppliers values(4, 'Supplier 4', 'Contact 4', '9200000004', 'supplier4@example.com', '4 Industrial Road', 'Pune', 'Maharashtra', 'Parts 4, Parts 5', 'blacklisted')
INSERT INTO dbo.part_suppliers values(5, 'Supplier 5', 'Contact 5', '9200000005', 'supplier5@example.com', '5 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 5, Parts 6', 'active')
INSERT INTO dbo.part_suppliers values(6, 'Supplier 6', 'Contact 6', '9200000006', 'supplier6@example.com', '6 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 6, Parts 7', 'active')
INSERT INTO dbo.part_suppliers values(7, 'Supplier 7', 'Contact 7', '9200000007', 'supplier7@example.com', '7 Industrial Road', 'Delhi', 'Delhi', 'Parts 7, Parts 8', 'active')
INSERT INTO dbo.part_suppliers values(8, 'Supplier 8', 'Contact 8', '9200000008', 'supplier8@example.com', '8 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 8, Parts 9', 'inactive')
INSERT INTO dbo.part_suppliers values(9, 'Supplier 9', 'Contact 9', '9200000009', 'supplier9@example.com', '9 Industrial Road', 'Pune', 'Maharashtra', 'Parts 9, Parts 10', 'blacklisted')
INSERT INTO dbo.part_suppliers values(10, 'Supplier 10', 'Contact 10', '9200000010', 'supplier10@example.com', '10 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 10, Parts 11', 'active')
INSERT INTO dbo.part_suppliers values(11, 'Supplier 11', 'Contact 11', '9200000011', 'supplier11@example.com', '11 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 11, Parts 12', 'active')
INSERT INTO dbo.part_suppliers values(12, 'Supplier 12', 'Contact 12', '9200000012', 'supplier12@example.com', '12 Industrial Road', 'Delhi', 'Delhi', 'Parts 12, Parts 13', 'active')
INSERT INTO dbo.part_suppliers values(13, 'Supplier 13', 'Contact 13', '9200000013', 'supplier13@example.com', '13 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 13, Parts 14', 'inactive')
INSERT INTO dbo.part_suppliers values(14, 'Supplier 14', 'Contact 14', '9200000014', 'supplier14@example.com', '14 Industrial Road', 'Pune', 'Maharashtra', 'Parts 14, Parts 15', 'blacklisted')
INSERT INTO dbo.part_suppliers values(15, 'Supplier 15', 'Contact 15', '9200000015', 'supplier15@example.com', '15 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 15, Parts 16', 'active')
INSERT INTO dbo.part_suppliers values(16, 'Supplier 16', 'Contact 16', '9200000016', 'supplier16@example.com', '16 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 16, Parts 17', 'active')
INSERT INTO dbo.part_suppliers values(17, 'Supplier 17', 'Contact 17', '9200000017', 'supplier17@example.com', '17 Industrial Road', 'Delhi', 'Delhi', 'Parts 17, Parts 18', 'active')
INSERT INTO dbo.part_suppliers values(18, 'Supplier 18', 'Contact 18', '9200000018', 'supplier18@example.com', '18 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 18, Parts 19', 'inactive')
INSERT INTO dbo.part_suppliers values(19, 'Supplier 19', 'Contact 19', '9200000019', 'supplier19@example.com', '19 Industrial Road', 'Pune', 'Maharashtra', 'Parts 19, Parts 20', 'blacklisted')
INSERT INTO dbo.part_suppliers values(20, 'Supplier 20', 'Contact 20', '9200000020', 'supplier20@example.com', '20 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 20, Parts 21', 'active')
INSERT INTO dbo.part_suppliers values(21, 'Supplier 21', 'Contact 21', '9200000021', 'supplier21@example.com', '21 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 21, Parts 22', 'active')
INSERT INTO dbo.part_suppliers values(22, 'Supplier 22', 'Contact 22', '9200000022', 'supplier22@example.com', '22 Industrial Road', 'Delhi', 'Delhi', 'Parts 22, Parts 23', 'active')
INSERT INTO dbo.part_suppliers values(23, 'Supplier 23', 'Contact 23', '9200000023', 'supplier23@example.com', '23 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 23, Parts 24', 'inactive')
INSERT INTO dbo.part_suppliers values(24, 'Supplier 24', 'Contact 24', '9200000024', 'supplier24@example.com', '24 Industrial Road', 'Pune', 'Maharashtra', 'Parts 24, Parts 25', 'blacklisted')
INSERT INTO dbo.part_suppliers values(25, 'Supplier 25', 'Contact 25', '9200000025', 'supplier25@example.com', '25 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 25, Parts 26', 'active')
INSERT INTO dbo.part_suppliers values(26, 'Supplier 26', 'Contact 26', '9200000026', 'supplier26@example.com', '26 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 26, Parts 27', 'active')
INSERT INTO dbo.part_suppliers values(27, 'Supplier 27', 'Contact 27', '9200000027', 'supplier27@example.com', '27 Industrial Road', 'Delhi', 'Delhi', 'Parts 27, Parts 28', 'active')
INSERT INTO dbo.part_suppliers values(28, 'Supplier 28', 'Contact 28', '9200000028', 'supplier28@example.com', '28 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 28, Parts 29', 'inactive')
INSERT INTO dbo.part_suppliers values(29, 'Supplier 29', 'Contact 29', '9200000029', 'supplier29@example.com', '29 Industrial Road', 'Pune', 'Maharashtra', 'Parts 29, Parts 30', 'blacklisted')
INSERT INTO dbo.part_suppliers values(30, 'Supplier 30', 'Contact 30', '9200000030', 'supplier30@example.com', '30 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 30, Parts 31', 'active')
INSERT INTO dbo.part_suppliers values(31, 'Supplier 31', 'Contact 31', '9200000031', 'supplier31@example.com', '31 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 31, Parts 32', 'active')
INSERT INTO dbo.part_suppliers values(32, 'Supplier 32', 'Contact 32', '9200000032', 'supplier32@example.com', '32 Industrial Road', 'Delhi', 'Delhi', 'Parts 32, Parts 33', 'active')
INSERT INTO dbo.part_suppliers values(33, 'Supplier 33', 'Contact 33', '9200000033', 'supplier33@example.com', '33 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 33, Parts 34', 'inactive')
INSERT INTO dbo.part_suppliers values(34, 'Supplier 34', 'Contact 34', '9200000034', 'supplier34@example.com', '34 Industrial Road', 'Pune', 'Maharashtra', 'Parts 34, Parts 35', 'blacklisted')
INSERT INTO dbo.part_suppliers values(35, 'Supplier 35', 'Contact 35', '9200000035', 'supplier35@example.com', '35 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 35, Parts 36', 'active')
INSERT INTO dbo.part_suppliers values(36, 'Supplier 36', 'Contact 36', '9200000036', 'supplier36@example.com', '36 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 36, Parts 37', 'active')
INSERT INTO dbo.part_suppliers values(37, 'Supplier 37', 'Contact 37', '9200000037', 'supplier37@example.com', '37 Industrial Road', 'Delhi', 'Delhi', 'Parts 37, Parts 38', 'active')
INSERT INTO dbo.part_suppliers values(38, 'Supplier 38', 'Contact 38', '9200000038', 'supplier38@example.com', '38 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 38, Parts 39', 'inactive')
INSERT INTO dbo.part_suppliers values(39, 'Supplier 39', 'Contact 39', '9200000039', 'supplier39@example.com', '39 Industrial Road', 'Pune', 'Maharashtra', 'Parts 39, Parts 40', 'blacklisted')
INSERT INTO dbo.part_suppliers values(40, 'Supplier 40', 'Contact 40', '9200000040', 'supplier40@example.com', '40 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 40, Parts 41', 'active')
INSERT INTO dbo.part_suppliers values(41, 'Supplier 41', 'Contact 41', '9200000041', 'supplier41@example.com', '41 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 41, Parts 42', 'active')
INSERT INTO dbo.part_suppliers values(42, 'Supplier 42', 'Contact 42', '9200000042', 'supplier42@example.com', '42 Industrial Road', 'Delhi', 'Delhi', 'Parts 42, Parts 43', 'active')
INSERT INTO dbo.part_suppliers values(43, 'Supplier 43', 'Contact 43', '9200000043', 'supplier43@example.com', '43 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 43, Parts 44', 'inactive')
INSERT INTO dbo.part_suppliers values(44, 'Supplier 44', 'Contact 44', '9200000044', 'supplier44@example.com', '44 Industrial Road', 'Pune', 'Maharashtra', 'Parts 44, Parts 45', 'blacklisted')
INSERT INTO dbo.part_suppliers values(45, 'Supplier 45', 'Contact 45', '9200000045', 'supplier45@example.com', '45 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 45, Parts 46', 'active')
INSERT INTO dbo.part_suppliers values(46, 'Supplier 46', 'Contact 46', '9200000046', 'supplier46@example.com', '46 Industrial Road', 'Chennai', 'Tamil Nadu', 'Parts 46, Parts 47', 'active')
INSERT INTO dbo.part_suppliers values(47, 'Supplier 47', 'Contact 47', '9200000047', 'supplier47@example.com', '47 Industrial Road', 'Delhi', 'Delhi', 'Parts 47, Parts 48', 'active')
INSERT INTO dbo.part_suppliers values(48, 'Supplier 48', 'Contact 48', '9200000048', 'supplier48@example.com', '48 Industrial Road', 'Mumbai', 'Maharashtra', 'Parts 48, Parts 49', 'inactive')
INSERT INTO dbo.part_suppliers values(49, 'Supplier 49', 'Contact 49', '9200000049', 'supplier49@example.com', '49 Industrial Road', 'Pune', 'Maharashtra', 'Parts 49, Parts 50', 'blacklisted')
INSERT INTO dbo.part_suppliers values(50, 'Supplier 50', 'Contact 50', '9200000050', 'supplier50@example.com', '50 Industrial Road', 'Hyderabad', 'Telangana', 'Parts 50, Parts 1', 'active')


create table dbo.mechanics (
    mechanic_id     int primary key,
    center_id       int not null,
    mechanic_name   varchar(100) not null,
    specialization  varchar(100) null,
    phone           varchar(15) not null,
    email           varchar(100) null,
    joining_date    date not null,
    experience_years int check (experience_years >= 0),
    salary           decimal(10,2) check (salary >= 0),
    mechanic_status  varchar(20) check (mechanic_status in ('active', 'on_leave', 'resigned')),
    foreign key (center_id) references dbo.service_centers(center_id)
);

INSERT INTO dbo.mechanics values(1, 1, 'Mechanic 1', 'Brake', '9300000001', 'mechanic1@example.com', '2024-02-15', 3, 25500.00, 'active')
INSERT INTO dbo.mechanics values(2, 2, 'Mechanic 2', 'Electrical', '9300000002', 'mechanic2@example.com', '2024-03-15', 4, 26000.00, 'active')
INSERT INTO dbo.mechanics values(3, 3, 'Mechanic 3', 'Transmission', '9300000003', 'mechanic3@example.com', '2024-04-15', 5, 26500.00, 'on_leave')
INSERT INTO dbo.mechanics values(4, 4, 'Mechanic 4', 'AC', '9300000004', 'mechanic4@example.com', '2024-05-15', 6, 27000.00, 'resigned')
INSERT INTO dbo.mechanics values(5, 5, 'Mechanic 5', 'Engine', '9300000005', 'mechanic5@example.com', '2024-06-15', 7, 27500.00, 'active')
INSERT INTO dbo.mechanics values(6, 6, 'Mechanic 6', 'Brake', '9300000006', 'mechanic6@example.com', '2024-07-15', 8, 28000.00, 'active')
INSERT INTO dbo.mechanics values(7, 7, 'Mechanic 7', 'Electrical', '9300000007', 'mechanic7@example.com', '2024-08-15', 9, 28500.00, 'active')
INSERT INTO dbo.mechanics values(8, 8, 'Mechanic 8', 'Transmission', '9300000008', 'mechanic8@example.com', '2024-09-15', 10, 29000.00, 'on_leave')
INSERT INTO dbo.mechanics values(9, 9, 'Mechanic 9', 'AC', '9300000009', 'mechanic9@example.com', '2024-10-15', 11, 29500.00, 'resigned')
INSERT INTO dbo.mechanics values(10, 10, 'Mechanic 10', 'Engine', '9300000010', 'mechanic10@example.com', '2024-11-15', 2, 30000.00, 'active')
INSERT INTO dbo.mechanics values(11, 11, 'Mechanic 11', 'Brake', '9300000011', 'mechanic11@example.com', '2024-12-15', 3, 30500.00, 'active')
INSERT INTO dbo.mechanics values(12, 12, 'Mechanic 12', 'Electrical', '9300000012', 'mechanic12@example.com', '2024-01-15', 4, 31000.00, 'active')
INSERT INTO dbo.mechanics values(13, 13, 'Mechanic 13', 'Transmission', '9300000013', 'mechanic13@example.com', '2024-02-15', 5, 31500.00, 'on_leave')
INSERT INTO dbo.mechanics values(14, 14, 'Mechanic 14', 'AC', '9300000014', 'mechanic14@example.com', '2024-03-15', 6, 32000.00, 'resigned')
INSERT INTO dbo.mechanics values(15, 15, 'Mechanic 15', 'Engine', '9300000015', 'mechanic15@example.com', '2024-04-15', 7, 32500.00, 'active')
INSERT INTO dbo.mechanics values(16, 16, 'Mechanic 16', 'Brake', '9300000016', 'mechanic16@example.com', '2024-05-15', 8, 33000.00, 'active')
INSERT INTO dbo.mechanics values(17, 17, 'Mechanic 17', 'Electrical', '9300000017', 'mechanic17@example.com', '2024-06-15', 9, 33500.00, 'active')
INSERT INTO dbo.mechanics values(18, 18, 'Mechanic 18', 'Transmission', '9300000018', 'mechanic18@example.com', '2024-07-15', 10, 34000.00, 'on_leave')
INSERT INTO dbo.mechanics values(19, 19, 'Mechanic 19', 'AC', '9300000019', 'mechanic19@example.com', '2024-08-15', 11, 34500.00, 'resigned')
INSERT INTO dbo.mechanics values(20, 20, 'Mechanic 20', 'Engine', '9300000020', 'mechanic20@example.com', '2024-09-15', 2, 35000.00, 'active')
INSERT INTO dbo.mechanics values(21, 21, 'Mechanic 21', 'Brake', '9300000021', 'mechanic21@example.com', '2024-10-15', 3, 35500.00, 'active')
INSERT INTO dbo.mechanics values(22, 22, 'Mechanic 22', 'Electrical', '9300000022', 'mechanic22@example.com', '2024-11-15', 4, 36000.00, 'active')
INSERT INTO dbo.mechanics values(23, 23, 'Mechanic 23', 'Transmission', '9300000023', 'mechanic23@example.com', '2024-12-15', 5, 36500.00, 'on_leave')
INSERT INTO dbo.mechanics values(24, 24, 'Mechanic 24', 'AC', '9300000024', 'mechanic24@example.com', '2024-01-15', 6, 37000.00, 'resigned')
INSERT INTO dbo.mechanics values(25, 25, 'Mechanic 25', 'Engine', '9300000025', 'mechanic25@example.com', '2024-02-15', 7, 37500.00, 'active')
INSERT INTO dbo.mechanics values(26, 26, 'Mechanic 26', 'Brake', '9300000026', 'mechanic26@example.com', '2024-03-15', 8, 38000.00, 'active')
INSERT INTO dbo.mechanics values(27, 27, 'Mechanic 27', 'Electrical', '9300000027', 'mechanic27@example.com', '2024-04-15', 9, 38500.00, 'active')
INSERT INTO dbo.mechanics values(28, 28, 'Mechanic 28', 'Transmission', '9300000028', 'mechanic28@example.com', '2024-05-15', 10, 39000.00, 'on_leave')
INSERT INTO dbo.mechanics values(29, 29, 'Mechanic 29', 'AC', '9300000029', 'mechanic29@example.com', '2024-06-15', 11, 39500.00, 'resigned')
INSERT INTO dbo.mechanics values(30, 30, 'Mechanic 30', 'Engine', '9300000030', 'mechanic30@example.com', '2024-07-15', 2, 40000.00, 'active')
INSERT INTO dbo.mechanics values(31, 31, 'Mechanic 31', 'Brake', '9300000031', 'mechanic31@example.com', '2024-08-15', 3, 40500.00, 'active')
INSERT INTO dbo.mechanics values(32, 32, 'Mechanic 32', 'Electrical', '9300000032', 'mechanic32@example.com', '2024-09-15', 4, 41000.00, 'active')
INSERT INTO dbo.mechanics values(33, 33, 'Mechanic 33', 'Transmission', '9300000033', 'mechanic33@example.com', '2024-10-15', 5, 41500.00, 'on_leave')
INSERT INTO dbo.mechanics values(34, 34, 'Mechanic 34', 'AC', '9300000034', 'mechanic34@example.com', '2024-11-15', 6, 42000.00, 'resigned')
INSERT INTO dbo.mechanics values(35, 35, 'Mechanic 35', 'Engine', '9300000035', 'mechanic35@example.com', '2024-12-15', 7, 42500.00, 'active')
INSERT INTO dbo.mechanics values(36, 36, 'Mechanic 36', 'Brake', '9300000036', 'mechanic36@example.com', '2024-01-15', 8, 43000.00, 'active')
INSERT INTO dbo.mechanics values(37, 37, 'Mechanic 37', 'Electrical', '9300000037', 'mechanic37@example.com', '2024-02-15', 9, 43500.00, 'active')
INSERT INTO dbo.mechanics values(38, 38, 'Mechanic 38', 'Transmission', '9300000038', 'mechanic38@example.com', '2024-03-15', 10, 44000.00, 'on_leave')
INSERT INTO dbo.mechanics values(39, 39, 'Mechanic 39', 'AC', '9300000039', 'mechanic39@example.com', '2024-04-15', 11, 44500.00, 'resigned')
INSERT INTO dbo.mechanics values(40, 40, 'Mechanic 40', 'Engine', '9300000040', 'mechanic40@example.com', '2024-05-15', 2, 45000.00, 'active')
INSERT INTO dbo.mechanics values(41, 41, 'Mechanic 41', 'Brake', '9300000041', 'mechanic41@example.com', '2024-06-15', 3, 45500.00, 'active')
INSERT INTO dbo.mechanics values(42, 42, 'Mechanic 42', 'Electrical', '9300000042', 'mechanic42@example.com', '2024-07-15', 4, 46000.00, 'active')
INSERT INTO dbo.mechanics values(43, 43, 'Mechanic 43', 'Transmission', '9300000043', 'mechanic43@example.com', '2024-08-15', 5, 46500.00, 'on_leave')
INSERT INTO dbo.mechanics values(44, 44, 'Mechanic 44', 'AC', '9300000044', 'mechanic44@example.com', '2024-09-15', 6, 47000.00, 'resigned')
INSERT INTO dbo.mechanics values(45, 45, 'Mechanic 45', 'Engine', '9300000045', 'mechanic45@example.com', '2024-10-15', 7, 47500.00, 'active')
INSERT INTO dbo.mechanics values(46, 46, 'Mechanic 46', 'Brake', '9300000046', 'mechanic46@example.com', '2024-11-15', 8, 48000.00, 'active')
INSERT INTO dbo.mechanics values(47, 47, 'Mechanic 47', 'Electrical', '9300000047', 'mechanic47@example.com', '2024-12-15', 9, 48500.00, 'active')
INSERT INTO dbo.mechanics values(48, 48, 'Mechanic 48', 'Transmission', '9300000048', 'mechanic48@example.com', '2024-01-15', 10, 49000.00, 'on_leave')
INSERT INTO dbo.mechanics values(49, 49, 'Mechanic 49', 'AC', '9300000049', 'mechanic49@example.com', '2024-02-15', 11, 49500.00, 'resigned')
INSERT INTO dbo.mechanics values(50, 50, 'Mechanic 50', 'Engine', '9300000050', 'mechanic50@example.com', '2024-03-15', 2, 50000.00, 'active')


create table dbo.ownership_history (
    history_id        int primary key,
    vehicle_id        int not null,
    owner_id          int not null,
    previous_owner_name varchar(100) null,
    transfer_date       date not null,
    transfer_reason     varchar(100) null,
    registration_state  varchar(50) not null,
    transfer_fee        decimal(10,2) check (transfer_fee >= 0),
    transfer_status     varchar(20) check (transfer_status in ('completed', 'pending', 'cancelled')),
    remarks             varchar(200) null,
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);

INSERT INTO dbo.ownership_history values(1, 1, 1, 'Previous Owner 1', '2025-02-02', 'Transfer', 'Tamil Nadu', 1100.00, 'completed', 'Ownership record 1')
INSERT INTO dbo.ownership_history values(2, 2, 2, 'Previous Owner 2', '2025-03-03', 'Gift', 'Delhi', 1200.00, 'pending', 'Ownership record 2')
INSERT INTO dbo.ownership_history values(3, 3, 3, 'Previous Owner 3', '2025-04-04', 'Purchase', 'Maharashtra', 1300.00, 'completed', 'Ownership record 3')
INSERT INTO dbo.ownership_history values(4, 4, 4, 'Previous Owner 4', '2025-05-05', 'Family Transfer', 'Karnataka', 1400.00, 'cancelled', 'Ownership record 4')
INSERT INTO dbo.ownership_history values(5, 5, 5, 'Previous Owner 5', '2025-06-06', 'Sale', 'Telangana', 1500.00, 'completed', 'Ownership record 5')
INSERT INTO dbo.ownership_history values(6, 6, 6, 'Previous Owner 6', '2025-07-07', 'Transfer', 'Tamil Nadu', 1600.00, 'completed', 'Ownership record 6')
INSERT INTO dbo.ownership_history values(7, 7, 7, 'Previous Owner 7', '2025-08-08', 'Gift', 'Delhi', 1700.00, 'pending', 'Ownership record 7')
INSERT INTO dbo.ownership_history values(8, 8, 8, 'Previous Owner 8', '2025-09-09', 'Purchase', 'Maharashtra', 1800.00, 'completed', 'Ownership record 8')
INSERT INTO dbo.ownership_history values(9, 9, 9, 'Previous Owner 9', '2025-10-10', 'Family Transfer', 'Karnataka', 1900.00, 'cancelled', 'Ownership record 9')
INSERT INTO dbo.ownership_history values(10, 10, 10, 'Previous Owner 10', '2025-11-11', 'Sale', 'Telangana', 2000.00, 'completed', 'Ownership record 10')
INSERT INTO dbo.ownership_history values(11, 11, 11, 'Previous Owner 11', '2025-12-12', 'Transfer', 'Tamil Nadu', 2100.00, 'completed', 'Ownership record 11')
INSERT INTO dbo.ownership_history values(12, 12, 12, 'Previous Owner 12', '2025-01-13', 'Gift', 'Delhi', 2200.00, 'pending', 'Ownership record 12')
INSERT INTO dbo.ownership_history values(13, 13, 13, 'Previous Owner 13', '2025-02-14', 'Purchase', 'Maharashtra', 2300.00, 'completed', 'Ownership record 13')
INSERT INTO dbo.ownership_history values(14, 14, 14, 'Previous Owner 14', '2025-03-15', 'Family Transfer', 'Karnataka', 2400.00, 'cancelled', 'Ownership record 14')
INSERT INTO dbo.ownership_history values(15, 15, 15, 'Previous Owner 15', '2025-04-16', 'Sale', 'Telangana', 2500.00, 'completed', 'Ownership record 15')
INSERT INTO dbo.ownership_history values(16, 16, 16, 'Previous Owner 16', '2025-05-17', 'Transfer', 'Tamil Nadu', 2600.00, 'completed', 'Ownership record 16')
INSERT INTO dbo.ownership_history values(17, 17, 17, 'Previous Owner 17', '2025-06-18', 'Gift', 'Delhi', 2700.00, 'pending', 'Ownership record 17')
INSERT INTO dbo.ownership_history values(18, 18, 18, 'Previous Owner 18', '2025-07-19', 'Purchase', 'Maharashtra', 2800.00, 'completed', 'Ownership record 18')
INSERT INTO dbo.ownership_history values(19, 19, 19, 'Previous Owner 19', '2025-08-20', 'Family Transfer', 'Karnataka', 2900.00, 'cancelled', 'Ownership record 19')
INSERT INTO dbo.ownership_history values(20, 20, 20, 'Previous Owner 20', '2025-09-21', 'Sale', 'Telangana', 3000.00, 'completed', 'Ownership record 20')
INSERT INTO dbo.ownership_history values(21, 21, 21, 'Previous Owner 21', '2025-10-22', 'Transfer', 'Tamil Nadu', 3100.00, 'completed', 'Ownership record 21')
INSERT INTO dbo.ownership_history values(22, 22, 22, 'Previous Owner 22', '2025-11-23', 'Gift', 'Delhi', 3200.00, 'pending', 'Ownership record 22')
INSERT INTO dbo.ownership_history values(23, 23, 23, 'Previous Owner 23', '2025-12-24', 'Purchase', 'Maharashtra', 3300.00, 'completed', 'Ownership record 23')
INSERT INTO dbo.ownership_history values(24, 24, 24, 'Previous Owner 24', '2025-01-25', 'Family Transfer', 'Karnataka', 3400.00, 'cancelled', 'Ownership record 24')
INSERT INTO dbo.ownership_history values(25, 25, 25, 'Previous Owner 25', '2025-02-26', 'Sale', 'Telangana', 3500.00, 'completed', 'Ownership record 25')
INSERT INTO dbo.ownership_history values(26, 26, 26, 'Previous Owner 26', '2025-03-27', 'Transfer', 'Tamil Nadu', 3600.00, 'completed', 'Ownership record 26')
INSERT INTO dbo.ownership_history values(27, 27, 27, 'Previous Owner 27', '2025-04-01', 'Gift', 'Delhi', 3700.00, 'pending', 'Ownership record 27')
INSERT INTO dbo.ownership_history values(28, 28, 28, 'Previous Owner 28', '2025-05-02', 'Purchase', 'Maharashtra', 3800.00, 'completed', 'Ownership record 28')
INSERT INTO dbo.ownership_history values(29, 29, 29, 'Previous Owner 29', '2025-06-03', 'Family Transfer', 'Karnataka', 3900.00, 'cancelled', 'Ownership record 29')
INSERT INTO dbo.ownership_history values(30, 30, 30, 'Previous Owner 30', '2025-07-04', 'Sale', 'Telangana', 4000.00, 'completed', 'Ownership record 30')
INSERT INTO dbo.ownership_history values(31, 31, 31, 'Previous Owner 31', '2025-08-05', 'Transfer', 'Tamil Nadu', 4100.00, 'completed', 'Ownership record 31')
INSERT INTO dbo.ownership_history values(32, 32, 32, 'Previous Owner 32', '2025-09-06', 'Gift', 'Delhi', 4200.00, 'pending', 'Ownership record 32')
INSERT INTO dbo.ownership_history values(33, 33, 33, 'Previous Owner 33', '2025-10-07', 'Purchase', 'Maharashtra', 4300.00, 'completed', 'Ownership record 33')
INSERT INTO dbo.ownership_history values(34, 34, 34, 'Previous Owner 34', '2025-11-08', 'Family Transfer', 'Karnataka', 4400.00, 'cancelled', 'Ownership record 34')
INSERT INTO dbo.ownership_history values(35, 35, 35, 'Previous Owner 35', '2025-12-09', 'Sale', 'Telangana', 4500.00, 'completed', 'Ownership record 35')
INSERT INTO dbo.ownership_history values(36, 36, 36, 'Previous Owner 36', '2025-01-10', 'Transfer', 'Tamil Nadu', 4600.00, 'completed', 'Ownership record 36')
INSERT INTO dbo.ownership_history values(37, 37, 37, 'Previous Owner 37', '2025-02-11', 'Gift', 'Delhi', 4700.00, 'pending', 'Ownership record 37')
INSERT INTO dbo.ownership_history values(38, 38, 38, 'Previous Owner 38', '2025-03-12', 'Purchase', 'Maharashtra', 4800.00, 'completed', 'Ownership record 38')
INSERT INTO dbo.ownership_history values(39, 39, 39, 'Previous Owner 39', '2025-04-13', 'Family Transfer', 'Karnataka', 4900.00, 'cancelled', 'Ownership record 39')
INSERT INTO dbo.ownership_history values(40, 40, 40, 'Previous Owner 40', '2025-05-14', 'Sale', 'Telangana', 5000.00, 'completed', 'Ownership record 40')
INSERT INTO dbo.ownership_history values(41, 41, 41, 'Previous Owner 41', '2025-06-15', 'Transfer', 'Tamil Nadu', 5100.00, 'completed', 'Ownership record 41')
INSERT INTO dbo.ownership_history values(42, 42, 42, 'Previous Owner 42', '2025-07-16', 'Gift', 'Delhi', 5200.00, 'pending', 'Ownership record 42')
INSERT INTO dbo.ownership_history values(43, 43, 43, 'Previous Owner 43', '2025-08-17', 'Purchase', 'Maharashtra', 5300.00, 'completed', 'Ownership record 43')
INSERT INTO dbo.ownership_history values(44, 44, 44, 'Previous Owner 44', '2025-09-18', 'Family Transfer', 'Karnataka', 5400.00, 'cancelled', 'Ownership record 44')
INSERT INTO dbo.ownership_history values(45, 45, 45, 'Previous Owner 45', '2025-10-19', 'Sale', 'Telangana', 5500.00, 'completed', 'Ownership record 45')
INSERT INTO dbo.ownership_history values(46, 46, 46, 'Previous Owner 46', '2025-11-20', 'Transfer', 'Tamil Nadu', 5600.00, 'completed', 'Ownership record 46')
INSERT INTO dbo.ownership_history values(47, 47, 47, 'Previous Owner 47', '2025-12-21', 'Gift', 'Delhi', 5700.00, 'pending', 'Ownership record 47')
INSERT INTO dbo.ownership_history values(48, 48, 48, 'Previous Owner 48', '2025-01-22', 'Purchase', 'Maharashtra', 5800.00, 'completed', 'Ownership record 48')
INSERT INTO dbo.ownership_history values(49, 49, 49, 'Previous Owner 49', '2025-02-23', 'Family Transfer', 'Karnataka', 5900.00, 'cancelled', 'Ownership record 49')
INSERT INTO dbo.ownership_history values(50, 50, 50, 'Previous Owner 50', '2025-03-24', 'Sale', 'Telangana', 6000.00, 'completed', 'Ownership record 50')

create table dbo.documents (
    document_id      int primary key,
    vehicle_id       int not null,
    owner_id         int not null,
    document_type    varchar(30) not null,
    document_number  varchar(50) not null unique,
    issue_date       date not null,
    expiry_date      date null,
    issuing_authority varchar(100) not null,
    document_status   varchar(20) check (document_status in ('active', 'expired', 'suspended')),
    document_file     varchar(255) null,
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.documents values(1, 1, 1, 'PUC', 'DOC00001', '2025-02-01', '2027-02-01', 'Transport Department', 'active', 'document_1.pdf')
INSERT INTO dbo.documents values(2, 2, 2, 'Invoice', 'DOC00002', '2025-03-01', '2027-03-01', 'Regional Office', 'expired', 'document_2.pdf')
INSERT INTO dbo.documents values(3, 3, 3, 'NOC', 'DOC00003', '2025-04-01', '2027-04-01', 'RTO', 'active', 'document_3.pdf')
INSERT INTO dbo.documents values(4, 4, 4, 'Permit', 'DOC00004', '2025-05-01', '2027-05-01', 'Transport Department', 'suspended', 'document_4.pdf')
INSERT INTO dbo.documents values(5, 5, 5, 'RC', 'DOC00005', '2025-06-01', '2027-06-01', 'Regional Office', 'active', 'document_5.pdf')
INSERT INTO dbo.documents values(6, 6, 6, 'PUC', 'DOC00006', '2025-07-01', '2027-07-01', 'RTO', 'active', 'document_6.pdf')
INSERT INTO dbo.documents values(7, 7, 7, 'Invoice', 'DOC00007', '2025-08-01', '2027-08-01', 'Transport Department', 'expired', 'document_7.pdf')
INSERT INTO dbo.documents values(8, 8, 8, 'NOC', 'DOC00008', '2025-09-01', '2027-09-01', 'Regional Office', 'active', 'document_8.pdf')
INSERT INTO dbo.documents values(9, 9, 9, 'Permit', 'DOC00009', '2025-10-01', '2027-10-01', 'RTO', 'suspended', 'document_9.pdf')
INSERT INTO dbo.documents values(10, 10, 10, 'RC', 'DOC00010', '2025-11-01', '2027-11-01', 'Transport Department', 'active', 'document_10.pdf')
INSERT INTO dbo.documents values(11, 11, 11, 'PUC', 'DOC00011', '2025-12-01', '2027-12-01', 'Regional Office', 'active', 'document_11.pdf')
INSERT INTO dbo.documents values(12, 12, 12, 'Invoice', 'DOC00012', '2025-01-01', '2027-01-01', 'RTO', 'expired', 'document_12.pdf')
INSERT INTO dbo.documents values(13, 13, 13, 'NOC', 'DOC00013', '2025-02-01', '2027-02-01', 'Transport Department', 'active', 'document_13.pdf')
INSERT INTO dbo.documents values(14, 14, 14, 'Permit', 'DOC00014', '2025-03-01', '2027-03-01', 'Regional Office', 'suspended', 'document_14.pdf')
INSERT INTO dbo.documents values(15, 15, 15, 'RC', 'DOC00015', '2025-04-01', '2027-04-01', 'RTO', 'active', 'document_15.pdf')
INSERT INTO dbo.documents values(16, 16, 16, 'PUC', 'DOC00016', '2025-05-01', '2027-05-01', 'Transport Department', 'active', 'document_16.pdf')
INSERT INTO dbo.documents values(17, 17, 17, 'Invoice', 'DOC00017', '2025-06-01', '2027-06-01', 'Regional Office', 'expired', 'document_17.pdf')
INSERT INTO dbo.documents values(18, 18, 18, 'NOC', 'DOC00018', '2025-07-01', '2027-07-01', 'RTO', 'active', 'document_18.pdf')
INSERT INTO dbo.documents values(19, 19, 19, 'Permit', 'DOC00019', '2025-08-01', '2027-08-01', 'Transport Department', 'suspended', 'document_19.pdf')
INSERT INTO dbo.documents values(20, 20, 20, 'RC', 'DOC00020', '2025-09-01', '2027-09-01', 'Regional Office', 'active', 'document_20.pdf')
INSERT INTO dbo.documents values(21, 21, 21, 'PUC', 'DOC00021', '2025-10-01', '2027-10-01', 'RTO', 'active', 'document_21.pdf')
INSERT INTO dbo.documents values(22, 22, 22, 'Invoice', 'DOC00022', '2025-11-01', '2027-11-01', 'Transport Department', 'expired', 'document_22.pdf')
INSERT INTO dbo.documents values(23, 23, 23, 'NOC', 'DOC00023', '2025-12-01', '2027-12-01', 'Regional Office', 'active', 'document_23.pdf')
INSERT INTO dbo.documents values(24, 24, 24, 'Permit', 'DOC00024', '2025-01-01', '2027-01-01', 'RTO', 'suspended', 'document_24.pdf')
INSERT INTO dbo.documents values(25, 25, 25, 'RC', 'DOC00025', '2025-02-01', '2027-02-01', 'Transport Department', 'active', 'document_25.pdf')
INSERT INTO dbo.documents values(26, 26, 26, 'PUC', 'DOC00026', '2025-03-01', '2027-03-01', 'Regional Office', 'active', 'document_26.pdf')
INSERT INTO dbo.documents values(27, 27, 27, 'Invoice', 'DOC00027', '2025-04-01', '2027-04-01', 'RTO', 'expired', 'document_27.pdf')
INSERT INTO dbo.documents values(28, 28, 28, 'NOC', 'DOC00028', '2025-05-01', '2027-05-01', 'Transport Department', 'active', 'document_28.pdf')
INSERT INTO dbo.documents values(29, 29, 29, 'Permit', 'DOC00029', '2025-06-01', '2027-06-01', 'Regional Office', 'suspended', 'document_29.pdf')
INSERT INTO dbo.documents values(30, 30, 30, 'RC', 'DOC00030', '2025-07-01', '2027-07-01', 'RTO', 'active', 'document_30.pdf')
INSERT INTO dbo.documents values(31, 31, 31, 'PUC', 'DOC00031', '2025-08-01', '2027-08-01', 'Transport Department', 'active', 'document_31.pdf')
INSERT INTO dbo.documents values(32, 32, 32, 'Invoice', 'DOC00032', '2025-09-01', '2027-09-01', 'Regional Office', 'expired', 'document_32.pdf')
INSERT INTO dbo.documents values(33, 33, 33, 'NOC', 'DOC00033', '2025-10-01', '2027-10-01', 'RTO', 'active', 'document_33.pdf')
INSERT INTO dbo.documents values(34, 34, 34, 'Permit', 'DOC00034', '2025-11-01', '2027-11-01', 'Transport Department', 'suspended', 'document_34.pdf')
INSERT INTO dbo.documents values(35, 35, 35, 'RC', 'DOC00035', '2025-12-01', '2027-12-01', 'Regional Office', 'active', 'document_35.pdf')
INSERT INTO dbo.documents values(36, 36, 36, 'PUC', 'DOC00036', '2025-01-01', '2027-01-01', 'RTO', 'active', 'document_36.pdf')
INSERT INTO dbo.documents values(37, 37, 37, 'Invoice', 'DOC00037', '2025-02-01', '2027-02-01', 'Transport Department', 'expired', 'document_37.pdf')
INSERT INTO dbo.documents values(38, 38, 38, 'NOC', 'DOC00038', '2025-03-01', '2027-03-01', 'Regional Office', 'active', 'document_38.pdf')
INSERT INTO dbo.documents values(39, 39, 39, 'Permit', 'DOC00039', '2025-04-01', '2027-04-01', 'RTO', 'suspended', 'document_39.pdf')
INSERT INTO dbo.documents values(40, 40, 40, 'RC', 'DOC00040', '2025-05-01', '2027-05-01', 'Transport Department', 'active', 'document_40.pdf')
INSERT INTO dbo.documents values(41, 41, 41, 'PUC', 'DOC00041', '2025-06-01', '2027-06-01', 'Regional Office', 'active', 'document_41.pdf')
INSERT INTO dbo.documents values(42, 42, 42, 'Invoice', 'DOC00042', '2025-07-01', '2027-07-01', 'RTO', 'expired', 'document_42.pdf')
INSERT INTO dbo.documents values(43, 43, 43, 'NOC', 'DOC00043', '2025-08-01', '2027-08-01', 'Transport Department', 'active', 'document_43.pdf')
INSERT INTO dbo.documents values(44, 44, 44, 'Permit', 'DOC00044', '2025-09-01', '2027-09-01', 'Regional Office', 'suspended', 'document_44.pdf')
INSERT INTO dbo.documents values(45, 45, 45, 'RC', 'DOC00045', '2025-10-01', '2027-10-01', 'RTO', 'active', 'document_45.pdf')
INSERT INTO dbo.documents values(46, 46, 46, 'PUC', 'DOC00046', '2025-11-01', '2027-11-01', 'Transport Department', 'active', 'document_46.pdf')
INSERT INTO dbo.documents values(47, 47, 47, 'Invoice', 'DOC00047', '2025-12-01', '2027-12-01', 'Regional Office', 'expired', 'document_47.pdf')
INSERT INTO dbo.documents values(48, 48, 48, 'NOC', 'DOC00048', '2025-01-01', '2027-01-01', 'RTO', 'active', 'document_48.pdf')
INSERT INTO dbo.documents values(49, 49, 49, 'Permit', 'DOC00049', '2025-02-01', '2027-02-01', 'Transport Department', 'suspended', 'document_49.pdf')
INSERT INTO dbo.documents values(50, 50, 50, 'RC', 'DOC00050', '2025-03-01', '2027-03-01', 'Regional Office', 'active', 'document_50.pdf')


create table dbo.insurance (
    insurance_id     int primary key,
    vehicle_id       int not null,
    owner_id         int not null,
    policy_number    varchar(50) not null unique,
    insurance_company varchar(100) not null,
    insurance_type   varchar(30) check (insurance_type in ('comprehensive', 'third_party')),
    start_date       date not null,
    expiry_date      date not null,
    premium_amount   decimal(10,2) check (premium_amount >= 0),
    insurance_status varchar(20) check (insurance_status in ('active', 'expired', 'cancelled')),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.insurance values(1, 1, 1, 'POL00001', 'HDFC Ergo', 'third_party', '2026-02-01', '2027-02-01', 8150.00, 'active')
INSERT INTO dbo.insurance values(2, 2, 2, 'POL00002', 'Bajaj Allianz', 'comprehensive', '2026-03-01', '2027-03-01', 8300.00, 'expired')
INSERT INTO dbo.insurance values(3, 3, 3, 'POL00003', 'Tata AIG', 'third_party', '2026-04-01', '2027-04-01', 8450.00, 'active')
INSERT INTO dbo.insurance values(4, 4, 4, 'POL00004', 'SBI General', 'comprehensive', '2026-05-01', '2027-05-01', 8600.00, 'cancelled')
INSERT INTO dbo.insurance values(5, 5, 5, 'POL00005', 'ICICI Lombard', 'third_party', '2026-06-01', '2027-06-01', 8750.00, 'active')
INSERT INTO dbo.insurance values(6, 6, 6, 'POL00006', 'HDFC Ergo', 'comprehensive', '2026-07-01', '2027-07-01', 8900.00, 'active')
INSERT INTO dbo.insurance values(7, 7, 7, 'POL00007', 'Bajaj Allianz', 'third_party', '2026-08-01', '2027-08-01', 9050.00, 'expired')
INSERT INTO dbo.insurance values(8, 8, 8, 'POL00008', 'Tata AIG', 'comprehensive', '2026-09-01', '2027-09-01', 9200.00, 'active')
INSERT INTO dbo.insurance values(9, 9, 9, 'POL00009', 'SBI General', 'third_party', '2026-10-01', '2027-10-01', 9350.00, 'cancelled')
INSERT INTO dbo.insurance values(10, 10, 10, 'POL00010', 'ICICI Lombard', 'comprehensive', '2026-11-01', '2027-11-01', 9500.00, 'active')
INSERT INTO dbo.insurance values(11, 11, 11, 'POL00011', 'HDFC Ergo', 'third_party', '2026-12-01', '2027-12-01', 9650.00, 'active')
INSERT INTO dbo.insurance values(12, 12, 12, 'POL00012', 'Bajaj Allianz', 'comprehensive', '2026-01-01', '2027-01-01', 9800.00, 'expired')
INSERT INTO dbo.insurance values(13, 13, 13, 'POL00013', 'Tata AIG', 'third_party', '2026-02-01', '2027-02-01', 9950.00, 'active')
INSERT INTO dbo.insurance values(14, 14, 14, 'POL00014', 'SBI General', 'comprehensive', '2026-03-01', '2027-03-01', 10100.00, 'cancelled')
INSERT INTO dbo.insurance values(15, 15, 15, 'POL00015', 'ICICI Lombard', 'third_party', '2026-04-01', '2027-04-01', 10250.00, 'active')
INSERT INTO dbo.insurance values(16, 16, 16, 'POL00016', 'HDFC Ergo', 'comprehensive', '2026-05-01', '2027-05-01', 10400.00, 'active')
INSERT INTO dbo.insurance values(17, 17, 17, 'POL00017', 'Bajaj Allianz', 'third_party', '2026-06-01', '2027-06-01', 10550.00, 'expired')
INSERT INTO dbo.insurance values(18, 18, 18, 'POL00018', 'Tata AIG', 'comprehensive', '2026-07-01', '2027-07-01', 10700.00, 'active')
INSERT INTO dbo.insurance values(19, 19, 19, 'POL00019', 'SBI General', 'third_party', '2026-08-01', '2027-08-01', 10850.00, 'cancelled')
INSERT INTO dbo.insurance values(20, 20, 20, 'POL00020', 'ICICI Lombard', 'comprehensive', '2026-09-01', '2027-09-01', 11000.00, 'active')
INSERT INTO dbo.insurance values(21, 21, 21, 'POL00021', 'HDFC Ergo', 'third_party', '2026-10-01', '2027-10-01', 11150.00, 'active')
INSERT INTO dbo.insurance values(22, 22, 22, 'POL00022', 'Bajaj Allianz', 'comprehensive', '2026-11-01', '2027-11-01', 11300.00, 'expired')
INSERT INTO dbo.insurance values(23, 23, 23, 'POL00023', 'Tata AIG', 'third_party', '2026-12-01', '2027-12-01', 11450.00, 'active')
INSERT INTO dbo.insurance values(24, 24, 24, 'POL00024', 'SBI General', 'comprehensive', '2026-01-01', '2027-01-01', 11600.00, 'cancelled')
INSERT INTO dbo.insurance values(25, 25, 25, 'POL00025', 'ICICI Lombard', 'third_party', '2026-02-01', '2027-02-01', 11750.00, 'active')
INSERT INTO dbo.insurance values(26, 26, 26, 'POL00026', 'HDFC Ergo', 'comprehensive', '2026-03-01', '2027-03-01', 11900.00, 'active')
INSERT INTO dbo.insurance values(27, 27, 27, 'POL00027', 'Bajaj Allianz', 'third_party', '2026-04-01', '2027-04-01', 12050.00, 'expired')
INSERT INTO dbo.insurance values(28, 28, 28, 'POL00028', 'Tata AIG', 'comprehensive', '2026-05-01', '2027-05-01', 12200.00, 'active')
INSERT INTO dbo.insurance values(29, 29, 29, 'POL00029', 'SBI General', 'third_party', '2026-06-01', '2027-06-01', 12350.00, 'cancelled')
INSERT INTO dbo.insurance values(30, 30, 30, 'POL00030', 'ICICI Lombard', 'comprehensive', '2026-07-01', '2027-07-01', 12500.00, 'active')
INSERT INTO dbo.insurance values(31, 31, 31, 'POL00031', 'HDFC Ergo', 'third_party', '2026-08-01', '2027-08-01', 12650.00, 'active')
INSERT INTO dbo.insurance values(32, 32, 32, 'POL00032', 'Bajaj Allianz', 'comprehensive', '2026-09-01', '2027-09-01', 12800.00, 'expired')
INSERT INTO dbo.insurance values(33, 33, 33, 'POL00033', 'Tata AIG', 'third_party', '2026-10-01', '2027-10-01', 12950.00, 'active')
INSERT INTO dbo.insurance values(34, 34, 34, 'POL00034', 'SBI General', 'comprehensive', '2026-11-01', '2027-11-01', 13100.00, 'cancelled')
INSERT INTO dbo.insurance values(35, 35, 35, 'POL00035', 'ICICI Lombard', 'third_party', '2026-12-01', '2027-12-01', 13250.00, 'active')
INSERT INTO dbo.insurance values(36, 36, 36, 'POL00036', 'HDFC Ergo', 'comprehensive', '2026-01-01', '2027-01-01', 13400.00, 'active')
INSERT INTO dbo.insurance values(37, 37, 37, 'POL00037', 'Bajaj Allianz', 'third_party', '2026-02-01', '2027-02-01', 13550.00, 'expired')
INSERT INTO dbo.insurance values(38, 38, 38, 'POL00038', 'Tata AIG', 'comprehensive', '2026-03-01', '2027-03-01', 13700.00, 'active')
INSERT INTO dbo.insurance values(39, 39, 39, 'POL00039', 'SBI General', 'third_party', '2026-04-01', '2027-04-01', 13850.00, 'cancelled')
INSERT INTO dbo.insurance values(40, 40, 40, 'POL00040', 'ICICI Lombard', 'comprehensive', '2026-05-01', '2027-05-01', 14000.00, 'active')
INSERT INTO dbo.insurance values(41, 41, 41, 'POL00041', 'HDFC Ergo', 'third_party', '2026-06-01', '2027-06-01', 14150.00, 'active')
INSERT INTO dbo.insurance values(42, 42, 42, 'POL00042', 'Bajaj Allianz', 'comprehensive', '2026-07-01', '2027-07-01', 14300.00, 'expired')
INSERT INTO dbo.insurance values(43, 43, 43, 'POL00043', 'Tata AIG', 'third_party', '2026-08-01', '2027-08-01', 14450.00, 'active')
INSERT INTO dbo.insurance values(44, 44, 44, 'POL00044', 'SBI General', 'comprehensive', '2026-09-01', '2027-09-01', 14600.00, 'cancelled')
INSERT INTO dbo.insurance values(45, 45, 45, 'POL00045', 'ICICI Lombard', 'third_party', '2026-10-01', '2027-10-01', 14750.00, 'active')
INSERT INTO dbo.insurance values(46, 46, 46, 'POL00046', 'HDFC Ergo', 'comprehensive', '2026-11-01', '2027-11-01', 14900.00, 'active')
INSERT INTO dbo.insurance values(47, 47, 47, 'POL00047', 'Bajaj Allianz', 'third_party', '2026-12-01', '2027-12-01', 15050.00, 'expired')
INSERT INTO dbo.insurance values(48, 48, 48, 'POL00048', 'Tata AIG', 'comprehensive', '2026-01-01', '2027-01-01', 15200.00, 'active')
INSERT INTO dbo.insurance values(49, 49, 49, 'POL00049', 'SBI General', 'third_party', '2026-02-01', '2027-02-01', 15350.00, 'cancelled')
INSERT INTO dbo.insurance values(50, 50, 50, 'POL00050', 'ICICI Lombard', 'comprehensive', '2026-03-01', '2027-03-01', 15500.00, 'active')


create table dbo.service_history (
    service_id      int primary key,
    vehicle_id      int not null,
    center_id       int not null,
    service_date    date not null,
    service_type    varchar(50) not null,
    odometer_reading int check (odometer_reading >= 0),
    service_cost     decimal(10,2) check (service_cost >= 0),
    next_service_date date null,
    service_status    varchar(20) check (service_status in ('completed', 'in_progress', 'cancelled')),
    remarks           varchar(200) null,
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (center_id) references dbo.service_centers(center_id)
);

INSERT INTO dbo.service_history values(1, 1, 1, '2026-02-02', 'General Service', 10750, 1600.00, '2026-08-02', 'completed', 'Service record 1')
INSERT INTO dbo.service_history values(2, 2, 2, '2026-03-03', 'Brake Service', 11500, 1700.00, '2026-09-03', 'in_progress', 'Service record 2')
INSERT INTO dbo.service_history values(3, 3, 3, '2026-04-04', 'Engine Service', 12250, 1800.00, '2026-10-04', 'completed', 'Service record 3')
INSERT INTO dbo.service_history values(4, 4, 4, '2026-05-05', 'AC Service', 13000, 1900.00, '2026-11-05', 'cancelled', 'Service record 4')
INSERT INTO dbo.service_history values(5, 5, 5, '2026-06-06', 'Oil Change', 13750, 2000.00, '2026-12-06', 'completed', 'Service record 5')
INSERT INTO dbo.service_history values(6, 6, 6, '2026-07-07', 'General Service', 14500, 2100.00, '2026-01-07', 'completed', 'Service record 6')
INSERT INTO dbo.service_history values(7, 7, 7, '2026-08-08', 'Brake Service', 15250, 2200.00, '2026-02-08', 'in_progress', 'Service record 7')
INSERT INTO dbo.service_history values(8, 8, 8, '2026-09-09', 'Engine Service', 16000, 2300.00, '2026-03-09', 'completed', 'Service record 8')
INSERT INTO dbo.service_history values(9, 9, 9, '2026-10-10', 'AC Service', 16750, 2400.00, '2026-04-10', 'cancelled', 'Service record 9')
INSERT INTO dbo.service_history values(10, 10, 10, '2026-11-11', 'Oil Change', 17500, 2500.00, '2026-05-11', 'completed', 'Service record 10')
INSERT INTO dbo.service_history values(11, 11, 11, '2026-12-12', 'General Service', 18250, 2600.00, '2026-06-12', 'completed', 'Service record 11')
INSERT INTO dbo.service_history values(12, 12, 12, '2026-01-13', 'Brake Service', 19000, 2700.00, '2026-07-13', 'in_progress', 'Service record 12')
INSERT INTO dbo.service_history values(13, 13, 13, '2026-02-14', 'Engine Service', 19750, 2800.00, '2026-08-14', 'completed', 'Service record 13')
INSERT INTO dbo.service_history values(14, 14, 14, '2026-03-15', 'AC Service', 20500, 2900.00, '2026-09-15', 'cancelled', 'Service record 14')
INSERT INTO dbo.service_history values(15, 15, 15, '2026-04-16', 'Oil Change', 21250, 3000.00, '2026-10-16', 'completed', 'Service record 15')
INSERT INTO dbo.service_history values(16, 16, 16, '2026-05-17', 'General Service', 22000, 3100.00, '2026-11-17', 'completed', 'Service record 16')
INSERT INTO dbo.service_history values(17, 17, 17, '2026-06-18', 'Brake Service', 22750, 3200.00, '2026-12-18', 'in_progress', 'Service record 17')
INSERT INTO dbo.service_history values(18, 18, 18, '2026-07-19', 'Engine Service', 23500, 3300.00, '2026-01-19', 'completed', 'Service record 18')
INSERT INTO dbo.service_history values(19, 19, 19, '2026-08-20', 'AC Service', 24250, 3400.00, '2026-02-20', 'cancelled', 'Service record 19')
INSERT INTO dbo.service_history values(20, 20, 20, '2026-09-21', 'Oil Change', 25000, 3500.00, '2026-03-21', 'completed', 'Service record 20')
INSERT INTO dbo.service_history values(21, 21, 21, '2026-10-22', 'General Service', 25750, 3600.00, '2026-04-22', 'completed', 'Service record 21')
INSERT INTO dbo.service_history values(22, 22, 22, '2026-11-23', 'Brake Service', 26500, 3700.00, '2026-05-23', 'in_progress', 'Service record 22')
INSERT INTO dbo.service_history values(23, 23, 23, '2026-12-24', 'Engine Service', 27250, 3800.00, '2026-06-24', 'completed', 'Service record 23')
INSERT INTO dbo.service_history values(24, 24, 24, '2026-01-25', 'AC Service', 28000, 3900.00, '2026-07-25', 'cancelled', 'Service record 24')
INSERT INTO dbo.service_history values(25, 25, 25, '2026-02-26', 'Oil Change', 28750, 4000.00, '2026-08-26', 'completed', 'Service record 25')
INSERT INTO dbo.service_history values(26, 26, 26, '2026-03-27', 'General Service', 29500, 4100.00, '2026-09-27', 'completed', 'Service record 26')
INSERT INTO dbo.service_history values(27, 27, 27, '2026-04-01', 'Brake Service', 30250, 4200.00, '2026-10-01', 'in_progress', 'Service record 27')
INSERT INTO dbo.service_history values(28, 28, 28, '2026-05-02', 'Engine Service', 31000, 4300.00, '2026-11-02', 'completed', 'Service record 28')
INSERT INTO dbo.service_history values(29, 29, 29, '2026-06-03', 'AC Service', 31750, 4400.00, '2026-12-03', 'cancelled', 'Service record 29')
INSERT INTO dbo.service_history values(30, 30, 30, '2026-07-04', 'Oil Change', 32500, 4500.00, '2026-01-04', 'completed', 'Service record 30')
INSERT INTO dbo.service_history values(31, 31, 31, '2026-08-05', 'General Service', 33250, 4600.00, '2026-02-05', 'completed', 'Service record 31')
INSERT INTO dbo.service_history values(32, 32, 32, '2026-09-06', 'Brake Service', 34000, 4700.00, '2026-03-06', 'in_progress', 'Service record 32')
INSERT INTO dbo.service_history values(33, 33, 33, '2026-10-07', 'Engine Service', 34750, 4800.00, '2026-04-07', 'completed', 'Service record 33')
INSERT INTO dbo.service_history values(34, 34, 34, '2026-11-08', 'AC Service', 35500, 4900.00, '2026-05-08', 'cancelled', 'Service record 34')
INSERT INTO dbo.service_history values(35, 35, 35, '2026-12-09', 'Oil Change', 36250, 5000.00, '2026-06-09', 'completed', 'Service record 35')
INSERT INTO dbo.service_history values(36, 36, 36, '2026-01-10', 'General Service', 37000, 5100.00, '2026-07-10', 'completed', 'Service record 36')
INSERT INTO dbo.service_history values(37, 37, 37, '2026-02-11', 'Brake Service', 37750, 5200.00, '2026-08-11', 'in_progress', 'Service record 37')
INSERT INTO dbo.service_history values(38, 38, 38, '2026-03-12', 'Engine Service', 38500, 5300.00, '2026-09-12', 'completed', 'Service record 38')
INSERT INTO dbo.service_history values(39, 39, 39, '2026-04-13', 'AC Service', 39250, 5400.00, '2026-10-13', 'cancelled', 'Service record 39')
INSERT INTO dbo.service_history values(40, 40, 40, '2026-05-14', 'Oil Change', 40000, 5500.00, '2026-11-14', 'completed', 'Service record 40')
INSERT INTO dbo.service_history values(41, 41, 41, '2026-06-15', 'General Service', 40750, 5600.00, '2026-12-15', 'completed', 'Service record 41')
INSERT INTO dbo.service_history values(42, 42, 42, '2026-07-16', 'Brake Service', 41500, 5700.00, '2026-01-16', 'in_progress', 'Service record 42')
INSERT INTO dbo.service_history values(43, 43, 43, '2026-08-17', 'Engine Service', 42250, 5800.00, '2026-02-17', 'completed', 'Service record 43')
INSERT INTO dbo.service_history values(44, 44, 44, '2026-09-18', 'AC Service', 43000, 5900.00, '2026-03-18', 'cancelled', 'Service record 44')
INSERT INTO dbo.service_history values(45, 45, 45, '2026-10-19', 'Oil Change', 43750, 6000.00, '2026-04-19', 'completed', 'Service record 45')
INSERT INTO dbo.service_history values(46, 46, 46, '2026-11-20', 'General Service', 44500, 6100.00, '2026-05-20', 'completed', 'Service record 46')
INSERT INTO dbo.service_history values(47, 47, 47, '2026-12-21', 'Brake Service', 45250, 6200.00, '2026-06-21', 'in_progress', 'Service record 47')
INSERT INTO dbo.service_history values(48, 48, 48, '2026-01-22', 'Engine Service', 46000, 6300.00, '2026-07-22', 'completed', 'Service record 48')
INSERT INTO dbo.service_history values(49, 49, 49, '2026-02-23', 'AC Service', 46750, 6400.00, '2026-08-23', 'cancelled', 'Service record 49')
INSERT INTO dbo.service_history values(50, 50, 50, '2026-03-24', 'Oil Change', 47500, 6500.00, '2026-09-24', 'completed', 'Service record 50')

create table dbo.service_details (
    service_detail_id int primary key,
    service_id int not null,
    part_id int null,
    service_description varchar(200) not null,
    quantity int check (quantity >= 0),
    unit_cost decimal(10,2) check (unit_cost >= 0),
    labor_cost decimal(10,2) check (labor_cost >= 0),
    total_cost decimal(10,2) check (total_cost >= 0),
    mechanic_name varchar(100) null,
    warranty_period int null,
    foreign key (service_id) references dbo.service_history(service_id),
    foreign key (part_id) references dbo.parts(part_id)
);
INSERT INTO dbo.service_details values(1, 1, 1, 'Service work for vehicle 1', 2, 420.00, 315.00, 1155.00, 'Mechanic 1', 7)
INSERT INTO dbo.service_details values(2, 2, 2, 'Service work for vehicle 2', 3, 440.00, 330.00, 1650.00, 'Mechanic 2', 8)
INSERT INTO dbo.service_details values(3, 3, 3, 'Service work for vehicle 3', 4, 460.00, 345.00, 2185.00, 'Mechanic 3', 9)
INSERT INTO dbo.service_details values(4, 4, 4, 'Service work for vehicle 4', 1, 480.00, 360.00, 840.00, 'Mechanic 4', 10)
INSERT INTO dbo.service_details values(5, 5, 5, 'Service work for vehicle 5', 2, 500.00, 375.00, 1375.00, 'Mechanic 5', 11)
INSERT INTO dbo.service_details values(6, 6, 6, 'Service work for vehicle 6', 3, 520.00, 390.00, 1950.00, 'Mechanic 6', 12)
INSERT INTO dbo.service_details values(7, 7, 7, 'Service work for vehicle 7', 4, 540.00, 405.00, 2565.00, 'Mechanic 7', 13)
INSERT INTO dbo.service_details values(8, 8, 8, 'Service work for vehicle 8', 1, 560.00, 420.00, 980.00, 'Mechanic 8', 14)
INSERT INTO dbo.service_details values(9, 9, 9, 'Service work for vehicle 9', 2, 580.00, 435.00, 1595.00, 'Mechanic 9', 15)
INSERT INTO dbo.service_details values(10, 10, 10, 'Service work for vehicle 10', 3, 600.00, 450.00, 2250.00, 'Mechanic 10', 16)
INSERT INTO dbo.service_details values(11, 11, 11, 'Service work for vehicle 11', 4, 620.00, 465.00, 2945.00, 'Mechanic 11', 17)
INSERT INTO dbo.service_details values(12, 12, 12, 'Service work for vehicle 12', 1, 640.00, 480.00, 1120.00, 'Mechanic 12', 18)
INSERT INTO dbo.service_details values(13, 13, 13, 'Service work for vehicle 13', 2, 660.00, 495.00, 1815.00, 'Mechanic 13', 19)
INSERT INTO dbo.service_details values(14, 14, 14, 'Service work for vehicle 14', 3, 680.00, 510.00, 2550.00, 'Mechanic 14', 20)
INSERT INTO dbo.service_details values(15, 15, 15, 'Service work for vehicle 15', 4, 700.00, 525.00, 3325.00, 'Mechanic 15', 21)
INSERT INTO dbo.service_details values(16, 16, 16, 'Service work for vehicle 16', 1, 720.00, 540.00, 1260.00, 'Mechanic 16', 22)
INSERT INTO dbo.service_details values(17, 17, 17, 'Service work for vehicle 17', 2, 740.00, 555.00, 2035.00, 'Mechanic 17', 23)
INSERT INTO dbo.service_details values(18, 18, 18, 'Service work for vehicle 18', 3, 760.00, 570.00, 2850.00, 'Mechanic 18', 6)
INSERT INTO dbo.service_details values(19, 19, 19, 'Service work for vehicle 19', 4, 780.00, 585.00, 3705.00, 'Mechanic 19', 7)
INSERT INTO dbo.service_details values(20, 20, 20, 'Service work for vehicle 20', 1, 800.00, 600.00, 1400.00, 'Mechanic 20', 8)
INSERT INTO dbo.service_details values(21, 21, 21, 'Service work for vehicle 21', 2, 820.00, 615.00, 2255.00, 'Mechanic 21', 9)
INSERT INTO dbo.service_details values(22, 22, 22, 'Service work for vehicle 22', 3, 840.00, 630.00, 3150.00, 'Mechanic 22', 10)
INSERT INTO dbo.service_details values(23, 23, 23, 'Service work for vehicle 23', 4, 860.00, 645.00, 4085.00, 'Mechanic 23', 11)
INSERT INTO dbo.service_details values(24, 24, 24, 'Service work for vehicle 24', 1, 880.00, 660.00, 1540.00, 'Mechanic 24', 12)
INSERT INTO dbo.service_details values(25, 25, 25, 'Service work for vehicle 25', 2, 900.00, 675.00, 2475.00, 'Mechanic 25', 13)
INSERT INTO dbo.service_details values(26, 26, 26, 'Service work for vehicle 26', 3, 920.00, 690.00, 3450.00, 'Mechanic 26', 14)
INSERT INTO dbo.service_details values(27, 27, 27, 'Service work for vehicle 27', 4, 940.00, 705.00, 4465.00, 'Mechanic 27', 15)
INSERT INTO dbo.service_details values(28, 28, 28, 'Service work for vehicle 28', 1, 960.00, 720.00, 1680.00, 'Mechanic 28', 16)
INSERT INTO dbo.service_details values(29, 29, 29, 'Service work for vehicle 29', 2, 980.00, 735.00, 2695.00, 'Mechanic 29', 17)
INSERT INTO dbo.service_details values(30, 30, 30, 'Service work for vehicle 30', 3, 1000.00, 750.00, 3750.00, 'Mechanic 30', 18)
INSERT INTO dbo.service_details values(31, 31, 31, 'Service work for vehicle 31', 4, 1020.00, 765.00, 4845.00, 'Mechanic 31', 19)
INSERT INTO dbo.service_details values(32, 32, 32, 'Service work for vehicle 32', 1, 1040.00, 780.00, 1820.00, 'Mechanic 32', 20)
INSERT INTO dbo.service_details values(33, 33, 33, 'Service work for vehicle 33', 2, 1060.00, 795.00, 2915.00, 'Mechanic 33', 21)
INSERT INTO dbo.service_details values(34, 34, 34, 'Service work for vehicle 34', 3, 1080.00, 810.00, 4050.00, 'Mechanic 34', 22)
INSERT INTO dbo.service_details values(35, 35, 35, 'Service work for vehicle 35', 4, 1100.00, 825.00, 5225.00, 'Mechanic 35', 23)
INSERT INTO dbo.service_details values(36, 36, 36, 'Service work for vehicle 36', 1, 1120.00, 840.00, 1960.00, 'Mechanic 36', 6)
INSERT INTO dbo.service_details values(37, 37, 37, 'Service work for vehicle 37', 2, 1140.00, 855.00, 3135.00, 'Mechanic 37', 7)
INSERT INTO dbo.service_details values(38, 38, 38, 'Service work for vehicle 38', 3, 1160.00, 870.00, 4350.00, 'Mechanic 38', 8)
INSERT INTO dbo.service_details values(39, 39, 39, 'Service work for vehicle 39', 4, 1180.00, 885.00, 5605.00, 'Mechanic 39', 9)
INSERT INTO dbo.service_details values(40, 40, 40, 'Service work for vehicle 40', 1, 1200.00, 900.00, 2100.00, 'Mechanic 40', 10)
INSERT INTO dbo.service_details values(41, 41, 41, 'Service work for vehicle 41', 2, 1220.00, 915.00, 3355.00, 'Mechanic 41', 11)
INSERT INTO dbo.service_details values(42, 42, 42, 'Service work for vehicle 42', 3, 1240.00, 930.00, 4650.00, 'Mechanic 42', 12)
INSERT INTO dbo.service_details values(43, 43, 43, 'Service work for vehicle 43', 4, 1260.00, 945.00, 5985.00, 'Mechanic 43', 13)
INSERT INTO dbo.service_details values(44, 44, 44, 'Service work for vehicle 44', 1, 1280.00, 960.00, 2240.00, 'Mechanic 44', 14)
INSERT INTO dbo.service_details values(45, 45, 45, 'Service work for vehicle 45', 2, 1300.00, 975.00, 3575.00, 'Mechanic 45', 15)
INSERT INTO dbo.service_details values(46, 46, 46, 'Service work for vehicle 46', 3, 1320.00, 990.00, 4950.00, 'Mechanic 46', 16)
INSERT INTO dbo.service_details values(47, 47, 47, 'Service work for vehicle 47', 4, 1340.00, 1005.00, 6365.00, 'Mechanic 47', 17)
INSERT INTO dbo.service_details values(48, 48, 48, 'Service work for vehicle 48', 1, 1360.00, 1020.00, 2380.00, 'Mechanic 48', 18)
INSERT INTO dbo.service_details values(49, 49, 49, 'Service work for vehicle 49', 2, 1380.00, 1035.00, 3795.00, 'Mechanic 49', 19)
INSERT INTO dbo.service_details values(50, 50, 50, 'Service work for vehicle 50', 3, 1400.00, 1050.00, 5250.00, 'Mechanic 50', 20)


create table dbo.accidents (
    accident_id int primary key,
    vehicle_id int not null,
    owner_id int not null,
    accident_date date not null,
    accident_time time null,
    accident_location varchar(200) not null,
    accident_type varchar(50) not null,
    damage_description varchar(300) null,
    estimated_damage decimal(12,2) check (estimated_damage >= 0),
    accident_status varchar(20) check (accident_status in ('reported', 'under_investigation', 'resolved', 'closed')),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.accidents values(1, 1, 1, '2025-02-02', '10:01:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 1', 5350.00, 'under_investigation')
INSERT INTO dbo.accidents values(2, 2, 2, '2025-03-03', '10:02:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 2', 5700.00, 'resolved')
INSERT INTO dbo.accidents values(3, 3, 3, '2025-04-04', '10:03:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 3', 6050.00, 'closed')
INSERT INTO dbo.accidents values(4, 4, 4, '2025-05-05', '10:04:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 4', 6400.00, 'reported')
INSERT INTO dbo.accidents values(5, 5, 5, '2025-06-06', '10:05:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 5', 6750.00, 'under_investigation')
INSERT INTO dbo.accidents values(6, 6, 6, '2025-07-07', '10:06:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 6', 7100.00, 'resolved')
INSERT INTO dbo.accidents values(7, 7, 7, '2025-08-08', '10:07:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 7', 7450.00, 'closed')
INSERT INTO dbo.accidents values(8, 8, 8, '2025-09-09', '10:08:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 8', 7800.00, 'reported')
INSERT INTO dbo.accidents values(9, 9, 9, '2025-10-10', '10:09:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 9', 8150.00, 'under_investigation')
INSERT INTO dbo.accidents values(10, 10, 10, '2025-11-11', '10:10:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 10', 8500.00, 'resolved')
INSERT INTO dbo.accidents values(11, 11, 11, '2025-12-12', '10:11:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 11', 8850.00, 'closed')
INSERT INTO dbo.accidents values(12, 12, 12, '2025-01-13', '10:12:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 12', 9200.00, 'reported')
INSERT INTO dbo.accidents values(13, 13, 13, '2025-02-14', '10:13:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 13', 9550.00, 'under_investigation')
INSERT INTO dbo.accidents values(14, 14, 14, '2025-03-15', '10:14:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 14', 9900.00, 'resolved')
INSERT INTO dbo.accidents values(15, 15, 15, '2025-04-16', '10:15:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 15', 10250.00, 'closed')
INSERT INTO dbo.accidents values(16, 16, 16, '2025-05-17', '10:16:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 16', 10600.00, 'reported')
INSERT INTO dbo.accidents values(17, 17, 17, '2025-06-18', '10:17:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 17', 10950.00, 'under_investigation')
INSERT INTO dbo.accidents values(18, 18, 18, '2025-07-19', '10:18:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 18', 11300.00, 'resolved')
INSERT INTO dbo.accidents values(19, 19, 19, '2025-08-20', '10:19:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 19', 11650.00, 'closed')
INSERT INTO dbo.accidents values(20, 20, 20, '2025-09-21', '10:20:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 20', 12000.00, 'reported')
INSERT INTO dbo.accidents values(21, 21, 21, '2025-10-22', '10:21:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 21', 12350.00, 'under_investigation')
INSERT INTO dbo.accidents values(22, 22, 22, '2025-11-23', '10:22:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 22', 12700.00, 'resolved')
INSERT INTO dbo.accidents values(23, 23, 23, '2025-12-24', '10:23:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 23', 13050.00, 'closed')
INSERT INTO dbo.accidents values(24, 24, 24, '2025-01-25', '10:24:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 24', 13400.00, 'reported')
INSERT INTO dbo.accidents values(25, 25, 25, '2025-02-26', '10:25:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 25', 13750.00, 'under_investigation')
INSERT INTO dbo.accidents values(26, 26, 26, '2025-03-27', '10:26:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 26', 14100.00, 'resolved')
INSERT INTO dbo.accidents values(27, 27, 27, '2025-04-01', '10:27:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 27', 14450.00, 'closed')
INSERT INTO dbo.accidents values(28, 28, 28, '2025-05-02', '10:28:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 28', 14800.00, 'reported')
INSERT INTO dbo.accidents values(29, 29, 29, '2025-06-03', '10:29:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 29', 15150.00, 'under_investigation')
INSERT INTO dbo.accidents values(30, 30, 30, '2025-07-04', '10:30:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 30', 15500.00, 'resolved')
INSERT INTO dbo.accidents values(31, 31, 31, '2025-08-05', '10:31:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 31', 15850.00, 'closed')
INSERT INTO dbo.accidents values(32, 32, 32, '2025-09-06', '10:32:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 32', 16200.00, 'reported')
INSERT INTO dbo.accidents values(33, 33, 33, '2025-10-07', '10:33:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 33', 16550.00, 'under_investigation')
INSERT INTO dbo.accidents values(34, 34, 34, '2025-11-08', '10:34:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 34', 16900.00, 'resolved')
INSERT INTO dbo.accidents values(35, 35, 35, '2025-12-09', '10:35:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 35', 17250.00, 'closed')
INSERT INTO dbo.accidents values(36, 36, 36, '2025-01-10', '10:36:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 36', 17600.00, 'reported')
INSERT INTO dbo.accidents values(37, 37, 37, '2025-02-11', '10:37:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 37', 17950.00, 'under_investigation')
INSERT INTO dbo.accidents values(38, 38, 38, '2025-03-12', '10:38:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 38', 18300.00, 'resolved')
INSERT INTO dbo.accidents values(39, 39, 39, '2025-04-13', '10:39:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 39', 18650.00, 'closed')
INSERT INTO dbo.accidents values(40, 40, 40, '2025-05-14', '10:40:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 40', 19000.00, 'reported')
INSERT INTO dbo.accidents values(41, 41, 41, '2025-06-15', '10:41:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 41', 19350.00, 'under_investigation')
INSERT INTO dbo.accidents values(42, 42, 42, '2025-07-16', '10:42:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 42', 19700.00, 'resolved')
INSERT INTO dbo.accidents values(43, 43, 43, '2025-08-17', '10:43:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 43', 20050.00, 'closed')
INSERT INTO dbo.accidents values(44, 44, 44, '2025-09-18', '10:44:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 44', 20400.00, 'reported')
INSERT INTO dbo.accidents values(45, 45, 45, '2025-10-19', '10:45:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 45', 20750.00, 'under_investigation')
INSERT INTO dbo.accidents values(46, 46, 46, '2025-11-20', '10:46:00', 'Ring Road', 'Rear End', 'Damage reported for vehicle 46', 21100.00, 'resolved')
INSERT INTO dbo.accidents values(47, 47, 47, '2025-12-21', '10:47:00', 'NH 44', 'Side Impact', 'Damage reported for vehicle 47', 21450.00, 'closed')
INSERT INTO dbo.accidents values(48, 48, 48, '2025-01-22', '10:48:00', 'Market Road', 'Parking Accident', 'Damage reported for vehicle 48', 21800.00, 'reported')
INSERT INTO dbo.accidents values(49, 49, 49, '2025-02-23', '10:49:00', 'Airport Road', 'Road Accident', 'Damage reported for vehicle 49', 22150.00, 'under_investigation')
INSERT INTO dbo.accidents values(50, 50, 50, '2025-03-24', '10:50:00', 'MG Road', 'Minor Collision', 'Damage reported for vehicle 50', 22500.00, 'resolved')


create table dbo.traffic_fines (
    fine_id int primary key,
    vehicle_id int not null,
    owner_id int not null,
    violation_type varchar(100) not null,
    violation_date date not null,
    violation_location varchar(200) null,
    fine_amount decimal(10,2) check (fine_amount >= 0),
    due_date date not null,
    payment_status varchar(20) check (payment_status in ('paid', 'unpaid', 'disputed')),
    issuing_authority varchar(100) not null,
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.traffic_fines values(1, 1, 1, 'No Parking', '2026-02-02', 'MG Road', 525.00, '2026-03-02', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(2, 2, 2, 'Signal Jump', '2026-03-03', 'Ring Road', 550.00, '2026-04-03', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(3, 3, 3, 'No Helmet', '2026-04-04', 'Highway', 575.00, '2026-05-04', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(4, 4, 4, 'Wrong Lane', '2026-05-05', 'Market Area', 600.00, '2026-06-05', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(5, 5, 5, 'Speeding', '2026-06-06', 'City Center', 625.00, '2026-07-06', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(6, 6, 6, 'No Parking', '2026-07-07', 'MG Road', 650.00, '2026-08-07', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(7, 7, 7, 'Signal Jump', '2026-08-08', 'Ring Road', 675.00, '2026-09-08', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(8, 8, 8, 'No Helmet', '2026-09-09', 'Highway', 700.00, '2026-10-09', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(9, 9, 9, 'Wrong Lane', '2026-10-10', 'Market Area', 725.00, '2026-11-10', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(10, 10, 10, 'Speeding', '2026-11-11', 'City Center', 750.00, '2026-12-11', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(11, 11, 11, 'No Parking', '2026-12-12', 'MG Road', 775.00, '2026-01-12', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(12, 12, 12, 'Signal Jump', '2026-01-13', 'Ring Road', 800.00, '2026-02-13', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(13, 13, 13, 'No Helmet', '2026-02-14', 'Highway', 825.00, '2026-03-14', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(14, 14, 14, 'Wrong Lane', '2026-03-15', 'Market Area', 850.00, '2026-04-15', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(15, 15, 15, 'Speeding', '2026-04-16', 'City Center', 875.00, '2026-05-16', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(16, 16, 16, 'No Parking', '2026-05-17', 'MG Road', 900.00, '2026-06-17', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(17, 17, 17, 'Signal Jump', '2026-06-18', 'Ring Road', 925.00, '2026-07-18', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(18, 18, 18, 'No Helmet', '2026-07-19', 'Highway', 950.00, '2026-08-19', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(19, 19, 19, 'Wrong Lane', '2026-08-20', 'Market Area', 975.00, '2026-09-20', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(20, 20, 20, 'Speeding', '2026-09-21', 'City Center', 1000.00, '2026-10-21', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(21, 21, 21, 'No Parking', '2026-10-22', 'MG Road', 1025.00, '2026-11-22', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(22, 22, 22, 'Signal Jump', '2026-11-23', 'Ring Road', 1050.00, '2026-12-23', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(23, 23, 23, 'No Helmet', '2026-12-24', 'Highway', 1075.00, '2026-01-24', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(24, 24, 24, 'Wrong Lane', '2026-01-25', 'Market Area', 1100.00, '2026-02-25', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(25, 25, 25, 'Speeding', '2026-02-26', 'City Center', 1125.00, '2026-03-26', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(26, 26, 26, 'No Parking', '2026-03-27', 'MG Road', 1150.00, '2026-04-27', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(27, 27, 27, 'Signal Jump', '2026-04-01', 'Ring Road', 1175.00, '2026-05-01', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(28, 28, 28, 'No Helmet', '2026-05-02', 'Highway', 1200.00, '2026-06-02', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(29, 29, 29, 'Wrong Lane', '2026-06-03', 'Market Area', 1225.00, '2026-07-03', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(30, 30, 30, 'Speeding', '2026-07-04', 'City Center', 1250.00, '2026-08-04', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(31, 31, 31, 'No Parking', '2026-08-05', 'MG Road', 1275.00, '2026-09-05', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(32, 32, 32, 'Signal Jump', '2026-09-06', 'Ring Road', 1300.00, '2026-10-06', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(33, 33, 33, 'No Helmet', '2026-10-07', 'Highway', 1325.00, '2026-11-07', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(34, 34, 34, 'Wrong Lane', '2026-11-08', 'Market Area', 1350.00, '2026-12-08', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(35, 35, 35, 'Speeding', '2026-12-09', 'City Center', 1375.00, '2026-01-09', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(36, 36, 36, 'No Parking', '2026-01-10', 'MG Road', 1400.00, '2026-02-10', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(37, 37, 37, 'Signal Jump', '2026-02-11', 'Ring Road', 1425.00, '2026-03-11', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(38, 38, 38, 'No Helmet', '2026-03-12', 'Highway', 1450.00, '2026-04-12', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(39, 39, 39, 'Wrong Lane', '2026-04-13', 'Market Area', 1475.00, '2026-05-13', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(40, 40, 40, 'Speeding', '2026-05-14', 'City Center', 1500.00, '2026-06-14', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(41, 41, 41, 'No Parking', '2026-06-15', 'MG Road', 1525.00, '2026-07-15', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(42, 42, 42, 'Signal Jump', '2026-07-16', 'Ring Road', 1550.00, '2026-08-16', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(43, 43, 43, 'No Helmet', '2026-08-17', 'Highway', 1575.00, '2026-09-17', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(44, 44, 44, 'Wrong Lane', '2026-09-18', 'Market Area', 1600.00, '2026-10-18', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(45, 45, 45, 'Speeding', '2026-10-19', 'City Center', 1625.00, '2026-11-19', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(46, 46, 46, 'No Parking', '2026-11-20', 'MG Road', 1650.00, '2026-12-20', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(47, 47, 47, 'Signal Jump', '2026-12-21', 'Ring Road', 1675.00, '2026-01-21', 'disputed', 'City Police')
INSERT INTO dbo.traffic_fines values(48, 48, 48, 'No Helmet', '2026-01-22', 'Highway', 1700.00, '2026-02-22', 'paid', 'Traffic Police')
INSERT INTO dbo.traffic_fines values(49, 49, 49, 'Wrong Lane', '2026-02-23', 'Market Area', 1725.00, '2026-03-23', 'unpaid', 'RTO')
INSERT INTO dbo.traffic_fines values(50, 50, 50, 'Speeding', '2026-03-24', 'City Center', 1750.00, '2026-04-24', 'disputed', 'City Police')



create table dbo.fuel_stations (
    station_id int primary key,
    station_name varchar(100) not null,
    company_name varchar(100) not null,
    manager_name varchar(100) null,
    phone varchar(15) not null,
    address varchar(200) not null,
    city varchar(50) not null,
    state varchar(50) not null,
    opening_time time not null,
    closing_time time not null
);
INSERT INTO dbo.fuel_stations values(1, 'Fuel Station 1', 'BPCL', 'Manager 1', '9400000001', '1 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(2, 'Fuel Station 2', 'HPCL', 'Manager 2', '9400000002', '2 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(3, 'Fuel Station 3', 'Reliance', 'Manager 3', '9400000003', '3 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(4, 'Fuel Station 4', 'Shell', 'Manager 4', '9400000004', '4 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(5, 'Fuel Station 5', 'IndianOil', 'Manager 5', '9400000005', '5 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(6, 'Fuel Station 6', 'BPCL', 'Manager 6', '9400000006', '6 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(7, 'Fuel Station 7', 'HPCL', 'Manager 7', '9400000007', '7 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(8, 'Fuel Station 8', 'Reliance', 'Manager 8', '9400000008', '8 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(9, 'Fuel Station 9', 'Shell', 'Manager 9', '9400000009', '9 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(10, 'Fuel Station 10', 'IndianOil', 'Manager 10', '9400000010', '10 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(11, 'Fuel Station 11', 'BPCL', 'Manager 11', '9400000011', '11 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(12, 'Fuel Station 12', 'HPCL', 'Manager 12', '9400000012', '12 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(13, 'Fuel Station 13', 'Reliance', 'Manager 13', '9400000013', '13 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(14, 'Fuel Station 14', 'Shell', 'Manager 14', '9400000014', '14 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(15, 'Fuel Station 15', 'IndianOil', 'Manager 15', '9400000015', '15 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(16, 'Fuel Station 16', 'BPCL', 'Manager 16', '9400000016', '16 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(17, 'Fuel Station 17', 'HPCL', 'Manager 17', '9400000017', '17 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(18, 'Fuel Station 18', 'Reliance', 'Manager 18', '9400000018', '18 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(19, 'Fuel Station 19', 'Shell', 'Manager 19', '9400000019', '19 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(20, 'Fuel Station 20', 'IndianOil', 'Manager 20', '9400000020', '20 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(21, 'Fuel Station 21', 'BPCL', 'Manager 21', '9400000021', '21 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(22, 'Fuel Station 22', 'HPCL', 'Manager 22', '9400000022', '22 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(23, 'Fuel Station 23', 'Reliance', 'Manager 23', '9400000023', '23 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(24, 'Fuel Station 24', 'Shell', 'Manager 24', '9400000024', '24 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(25, 'Fuel Station 25', 'IndianOil', 'Manager 25', '9400000025', '25 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(26, 'Fuel Station 26', 'BPCL', 'Manager 26', '9400000026', '26 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(27, 'Fuel Station 27', 'HPCL', 'Manager 27', '9400000027', '27 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(28, 'Fuel Station 28', 'Reliance', 'Manager 28', '9400000028', '28 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(29, 'Fuel Station 29', 'Shell', 'Manager 29', '9400000029', '29 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(30, 'Fuel Station 30', 'IndianOil', 'Manager 30', '9400000030', '30 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(31, 'Fuel Station 31', 'BPCL', 'Manager 31', '9400000031', '31 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(32, 'Fuel Station 32', 'HPCL', 'Manager 32', '9400000032', '32 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(33, 'Fuel Station 33', 'Reliance', 'Manager 33', '9400000033', '33 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(34, 'Fuel Station 34', 'Shell', 'Manager 34', '9400000034', '34 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(35, 'Fuel Station 35', 'IndianOil', 'Manager 35', '9400000035', '35 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(36, 'Fuel Station 36', 'BPCL', 'Manager 36', '9400000036', '36 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(37, 'Fuel Station 37', 'HPCL', 'Manager 37', '9400000037', '37 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(38, 'Fuel Station 38', 'Reliance', 'Manager 38', '9400000038', '38 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(39, 'Fuel Station 39', 'Shell', 'Manager 39', '9400000039', '39 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(40, 'Fuel Station 40', 'IndianOil', 'Manager 40', '9400000040', '40 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(41, 'Fuel Station 41', 'BPCL', 'Manager 41', '9400000041', '41 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(42, 'Fuel Station 42', 'HPCL', 'Manager 42', '9400000042', '42 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(43, 'Fuel Station 43', 'Reliance', 'Manager 43', '9400000043', '43 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(44, 'Fuel Station 44', 'Shell', 'Manager 44', '9400000044', '44 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(45, 'Fuel Station 45', 'IndianOil', 'Manager 45', '9400000045', '45 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(46, 'Fuel Station 46', 'BPCL', 'Manager 46', '9400000046', '46 Main Road', 'Chennai', 'Tamil Nadu', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(47, 'Fuel Station 47', 'HPCL', 'Manager 47', '9400000047', '47 Main Road', 'Delhi', 'Delhi', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(48, 'Fuel Station 48', 'Reliance', 'Manager 48', '9400000048', '48 Main Road', 'Mumbai', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(49, 'Fuel Station 49', 'Shell', 'Manager 49', '9400000049', '49 Main Road', 'Pune', 'Maharashtra', '06:00:00', '22:00:00')
INSERT INTO dbo.fuel_stations values(50, 'Fuel Station 50', 'IndianOil', 'Manager 50', '9400000050', '50 Main Road', 'Hyderabad', 'Telangana', '06:00:00', '22:00:00')

create table dbo.fuel_records (
    fuel_id int primary key,
    vehicle_id int not null,
    owner_id int not null,
    station_id int not null,
    fuel_type varchar(20) check (fuel_type in ('petrol', 'diesel', 'electric', 'cng', 'lpg')),
    quantity_liters decimal(8,2) check (quantity_liters > 0),
    price_per_liter decimal(8,2) check (price_per_liter >= 0),
    total_amount decimal(10,2) check (total_amount >= 0),
    fuel_date date not null,
    odometer_reading int check (odometer_reading >= 0),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (station_id) references dbo.fuel_stations(station_id)
);
INSERT INTO dbo.fuel_records values(1, 1, 1, 1, 'diesel', 21.00, 96.00, 2016.00, '2026-02-02', 12600)
INSERT INTO dbo.fuel_records values(2, 2, 2, 2, 'petrol', 22.00, 97.00, 2134.00, '2026-03-03', 13200)
INSERT INTO dbo.fuel_records values(3, 3, 3, 3, 'cng', 23.00, 98.00, 2254.00, '2026-04-04', 13800)
INSERT INTO dbo.fuel_records values(4, 4, 4, 4, 'lpg', 24.00, 99.00, 2376.00, '2026-05-05', 14400)
INSERT INTO dbo.fuel_records values(5, 5, 5, 5, 'petrol', 25.00, 100.00, 2500.00, '2026-06-06', 15000)
INSERT INTO dbo.fuel_records values(6, 6, 6, 6, 'diesel', 26.00, 101.00, 2626.00, '2026-07-07', 15600)
INSERT INTO dbo.fuel_records values(7, 7, 7, 7, 'petrol', 27.00, 102.00, 2754.00, '2026-08-08', 16200)
INSERT INTO dbo.fuel_records values(8, 8, 8, 8, 'cng', 28.00, 103.00, 2884.00, '2026-09-09', 16800)
INSERT INTO dbo.fuel_records values(9, 9, 9, 9, 'lpg', 29.00, 104.00, 3016.00, '2026-10-10', 17400)
INSERT INTO dbo.fuel_records values(10, 10, 10, 10, 'petrol', 30.00, 95.00, 2850.00, '2026-11-11', 18000)
INSERT INTO dbo.fuel_records values(11, 11, 11, 11, 'diesel', 31.00, 96.00, 2976.00, '2026-12-12', 18600)
INSERT INTO dbo.fuel_records values(12, 12, 12, 12, 'petrol', 32.00, 97.00, 3104.00, '2026-01-13', 19200)
INSERT INTO dbo.fuel_records values(13, 13, 13, 13, 'cng', 33.00, 98.00, 3234.00, '2026-02-14', 19800)
INSERT INTO dbo.fuel_records values(14, 14, 14, 14, 'lpg', 34.00, 99.00, 3366.00, '2026-03-15', 20400)
INSERT INTO dbo.fuel_records values(15, 15, 15, 15, 'petrol', 20.00, 100.00, 2000.00, '2026-04-16', 21000)
INSERT INTO dbo.fuel_records values(16, 16, 16, 16, 'diesel', 21.00, 101.00, 2121.00, '2026-05-17', 21600)
INSERT INTO dbo.fuel_records values(17, 17, 17, 17, 'petrol', 22.00, 102.00, 2244.00, '2026-06-18', 22200)
INSERT INTO dbo.fuel_records values(18, 18, 18, 18, 'cng', 23.00, 103.00, 2369.00, '2026-07-19', 22800)
INSERT INTO dbo.fuel_records values(19, 19, 19, 19, 'lpg', 24.00, 104.00, 2496.00, '2026-08-20', 23400)
INSERT INTO dbo.fuel_records values(20, 20, 20, 20, 'petrol', 25.00, 95.00, 2375.00, '2026-09-21', 24000)
INSERT INTO dbo.fuel_records values(21, 21, 21, 21, 'diesel', 26.00, 96.00, 2496.00, '2026-10-22', 24600)
INSERT INTO dbo.fuel_records values(22, 22, 22, 22, 'petrol', 27.00, 97.00, 2619.00, '2026-11-23', 25200)
INSERT INTO dbo.fuel_records values(23, 23, 23, 23, 'cng', 28.00, 98.00, 2744.00, '2026-12-24', 25800)
INSERT INTO dbo.fuel_records values(24, 24, 24, 24, 'lpg', 29.00, 99.00, 2871.00, '2026-01-25', 26400)
INSERT INTO dbo.fuel_records values(25, 25, 25, 25, 'petrol', 30.00, 100.00, 3000.00, '2026-02-26', 27000)
INSERT INTO dbo.fuel_records values(26, 26, 26, 26, 'diesel', 31.00, 101.00, 3131.00, '2026-03-27', 27600)
INSERT INTO dbo.fuel_records values(27, 27, 27, 27, 'petrol', 32.00, 102.00, 3264.00, '2026-04-01', 28200)
INSERT INTO dbo.fuel_records values(28, 28, 28, 28, 'cng', 33.00, 103.00, 3399.00, '2026-05-02', 28800)
INSERT INTO dbo.fuel_records values(29, 29, 29, 29, 'lpg', 34.00, 104.00, 3536.00, '2026-06-03', 29400)
INSERT INTO dbo.fuel_records values(30, 30, 30, 30, 'petrol', 20.00, 95.00, 1900.00, '2026-07-04', 30000)
INSERT INTO dbo.fuel_records values(31, 31, 31, 31, 'diesel', 21.00, 96.00, 2016.00, '2026-08-05', 30600)
INSERT INTO dbo.fuel_records values(32, 32, 32, 32, 'petrol', 22.00, 97.00, 2134.00, '2026-09-06', 31200)
INSERT INTO dbo.fuel_records values(33, 33, 33, 33, 'cng', 23.00, 98.00, 2254.00, '2026-10-07', 31800)
INSERT INTO dbo.fuel_records values(34, 34, 34, 34, 'lpg', 24.00, 99.00, 2376.00, '2026-11-08', 32400)
INSERT INTO dbo.fuel_records values(35, 35, 35, 35, 'petrol', 25.00, 100.00, 2500.00, '2026-12-09', 33000)
INSERT INTO dbo.fuel_records values(36, 36, 36, 36, 'diesel', 26.00, 101.00, 2626.00, '2026-01-10', 33600)
INSERT INTO dbo.fuel_records values(37, 37, 37, 37, 'petrol', 27.00, 102.00, 2754.00, '2026-02-11', 34200)
INSERT INTO dbo.fuel_records values(38, 38, 38, 38, 'cng', 28.00, 103.00, 2884.00, '2026-03-12', 34800)
INSERT INTO dbo.fuel_records values(39, 39, 39, 39, 'lpg', 29.00, 104.00, 3016.00, '2026-04-13', 35400)
INSERT INTO dbo.fuel_records values(40, 40, 40, 40, 'petrol', 30.00, 95.00, 2850.00, '2026-05-14', 36000)
INSERT INTO dbo.fuel_records values(41, 41, 41, 41, 'diesel', 31.00, 96.00, 2976.00, '2026-06-15', 36600)
INSERT INTO dbo.fuel_records values(42, 42, 42, 42, 'petrol', 32.00, 97.00, 3104.00, '2026-07-16', 37200)
INSERT INTO dbo.fuel_records values(43, 43, 43, 43, 'cng', 33.00, 98.00, 3234.00, '2026-08-17', 37800)
INSERT INTO dbo.fuel_records values(44, 44, 44, 44, 'lpg', 34.00, 99.00, 3366.00, '2026-09-18', 38400)
INSERT INTO dbo.fuel_records values(45, 45, 45, 45, 'petrol', 20.00, 100.00, 2000.00, '2026-10-19', 39000)
INSERT INTO dbo.fuel_records values(46, 46, 46, 46, 'diesel', 21.00, 101.00, 2121.00, '2026-11-20', 39600)
INSERT INTO dbo.fuel_records values(47, 47, 47, 47, 'petrol', 22.00, 102.00, 2244.00, '2026-12-21', 40200)
INSERT INTO dbo.fuel_records values(48, 48, 48, 48, 'cng', 23.00, 103.00, 2369.00, '2026-01-22', 40800)
INSERT INTO dbo.fuel_records values(49, 49, 49, 49, 'lpg', 24.00, 104.00, 2496.00, '2026-02-23', 41400)
INSERT INTO dbo.fuel_records values(50, 50, 50, 50, 'petrol', 25.00, 95.00, 2375.00, '2026-03-24', 42000)


create table dbo.vehicle_parts (
    vehicle_part_id int primary key,
    vehicle_id int not null,
    part_id int not null,
    installation_date date not null,
    quantity int check (quantity > 0),
    purchase_price decimal(10,2) check (purchase_price >= 0),
    installation_cost decimal(10,2) check (installation_cost >= 0),
    supplier_name varchar(100) null,
    warranty_expiry date null,
    part_status varchar(20) check (part_status in ('active', 'replaced', 'removed')),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (part_id) references dbo.parts(part_id)
);
INSERT INTO dbo.vehicle_parts values(1, 1, 1, '2026-02-10', 2, 1075.00, 270.00, 'Supplier 1', '2028-02-10', 'active')
INSERT INTO dbo.vehicle_parts values(2, 2, 2, '2026-03-10', 3, 1150.00, 290.00, 'Supplier 2', '2028-03-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(3, 3, 3, '2026-04-10', 1, 1225.00, 310.00, 'Supplier 3', '2028-04-10', 'removed')
INSERT INTO dbo.vehicle_parts values(4, 4, 4, '2026-05-10', 2, 1300.00, 330.00, 'Supplier 4', '2028-05-10', 'active')
INSERT INTO dbo.vehicle_parts values(5, 5, 5, '2026-06-10', 3, 1375.00, 350.00, 'Supplier 5', '2028-06-10', 'active')
INSERT INTO dbo.vehicle_parts values(6, 6, 6, '2026-07-10', 1, 1450.00, 370.00, 'Supplier 6', '2028-07-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(7, 7, 7, '2026-08-10', 2, 1525.00, 390.00, 'Supplier 7', '2028-08-10', 'removed')
INSERT INTO dbo.vehicle_parts values(8, 8, 8, '2026-09-10', 3, 1600.00, 410.00, 'Supplier 8', '2028-09-10', 'active')
INSERT INTO dbo.vehicle_parts values(9, 9, 9, '2026-10-10', 1, 1675.00, 430.00, 'Supplier 9', '2028-10-10', 'active')
INSERT INTO dbo.vehicle_parts values(10, 10, 10, '2026-11-10', 2, 1750.00, 450.00, 'Supplier 10', '2028-11-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(11, 11, 11, '2026-12-10', 3, 1825.00, 470.00, 'Supplier 11', '2028-12-10', 'removed')
INSERT INTO dbo.vehicle_parts values(12, 12, 12, '2026-01-10', 1, 1900.00, 490.00, 'Supplier 12', '2028-01-10', 'active')
INSERT INTO dbo.vehicle_parts values(13, 13, 13, '2026-02-10', 2, 1975.00, 510.00, 'Supplier 13', '2028-02-10', 'active')
INSERT INTO dbo.vehicle_parts values(14, 14, 14, '2026-03-10', 3, 2050.00, 530.00, 'Supplier 14', '2028-03-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(15, 15, 15, '2026-04-10', 1, 2125.00, 550.00, 'Supplier 15', '2028-04-10', 'removed')
INSERT INTO dbo.vehicle_parts values(16, 16, 16, '2026-05-10', 2, 2200.00, 570.00, 'Supplier 16', '2028-05-10', 'active')
INSERT INTO dbo.vehicle_parts values(17, 17, 17, '2026-06-10', 3, 2275.00, 590.00, 'Supplier 17', '2028-06-10', 'active')
INSERT INTO dbo.vehicle_parts values(18, 18, 18, '2026-07-10', 1, 2350.00, 610.00, 'Supplier 18', '2028-07-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(19, 19, 19, '2026-08-10', 2, 2425.00, 630.00, 'Supplier 19', '2028-08-10', 'removed')
INSERT INTO dbo.vehicle_parts values(20, 20, 20, '2026-09-10', 3, 2500.00, 650.00, 'Supplier 20', '2028-09-10', 'active')
INSERT INTO dbo.vehicle_parts values(21, 21, 21, '2026-10-10', 1, 2575.00, 670.00, 'Supplier 21', '2028-10-10', 'active')
INSERT INTO dbo.vehicle_parts values(22, 22, 22, '2026-11-10', 2, 2650.00, 690.00, 'Supplier 22', '2028-11-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(23, 23, 23, '2026-12-10', 3, 2725.00, 710.00, 'Supplier 23', '2028-12-10', 'removed')
INSERT INTO dbo.vehicle_parts values(24, 24, 24, '2026-01-10', 1, 2800.00, 730.00, 'Supplier 24', '2028-01-10', 'active')
INSERT INTO dbo.vehicle_parts values(25, 25, 25, '2026-02-10', 2, 2875.00, 750.00, 'Supplier 25', '2028-02-10', 'active')
INSERT INTO dbo.vehicle_parts values(26, 26, 26, '2026-03-10', 3, 2950.00, 770.00, 'Supplier 26', '2028-03-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(27, 27, 27, '2026-04-10', 1, 3025.00, 790.00, 'Supplier 27', '2028-04-10', 'removed')
INSERT INTO dbo.vehicle_parts values(28, 28, 28, '2026-05-10', 2, 3100.00, 810.00, 'Supplier 28', '2028-05-10', 'active')
INSERT INTO dbo.vehicle_parts values(29, 29, 29, '2026-06-10', 3, 3175.00, 830.00, 'Supplier 29', '2028-06-10', 'active')
INSERT INTO dbo.vehicle_parts values(30, 30, 30, '2026-07-10', 1, 3250.00, 850.00, 'Supplier 30', '2028-07-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(31, 31, 31, '2026-08-10', 2, 3325.00, 870.00, 'Supplier 31', '2028-08-10', 'removed')
INSERT INTO dbo.vehicle_parts values(32, 32, 32, '2026-09-10', 3, 3400.00, 890.00, 'Supplier 32', '2028-09-10', 'active')
INSERT INTO dbo.vehicle_parts values(33, 33, 33, '2026-10-10', 1, 3475.00, 910.00, 'Supplier 33', '2028-10-10', 'active')
INSERT INTO dbo.vehicle_parts values(34, 34, 34, '2026-11-10', 2, 3550.00, 930.00, 'Supplier 34', '2028-11-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(35, 35, 35, '2026-12-10', 3, 3625.00, 950.00, 'Supplier 35', '2028-12-10', 'removed')
INSERT INTO dbo.vehicle_parts values(36, 36, 36, '2026-01-10', 1, 3700.00, 970.00, 'Supplier 36', '2028-01-10', 'active')
INSERT INTO dbo.vehicle_parts values(37, 37, 37, '2026-02-10', 2, 3775.00, 990.00, 'Supplier 37', '2028-02-10', 'active')
INSERT INTO dbo.vehicle_parts values(38, 38, 38, '2026-03-10', 3, 3850.00, 1010.00, 'Supplier 38', '2028-03-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(39, 39, 39, '2026-04-10', 1, 3925.00, 1030.00, 'Supplier 39', '2028-04-10', 'removed')
INSERT INTO dbo.vehicle_parts values(40, 40, 40, '2026-05-10', 2, 4000.00, 1050.00, 'Supplier 40', '2028-05-10', 'active')
INSERT INTO dbo.vehicle_parts values(41, 41, 41, '2026-06-10', 3, 4075.00, 1070.00, 'Supplier 41', '2028-06-10', 'active')
INSERT INTO dbo.vehicle_parts values(42, 42, 42, '2026-07-10', 1, 4150.00, 1090.00, 'Supplier 42', '2028-07-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(43, 43, 43, '2026-08-10', 2, 4225.00, 1110.00, 'Supplier 43', '2028-08-10', 'removed')
INSERT INTO dbo.vehicle_parts values(44, 44, 44, '2026-09-10', 3, 4300.00, 1130.00, 'Supplier 44', '2028-09-10', 'active')
INSERT INTO dbo.vehicle_parts values(45, 45, 45, '2026-10-10', 1, 4375.00, 1150.00, 'Supplier 45', '2028-10-10', 'active')
INSERT INTO dbo.vehicle_parts values(46, 46, 46, '2026-11-10', 2, 4450.00, 1170.00, 'Supplier 46', '2028-11-10', 'replaced')
INSERT INTO dbo.vehicle_parts values(47, 47, 47, '2026-12-10', 3, 4525.00, 1190.00, 'Supplier 47', '2028-12-10', 'removed')
INSERT INTO dbo.vehicle_parts values(48, 48, 48, '2026-01-10', 1, 4600.00, 1210.00, 'Supplier 48', '2028-01-10', 'active')
INSERT INTO dbo.vehicle_parts values(49, 49, 49, '2026-02-10', 2, 4675.00, 1230.00, 'Supplier 49', '2028-02-10', 'active')
INSERT INTO dbo.vehicle_parts values(50, 50, 50, '2026-03-10', 3, 4750.00, 1250.00, 'Supplier 50', '2028-03-10', 'replaced')


create table dbo.payments (
    payment_id int primary key,
    owner_id int not null,
    vehicle_id int not null,
    service_id int null,
    payment_date date not null,
    amount decimal(10,2) check (amount >= 0),
    payment_method varchar(20) check (payment_method in ('cash', 'credit_card', 'debit_card', 'upi', 'net_banking')),
    transaction_id varchar(100) unique,
    payment_status varchar(20) check (payment_status in ('success', 'pending', 'failed', 'refunded')),
    payment_type varchar(50) not null,
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (service_id) references dbo.service_history(service_id)
);
INSERT INTO dbo.payments values(1, 1, 1, 1, '2026-02-02', 2600.00, 'credit_card', 'TXN000001', 'success', 'Insurance')
INSERT INTO dbo.payments values(2, 2, 2, 2, '2026-03-03', 2700.00, 'debit_card', 'TXN000002', 'pending', 'Parts')
INSERT INTO dbo.payments values(3, 3, 3, 3, '2026-04-04', 2800.00, 'upi', 'TXN000003', 'failed', 'Fine')
INSERT INTO dbo.payments values(4, 4, 4, 4, '2026-05-05', 2900.00, 'net_banking', 'TXN000004', 'refunded', 'Registration')
INSERT INTO dbo.payments values(5, 5, 5, 5, '2026-06-06', 3000.00, 'cash', 'TXN000005', 'success', 'Service')
INSERT INTO dbo.payments values(6, 6, 6, 6, '2026-07-07', 3100.00, 'credit_card', 'TXN000006', 'success', 'Insurance')
INSERT INTO dbo.payments values(7, 7, 7, 7, '2026-08-08', 3200.00, 'debit_card', 'TXN000007', 'pending', 'Parts')
INSERT INTO dbo.payments values(8, 8, 8, 8, '2026-09-09', 3300.00, 'upi', 'TXN000008', 'failed', 'Fine')
INSERT INTO dbo.payments values(9, 9, 9, 9, '2026-10-10', 3400.00, 'net_banking', 'TXN000009', 'refunded', 'Registration')
INSERT INTO dbo.payments values(10, 10, 10, 10, '2026-11-11', 3500.00, 'cash', 'TXN000010', 'success', 'Service')
INSERT INTO dbo.payments values(11, 11, 11, 11, '2026-12-12', 3600.00, 'credit_card', 'TXN000011', 'success', 'Insurance')
INSERT INTO dbo.payments values(12, 12, 12, 12, '2026-01-13', 3700.00, 'debit_card', 'TXN000012', 'pending', 'Parts')
INSERT INTO dbo.payments values(13, 13, 13, 13, '2026-02-14', 3800.00, 'upi', 'TXN000013', 'failed', 'Fine')
INSERT INTO dbo.payments values(14, 14, 14, 14, '2026-03-15', 3900.00, 'net_banking', 'TXN000014', 'refunded', 'Registration')
INSERT INTO dbo.payments values(15, 15, 15, 15, '2026-04-16', 4000.00, 'cash', 'TXN000015', 'success', 'Service')
INSERT INTO dbo.payments values(16, 16, 16, 16, '2026-05-17', 4100.00, 'credit_card', 'TXN000016', 'success', 'Insurance')
INSERT INTO dbo.payments values(17, 17, 17, 17, '2026-06-18', 4200.00, 'debit_card', 'TXN000017', 'pending', 'Parts')
INSERT INTO dbo.payments values(18, 18, 18, 18, '2026-07-19', 4300.00, 'upi', 'TXN000018', 'failed', 'Fine')
INSERT INTO dbo.payments values(19, 19, 19, 19, '2026-08-20', 4400.00, 'net_banking', 'TXN000019', 'refunded', 'Registration')
INSERT INTO dbo.payments values(20, 20, 20, 20, '2026-09-21', 4500.00, 'cash', 'TXN000020', 'success', 'Service')
INSERT INTO dbo.payments values(21, 21, 21, 21, '2026-10-22', 4600.00, 'credit_card', 'TXN000021', 'success', 'Insurance')
INSERT INTO dbo.payments values(22, 22, 22, 22, '2026-11-23', 4700.00, 'debit_card', 'TXN000022', 'pending', 'Parts')
INSERT INTO dbo.payments values(23, 23, 23, 23, '2026-12-24', 4800.00, 'upi', 'TXN000023', 'failed', 'Fine')
INSERT INTO dbo.payments values(24, 24, 24, 24, '2026-01-25', 4900.00, 'net_banking', 'TXN000024', 'refunded', 'Registration')
INSERT INTO dbo.payments values(25, 25, 25, 25, '2026-02-26', 5000.00, 'cash', 'TXN000025', 'success', 'Service')
INSERT INTO dbo.payments values(26, 26, 26, 26, '2026-03-27', 5100.00, 'credit_card', 'TXN000026', 'success', 'Insurance')
INSERT INTO dbo.payments values(27, 27, 27, 27, '2026-04-01', 5200.00, 'debit_card', 'TXN000027', 'pending', 'Parts')
INSERT INTO dbo.payments values(28, 28, 28, 28, '2026-05-02', 5300.00, 'upi', 'TXN000028', 'failed', 'Fine')
INSERT INTO dbo.payments values(29, 29, 29, 29, '2026-06-03', 5400.00, 'net_banking', 'TXN000029', 'refunded', 'Registration')
INSERT INTO dbo.payments values(30, 30, 30, 30, '2026-07-04', 5500.00, 'cash', 'TXN000030', 'success', 'Service')
INSERT INTO dbo.payments values(31, 31, 31, 31, '2026-08-05', 5600.00, 'credit_card', 'TXN000031', 'success', 'Insurance')
INSERT INTO dbo.payments values(32, 32, 32, 32, '2026-09-06', 5700.00, 'debit_card', 'TXN000032', 'pending', 'Parts')
INSERT INTO dbo.payments values(33, 33, 33, 33, '2026-10-07', 5800.00, 'upi', 'TXN000033', 'failed', 'Fine')
INSERT INTO dbo.payments values(34, 34, 34, 34, '2026-11-08', 5900.00, 'net_banking', 'TXN000034', 'refunded', 'Registration')
INSERT INTO dbo.payments values(35, 35, 35, 35, '2026-12-09', 6000.00, 'cash', 'TXN000035', 'success', 'Service')
INSERT INTO dbo.payments values(36, 36, 36, 36, '2026-01-10', 6100.00, 'credit_card', 'TXN000036', 'success', 'Insurance')
INSERT INTO dbo.payments values(37, 37, 37, 37, '2026-02-11', 6200.00, 'debit_card', 'TXN000037', 'pending', 'Parts')
INSERT INTO dbo.payments values(38, 38, 38, 38, '2026-03-12', 6300.00, 'upi', 'TXN000038', 'failed', 'Fine')
INSERT INTO dbo.payments values(39, 39, 39, 39, '2026-04-13', 6400.00, 'net_banking', 'TXN000039', 'refunded', 'Registration')
INSERT INTO dbo.payments values(40, 40, 40, 40, '2026-05-14', 6500.00, 'cash', 'TXN000040', 'success', 'Service')
INSERT INTO dbo.payments values(41, 41, 41, 41, '2026-06-15', 6600.00, 'credit_card', 'TXN000041', 'success', 'Insurance')
INSERT INTO dbo.payments values(42, 42, 42, 42, '2026-07-16', 6700.00, 'debit_card', 'TXN000042', 'pending', 'Parts')
INSERT INTO dbo.payments values(43, 43, 43, 43, '2026-08-17', 6800.00, 'upi', 'TXN000043', 'failed', 'Fine')
INSERT INTO dbo.payments values(44, 44, 44, 44, '2026-09-18', 6900.00, 'net_banking', 'TXN000044', 'refunded', 'Registration')
INSERT INTO dbo.payments values(45, 45, 45, 45, '2026-10-19', 7000.00, 'cash', 'TXN000045', 'success', 'Service')
INSERT INTO dbo.payments values(46, 46, 46, 46, '2026-11-20', 7100.00, 'credit_card', 'TXN000046', 'success', 'Insurance')
INSERT INTO dbo.payments values(47, 47, 47, 47, '2026-12-21', 7200.00, 'debit_card', 'TXN000047', 'pending', 'Parts')
INSERT INTO dbo.payments values(48, 48, 48, 48, '2026-01-22', 7300.00, 'upi', 'TXN000048', 'failed', 'Fine')
INSERT INTO dbo.payments values(49, 49, 49, 49, '2026-02-23', 7400.00, 'net_banking', 'TXN000049', 'refunded', 'Registration')
INSERT INTO dbo.payments values(50, 50, 50, 50, '2026-03-24', 7500.00, 'cash', 'TXN000050', 'success', 'Service')

create table dbo.invoices (
    invoice_id int primary key,
    owner_id int not null,
    vehicle_id int not null,
    service_id int null,
    invoice_number varchar(50) not null unique,
    invoice_date date not null,
    subtotal decimal(10,2) check (subtotal >= 0),
    tax_amount decimal(10,2) check (tax_amount >= 0),
    total_amount decimal(10,2) check (total_amount >= 0),
    invoice_status varchar(20) check (invoice_status in ('paid', 'unpaid', 'cancelled')),
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (service_id) references dbo.service_history(service_id)
);

INSERT INTO dbo.invoices values(1, 1, 1, 1, 'INV000001', '2026-02-02', 3100.00, 558.00, 3658.00, 'unpaid')
INSERT INTO dbo.invoices values(2, 2, 2, 2, 'INV000002', '2026-03-03', 3200.00, 576.00, 3776.00, 'paid')
INSERT INTO dbo.invoices values(3, 3, 3, 3, 'INV000003', '2026-04-04', 3300.00, 594.00, 3894.00, 'cancelled')
INSERT INTO dbo.invoices values(4, 4, 4, 4, 'INV000004', '2026-05-05', 3400.00, 612.00, 4012.00, 'paid')
INSERT INTO dbo.invoices values(5, 5, 5, 5, 'INV000005', '2026-06-06', 3500.00, 630.00, 4130.00, 'unpaid')
INSERT INTO dbo.invoices values(6, 6, 6, 6, 'INV000006', '2026-07-07', 3600.00, 648.00, 4248.00, 'paid')
INSERT INTO dbo.invoices values(7, 7, 7, 7, 'INV000007', '2026-08-08', 3700.00, 666.00, 4366.00, 'cancelled')
INSERT INTO dbo.invoices values(8, 8, 8, 8, 'INV000008', '2026-09-09', 3800.00, 684.00, 4484.00, 'paid')
INSERT INTO dbo.invoices values(9, 9, 9, 9, 'INV000009', '2026-10-10', 3900.00, 702.00, 4602.00, 'unpaid')
INSERT INTO dbo.invoices values(10, 10, 10, 10, 'INV000010', '2026-11-11', 4000.00, 720.00, 4720.00, 'paid')
INSERT INTO dbo.invoices values(11, 11, 11, 11, 'INV000011', '2026-12-12', 4100.00, 738.00, 4838.00, 'cancelled')
INSERT INTO dbo.invoices values(12, 12, 12, 12, 'INV000012', '2026-01-13', 4200.00, 756.00, 4956.00, 'paid')
INSERT INTO dbo.invoices values(13, 13, 13, 13, 'INV000013', '2026-02-14', 4300.00, 774.00, 5074.00, 'unpaid')
INSERT INTO dbo.invoices values(14, 14, 14, 14, 'INV000014', '2026-03-15', 4400.00, 792.00, 5192.00, 'paid')
INSERT INTO dbo.invoices values(15, 15, 15, 15, 'INV000015', '2026-04-16', 4500.00, 810.00, 5310.00, 'cancelled')
INSERT INTO dbo.invoices values(16, 16, 16, 16, 'INV000016', '2026-05-17', 4600.00, 828.00, 5428.00, 'paid')
INSERT INTO dbo.invoices values(17, 17, 17, 17, 'INV000017', '2026-06-18', 4700.00, 846.00, 5546.00, 'unpaid')
INSERT INTO dbo.invoices values(18, 18, 18, 18, 'INV000018', '2026-07-19', 4800.00, 864.00, 5664.00, 'paid')
INSERT INTO dbo.invoices values(19, 19, 19, 19, 'INV000019', '2026-08-20', 4900.00, 882.00, 5782.00, 'cancelled')
INSERT INTO dbo.invoices values(20, 20, 20, 20, 'INV000020', '2026-09-21', 5000.00, 900.00, 5900.00, 'paid')
INSERT INTO dbo.invoices values(21, 21, 21, 21, 'INV000021', '2026-10-22', 5100.00, 918.00, 6018.00, 'unpaid')
INSERT INTO dbo.invoices values(22, 22, 22, 22, 'INV000022', '2026-11-23', 5200.00, 936.00, 6136.00, 'paid')
INSERT INTO dbo.invoices values(23, 23, 23, 23, 'INV000023', '2026-12-24', 5300.00, 954.00, 6254.00, 'cancelled')
INSERT INTO dbo.invoices values(24, 24, 24, 24, 'INV000024', '2026-01-25', 5400.00, 972.00, 6372.00, 'paid')
INSERT INTO dbo.invoices values(25, 25, 25, 25, 'INV000025', '2026-02-26', 5500.00, 990.00, 6490.00, 'unpaid')
INSERT INTO dbo.invoices values(26, 26, 26, 26, 'INV000026', '2026-03-27', 5600.00, 1008.00, 6608.00, 'paid')
INSERT INTO dbo.invoices values(27, 27, 27, 27, 'INV000027', '2026-04-01', 5700.00, 1026.00, 6726.00, 'cancelled')
INSERT INTO dbo.invoices values(28, 28, 28, 28, 'INV000028', '2026-05-02', 5800.00, 1044.00, 6844.00, 'paid')
INSERT INTO dbo.invoices values(29, 29, 29, 29, 'INV000029', '2026-06-03', 5900.00, 1062.00, 6962.00, 'unpaid')
INSERT INTO dbo.invoices values(30, 30, 30, 30, 'INV000030', '2026-07-04', 6000.00, 1080.00, 7080.00, 'paid')
INSERT INTO dbo.invoices values(31, 31, 31, 31, 'INV000031', '2026-08-05', 6100.00, 1098.00, 7198.00, 'cancelled')
INSERT INTO dbo.invoices values(32, 32, 32, 32, 'INV000032', '2026-09-06', 6200.00, 1116.00, 7316.00, 'paid')
INSERT INTO dbo.invoices values(33, 33, 33, 33, 'INV000033', '2026-10-07', 6300.00, 1134.00, 7434.00, 'unpaid')
INSERT INTO dbo.invoices values(34, 34, 34, 34, 'INV000034', '2026-11-08', 6400.00, 1152.00, 7552.00, 'paid')
INSERT INTO dbo.invoices values(35, 35, 35, 35, 'INV000035', '2026-12-09', 6500.00, 1170.00, 7670.00, 'cancelled')
INSERT INTO dbo.invoices values(36, 36, 36, 36, 'INV000036', '2026-01-10', 6600.00, 1188.00, 7788.00, 'paid')
INSERT INTO dbo.invoices values(37, 37, 37, 37, 'INV000037', '2026-02-11', 6700.00, 1206.00, 7906.00, 'unpaid')
INSERT INTO dbo.invoices values(38, 38, 38, 38, 'INV000038', '2026-03-12', 6800.00, 1224.00, 8024.00, 'paid')
INSERT INTO dbo.invoices values(39, 39, 39, 39, 'INV000039', '2026-04-13', 6900.00, 1242.00, 8142.00, 'cancelled')
INSERT INTO dbo.invoices values(40, 40, 40, 40, 'INV000040', '2026-05-14', 7000.00, 1260.00, 8260.00, 'paid')
INSERT INTO dbo.invoices values(41, 41, 41, 41, 'INV000041', '2026-06-15', 7100.00, 1278.00, 8378.00, 'unpaid')
INSERT INTO dbo.invoices values(42, 42, 42, 42, 'INV000042', '2026-07-16', 7200.00, 1296.00, 8496.00, 'paid')
INSERT INTO dbo.invoices values(43, 43, 43, 43, 'INV000043', '2026-08-17', 7300.00, 1314.00, 8614.00, 'cancelled')
INSERT INTO dbo.invoices values(44, 44, 44, 44, 'INV000044', '2026-09-18', 7400.00, 1332.00, 8732.00, 'paid')
INSERT INTO dbo.invoices values(45, 45, 45, 45, 'INV000045', '2026-10-19', 7500.00, 1350.00, 8850.00, 'unpaid')
INSERT INTO dbo.invoices values(46, 46, 46, 46, 'INV000046', '2026-11-20', 7600.00, 1368.00, 8968.00, 'paid')
INSERT INTO dbo.invoices values(47, 47, 47, 47, 'INV000047', '2026-12-21', 7700.00, 1386.00, 9086.00, 'cancelled')
INSERT INTO dbo.invoices values(48, 48, 48, 48, 'INV000048', '2026-01-22', 7800.00, 1404.00, 9204.00, 'paid')
INSERT INTO dbo.invoices values(49, 49, 49, 49, 'INV000049', '2026-02-23', 7900.00, 1422.00, 9322.00, 'unpaid')
INSERT INTO dbo.invoices values(50, 50, 50, 50, 'INV000050', '2026-03-24', 8000.00, 1440.00, 9440.00, 'paid')

create table dbo.complaints (
    complaint_id int primary key,
    owner_id int not null,
    vehicle_id int not null,
    center_id int null,
    complaint_date date not null,
    complaint_type varchar(50) not null,
    description varchar(300) not null,
    priority varchar(20) check (priority in ('low', 'medium', 'high', 'urgent')),
    complaint_status varchar(20) check (complaint_status in ('open', 'in_progress', 'resolved', 'closed')),
    resolution varchar(300) null,
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (center_id) references dbo.service_centers(center_id)
);
INSERT INTO dbo.complaints values(1, 1, 1, 1, '2026-02-02', 'Billing Issue', 'Complaint regarding vehicle 1', 'medium', 'in_progress', 'Issue reviewed for complaint 1')
INSERT INTO dbo.complaints values(2, 2, 2, 2, '2026-03-03', 'Repair Issue', 'Complaint regarding vehicle 2', 'high', 'resolved', 'Issue reviewed for complaint 2')
INSERT INTO dbo.complaints values(3, 3, 3, 3, '2026-04-04', 'Staff Issue', 'Complaint regarding vehicle 3', 'urgent', 'closed', 'Issue reviewed for complaint 3')
INSERT INTO dbo.complaints values(4, 4, 4, 4, '2026-05-05', 'Vehicle Issue', 'Complaint regarding vehicle 4', 'low', 'open', 'Issue reviewed for complaint 4')
INSERT INTO dbo.complaints values(5, 5, 5, 5, '2026-06-06', 'Service Delay', 'Complaint regarding vehicle 5', 'medium', 'in_progress', 'Issue reviewed for complaint 5')
INSERT INTO dbo.complaints values(6, 6, 6, 6, '2026-07-07', 'Billing Issue', 'Complaint regarding vehicle 6', 'high', 'resolved', 'Issue reviewed for complaint 6')
INSERT INTO dbo.complaints values(7, 7, 7, 7, '2026-08-08', 'Repair Issue', 'Complaint regarding vehicle 7', 'urgent', 'closed', 'Issue reviewed for complaint 7')
INSERT INTO dbo.complaints values(8, 8, 8, 8, '2026-09-09', 'Staff Issue', 'Complaint regarding vehicle 8', 'low', 'open', 'Issue reviewed for complaint 8')
INSERT INTO dbo.complaints values(9, 9, 9, 9, '2026-10-10', 'Vehicle Issue', 'Complaint regarding vehicle 9', 'medium', 'in_progress', 'Issue reviewed for complaint 9')
INSERT INTO dbo.complaints values(10, 10, 10, 10, '2026-11-11', 'Service Delay', 'Complaint regarding vehicle 10', 'high', 'resolved', 'Issue reviewed for complaint 10')
INSERT INTO dbo.complaints values(11, 11, 11, 11, '2026-12-12', 'Billing Issue', 'Complaint regarding vehicle 11', 'urgent', 'closed', 'Issue reviewed for complaint 11')
INSERT INTO dbo.complaints values(12, 12, 12, 12, '2026-01-13', 'Repair Issue', 'Complaint regarding vehicle 12', 'low', 'open', 'Issue reviewed for complaint 12')
INSERT INTO dbo.complaints values(13, 13, 13, 13, '2026-02-14', 'Staff Issue', 'Complaint regarding vehicle 13', 'medium', 'in_progress', 'Issue reviewed for complaint 13')
INSERT INTO dbo.complaints values(14, 14, 14, 14, '2026-03-15', 'Vehicle Issue', 'Complaint regarding vehicle 14', 'high', 'resolved', 'Issue reviewed for complaint 14')
INSERT INTO dbo.complaints values(15, 15, 15, 15, '2026-04-16', 'Service Delay', 'Complaint regarding vehicle 15', 'urgent', 'closed', 'Issue reviewed for complaint 15')
INSERT INTO dbo.complaints values(16, 16, 16, 16, '2026-05-17', 'Billing Issue', 'Complaint regarding vehicle 16', 'low', 'open', 'Issue reviewed for complaint 16')
INSERT INTO dbo.complaints values(17, 17, 17, 17, '2026-06-18', 'Repair Issue', 'Complaint regarding vehicle 17', 'medium', 'in_progress', 'Issue reviewed for complaint 17')
INSERT INTO dbo.complaints values(18, 18, 18, 18, '2026-07-19', 'Staff Issue', 'Complaint regarding vehicle 18', 'high', 'resolved', 'Issue reviewed for complaint 18')
INSERT INTO dbo.complaints values(19, 19, 19, 19, '2026-08-20', 'Vehicle Issue', 'Complaint regarding vehicle 19', 'urgent', 'closed', 'Issue reviewed for complaint 19')
INSERT INTO dbo.complaints values(20, 20, 20, 20, '2026-09-21', 'Service Delay', 'Complaint regarding vehicle 20', 'low', 'open', 'Issue reviewed for complaint 20')
INSERT INTO dbo.complaints values(21, 21, 21, 21, '2026-10-22', 'Billing Issue', 'Complaint regarding vehicle 21', 'medium', 'in_progress', 'Issue reviewed for complaint 21')
INSERT INTO dbo.complaints values(22, 22, 22, 22, '2026-11-23', 'Repair Issue', 'Complaint regarding vehicle 22', 'high', 'resolved', 'Issue reviewed for complaint 22')
INSERT INTO dbo.complaints values(23, 23, 23, 23, '2026-12-24', 'Staff Issue', 'Complaint regarding vehicle 23', 'urgent', 'closed', 'Issue reviewed for complaint 23')
INSERT INTO dbo.complaints values(24, 24, 24, 24, '2026-01-25', 'Vehicle Issue', 'Complaint regarding vehicle 24', 'low', 'open', 'Issue reviewed for complaint 24')
INSERT INTO dbo.complaints values(25, 25, 25, 25, '2026-02-26', 'Service Delay', 'Complaint regarding vehicle 25', 'medium', 'in_progress', 'Issue reviewed for complaint 25')
INSERT INTO dbo.complaints values(26, 26, 26, 26, '2026-03-27', 'Billing Issue', 'Complaint regarding vehicle 26', 'high', 'resolved', 'Issue reviewed for complaint 26')
INSERT INTO dbo.complaints values(27, 27, 27, 27, '2026-04-01', 'Repair Issue', 'Complaint regarding vehicle 27', 'urgent', 'closed', 'Issue reviewed for complaint 27')
INSERT INTO dbo.complaints values(28, 28, 28, 28, '2026-05-02', 'Staff Issue', 'Complaint regarding vehicle 28', 'low', 'open', 'Issue reviewed for complaint 28')
INSERT INTO dbo.complaints values(29, 29, 29, 29, '2026-06-03', 'Vehicle Issue', 'Complaint regarding vehicle 29', 'medium', 'in_progress', 'Issue reviewed for complaint 29')
INSERT INTO dbo.complaints values(30, 30, 30, 30, '2026-07-04', 'Service Delay', 'Complaint regarding vehicle 30', 'high', 'resolved', 'Issue reviewed for complaint 30')
INSERT INTO dbo.complaints values(31, 31, 31, 31, '2026-08-05', 'Billing Issue', 'Complaint regarding vehicle 31', 'urgent', 'closed', 'Issue reviewed for complaint 31')
INSERT INTO dbo.complaints values(32, 32, 32, 32, '2026-09-06', 'Repair Issue', 'Complaint regarding vehicle 32', 'low', 'open', 'Issue reviewed for complaint 32')
INSERT INTO dbo.complaints values(33, 33, 33, 33, '2026-10-07', 'Staff Issue', 'Complaint regarding vehicle 33', 'medium', 'in_progress', 'Issue reviewed for complaint 33')
INSERT INTO dbo.complaints values(34, 34, 34, 34, '2026-11-08', 'Vehicle Issue', 'Complaint regarding vehicle 34', 'high', 'resolved', 'Issue reviewed for complaint 34')
INSERT INTO dbo.complaints values(35, 35, 35, 35, '2026-12-09', 'Service Delay', 'Complaint regarding vehicle 35', 'urgent', 'closed', 'Issue reviewed for complaint 35')
INSERT INTO dbo.complaints values(36, 36, 36, 36, '2026-01-10', 'Billing Issue', 'Complaint regarding vehicle 36', 'low', 'open', 'Issue reviewed for complaint 36')
INSERT INTO dbo.complaints values(37, 37, 37, 37, '2026-02-11', 'Repair Issue', 'Complaint regarding vehicle 37', 'medium', 'in_progress', 'Issue reviewed for complaint 37')
INSERT INTO dbo.complaints values(38, 38, 38, 38, '2026-03-12', 'Staff Issue', 'Complaint regarding vehicle 38', 'high', 'resolved', 'Issue reviewed for complaint 38')
INSERT INTO dbo.complaints values(39, 39, 39, 39, '2026-04-13', 'Vehicle Issue', 'Complaint regarding vehicle 39', 'urgent', 'closed', 'Issue reviewed for complaint 39')
INSERT INTO dbo.complaints values(40, 40, 40, 40, '2026-05-14', 'Service Delay', 'Complaint regarding vehicle 40', 'low', 'open', 'Issue reviewed for complaint 40')
INSERT INTO dbo.complaints values(41, 41, 41, 41, '2026-06-15', 'Billing Issue', 'Complaint regarding vehicle 41', 'medium', 'in_progress', 'Issue reviewed for complaint 41')
INSERT INTO dbo.complaints values(42, 42, 42, 42, '2026-07-16', 'Repair Issue', 'Complaint regarding vehicle 42', 'high', 'resolved', 'Issue reviewed for complaint 42')
INSERT INTO dbo.complaints values(43, 43, 43, 43, '2026-08-17', 'Staff Issue', 'Complaint regarding vehicle 43', 'urgent', 'closed', 'Issue reviewed for complaint 43')
INSERT INTO dbo.complaints values(44, 44, 44, 44, '2026-09-18', 'Vehicle Issue', 'Complaint regarding vehicle 44', 'low', 'open', 'Issue reviewed for complaint 44')
INSERT INTO dbo.complaints values(45, 45, 45, 45, '2026-10-19', 'Service Delay', 'Complaint regarding vehicle 45', 'medium', 'in_progress', 'Issue reviewed for complaint 45')
INSERT INTO dbo.complaints values(46, 46, 46, 46, '2026-11-20', 'Billing Issue', 'Complaint regarding vehicle 46', 'high', 'resolved', 'Issue reviewed for complaint 46')
INSERT INTO dbo.complaints values(47, 47, 47, 47, '2026-12-21', 'Repair Issue', 'Complaint regarding vehicle 47', 'urgent', 'closed', 'Issue reviewed for complaint 47')
INSERT INTO dbo.complaints values(48, 48, 48, 48, '2026-01-22', 'Staff Issue', 'Complaint regarding vehicle 48', 'low', 'open', 'Issue reviewed for complaint 48')
INSERT INTO dbo.complaints values(49, 49, 49, 49, '2026-02-23', 'Vehicle Issue', 'Complaint regarding vehicle 49', 'medium', 'in_progress', 'Issue reviewed for complaint 49')
INSERT INTO dbo.complaints values(50, 50, 50, 50, '2026-03-24', 'Service Delay', 'Complaint regarding vehicle 50', 'high', 'resolved', 'Issue reviewed for complaint 50')


create table dbo.notifications (
    notification_id int primary key,
    owner_id int not null,
    vehicle_id int null,
    notification_type varchar(50) not null,
    title varchar(100) not null,
    message varchar(300) not null,
    created_date date not null,
    sent_date date null,
    read_status varchar(20) check (read_status in ('read', 'unread')),
    priority varchar(20) check (priority in ('low', 'medium', 'high')),
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id)
);
INSERT INTO dbo.notifications values(1, 1, 1, 'Insurance Reminder', 'Vehicle Notification 1', 'Important update for vehicle 1', '2026-02-02', '2026-02-02', 'unread', 'medium')
INSERT INTO dbo.notifications values(2, 2, 2, 'Fine Alert', 'Vehicle Notification 2', 'Important update for vehicle 2', '2026-03-03', '2026-03-03', 'read', 'high')
INSERT INTO dbo.notifications values(3, 3, 3, 'Registration Alert', 'Vehicle Notification 3', 'Important update for vehicle 3', '2026-04-04', '2026-04-04', 'unread', 'low')
INSERT INTO dbo.notifications values(4, 4, 4, 'Maintenance Alert', 'Vehicle Notification 4', 'Important update for vehicle 4', '2026-05-05', '2026-05-05', 'read', 'medium')
INSERT INTO dbo.notifications values(5, 5, 5, 'Service Reminder', 'Vehicle Notification 5', 'Important update for vehicle 5', '2026-06-06', '2026-06-06', 'unread', 'high')
INSERT INTO dbo.notifications values(6, 6, 6, 'Insurance Reminder', 'Vehicle Notification 6', 'Important update for vehicle 6', '2026-07-07', '2026-07-07', 'read', 'low')
INSERT INTO dbo.notifications values(7, 7, 7, 'Fine Alert', 'Vehicle Notification 7', 'Important update for vehicle 7', '2026-08-08', '2026-08-08', 'unread', 'medium')
INSERT INTO dbo.notifications values(8, 8, 8, 'Registration Alert', 'Vehicle Notification 8', 'Important update for vehicle 8', '2026-09-09', '2026-09-09', 'read', 'high')
INSERT INTO dbo.notifications values(9, 9, 9, 'Maintenance Alert', 'Vehicle Notification 9', 'Important update for vehicle 9', '2026-10-10', '2026-10-10', 'unread', 'low')
INSERT INTO dbo.notifications values(10, 10, 10, 'Service Reminder', 'Vehicle Notification 10', 'Important update for vehicle 10', '2026-11-11', '2026-11-11', 'read', 'medium')
INSERT INTO dbo.notifications values(11, 11, 11, 'Insurance Reminder', 'Vehicle Notification 11', 'Important update for vehicle 11', '2026-12-12', '2026-12-12', 'unread', 'high')
INSERT INTO dbo.notifications values(12, 12, 12, 'Fine Alert', 'Vehicle Notification 12', 'Important update for vehicle 12', '2026-01-13', '2026-01-13', 'read', 'low')
INSERT INTO dbo.notifications values(13, 13, 13, 'Registration Alert', 'Vehicle Notification 13', 'Important update for vehicle 13', '2026-02-14', '2026-02-14', 'unread', 'medium')
INSERT INTO dbo.notifications values(14, 14, 14, 'Maintenance Alert', 'Vehicle Notification 14', 'Important update for vehicle 14', '2026-03-15', '2026-03-15', 'read', 'high')
INSERT INTO dbo.notifications values(15, 15, 15, 'Service Reminder', 'Vehicle Notification 15', 'Important update for vehicle 15', '2026-04-16', '2026-04-16', 'unread', 'low')
INSERT INTO dbo.notifications values(16, 16, 16, 'Insurance Reminder', 'Vehicle Notification 16', 'Important update for vehicle 16', '2026-05-17', '2026-05-17', 'read', 'medium')
INSERT INTO dbo.notifications values(17, 17, 17, 'Fine Alert', 'Vehicle Notification 17', 'Important update for vehicle 17', '2026-06-18', '2026-06-18', 'unread', 'high')
INSERT INTO dbo.notifications values(18, 18, 18, 'Registration Alert', 'Vehicle Notification 18', 'Important update for vehicle 18', '2026-07-19', '2026-07-19', 'read', 'low')
INSERT INTO dbo.notifications values(19, 19, 19, 'Maintenance Alert', 'Vehicle Notification 19', 'Important update for vehicle 19', '2026-08-20', '2026-08-20', 'unread', 'medium')
INSERT INTO dbo.notifications values(20, 20, 20, 'Service Reminder', 'Vehicle Notification 20', 'Important update for vehicle 20', '2026-09-21', '2026-09-21', 'read', 'high')
INSERT INTO dbo.notifications values(21, 21, 21, 'Insurance Reminder', 'Vehicle Notification 21', 'Important update for vehicle 21', '2026-10-22', '2026-10-22', 'unread', 'low')
INSERT INTO dbo.notifications values(22, 22, 22, 'Fine Alert', 'Vehicle Notification 22', 'Important update for vehicle 22', '2026-11-23', '2026-11-23', 'read', 'medium')
INSERT INTO dbo.notifications values(23, 23, 23, 'Registration Alert', 'Vehicle Notification 23', 'Important update for vehicle 23', '2026-12-24', '2026-12-24', 'unread', 'high')
INSERT INTO dbo.notifications values(24, 24, 24, 'Maintenance Alert', 'Vehicle Notification 24', 'Important update for vehicle 24', '2026-01-25', '2026-01-25', 'read', 'low')
INSERT INTO dbo.notifications values(25, 25, 25, 'Service Reminder', 'Vehicle Notification 25', 'Important update for vehicle 25', '2026-02-26', '2026-02-26', 'unread', 'medium')
INSERT INTO dbo.notifications values(26, 26, 26, 'Insurance Reminder', 'Vehicle Notification 26', 'Important update for vehicle 26', '2026-03-27', '2026-03-27', 'read', 'high')
INSERT INTO dbo.notifications values(27, 27, 27, 'Fine Alert', 'Vehicle Notification 27', 'Important update for vehicle 27', '2026-04-01', '2026-04-01', 'unread', 'low')
INSERT INTO dbo.notifications values(28, 28, 28, 'Registration Alert', 'Vehicle Notification 28', 'Important update for vehicle 28', '2026-05-02', '2026-05-02', 'read', 'medium')
INSERT INTO dbo.notifications values(29, 29, 29, 'Maintenance Alert', 'Vehicle Notification 29', 'Important update for vehicle 29', '2026-06-03', '2026-06-03', 'unread', 'high')
INSERT INTO dbo.notifications values(30, 30, 30, 'Service Reminder', 'Vehicle Notification 30', 'Important update for vehicle 30', '2026-07-04', '2026-07-04', 'read', 'low')
INSERT INTO dbo.notifications values(31, 31, 31, 'Insurance Reminder', 'Vehicle Notification 31', 'Important update for vehicle 31', '2026-08-05', '2026-08-05', 'unread', 'medium')
INSERT INTO dbo.notifications values(32, 32, 32, 'Fine Alert', 'Vehicle Notification 32', 'Important update for vehicle 32', '2026-09-06', '2026-09-06', 'read', 'high')
INSERT INTO dbo.notifications values(33, 33, 33, 'Registration Alert', 'Vehicle Notification 33', 'Important update for vehicle 33', '2026-10-07', '2026-10-07', 'unread', 'low')
INSERT INTO dbo.notifications values(34, 34, 34, 'Maintenance Alert', 'Vehicle Notification 34', 'Important update for vehicle 34', '2026-11-08', '2026-11-08', 'read', 'medium')
INSERT INTO dbo.notifications values(35, 35, 35, 'Service Reminder', 'Vehicle Notification 35', 'Important update for vehicle 35', '2026-12-09', '2026-12-09', 'unread', 'high')
INSERT INTO dbo.notifications values(36, 36, 36, 'Insurance Reminder', 'Vehicle Notification 36', 'Important update for vehicle 36', '2026-01-10', '2026-01-10', 'read', 'low')
INSERT INTO dbo.notifications values(37, 37, 37, 'Fine Alert', 'Vehicle Notification 37', 'Important update for vehicle 37', '2026-02-11', '2026-02-11', 'unread', 'medium')
INSERT INTO dbo.notifications values(38, 38, 38, 'Registration Alert', 'Vehicle Notification 38', 'Important update for vehicle 38', '2026-03-12', '2026-03-12', 'read', 'high')
INSERT INTO dbo.notifications values(39, 39, 39, 'Maintenance Alert', 'Vehicle Notification 39', 'Important update for vehicle 39', '2026-04-13', '2026-04-13', 'unread', 'low')
INSERT INTO dbo.notifications values(40, 40, 40, 'Service Reminder', 'Vehicle Notification 40', 'Important update for vehicle 40', '2026-05-14', '2026-05-14', 'read', 'medium')
INSERT INTO dbo.notifications values(41, 41, 41, 'Insurance Reminder', 'Vehicle Notification 41', 'Important update for vehicle 41', '2026-06-15', '2026-06-15', 'unread', 'high')
INSERT INTO dbo.notifications values(42, 42, 42, 'Fine Alert', 'Vehicle Notification 42', 'Important update for vehicle 42', '2026-07-16', '2026-07-16', 'read', 'low')
INSERT INTO dbo.notifications values(43, 43, 43, 'Registration Alert', 'Vehicle Notification 43', 'Important update for vehicle 43', '2026-08-17', '2026-08-17', 'unread', 'medium')
INSERT INTO dbo.notifications values(44, 44, 44, 'Maintenance Alert', 'Vehicle Notification 44', 'Important update for vehicle 44', '2026-09-18', '2026-09-18', 'read', 'high')
INSERT INTO dbo.notifications values(45, 45, 45, 'Service Reminder', 'Vehicle Notification 45', 'Important update for vehicle 45', '2026-10-19', '2026-10-19', 'unread', 'low')
INSERT INTO dbo.notifications values(46, 46, 46, 'Insurance Reminder', 'Vehicle Notification 46', 'Important update for vehicle 46', '2026-11-20', '2026-11-20', 'read', 'medium')
INSERT INTO dbo.notifications values(47, 47, 47, 'Fine Alert', 'Vehicle Notification 47', 'Important update for vehicle 47', '2026-12-21', '2026-12-21', 'unread', 'high')
INSERT INTO dbo.notifications values(48, 48, 48, 'Registration Alert', 'Vehicle Notification 48', 'Important update for vehicle 48', '2026-01-22', '2026-01-22', 'read', 'low')
INSERT INTO dbo.notifications values(49, 49, 49, 'Maintenance Alert', 'Vehicle Notification 49', 'Important update for vehicle 49', '2026-02-23', '2026-02-23', 'unread', 'medium')
INSERT INTO dbo.notifications values(50, 50, 50, 'Service Reminder', 'Vehicle Notification 50', 'Important update for vehicle 50', '2026-03-24', '2026-03-24', 'read', 'high')


create table dbo.drivers (
    driver_id int primary key,
    owner_id int not null,
    driver_name varchar(100) not null,
    date_of_birth date not null,
    gender varchar(10) check (gender in ('male', 'female', 'other')),
    phone varchar(15) not null,
    email varchar(100) null,
    address varchar(200) not null,
    joining_date date not null,
    driver_status varchar(20) check (driver_status in ('active', 'inactive', 'suspended')),
    foreign key (owner_id) references dbo.owners(owner_id)
);
INSERT INTO dbo.drivers values(1, 1, 'Driver 1', '1991-05-15', 'female', '9500000001', 'driver1@example.com', '1 Driver Street', '2025-02-01', 'active')
INSERT INTO dbo.drivers values(2, 2, 'Driver 2', '1992-05-15', 'male', '9500000002', 'driver2@example.com', '2 Driver Street', '2025-03-01', 'inactive')
INSERT INTO dbo.drivers values(3, 3, 'Driver 3', '1993-05-15', 'female', '9500000003', 'driver3@example.com', '3 Driver Street', '2025-04-01', 'suspended')
INSERT INTO dbo.drivers values(4, 4, 'Driver 4', '1994-05-15', 'male', '9500000004', 'driver4@example.com', '4 Driver Street', '2025-05-01', 'active')
INSERT INTO dbo.drivers values(5, 5, 'Driver 5', '1995-05-15', 'female', '9500000005', 'driver5@example.com', '5 Driver Street', '2025-06-01', 'active')
INSERT INTO dbo.drivers values(6, 6, 'Driver 6', '1996-05-15', 'male', '9500000006', 'driver6@example.com', '6 Driver Street', '2025-07-01', 'inactive')
INSERT INTO dbo.drivers values(7, 7, 'Driver 7', '1997-05-15', 'female', '9500000007', 'driver7@example.com', '7 Driver Street', '2025-08-01', 'suspended')
INSERT INTO dbo.drivers values(8, 8, 'Driver 8', '1998-05-15', 'male', '9500000008', 'driver8@example.com', '8 Driver Street', '2025-09-01', 'active')
INSERT INTO dbo.drivers values(9, 9, 'Driver 9', '1999-05-15', 'female', '9500000009', 'driver9@example.com', '9 Driver Street', '2025-10-01', 'active')
INSERT INTO dbo.drivers values(10, 10, 'Driver 10', '1990-05-15', 'male', '9500000010', 'driver10@example.com', '10 Driver Street', '2025-11-01', 'inactive')
INSERT INTO dbo.drivers values(11, 11, 'Driver 11', '1991-05-15', 'female', '9500000011', 'driver11@example.com', '11 Driver Street', '2025-12-01', 'suspended')
INSERT INTO dbo.drivers values(12, 12, 'Driver 12', '1992-05-15', 'male', '9500000012', 'driver12@example.com', '12 Driver Street', '2025-01-01', 'active')
INSERT INTO dbo.drivers values(13, 13, 'Driver 13', '1993-05-15', 'female', '9500000013', 'driver13@example.com', '13 Driver Street', '2025-02-01', 'active')
INSERT INTO dbo.drivers values(14, 14, 'Driver 14', '1994-05-15', 'male', '9500000014', 'driver14@example.com', '14 Driver Street', '2025-03-01', 'inactive')
INSERT INTO dbo.drivers values(15, 15, 'Driver 15', '1995-05-15', 'female', '9500000015', 'driver15@example.com', '15 Driver Street', '2025-04-01', 'suspended')
INSERT INTO dbo.drivers values(16, 16, 'Driver 16', '1996-05-15', 'male', '9500000016', 'driver16@example.com', '16 Driver Street', '2025-05-01', 'active')
INSERT INTO dbo.drivers values(17, 17, 'Driver 17', '1997-05-15', 'female', '9500000017', 'driver17@example.com', '17 Driver Street', '2025-06-01', 'active')
INSERT INTO dbo.drivers values(18, 18, 'Driver 18', '1998-05-15', 'male', '9500000018', 'driver18@example.com', '18 Driver Street', '2025-07-01', 'inactive')
INSERT INTO dbo.drivers values(19, 19, 'Driver 19', '1999-05-15', 'female', '9500000019', 'driver19@example.com', '19 Driver Street', '2025-08-01', 'suspended')
INSERT INTO dbo.drivers values(20, 20, 'Driver 20', '1990-05-15', 'male', '9500000020', 'driver20@example.com', '20 Driver Street', '2025-09-01', 'active')
INSERT INTO dbo.drivers values(21, 21, 'Driver 21', '1991-05-15', 'female', '9500000021', 'driver21@example.com', '21 Driver Street', '2025-10-01', 'active')
INSERT INTO dbo.drivers values(22, 22, 'Driver 22', '1992-05-15', 'male', '9500000022', 'driver22@example.com', '22 Driver Street', '2025-11-01', 'inactive')
INSERT INTO dbo.drivers values(23, 23, 'Driver 23', '1993-05-15', 'female', '9500000023', 'driver23@example.com', '23 Driver Street', '2025-12-01', 'suspended')
INSERT INTO dbo.drivers values(24, 24, 'Driver 24', '1994-05-15', 'male', '9500000024', 'driver24@example.com', '24 Driver Street', '2025-01-01', 'active')
INSERT INTO dbo.drivers values(25, 25, 'Driver 25', '1995-05-15', 'female', '9500000025', 'driver25@example.com', '25 Driver Street', '2025-02-01', 'active')
INSERT INTO dbo.drivers values(26, 26, 'Driver 26', '1996-05-15', 'male', '9500000026', 'driver26@example.com', '26 Driver Street', '2025-03-01', 'inactive')
INSERT INTO dbo.drivers values(27, 27, 'Driver 27', '1997-05-15', 'female', '9500000027', 'driver27@example.com', '27 Driver Street', '2025-04-01', 'suspended')
INSERT INTO dbo.drivers values(28, 28, 'Driver 28', '1998-05-15', 'male', '9500000028', 'driver28@example.com', '28 Driver Street', '2025-05-01', 'active')
INSERT INTO dbo.drivers values(29, 29, 'Driver 29', '1999-05-15', 'female', '9500000029', 'driver29@example.com', '29 Driver Street', '2025-06-01', 'active')
INSERT INTO dbo.drivers values(30, 30, 'Driver 30', '1990-05-15', 'male', '9500000030', 'driver30@example.com', '30 Driver Street', '2025-07-01', 'inactive')
INSERT INTO dbo.drivers values(31, 31, 'Driver 31', '1991-05-15', 'female', '9500000031', 'driver31@example.com', '31 Driver Street', '2025-08-01', 'suspended')
INSERT INTO dbo.drivers values(32, 32, 'Driver 32', '1992-05-15', 'male', '9500000032', 'driver32@example.com', '32 Driver Street', '2025-09-01', 'active')
INSERT INTO dbo.drivers values(33, 33, 'Driver 33', '1993-05-15', 'female', '9500000033', 'driver33@example.com', '33 Driver Street', '2025-10-01', 'active')
INSERT INTO dbo.drivers values(34, 34, 'Driver 34', '1994-05-15', 'male', '9500000034', 'driver34@example.com', '34 Driver Street', '2025-11-01', 'inactive')
INSERT INTO dbo.drivers values(35, 35, 'Driver 35', '1995-05-15', 'female', '9500000035', 'driver35@example.com', '35 Driver Street', '2025-12-01', 'suspended')
INSERT INTO dbo.drivers values(36, 36, 'Driver 36', '1996-05-15', 'male', '9500000036', 'driver36@example.com', '36 Driver Street', '2025-01-01', 'active')
INSERT INTO dbo.drivers values(37, 37, 'Driver 37', '1997-05-15', 'female', '9500000037', 'driver37@example.com', '37 Driver Street', '2025-02-01', 'active')
INSERT INTO dbo.drivers values(38, 38, 'Driver 38', '1998-05-15', 'male', '9500000038', 'driver38@example.com', '38 Driver Street', '2025-03-01', 'inactive')
INSERT INTO dbo.drivers values(39, 39, 'Driver 39', '1999-05-15', 'female', '9500000039', 'driver39@example.com', '39 Driver Street', '2025-04-01', 'suspended')
INSERT INTO dbo.drivers values(40, 40, 'Driver 40', '1990-05-15', 'male', '9500000040', 'driver40@example.com', '40 Driver Street', '2025-05-01', 'active')
INSERT INTO dbo.drivers values(41, 41, 'Driver 41', '1991-05-15', 'female', '9500000041', 'driver41@example.com', '41 Driver Street', '2025-06-01', 'active')
INSERT INTO dbo.drivers values(42, 42, 'Driver 42', '1992-05-15', 'male', '9500000042', 'driver42@example.com', '42 Driver Street', '2025-07-01', 'inactive')
INSERT INTO dbo.drivers values(43, 43, 'Driver 43', '1993-05-15', 'female', '9500000043', 'driver43@example.com', '43 Driver Street', '2025-08-01', 'suspended')
INSERT INTO dbo.drivers values(44, 44, 'Driver 44', '1994-05-15', 'male', '9500000044', 'driver44@example.com', '44 Driver Street', '2025-09-01', 'active')
INSERT INTO dbo.drivers values(45, 45, 'Driver 45', '1995-05-15', 'female', '9500000045', 'driver45@example.com', '45 Driver Street', '2025-10-01', 'active')
INSERT INTO dbo.drivers values(46, 46, 'Driver 46', '1996-05-15', 'male', '9500000046', 'driver46@example.com', '46 Driver Street', '2025-11-01', 'inactive')
INSERT INTO dbo.drivers values(47, 47, 'Driver 47', '1997-05-15', 'female', '9500000047', 'driver47@example.com', '47 Driver Street', '2025-12-01', 'suspended')
INSERT INTO dbo.drivers values(48, 48, 'Driver 48', '1998-05-15', 'male', '9500000048', 'driver48@example.com', '48 Driver Street', '2025-01-01', 'active')
INSERT INTO dbo.drivers values(49, 49, 'Driver 49', '1999-05-15', 'female', '9500000049', 'driver49@example.com', '49 Driver Street', '2025-02-01', 'active')
INSERT INTO dbo.drivers values(50, 50, 'Driver 50', '1990-05-15', 'male', '9500000050', 'driver50@example.com', '50 Driver Street', '2025-03-01', 'inactive')

create table dbo.driver_licenses (
    license_id int primary key,
    driver_id int not null,
    license_number varchar(50) not null unique,
    license_type varchar(30) not null,
    issue_date date not null,
    expiry_date date not null,
    issuing_authority varchar(100) not null,
    issue_state varchar(50) not null,
    license_status varchar(20) check (license_status in ('active', 'expired', 'suspended', 'revoked')),
    restrictions varchar(200) null,
    foreign key (driver_id) references dbo.drivers(driver_id)
);
INSERT INTO dbo.driver_licenses VALUES (1, 1, 'DL000001', 'LMV', '2026-01-01', '2036-01-01', 'RTO Office 1', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (2, 2, 'DL000002', 'HMV', '2026-02-01', '2036-02-01', 'RTO Office 2', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (3, 3, 'DL000003', 'MCWG', '2026-03-01', '2036-03-01', 'RTO Office 3', 'Maharashtra', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (4, 4, 'DL000004', 'LMV', '2026-04-01', '2036-04-01', 'RTO Office 4', 'Karnataka', 'suspended', 'Speed restriction')
INSERT INTO dbo.driver_licenses VALUES (5, 5, 'DL000005', 'HMV', '2026-05-01', '2036-05-01', 'RTO Office 5', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (6, 6, 'DL000006', 'MCWG', '2026-06-01', '2036-06-01', 'RTO Office 6', 'Tamil Nadu', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (7, 7, 'DL000007', 'LMV', '2026-07-01', '2036-07-01', 'RTO Office 7', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (8, 8, 'DL000008', 'HMV', '2026-08-01', '2036-08-01', 'RTO Office 8', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (9, 9, 'DL000009', 'MCWG', '2026-09-01', '2036-09-01', 'RTO Office 9', 'Karnataka', 'revoked', 'Medical restriction')
INSERT INTO dbo.driver_licenses VALUES (10, 10, 'DL000010', 'LMV', '2026-10-01', '2036-10-01', 'RTO Office 10', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (11, 11, 'DL000011', 'HMV', '2026-11-01', '2036-11-01', 'RTO Office 11', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (12, 12, 'DL000012', 'MCWG', '2026-12-01', '2036-12-01', 'RTO Office 12', 'Delhi', 'expired', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (13, 13, 'DL000013', 'LMV', '2026-01-15', '2036-01-15', 'RTO Office 13', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (14, 14, 'DL000014', 'HMV', '2026-02-15', '2036-02-15', 'RTO Office 14', 'Karnataka', 'suspended', 'Speed restriction')
INSERT INTO dbo.driver_licenses VALUES (15, 15, 'DL000015', 'MCWG', '2026-03-15', '2036-03-15', 'RTO Office 15', 'Telangana', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (16, 16, 'DL000016', 'LMV', '2026-04-15', '2036-04-15', 'RTO Office 16', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (17, 17, 'DL000017', 'HMV', '2026-05-15', '2036-05-15', 'RTO Office 17', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (18, 18, 'DL000018', 'MCWG', '2026-06-15', '2036-06-15', 'RTO Office 18', 'Maharashtra', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (19, 19, 'DL000019', 'LMV', '2026-07-15', '2036-07-15', 'RTO Office 19', 'Karnataka', 'revoked', 'Medical restriction')
INSERT INTO dbo.driver_licenses VALUES (20, 20, 'DL000020', 'HMV', '2026-08-15', '2036-08-15', 'RTO Office 20', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (21, 21, 'DL000021', 'MCWG', '2026-09-15', '2036-09-15', 'RTO Office 21', 'Tamil Nadu', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (22, 22, 'DL000022', 'LMV', '2026-10-15', '2036-10-15', 'RTO Office 22', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (23, 23, 'DL000023', 'HMV', '2026-11-15', '2036-11-15', 'RTO Office 23', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (24, 24, 'DL000024', 'MCWG', '2026-12-15', '2036-12-15', 'RTO Office 24', 'Karnataka', 'suspended', 'Speed restriction')
INSERT INTO dbo.driver_licenses VALUES (25, 25, 'DL000025', 'LMV', '2026-01-20', '2036-01-20', 'RTO Office 25', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (26, 26, 'DL000026', 'HMV', '2026-02-20', '2036-02-20', 'RTO Office 26', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (27, 27, 'DL000027', 'MCWG', '2026-03-20', '2036-03-20', 'RTO Office 27', 'Delhi', 'expired', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (28, 28, 'DL000028', 'LMV', '2026-04-20', '2036-04-20', 'RTO Office 28', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (29, 29, 'DL000029', 'HMV', '2026-05-20', '2036-05-20', 'RTO Office 29', 'Karnataka', 'revoked', 'Medical restriction')
INSERT INTO dbo.driver_licenses VALUES (30, 30, 'DL000030', 'MCWG', '2026-06-20', '2036-06-20', 'RTO Office 30', 'Telangana', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (31, 31, 'DL000031', 'LMV', '2026-07-20', '2036-07-20', 'RTO Office 31', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (32, 32, 'DL000032', 'HMV', '2026-08-20', '2036-08-20', 'RTO Office 32', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (33, 33, 'DL000033', 'MCWG', '2026-09-20', '2036-09-20', 'RTO Office 33', 'Maharashtra', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (34, 34, 'DL000034', 'LMV', '2026-10-20', '2036-10-20', 'RTO Office 34', 'Karnataka', 'suspended', 'Speed restriction')
INSERT INTO dbo.driver_licenses VALUES (35, 35, 'DL000035', 'HMV', '2026-11-20', '2036-11-20', 'RTO Office 35', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (36, 36, 'DL000036', 'MCWG', '2026-12-20', '2036-12-20', 'RTO Office 36', 'Tamil Nadu', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (37, 37, 'DL000037', 'LMV', '2026-01-25', '2036-01-25', 'RTO Office 37', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (38, 38, 'DL000038', 'HMV', '2026-02-25', '2036-02-25', 'RTO Office 38', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (39, 39, 'DL000039', 'MCWG', '2026-03-25', '2036-03-25', 'RTO Office 39', 'Karnataka', 'revoked', 'Medical restriction')
INSERT INTO dbo.driver_licenses VALUES (40, 40, 'DL000040', 'LMV', '2026-04-25', '2036-04-25', 'RTO Office 40', 'Telangana', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (41, 41, 'DL000041', 'HMV', '2026-05-25', '2036-05-25', 'RTO Office 41', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (42, 42, 'DL000042', 'MCWG', '2026-06-25', '2036-06-25', 'RTO Office 42', 'Delhi', 'expired', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (43, 43, 'DL000043', 'LMV', '2026-07-25', '2036-07-25', 'RTO Office 43', 'Maharashtra', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (44, 44, 'DL000044', 'HMV', '2026-08-25', '2036-08-25', 'RTO Office 44', 'Karnataka', 'suspended', 'Speed restriction')
INSERT INTO dbo.driver_licenses VALUES (45, 45, 'DL000045', 'MCWG', '2026-09-25', '2036-09-25', 'RTO Office 45', 'Telangana', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (46, 46, 'DL000046', 'LMV', '2026-10-25', '2036-10-25', 'RTO Office 46', 'Tamil Nadu', 'active', NULL)
INSERT INTO dbo.driver_licenses VALUES (47, 47, 'DL000047', 'HMV', '2026-11-25', '2036-11-25', 'RTO Office 47', 'Delhi', 'expired', NULL)
INSERT INTO dbo.driver_licenses VALUES (48, 48, 'DL000048', 'MCWG', '2026-12-25', '2036-12-25', 'RTO Office 48', 'Maharashtra', 'active', 'Helmet required')
INSERT INTO dbo.driver_licenses VALUES (49, 49, 'DL000049', 'LMV', '2026-01-10', '2036-01-10', 'RTO Office 49', 'Karnataka', 'revoked', 'Medical restriction')
INSERT INTO dbo.driver_licenses VALUES (50, 50, 'DL000050', 'HMV', '2026-02-10', '2036-02-10', 'RTO Office 50', 'Telangana', 'active', NULL)

create table dbo.vehicle_registration (
    registration_id int primary key,
    vehicle_id int not null,
    owner_id int not null,
    registration_number varchar(20) not null unique,
    registration_date date not null,
    expiry_date date null,
    registration_type varchar(30) not null,
    registering_authority varchar(100) not null,
    registration_state varchar(50) not null,
    registration_status varchar(20) check (registration_status in ('active', 'expired', 'cancelled')),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (owner_id) references dbo.owners(owner_id)
);

INSERT INTO dbo.vehicle_registration values(1, 1, 1, 'VR000001', '2026-02-01', '2031-02-01', 'Commercial', 'RTO Office 1', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(2, 2, 2, 'VR000002', '2026-03-01', '2031-03-01', 'Transport', 'RTO Office 2', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(3, 3, 3, 'VR000003', '2026-04-01', '2031-04-01', 'Private', 'RTO Office 3', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(4, 4, 4, 'VR000004', '2026-05-01', '2031-05-01', 'Commercial', 'RTO Office 4', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(5, 5, 5, 'VR000005', '2026-06-01', '2031-06-01', 'Transport', 'RTO Office 5', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(6, 6, 6, 'VR000006', '2026-07-01', '2031-07-01', 'Private', 'RTO Office 6', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(7, 7, 7, 'VR000007', '2026-08-01', '2031-08-01', 'Commercial', 'RTO Office 7', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(8, 8, 8, 'VR000008', '2026-09-01', '2031-09-01', 'Transport', 'RTO Office 8', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(9, 9, 9, 'VR000009', '2026-10-01', '2031-10-01', 'Private', 'RTO Office 9', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(10, 10, 10, 'VR000010', '2026-11-01', '2031-11-01', 'Commercial', 'RTO Office 10', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(11, 11, 11, 'VR000011', '2026-12-01', '2031-12-01', 'Transport', 'RTO Office 11', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(12, 12, 12, 'VR000012', '2026-01-01', '2031-01-01', 'Private', 'RTO Office 12', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(13, 13, 13, 'VR000013', '2026-02-01', '2031-02-01', 'Commercial', 'RTO Office 13', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(14, 14, 14, 'VR000014', '2026-03-01', '2031-03-01', 'Transport', 'RTO Office 14', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(15, 15, 15, 'VR000015', '2026-04-01', '2031-04-01', 'Private', 'RTO Office 15', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(16, 16, 16, 'VR000016', '2026-05-01', '2031-05-01', 'Commercial', 'RTO Office 16', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(17, 17, 17, 'VR000017', '2026-06-01', '2031-06-01', 'Transport', 'RTO Office 17', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(18, 18, 18, 'VR000018', '2026-07-01', '2031-07-01', 'Private', 'RTO Office 18', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(19, 19, 19, 'VR000019', '2026-08-01', '2031-08-01', 'Commercial', 'RTO Office 19', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(20, 20, 20, 'VR000020', '2026-09-01', '2031-09-01', 'Transport', 'RTO Office 20', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(21, 21, 21, 'VR000021', '2026-10-01', '2031-10-01', 'Private', 'RTO Office 21', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(22, 22, 22, 'VR000022', '2026-11-01', '2031-11-01', 'Commercial', 'RTO Office 22', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(23, 23, 23, 'VR000023', '2026-12-01', '2031-12-01', 'Transport', 'RTO Office 23', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(24, 24, 24, 'VR000024', '2026-01-01', '2031-01-01', 'Private', 'RTO Office 24', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(25, 25, 25, 'VR000025', '2026-02-01', '2031-02-01', 'Commercial', 'RTO Office 25', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(26, 26, 26, 'VR000026', '2026-03-01', '2031-03-01', 'Transport', 'RTO Office 26', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(27, 27, 27, 'VR000027', '2026-04-01', '2031-04-01', 'Private', 'RTO Office 27', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(28, 28, 28, 'VR000028', '2026-05-01', '2031-05-01', 'Commercial', 'RTO Office 28', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(29, 29, 29, 'VR000029', '2026-06-01', '2031-06-01', 'Transport', 'RTO Office 29', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(30, 30, 30, 'VR000030', '2026-07-01', '2031-07-01', 'Private', 'RTO Office 30', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(31, 31, 31, 'VR000031', '2026-08-01', '2031-08-01', 'Commercial', 'RTO Office 31', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(32, 32, 32, 'VR000032', '2026-09-01', '2031-09-01', 'Transport', 'RTO Office 32', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(33, 33, 33, 'VR000033', '2026-10-01', '2031-10-01', 'Private', 'RTO Office 33', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(34, 34, 34, 'VR000034', '2026-11-01', '2031-11-01', 'Commercial', 'RTO Office 34', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(35, 35, 35, 'VR000035', '2026-12-01', '2031-12-01', 'Transport', 'RTO Office 35', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(36, 36, 36, 'VR000036', '2026-01-01', '2031-01-01', 'Private', 'RTO Office 36', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(37, 37, 37, 'VR000037', '2026-02-01', '2031-02-01', 'Commercial', 'RTO Office 37', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(38, 38, 38, 'VR000038', '2026-03-01', '2031-03-01', 'Transport', 'RTO Office 38', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(39, 39, 39, 'VR000039', '2026-04-01', '2031-04-01', 'Private', 'RTO Office 39', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(40, 40, 40, 'VR000040', '2026-05-01', '2031-05-01', 'Commercial', 'RTO Office 40', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(41, 41, 41, 'VR000041', '2026-06-01', '2031-06-01', 'Transport', 'RTO Office 41', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(42, 42, 42, 'VR000042', '2026-07-01', '2031-07-01', 'Private', 'RTO Office 42', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(43, 43, 43, 'VR000043', '2026-08-01', '2031-08-01', 'Commercial', 'RTO Office 43', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(44, 44, 44, 'VR000044', '2026-09-01', '2031-09-01', 'Transport', 'RTO Office 44', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(45, 45, 45, 'VR000045', '2026-10-01', '2031-10-01', 'Private', 'RTO Office 45', 'Telangana', 'active')
INSERT INTO dbo.vehicle_registration values(46, 46, 46, 'VR000046', '2026-11-01', '2031-11-01', 'Commercial', 'RTO Office 46', 'Tamil Nadu', 'active')
INSERT INTO dbo.vehicle_registration values(47, 47, 47, 'VR000047', '2026-12-01', '2031-12-01', 'Transport', 'RTO Office 47', 'Delhi', 'expired')
INSERT INTO dbo.vehicle_registration values(48, 48, 48, 'VR000048', '2026-01-01', '2031-01-01', 'Private', 'RTO Office 48', 'Maharashtra', 'active')
INSERT INTO dbo.vehicle_registration values(49, 49, 49, 'VR000049', '2026-02-01', '2031-02-01', 'Commercial', 'RTO Office 49', 'Karnataka', 'cancelled')
INSERT INTO dbo.vehicle_registration values(50, 50, 50, 'VR000050', '2026-03-01', '2031-03-01', 'Transport', 'RTO Office 50', 'Telangana', 'active')


create table dbo.emission_tests (
    test_id int primary key,
    vehicle_id int not null,
    test_center varchar(100) not null,
    test_date date not null,
    certificate_number varchar(50) not null unique,
    carbon_level decimal(8,2) check (carbon_level >= 0),
    emission_level varchar(30) not null,
    validity_date date not null,
    test_result varchar(20) check (test_result in ('pass', 'fail')),
    certificate_status varchar(20) check (certificate_status in ('valid', 'expired', 'revoked')),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id)
);
INSERT INTO dbo.emission_tests values(1, 1, 'Emission Center 1', '2026-02-02', 'CERT000001', 0.60, 'Medium', '2027-02-02', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(2, 2, 'Emission Center 2', '2026-03-03', 'CERT000002', 0.70, 'High', '2027-03-03', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(3, 3, 'Emission Center 3', '2026-04-04', 'CERT000003', 0.80, 'Low', '2027-04-04', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(4, 4, 'Emission Center 4', '2026-05-05', 'CERT000004', 0.90, 'Medium', '2027-05-05', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(5, 5, 'Emission Center 5', '2026-06-06', 'CERT000005', 1.00, 'High', '2027-06-06', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(6, 6, 'Emission Center 6', '2026-07-07', 'CERT000006', 1.10, 'Low', '2027-07-07', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(7, 7, 'Emission Center 7', '2026-08-08', 'CERT000007', 1.20, 'Medium', '2027-08-08', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(8, 8, 'Emission Center 8', '2026-09-09', 'CERT000008', 1.30, 'High', '2027-09-09', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(9, 9, 'Emission Center 9', '2026-10-10', 'CERT000009', 1.40, 'Low', '2027-10-10', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(10, 10, 'Emission Center 10', '2026-11-11', 'CERT000010', 0.50, 'Medium', '2027-11-11', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(11, 11, 'Emission Center 11', '2026-12-12', 'CERT000011', 0.60, 'High', '2027-12-12', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(12, 12, 'Emission Center 12', '2026-01-13', 'CERT000012', 0.70, 'Low', '2027-01-13', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(13, 13, 'Emission Center 13', '2026-02-14', 'CERT000013', 0.80, 'Medium', '2027-02-14', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(14, 14, 'Emission Center 14', '2026-03-15', 'CERT000014', 0.90, 'High', '2027-03-15', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(15, 15, 'Emission Center 15', '2026-04-16', 'CERT000015', 1.00, 'Low', '2027-04-16', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(16, 16, 'Emission Center 16', '2026-05-17', 'CERT000016', 1.10, 'Medium', '2027-05-17', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(17, 17, 'Emission Center 17', '2026-06-18', 'CERT000017', 1.20, 'High', '2027-06-18', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(18, 18, 'Emission Center 18', '2026-07-19', 'CERT000018', 1.30, 'Low', '2027-07-19', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(19, 19, 'Emission Center 19', '2026-08-20', 'CERT000019', 1.40, 'Medium', '2027-08-20', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(20, 20, 'Emission Center 20', '2026-09-21', 'CERT000020', 0.50, 'High', '2027-09-21', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(21, 21, 'Emission Center 21', '2026-10-22', 'CERT000021', 0.60, 'Low', '2027-10-22', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(22, 22, 'Emission Center 22', '2026-11-23', 'CERT000022', 0.70, 'Medium', '2027-11-23', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(23, 23, 'Emission Center 23', '2026-12-24', 'CERT000023', 0.80, 'High', '2027-12-24', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(24, 24, 'Emission Center 24', '2026-01-25', 'CERT000024', 0.90, 'Low', '2027-01-25', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(25, 25, 'Emission Center 25', '2026-02-26', 'CERT000025', 1.00, 'Medium', '2027-02-26', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(26, 26, 'Emission Center 26', '2026-03-27', 'CERT000026', 1.10, 'High', '2027-03-27', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(27, 27, 'Emission Center 27', '2026-04-01', 'CERT000027', 1.20, 'Low', '2027-04-01', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(28, 28, 'Emission Center 28', '2026-05-02', 'CERT000028', 1.30, 'Medium', '2027-05-02', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(29, 29, 'Emission Center 29', '2026-06-03', 'CERT000029', 1.40, 'High', '2027-06-03', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(30, 30, 'Emission Center 30', '2026-07-04', 'CERT000030', 0.50, 'Low', '2027-07-04', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(31, 31, 'Emission Center 31', '2026-08-05', 'CERT000031', 0.60, 'Medium', '2027-08-05', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(32, 32, 'Emission Center 32', '2026-09-06', 'CERT000032', 0.70, 'High', '2027-09-06', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(33, 33, 'Emission Center 33', '2026-10-07', 'CERT000033', 0.80, 'Low', '2027-10-07', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(34, 34, 'Emission Center 34', '2026-11-08', 'CERT000034', 0.90, 'Medium', '2027-11-08', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(35, 35, 'Emission Center 35', '2026-12-09', 'CERT000035', 1.00, 'High', '2027-12-09', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(36, 36, 'Emission Center 36', '2026-01-10', 'CERT000036', 1.10, 'Low', '2027-01-10', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(37, 37, 'Emission Center 37', '2026-02-11', 'CERT000037', 1.20, 'Medium', '2027-02-11', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(38, 38, 'Emission Center 38', '2026-03-12', 'CERT000038', 1.30, 'High', '2027-03-12', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(39, 39, 'Emission Center 39', '2026-04-13', 'CERT000039', 1.40, 'Low', '2027-04-13', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(40, 40, 'Emission Center 40', '2026-05-14', 'CERT000040', 0.50, 'Medium', '2027-05-14', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(41, 41, 'Emission Center 41', '2026-06-15', 'CERT000041', 0.60, 'High', '2027-06-15', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(42, 42, 'Emission Center 42', '2026-07-16', 'CERT000042', 0.70, 'Low', '2027-07-16', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(43, 43, 'Emission Center 43', '2026-08-17', 'CERT000043', 0.80, 'Medium', '2027-08-17', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(44, 44, 'Emission Center 44', '2026-09-18', 'CERT000044', 0.90, 'High', '2027-09-18', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(45, 45, 'Emission Center 45', '2026-10-19', 'CERT000045', 1.00, 'Low', '2027-10-19', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(46, 46, 'Emission Center 46', '2026-11-20', 'CERT000046', 1.10, 'Medium', '2027-11-20', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(47, 47, 'Emission Center 47', '2026-12-21', 'CERT000047', 1.20, 'High', '2027-12-21', 'fail', 'expired')
INSERT INTO dbo.emission_tests values(48, 48, 'Emission Center 48', '2026-01-22', 'CERT000048', 1.30, 'Low', '2027-01-22', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(49, 49, 'Emission Center 49', '2026-02-23', 'CERT000049', 1.40, 'Medium', '2027-02-23', 'pass', 'valid')
INSERT INTO dbo.emission_tests values(50, 50, 'Emission Center 50', '2026-03-24', 'CERT000050', 0.50, 'High', '2027-03-24', 'pass', 'valid')


create table dbo.feedback (
    feedback_id int primary key,
    owner_id int not null,
    vehicle_id int not null,
    service_id int null,
    center_id int null,
    rating int check (rating between 1 and 5),
    feedback_text varchar(500) null,
    feedback_date date not null,
    response varchar(500) null,
    feedback_status varchar(20) check (feedback_status in ('pending', 'reviewed', 'resolved')),
    foreign key (owner_id) references dbo.owners(owner_id),
    foreign key (vehicle_id) references dbo.vehicles(vehicle_id),
    foreign key (service_id) references dbo.service_history(service_id),
    foreign key (center_id) references dbo.service_centers(center_id)
);
INSERT INTO dbo.feedback values(1, 1, 1, 1, 1, 2, 'Good service experience for vehicle 1', '2026-02-02', 'Thank you for your feedback 1', 'reviewed')
INSERT INTO dbo.feedback values(2, 2, 2, 2, 2, 3, 'Good service experience for vehicle 2', '2026-03-03', 'Thank you for your feedback 2', 'resolved')
INSERT INTO dbo.feedback values(3, 3, 3, 3, 3, 4, 'Good service experience for vehicle 3', '2026-04-04', 'Thank you for your feedback 3', 'pending')
INSERT INTO dbo.feedback values(4, 4, 4, 4, 4, 5, 'Good service experience for vehicle 4', '2026-05-05', 'Thank you for your feedback 4', 'reviewed')
INSERT INTO dbo.feedback values(5, 5, 5, 5, 5, 1, 'Good service experience for vehicle 5', '2026-06-06', 'Thank you for your feedback 5', 'resolved')
INSERT INTO dbo.feedback values(6, 6, 6, 6, 6, 2, 'Good service experience for vehicle 6', '2026-07-07', 'Thank you for your feedback 6', 'pending')
INSERT INTO dbo.feedback values(7, 7, 7, 7, 7, 3, 'Good service experience for vehicle 7', '2026-08-08', 'Thank you for your feedback 7', 'reviewed')
INSERT INTO dbo.feedback values(8, 8, 8, 8, 8, 4, 'Good service experience for vehicle 8', '2026-09-09', 'Thank you for your feedback 8', 'resolved')
INSERT INTO dbo.feedback values(9, 9, 9, 9, 9, 5, 'Good service experience for vehicle 9', '2026-10-10', 'Thank you for your feedback 9', 'pending')
INSERT INTO dbo.feedback values(10, 10, 10, 10, 10, 1, 'Good service experience for vehicle 10', '2026-11-11', 'Thank you for your feedback 10', 'reviewed')
INSERT INTO dbo.feedback values(11, 11, 11, 11, 11, 2, 'Good service experience for vehicle 11', '2026-12-12', 'Thank you for your feedback 11', 'resolved')
INSERT INTO dbo.feedback values(12, 12, 12, 12, 12, 3, 'Good service experience for vehicle 12', '2026-01-13', 'Thank you for your feedback 12', 'pending')
INSERT INTO dbo.feedback values(13, 13, 13, 13, 13, 4, 'Good service experience for vehicle 13', '2026-02-14', 'Thank you for your feedback 13', 'reviewed')
INSERT INTO dbo.feedback values(14, 14, 14, 14, 14, 5, 'Good service experience for vehicle 14', '2026-03-15', 'Thank you for your feedback 14', 'resolved')
INSERT INTO dbo.feedback values(15, 15, 15, 15, 15, 1, 'Good service experience for vehicle 15', '2026-04-16', 'Thank you for your feedback 15', 'pending')
INSERT INTO dbo.feedback values(16, 16, 16, 16, 16, 2, 'Good service experience for vehicle 16', '2026-05-17', 'Thank you for your feedback 16', 'reviewed')
INSERT INTO dbo.feedback values(17, 17, 17, 17, 17, 3, 'Good service experience for vehicle 17', '2026-06-18', 'Thank you for your feedback 17', 'resolved')
INSERT INTO dbo.feedback values(18, 18, 18, 18, 18, 4, 'Good service experience for vehicle 18', '2026-07-19', 'Thank you for your feedback 18', 'pending')
INSERT INTO dbo.feedback values(19, 19, 19, 19, 19, 5, 'Good service experience for vehicle 19', '2026-08-20', 'Thank you for your feedback 19', 'reviewed')
INSERT INTO dbo.feedback values(20, 20, 20, 20, 20, 1, 'Good service experience for vehicle 20', '2026-09-21', 'Thank you for your feedback 20', 'resolved')
INSERT INTO dbo.feedback values(21, 21, 21, 21, 21, 2, 'Good service experience for vehicle 21', '2026-10-22', 'Thank you for your feedback 21', 'pending')
INSERT INTO dbo.feedback values(22, 22, 22, 22, 22, 3, 'Good service experience for vehicle 22', '2026-11-23', 'Thank you for your feedback 22', 'reviewed')
INSERT INTO dbo.feedback values(23, 23, 23, 23, 23, 4, 'Good service experience for vehicle 23', '2026-12-24', 'Thank you for your feedback 23', 'resolved')
INSERT INTO dbo.feedback values(24, 24, 24, 24, 24, 5, 'Good service experience for vehicle 24', '2026-01-25', 'Thank you for your feedback 24', 'pending')
INSERT INTO dbo.feedback values(25, 25, 25, 25, 25, 1, 'Good service experience for vehicle 25', '2026-02-26', 'Thank you for your feedback 25', 'reviewed')
INSERT INTO dbo.feedback values(26, 26, 26, 26, 26, 2, 'Good service experience for vehicle 26', '2026-03-27', 'Thank you for your feedback 26', 'resolved')
INSERT INTO dbo.feedback values(27, 27, 27, 27, 27, 3, 'Good service experience for vehicle 27', '2026-04-01', 'Thank you for your feedback 27', 'pending')
INSERT INTO dbo.feedback values(28, 28, 28, 28, 28, 4, 'Good service experience for vehicle 28', '2026-05-02', 'Thank you for your feedback 28', 'reviewed')
INSERT INTO dbo.feedback values(29, 29, 29, 29, 29, 5, 'Good service experience for vehicle 29', '2026-06-03', 'Thank you for your feedback 29', 'resolved')
INSERT INTO dbo.feedback values(30, 30, 30, 30, 30, 1, 'Good service experience for vehicle 30', '2026-07-04', 'Thank you for your feedback 30', 'pending')
INSERT INTO dbo.feedback values(31, 31, 31, 31, 31, 2, 'Good service experience for vehicle 31', '2026-08-05', 'Thank you for your feedback 31', 'reviewed')
INSERT INTO dbo.feedback values(32, 32, 32, 32, 32, 3, 'Good service experience for vehicle 32', '2026-09-06', 'Thank you for your feedback 32', 'resolved')
INSERT INTO dbo.feedback values(33, 33, 33, 33, 33, 4, 'Good service experience for vehicle 33', '2026-10-07', 'Thank you for your feedback 33', 'pending')
INSERT INTO dbo.feedback values(34, 34, 34, 34, 34, 5, 'Good service experience for vehicle 34', '2026-11-08', 'Thank you for your feedback 34', 'reviewed')
INSERT INTO dbo.feedback values(35, 35, 35, 35, 35, 1, 'Good service experience for vehicle 35', '2026-12-09', 'Thank you for your feedback 35', 'resolved')
INSERT INTO dbo.feedback values(36, 36, 36, 36, 36, 2, 'Good service experience for vehicle 36', '2026-01-10', 'Thank you for your feedback 36', 'pending')
INSERT INTO dbo.feedback values(37, 37, 37, 37, 37, 3, 'Good service experience for vehicle 37', '2026-02-11', 'Thank you for your feedback 37', 'reviewed')
INSERT INTO dbo.feedback values(38, 38, 38, 38, 38, 4, 'Good service experience for vehicle 38', '2026-03-12', 'Thank you for your feedback 38', 'resolved')
INSERT INTO dbo.feedback values(39, 39, 39, 39, 39, 5, 'Good service experience for vehicle 39', '2026-04-13', 'Thank you for your feedback 39', 'pending')
INSERT INTO dbo.feedback values(40, 40, 40, 40, 40, 1, 'Good service experience for vehicle 40', '2026-05-14', 'Thank you for your feedback 40', 'reviewed')
INSERT INTO dbo.feedback values(41, 41, 41, 41, 41, 2, 'Good service experience for vehicle 41', '2026-06-15', 'Thank you for your feedback 41', 'resolved')
INSERT INTO dbo.feedback values(42, 42, 42, 42, 42, 3, 'Good service experience for vehicle 42', '2026-07-16', 'Thank you for your feedback 42', 'pending')
INSERT INTO dbo.feedback values(43, 43, 43, 43, 43, 4, 'Good service experience for vehicle 43', '2026-08-17', 'Thank you for your feedback 43', 'reviewed')
INSERT INTO dbo.feedback values(44, 44, 44, 44, 44, 5, 'Good service experience for vehicle 44', '2026-09-18', 'Thank you for your feedback 44', 'resolved')
INSERT INTO dbo.feedback values(45, 45, 45, 45, 45, 1, 'Good service experience for vehicle 45', '2026-10-19', 'Thank you for your feedback 45', 'pending')
INSERT INTO dbo.feedback values(46, 46, 46, 46, 46, 2, 'Good service experience for vehicle 46', '2026-11-20', 'Thank you for your feedback 46', 'reviewed')
INSERT INTO dbo.feedback values(47, 47, 47, 47, 47, 3, 'Good service experience for vehicle 47', '2026-12-21', 'Thank you for your feedback 47', 'resolved')
INSERT INTO dbo.feedback values(48, 48, 48, 48, 48, 4, 'Good service experience for vehicle 48', '2026-01-22', 'Thank you for your feedback 48', 'pending')
INSERT INTO dbo.feedback values(49, 49, 49, 49, 49, 5, 'Good service experience for vehicle 49', '2026-02-23', 'Thank you for your feedback 49', 'reviewed')
INSERT INTO dbo.feedback values(50, 50, 50, 50, 50, 1, 'Good service experience for vehicle 50', '2026-03-24', 'Thank you for your feedback 50', 'resolved')




SELECT * FROM dbo.owners;
SELECT * FROM dbo.vehicles;
SELECT * FROM dbo.service_history;
SELECT * FROM dbo.service_centers;
SELECT * FROM dbo.vehicle_parts;
SELECT * FROM dbo.fuel_records;
SELECT * FROM dbo.payments;
-- Verification: display every table created by this script.
USE vehiclescomplete_lifecycle;
GO

SELECT * FROM dbo.owners;
SELECT * FROM dbo.vehicles;
SELECT * FROM dbo.service_centers;
SELECT * FROM dbo.parts;
SELECT * FROM dbo.part_suppliers;
SELECT * FROM dbo.mechanics;
SELECT * FROM dbo.ownership_history;
SELECT * FROM dbo.documents;
SELECT * FROM dbo.insurance;
SELECT * FROM dbo.service_history;
SELECT * FROM dbo.service_details;
SELECT * FROM dbo.accidents;
SELECT * FROM dbo.traffic_fines;
SELECT * FROM dbo.fuel_stations;
SELECT * FROM dbo.fuel_records;
SELECT * FROM dbo.vehicle_parts;
SELECT * FROM dbo.payments;
SELECT * FROM dbo.invoices;
SELECT * FROM dbo.complaints;
SELECT * FROM dbo.notifications;
SELECT * FROM dbo.drivers;
SELECT * FROM dbo.driver_licenses;
SELECT * FROM dbo.vehicle_registration;
SELECT * FROM dbo.emission_tests;
SELECT * FROM dbo.feedback;


-- Verification: list the actual tables and schemas in this database.
USE vehiclescomplete_lifecycle;
GO
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_NAME;
GO

-- Quick checks for the core tables.
SELECT * FROM dbo.owners;
SELECT * FROM dbo.vehicles;
SELECT * FROM dbo.service_centers;
GO
/*
VEHICLE LIFECYCLE MANAGEMENT SYSTEM
500 SQL Server practice queries based on the 25 tables in the supplied script, with output notes.

IMPORTANT:
- Each query includes an OUTPUT note describing what the result grid should show.
- Exact row values cannot be predetermined without running the queries on your SQL Server data.
- These are read-only SELECT queries.
- Run them in the database that contains these tables.
- The database name is set to vehiclescomplete_lifecycle.
- Output rows and numeric values depend on the data currently stored in your database.
- Verify actual table names and schema before running.
*/
USE vehiclescomplete_lifecycle;
GO

-- QUERY 1 OF 500
-- Display every record from owners
SELECT * FROM dbo.owners;
-- OUTPUT: A result grid containing the records/columns for: display every record from owners. Exact rows depend on your database data.
GO

-- QUERY 2 OF 500
-- Display the first 10 records from owners
SELECT TOP (10) * FROM dbo.owners;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from owners. Exact rows depend on your database data.
GO

-- QUERY 3 OF 500
-- Count records in owners
SELECT COUNT(*) AS total_records FROM dbo.owners;
-- OUTPUT: A result grid showing the calculated value for: count records in owners. The actual value depends on your database data.
GO

-- QUERY 4 OF 500
-- Display distinct values of owner_id in owners
SELECT DISTINCT owner_id FROM dbo.owners;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of owner_id in owners. Exact rows depend on your database data.
GO

-- QUERY 5 OF 500
-- Sort owners by its first column
SELECT * FROM dbo.owners ORDER BY owner_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort owners by its first column.
GO

-- QUERY 6 OF 500
-- Sort owners by its first column in descending order
SELECT * FROM dbo.owners ORDER BY owner_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort owners by its first column in descending order.
GO

-- QUERY 7 OF 500
-- Find records where owner_id is not NULL
SELECT * FROM dbo.owners WHERE owner_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where owner_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 8 OF 500
-- Find the maximum owner_id in owners
SELECT MAX(owner_id) AS maximum_owner_id FROM dbo.owners;
-- OUTPUT: A result grid showing the calculated value for: find the maximum owner_id in owners. The actual value depends on your database data.
GO

-- QUERY 9 OF 500
-- Find the minimum owner_id in owners
SELECT MIN(owner_id) AS minimum_owner_id FROM dbo.owners;
-- OUTPUT: A result grid showing the calculated value for: find the minimum owner_id in owners. The actual value depends on your database data.
GO

-- QUERY 10 OF 500
-- Calculate the average owner_id in owners
SELECT AVG(CAST(owner_id AS DECIMAL(18,2))) AS average_owner_id FROM dbo.owners;
-- OUTPUT: A result grid showing the calculated value for: calculate the average owner_id in owners. The actual value depends on your database data.
GO

-- QUERY 11 OF 500
-- Calculate the total of owner_id in owners
SELECT SUM(CAST(owner_id AS DECIMAL(18,2))) AS total_owner_id FROM dbo.owners;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of owner_id in owners. The actual value depends on your database data.
GO

-- QUERY 12 OF 500
-- Find records with owner_id greater than zero
SELECT * FROM dbo.owners WHERE owner_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with owner_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 13 OF 500
-- Sort owners by date_of_birth, newest first
SELECT * FROM dbo.owners ORDER BY date_of_birth DESC;
-- OUTPUT: Matching records displayed in the requested order: sort owners by date_of_birth, newest first.
GO

-- QUERY 14 OF 500
-- Find records with a known date_of_birth
SELECT * FROM dbo.owners WHERE date_of_birth IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known date_of_birth. Exact rows depend on your database data.
GO

-- QUERY 15 OF 500
-- Display key columns from owners
SELECT owner_id, first_name, last_name, date_of_birth FROM dbo.owners;
-- OUTPUT: A result grid containing the records/columns for: display key columns from owners. Exact rows depend on your database data.
GO

-- QUERY 16 OF 500
-- Find owners records where owner_id is zero or greater
SELECT * FROM dbo.owners WHERE owner_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find owners records where owner_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 17 OF 500
-- Display every record from vehicles
SELECT * FROM dbo.vehicles;
-- OUTPUT: A result grid containing the records/columns for: display every record from vehicles. Exact rows depend on your database data.
GO

-- QUERY 18 OF 500
-- Display the first 10 records from vehicles
SELECT TOP (10) * FROM dbo.vehicles;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from vehicles. Exact rows depend on your database data.
GO

-- QUERY 19 OF 500
-- Count records in vehicles
SELECT COUNT(*) AS total_records FROM dbo.vehicles;
-- OUTPUT: A result grid showing the calculated value for: count records in vehicles. The actual value depends on your database data.
GO

-- QUERY 20 OF 500
-- Display distinct values of vehicle_id in vehicles
SELECT DISTINCT vehicle_id FROM dbo.vehicles;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of vehicle_id in vehicles. Exact rows depend on your database data.
GO

-- QUERY 21 OF 500
-- Sort vehicles by its first column
SELECT * FROM dbo.vehicles ORDER BY vehicle_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicles by its first column.
GO

-- QUERY 22 OF 500
-- Sort vehicles by its first column in descending order
SELECT * FROM dbo.vehicles ORDER BY vehicle_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicles by its first column in descending order.
GO

-- QUERY 23 OF 500
-- Find records where vehicle_id is not NULL
SELECT * FROM dbo.vehicles WHERE vehicle_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where vehicle_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 24 OF 500
-- Find the maximum vehicle_id in vehicles
SELECT MAX(vehicle_id) AS maximum_vehicle_id FROM dbo.vehicles;
-- OUTPUT: A result grid showing the calculated value for: find the maximum vehicle_id in vehicles. The actual value depends on your database data.
GO

-- QUERY 25 OF 500
-- Find the minimum vehicle_id in vehicles
SELECT MIN(vehicle_id) AS minimum_vehicle_id FROM dbo.vehicles;
-- OUTPUT: A result grid showing the calculated value for: find the minimum vehicle_id in vehicles. The actual value depends on your database data.
GO

-- QUERY 26 OF 500
-- Calculate the average vehicle_id in vehicles
SELECT AVG(CAST(vehicle_id AS DECIMAL(18,2))) AS average_vehicle_id FROM dbo.vehicles;
-- OUTPUT: A result grid showing the calculated value for: calculate the average vehicle_id in vehicles. The actual value depends on your database data.
GO

-- QUERY 27 OF 500
-- Calculate the total of vehicle_id in vehicles
SELECT SUM(CAST(vehicle_id AS DECIMAL(18,2))) AS total_vehicle_id FROM dbo.vehicles;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of vehicle_id in vehicles. The actual value depends on your database data.
GO

-- QUERY 28 OF 500
-- Find records with vehicle_id greater than zero
SELECT * FROM dbo.vehicles WHERE vehicle_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with vehicle_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 29 OF 500
-- Search vehicles.registration_number for values containing 'a'
SELECT * FROM dbo.vehicles WHERE registration_number LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search vehicles.registration_number for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 30 OF 500
-- Group vehicles records by registration_number
SELECT registration_number, COUNT(*) AS record_count FROM dbo.vehicles GROUP BY registration_number;
-- OUTPUT: A result grid containing the records/columns for: group vehicles records by registration_number. Exact rows depend on your database data.
GO

-- QUERY 31 OF 500
-- Display key columns from vehicles
SELECT vehicle_id, owner_id, registration_number, chassis_number FROM dbo.vehicles;
-- OUTPUT: A result grid containing the records/columns for: display key columns from vehicles. Exact rows depend on your database data.
GO

-- QUERY 32 OF 500
-- Find vehicles records where manufacturing_year is zero or greater
SELECT * FROM dbo.vehicles WHERE manufacturing_year >= 0;
-- OUTPUT: A result grid containing the records/columns for: find vehicles records where manufacturing_year is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 33 OF 500
-- Display every record from service_centers
SELECT * FROM dbo.service_centers;
-- OUTPUT: A result grid containing the records/columns for: display every record from service_centers. Exact rows depend on your database data.
GO

-- QUERY 34 OF 500
-- Display the first 10 records from service_centers
SELECT TOP (10) * FROM dbo.service_centers;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from service_centers. Exact rows depend on your database data.
GO

-- QUERY 35 OF 500
-- Count records in service_centers
SELECT COUNT(*) AS total_records FROM dbo.service_centers;
-- OUTPUT: A result grid showing the calculated value for: count records in service_centers. The actual value depends on your database data.
GO

-- QUERY 36 OF 500
-- Display distinct values of center_id in service_centers
SELECT DISTINCT center_id FROM dbo.service_centers;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of center_id in service_centers. Exact rows depend on your database data.
GO

-- QUERY 37 OF 500
-- Sort service_centers by its first column
SELECT * FROM dbo.service_centers ORDER BY center_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort service_centers by its first column.
GO

-- QUERY 38 OF 500
-- Sort service_centers by its first column in descending order
SELECT * FROM dbo.service_centers ORDER BY center_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort service_centers by its first column in descending order.
GO

-- QUERY 39 OF 500
-- Find records where center_id is not NULL
SELECT * FROM dbo.service_centers WHERE center_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where center_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 40 OF 500
-- Find the maximum center_id in service_centers
SELECT MAX(center_id) AS maximum_center_id FROM dbo.service_centers;
-- OUTPUT: A result grid showing the calculated value for: find the maximum center_id in service_centers. The actual value depends on your database data.
GO

-- QUERY 41 OF 500
-- Find the minimum center_id in service_centers
SELECT MIN(center_id) AS minimum_center_id FROM dbo.service_centers;
-- OUTPUT: A result grid showing the calculated value for: find the minimum center_id in service_centers. The actual value depends on your database data.
GO

-- QUERY 42 OF 500
-- Calculate the average center_id in service_centers
SELECT AVG(CAST(center_id AS DECIMAL(18,2))) AS average_center_id FROM dbo.service_centers;
-- OUTPUT: A result grid showing the calculated value for: calculate the average center_id in service_centers. The actual value depends on your database data.
GO

-- QUERY 43 OF 500
-- Calculate the total of center_id in service_centers
SELECT SUM(CAST(center_id AS DECIMAL(18,2))) AS total_center_id FROM dbo.service_centers;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of center_id in service_centers. The actual value depends on your database data.
GO

-- QUERY 44 OF 500
-- Find records with center_id greater than zero
SELECT * FROM dbo.service_centers WHERE center_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with center_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 45 OF 500
-- Search service_centers.center_name for values containing 'a'
SELECT * FROM dbo.service_centers WHERE center_name LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search service_centers.center_name for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 46 OF 500
-- Group service_centers records by center_name
SELECT center_name, COUNT(*) AS record_count FROM dbo.service_centers GROUP BY center_name;
-- OUTPUT: A result grid containing the records/columns for: group service_centers records by center_name. Exact rows depend on your database data.
GO

-- QUERY 47 OF 500
-- Display key columns from service_centers
SELECT center_id, center_name, manager_name, phone FROM dbo.service_centers;
-- OUTPUT: A result grid containing the records/columns for: display key columns from service_centers. Exact rows depend on your database data.
GO

-- QUERY 48 OF 500
-- Find service_centers records where center_id is zero or greater
SELECT * FROM dbo.service_centers WHERE center_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find service_centers records where center_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 49 OF 500
-- Display every record from parts
SELECT * FROM dbo.parts;
-- OUTPUT: A result grid containing the records/columns for: display every record from parts. Exact rows depend on your database data.
GO

-- QUERY 50 OF 500
-- Display the first 10 records from parts
SELECT TOP (10) * FROM dbo.parts;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from parts. Exact rows depend on your database data.
GO

-- QUERY 51 OF 500
-- Count records in parts
SELECT COUNT(*) AS total_records FROM dbo.parts;
-- OUTPUT: A result grid showing the calculated value for: count records in parts. The actual value depends on your database data.
GO

-- QUERY 52 OF 500
-- Display distinct values of part_id in parts
SELECT DISTINCT part_id FROM dbo.parts;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of part_id in parts. Exact rows depend on your database data.
GO

-- QUERY 53 OF 500
-- Sort parts by its first column
SELECT * FROM dbo.parts ORDER BY part_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort parts by its first column.
GO

-- QUERY 54 OF 500
-- Sort parts by its first column in descending order
SELECT * FROM dbo.parts ORDER BY part_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort parts by its first column in descending order.
GO

-- QUERY 55 OF 500
-- Find records where part_id is not NULL
SELECT * FROM dbo.parts WHERE part_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where part_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 56 OF 500
-- Find the maximum part_id in parts
SELECT MAX(part_id) AS maximum_part_id FROM dbo.parts;
-- OUTPUT: A result grid showing the calculated value for: find the maximum part_id in parts. The actual value depends on your database data.
GO

-- QUERY 57 OF 500
-- Find the minimum part_id in parts
SELECT MIN(part_id) AS minimum_part_id FROM dbo.parts;
-- OUTPUT: A result grid showing the calculated value for: find the minimum part_id in parts. The actual value depends on your database data.
GO

-- QUERY 58 OF 500
-- Calculate the average part_id in parts
SELECT AVG(CAST(part_id AS DECIMAL(18,2))) AS average_part_id FROM dbo.parts;
-- OUTPUT: A result grid showing the calculated value for: calculate the average part_id in parts. The actual value depends on your database data.
GO

-- QUERY 59 OF 500
-- Calculate the total of part_id in parts
SELECT SUM(CAST(part_id AS DECIMAL(18,2))) AS total_part_id FROM dbo.parts;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of part_id in parts. The actual value depends on your database data.
GO

-- QUERY 60 OF 500
-- Find records with part_id greater than zero
SELECT * FROM dbo.parts WHERE part_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with part_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 61 OF 500
-- Search parts.part_name for values containing 'a'
SELECT * FROM dbo.parts WHERE part_name LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search parts.part_name for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 62 OF 500
-- Group parts records by part_name
SELECT part_name, COUNT(*) AS record_count FROM dbo.parts GROUP BY part_name;
-- OUTPUT: A result grid containing the records/columns for: group parts records by part_name. Exact rows depend on your database data.
GO

-- QUERY 63 OF 500
-- Display key columns from parts
SELECT part_id, part_name, part_number, category FROM dbo.parts;
-- OUTPUT: A result grid containing the records/columns for: display key columns from parts. Exact rows depend on your database data.
GO

-- QUERY 64 OF 500
-- Find parts records where warranty_period is zero or greater
SELECT * FROM dbo.parts WHERE warranty_period >= 0;
-- OUTPUT: A result grid containing the records/columns for: find parts records where warranty_period is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 65 OF 500
-- Display every record from part_suppliers
SELECT * FROM dbo.part_suppliers;
-- OUTPUT: A result grid containing the records/columns for: display every record from part_suppliers. Exact rows depend on your database data.
GO

-- QUERY 66 OF 500
-- Display the first 10 records from part_suppliers
SELECT TOP (10) * FROM dbo.part_suppliers;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from part_suppliers. Exact rows depend on your database data.
GO

-- QUERY 67 OF 500
-- Count records in part_suppliers
SELECT COUNT(*) AS total_records FROM dbo.part_suppliers;
-- OUTPUT: A result grid showing the calculated value for: count records in part_suppliers. The actual value depends on your database data.
GO

-- QUERY 68 OF 500
-- Display distinct values of supplier_id in part_suppliers
SELECT DISTINCT supplier_id FROM dbo.part_suppliers;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of supplier_id in part_suppliers. Exact rows depend on your database data.
GO

-- QUERY 69 OF 500
-- Sort part_suppliers by its first column
SELECT * FROM dbo.part_suppliers ORDER BY supplier_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort part_suppliers by its first column.
GO

-- QUERY 70 OF 500
-- Sort part_suppliers by its first column in descending order
SELECT * FROM dbo.part_suppliers ORDER BY supplier_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort part_suppliers by its first column in descending order.
GO

-- QUERY 71 OF 500
-- Find records where supplier_id is not NULL
SELECT * FROM dbo.part_suppliers WHERE supplier_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where supplier_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 72 OF 500
-- Find the maximum supplier_id in part_suppliers
SELECT MAX(supplier_id) AS maximum_supplier_id FROM dbo.part_suppliers;
-- OUTPUT: A result grid showing the calculated value for: find the maximum supplier_id in part_suppliers. The actual value depends on your database data.
GO

-- QUERY 73 OF 500
-- Find the minimum supplier_id in part_suppliers
SELECT MIN(supplier_id) AS minimum_supplier_id FROM dbo.part_suppliers;
-- OUTPUT: A result grid showing the calculated value for: find the minimum supplier_id in part_suppliers. The actual value depends on your database data.
GO

-- QUERY 74 OF 500
-- Calculate the average supplier_id in part_suppliers
SELECT AVG(CAST(supplier_id AS DECIMAL(18,2))) AS average_supplier_id FROM dbo.part_suppliers;
-- OUTPUT: A result grid showing the calculated value for: calculate the average supplier_id in part_suppliers. The actual value depends on your database data.
GO

-- QUERY 75 OF 500
-- Calculate the total of supplier_id in part_suppliers
SELECT SUM(CAST(supplier_id AS DECIMAL(18,2))) AS total_supplier_id FROM dbo.part_suppliers;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of supplier_id in part_suppliers. The actual value depends on your database data.
GO

-- QUERY 76 OF 500
-- Find records with supplier_id greater than zero
SELECT * FROM dbo.part_suppliers WHERE supplier_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with supplier_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 77 OF 500
-- Search part_suppliers.supplier_name for values containing 'a'
SELECT * FROM dbo.part_suppliers WHERE supplier_name LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search part_suppliers.supplier_name for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 78 OF 500
-- Group part_suppliers records by supplier_name
SELECT supplier_name, COUNT(*) AS record_count FROM dbo.part_suppliers GROUP BY supplier_name;
-- OUTPUT: A result grid containing the records/columns for: group part_suppliers records by supplier_name. Exact rows depend on your database data.
GO

-- QUERY 79 OF 500
-- Display key columns from part_suppliers
SELECT supplier_id, supplier_name, contact_person, phone FROM dbo.part_suppliers;
-- OUTPUT: A result grid containing the records/columns for: display key columns from part_suppliers. Exact rows depend on your database data.
GO

-- QUERY 80 OF 500
-- Find part_suppliers records where supplier_id is zero or greater
SELECT * FROM dbo.part_suppliers WHERE supplier_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find part_suppliers records where supplier_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 81 OF 500
-- Display every record from mechanics
SELECT * FROM dbo.mechanics;
-- OUTPUT: A result grid containing the records/columns for: display every record from mechanics. Exact rows depend on your database data.
GO

-- QUERY 82 OF 500
-- Display the first 10 records from mechanics
SELECT TOP (10) * FROM dbo.mechanics;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from mechanics. Exact rows depend on your database data.
GO

-- QUERY 83 OF 500
-- Count records in mechanics
SELECT COUNT(*) AS total_records FROM dbo.mechanics;
-- OUTPUT: A result grid showing the calculated value for: count records in mechanics. The actual value depends on your database data.
GO

-- QUERY 84 OF 500
-- Display distinct values of mechanic_id in mechanics
SELECT DISTINCT mechanic_id FROM dbo.mechanics;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of mechanic_id in mechanics. Exact rows depend on your database data.
GO

-- QUERY 85 OF 500
-- Sort mechanics by its first column
SELECT * FROM dbo.mechanics ORDER BY mechanic_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort mechanics by its first column.
GO

-- QUERY 86 OF 500
-- Sort mechanics by its first column in descending order
SELECT * FROM dbo.mechanics ORDER BY mechanic_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort mechanics by its first column in descending order.
GO

-- QUERY 87 OF 500
-- Find records where mechanic_id is not NULL
SELECT * FROM dbo.mechanics WHERE mechanic_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where mechanic_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 88 OF 500
-- Find the maximum mechanic_id in mechanics
SELECT MAX(mechanic_id) AS maximum_mechanic_id FROM dbo.mechanics;
-- OUTPUT: A result grid showing the calculated value for: find the maximum mechanic_id in mechanics. The actual value depends on your database data.
GO

-- QUERY 89 OF 500
-- Find the minimum mechanic_id in mechanics
SELECT MIN(mechanic_id) AS minimum_mechanic_id FROM dbo.mechanics;
-- OUTPUT: A result grid showing the calculated value for: find the minimum mechanic_id in mechanics. The actual value depends on your database data.
GO

-- QUERY 90 OF 500
-- Calculate the average mechanic_id in mechanics
SELECT AVG(CAST(mechanic_id AS DECIMAL(18,2))) AS average_mechanic_id FROM dbo.mechanics;
-- OUTPUT: A result grid showing the calculated value for: calculate the average mechanic_id in mechanics. The actual value depends on your database data.
GO

-- QUERY 91 OF 500
-- Calculate the total of mechanic_id in mechanics
SELECT SUM(CAST(mechanic_id AS DECIMAL(18,2))) AS total_mechanic_id FROM dbo.mechanics;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of mechanic_id in mechanics. The actual value depends on your database data.
GO

-- QUERY 92 OF 500
-- Find records with mechanic_id greater than zero
SELECT * FROM dbo.mechanics WHERE mechanic_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with mechanic_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 93 OF 500
-- Sort mechanics by joining_date, newest first
SELECT * FROM dbo.mechanics ORDER BY joining_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort mechanics by joining_date, newest first.
GO

-- QUERY 94 OF 500
-- Find records with a known joining_date
SELECT * FROM dbo.mechanics WHERE joining_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known joining_date. Exact rows depend on your database data.
GO

-- QUERY 95 OF 500
-- Display key columns from mechanics
SELECT mechanic_id, center_id, mechanic_name, specialization FROM dbo.mechanics;
-- OUTPUT: A result grid containing the records/columns for: display key columns from mechanics. Exact rows depend on your database data.
GO

-- QUERY 96 OF 500
-- Find mechanics records where salary is zero or greater
SELECT * FROM dbo.mechanics WHERE salary >= 0;
-- OUTPUT: A result grid containing the records/columns for: find mechanics records where salary is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 97 OF 500
-- Display every record from ownership_history
SELECT * FROM dbo.ownership_history;
-- OUTPUT: A result grid containing the records/columns for: display every record from ownership_history. Exact rows depend on your database data.
GO

-- QUERY 98 OF 500
-- Display the first 10 records from ownership_history
SELECT TOP (10) * FROM dbo.ownership_history;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from ownership_history. Exact rows depend on your database data.
GO

-- QUERY 99 OF 500
-- Count records in ownership_history
SELECT COUNT(*) AS total_records FROM dbo.ownership_history;
-- OUTPUT: A result grid showing the calculated value for: count records in ownership_history. The actual value depends on your database data.
GO

-- QUERY 100 OF 500
-- Display distinct values of history_id in ownership_history
SELECT DISTINCT history_id FROM dbo.ownership_history;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of history_id in ownership_history. Exact rows depend on your database data.
GO

-- QUERY 101 OF 500
-- Sort ownership_history by its first column
SELECT * FROM dbo.ownership_history ORDER BY history_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort ownership_history by its first column.
GO

-- QUERY 102 OF 500
-- Sort ownership_history by its first column in descending order
SELECT * FROM dbo.ownership_history ORDER BY history_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort ownership_history by its first column in descending order.
GO

-- QUERY 103 OF 500
-- Find records where history_id is not NULL
SELECT * FROM dbo.ownership_history WHERE history_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where history_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 104 OF 500
-- Find the maximum history_id in ownership_history
SELECT MAX(history_id) AS maximum_history_id FROM dbo.ownership_history;
-- OUTPUT: A result grid showing the calculated value for: find the maximum history_id in ownership_history. The actual value depends on your database data.
GO

-- QUERY 105 OF 500
-- Find the minimum history_id in ownership_history
SELECT MIN(history_id) AS minimum_history_id FROM dbo.ownership_history;
-- OUTPUT: A result grid showing the calculated value for: find the minimum history_id in ownership_history. The actual value depends on your database data.
GO

-- QUERY 106 OF 500
-- Calculate the average history_id in ownership_history
SELECT AVG(CAST(history_id AS DECIMAL(18,2))) AS average_history_id FROM dbo.ownership_history;
-- OUTPUT: A result grid showing the calculated value for: calculate the average history_id in ownership_history. The actual value depends on your database data.
GO

-- QUERY 107 OF 500
-- Calculate the total of history_id in ownership_history
SELECT SUM(CAST(history_id AS DECIMAL(18,2))) AS total_history_id FROM dbo.ownership_history;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of history_id in ownership_history. The actual value depends on your database data.
GO

-- QUERY 108 OF 500
-- Find records with history_id greater than zero
SELECT * FROM dbo.ownership_history WHERE history_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with history_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 109 OF 500
-- Sort ownership_history by transfer_date, newest first
SELECT * FROM dbo.ownership_history ORDER BY transfer_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort ownership_history by transfer_date, newest first.
GO

-- QUERY 110 OF 500
-- Find records with a known transfer_date
SELECT * FROM dbo.ownership_history WHERE transfer_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known transfer_date. Exact rows depend on your database data.
GO

-- QUERY 111 OF 500
-- Display key columns from ownership_history
SELECT history_id, vehicle_id, owner_id, previous_owner_name FROM dbo.ownership_history;
-- OUTPUT: A result grid containing the records/columns for: display key columns from ownership_history. Exact rows depend on your database data.
GO

-- QUERY 112 OF 500
-- Find ownership_history records where transfer_fee is zero or greater
SELECT * FROM dbo.ownership_history WHERE transfer_fee >= 0;
-- OUTPUT: A result grid containing the records/columns for: find ownership_history records where transfer_fee is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 113 OF 500
-- Display every record from documents
SELECT * FROM dbo.documents;
-- OUTPUT: A result grid containing the records/columns for: display every record from documents. Exact rows depend on your database data.
GO

-- QUERY 114 OF 500
-- Display the first 10 records from documents
SELECT TOP (10) * FROM dbo.documents;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from documents. Exact rows depend on your database data.
GO

-- QUERY 115 OF 500
-- Count records in documents
SELECT COUNT(*) AS total_records FROM dbo.documents;
-- OUTPUT: A result grid showing the calculated value for: count records in documents. The actual value depends on your database data.
GO

-- QUERY 116 OF 500
-- Display distinct values of document_id in documents
SELECT DISTINCT document_id FROM dbo.documents;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of document_id in documents. Exact rows depend on your database data.
GO

-- QUERY 117 OF 500
-- Sort documents by its first column
SELECT * FROM dbo.documents ORDER BY document_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort documents by its first column.
GO

-- QUERY 118 OF 500
-- Sort documents by its first column in descending order
SELECT * FROM dbo.documents ORDER BY document_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort documents by its first column in descending order.
GO

-- QUERY 119 OF 500
-- Find records where document_id is not NULL
SELECT * FROM dbo.documents WHERE document_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where document_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 120 OF 500
-- Find the maximum document_id in documents
SELECT MAX(document_id) AS maximum_document_id FROM dbo.documents;
-- OUTPUT: A result grid showing the calculated value for: find the maximum document_id in documents. The actual value depends on your database data.
GO

-- QUERY 121 OF 500
-- Find the minimum document_id in documents
SELECT MIN(document_id) AS minimum_document_id FROM dbo.documents;
-- OUTPUT: A result grid showing the calculated value for: find the minimum document_id in documents. The actual value depends on your database data.
GO

-- QUERY 122 OF 500
-- Calculate the average document_id in documents
SELECT AVG(CAST(document_id AS DECIMAL(18,2))) AS average_document_id FROM dbo.documents;
-- OUTPUT: A result grid showing the calculated value for: calculate the average document_id in documents. The actual value depends on your database data.
GO

-- QUERY 123 OF 500
-- Calculate the total of document_id in documents
SELECT SUM(CAST(document_id AS DECIMAL(18,2))) AS total_document_id FROM dbo.documents;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of document_id in documents. The actual value depends on your database data.
GO

-- QUERY 124 OF 500
-- Find records with document_id greater than zero
SELECT * FROM dbo.documents WHERE document_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with document_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 125 OF 500
-- Sort documents by issue_date, newest first
SELECT * FROM dbo.documents ORDER BY issue_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort documents by issue_date, newest first.
GO

-- QUERY 126 OF 500
-- Find records with a known issue_date
SELECT * FROM dbo.documents WHERE issue_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known issue_date. Exact rows depend on your database data.
GO

-- QUERY 127 OF 500
-- Display key columns from documents
SELECT document_id, vehicle_id, owner_id, document_type FROM dbo.documents;
-- OUTPUT: A result grid containing the records/columns for: display key columns from documents. Exact rows depend on your database data.
GO

-- QUERY 128 OF 500
-- Find documents records where owner_id is zero or greater
SELECT * FROM dbo.documents WHERE owner_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find documents records where owner_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 129 OF 500
-- Display every record from insurance
SELECT * FROM dbo.insurance;
-- OUTPUT: A result grid containing the records/columns for: display every record from insurance. Exact rows depend on your database data.
GO

-- QUERY 130 OF 500
-- Display the first 10 records from insurance
SELECT TOP (10) * FROM dbo.insurance;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from insurance. Exact rows depend on your database data.
GO

-- QUERY 131 OF 500
-- Count records in insurance
SELECT COUNT(*) AS total_records FROM dbo.insurance;
-- OUTPUT: A result grid showing the calculated value for: count records in insurance. The actual value depends on your database data.
GO

-- QUERY 132 OF 500
-- Display distinct values of insurance_id in insurance
SELECT DISTINCT insurance_id FROM dbo.insurance;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of insurance_id in insurance. Exact rows depend on your database data.
GO

-- QUERY 133 OF 500
-- Sort insurance by its first column
SELECT * FROM dbo.insurance ORDER BY insurance_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort insurance by its first column.
GO

-- QUERY 134 OF 500
-- Sort insurance by its first column in descending order
SELECT * FROM dbo.insurance ORDER BY insurance_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort insurance by its first column in descending order.
GO

-- QUERY 135 OF 500
-- Find records where insurance_id is not NULL
SELECT * FROM dbo.insurance WHERE insurance_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where insurance_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 136 OF 500
-- Find the maximum insurance_id in insurance
SELECT MAX(insurance_id) AS maximum_insurance_id FROM dbo.insurance;
-- OUTPUT: A result grid showing the calculated value for: find the maximum insurance_id in insurance. The actual value depends on your database data.
GO

-- QUERY 137 OF 500
-- Find the minimum insurance_id in insurance
SELECT MIN(insurance_id) AS minimum_insurance_id FROM dbo.insurance;
-- OUTPUT: A result grid showing the calculated value for: find the minimum insurance_id in insurance. The actual value depends on your database data.
GO

-- QUERY 138 OF 500
-- Calculate the average insurance_id in insurance
SELECT AVG(CAST(insurance_id AS DECIMAL(18,2))) AS average_insurance_id FROM dbo.insurance;
-- OUTPUT: A result grid showing the calculated value for: calculate the average insurance_id in insurance. The actual value depends on your database data.
GO

-- QUERY 139 OF 500
-- Calculate the total of insurance_id in insurance
SELECT SUM(CAST(insurance_id AS DECIMAL(18,2))) AS total_insurance_id FROM dbo.insurance;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of insurance_id in insurance. The actual value depends on your database data.
GO

-- QUERY 140 OF 500
-- Find records with insurance_id greater than zero
SELECT * FROM dbo.insurance WHERE insurance_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with insurance_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 141 OF 500
-- Sort insurance by start_date, newest first
SELECT * FROM dbo.insurance ORDER BY start_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort insurance by start_date, newest first.
GO

-- QUERY 142 OF 500
-- Find records with a known start_date
SELECT * FROM dbo.insurance WHERE start_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known start_date. Exact rows depend on your database data.
GO

-- QUERY 143 OF 500
-- Display key columns from insurance
SELECT insurance_id, vehicle_id, owner_id, policy_number FROM dbo.insurance;
-- OUTPUT: A result grid containing the records/columns for: display key columns from insurance. Exact rows depend on your database data.
GO

-- QUERY 144 OF 500
-- Find insurance records where premium_amount is zero or greater
SELECT * FROM dbo.insurance WHERE premium_amount >= 0;
-- OUTPUT: A result grid containing the records/columns for: find insurance records where premium_amount is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 145 OF 500
-- Display every record from service_history
SELECT * FROM dbo.service_history;
-- OUTPUT: A result grid containing the records/columns for: display every record from service_history. Exact rows depend on your database data.
GO

-- QUERY 146 OF 500
-- Display the first 10 records from service_history
SELECT TOP (10) * FROM dbo.service_history;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from service_history. Exact rows depend on your database data.
GO

-- QUERY 147 OF 500
-- Count records in service_history
SELECT COUNT(*) AS total_records FROM dbo.service_history;
-- OUTPUT: A result grid showing the calculated value for: count records in service_history. The actual value depends on your database data.
GO

-- QUERY 148 OF 500
-- Display distinct values of service_id in service_history
SELECT DISTINCT service_id FROM dbo.service_history;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of service_id in service_history. Exact rows depend on your database data.
GO

-- QUERY 149 OF 500
-- Sort service_history by its first column
SELECT * FROM dbo.service_history ORDER BY service_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort service_history by its first column.
GO

-- QUERY 150 OF 500
-- Sort service_history by its first column in descending order
SELECT * FROM dbo.service_history ORDER BY service_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort service_history by its first column in descending order.
GO

-- QUERY 151 OF 500
-- Find records where service_id is not NULL
SELECT * FROM dbo.service_history WHERE service_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where service_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 152 OF 500
-- Find the maximum service_id in service_history
SELECT MAX(service_id) AS maximum_service_id FROM dbo.service_history;
-- OUTPUT: A result grid showing the calculated value for: find the maximum service_id in service_history. The actual value depends on your database data.
GO

-- QUERY 153 OF 500
-- Find the minimum service_id in service_history
SELECT MIN(service_id) AS minimum_service_id FROM dbo.service_history;
-- OUTPUT: A result grid showing the calculated value for: find the minimum service_id in service_history. The actual value depends on your database data.
GO

-- QUERY 154 OF 500
-- Calculate the average service_id in service_history
SELECT AVG(CAST(service_id AS DECIMAL(18,2))) AS average_service_id FROM dbo.service_history;
-- OUTPUT: A result grid showing the calculated value for: calculate the average service_id in service_history. The actual value depends on your database data.
GO

-- QUERY 155 OF 500
-- Calculate the total of service_id in service_history
SELECT SUM(CAST(service_id AS DECIMAL(18,2))) AS total_service_id FROM dbo.service_history;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of service_id in service_history. The actual value depends on your database data.
GO

-- QUERY 156 OF 500
-- Find records with service_id greater than zero
SELECT * FROM dbo.service_history WHERE service_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with service_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 157 OF 500
-- Sort service_history by service_date, newest first
SELECT * FROM dbo.service_history ORDER BY service_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort service_history by service_date, newest first.
GO

-- QUERY 158 OF 500
-- Find records with a known service_date
SELECT * FROM dbo.service_history WHERE service_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known service_date. Exact rows depend on your database data.
GO

-- QUERY 159 OF 500
-- Display key columns from service_history
SELECT service_id, vehicle_id, center_id, service_date FROM dbo.service_history;
-- OUTPUT: A result grid containing the records/columns for: display key columns from service_history. Exact rows depend on your database data.
GO

-- QUERY 160 OF 500
-- Find service_history records where service_cost is zero or greater
SELECT * FROM dbo.service_history WHERE service_cost >= 0;
-- OUTPUT: A result grid containing the records/columns for: find service_history records where service_cost is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 161 OF 500
-- Display every record from service_details
SELECT * FROM dbo.service_details;
-- OUTPUT: A result grid containing the records/columns for: display every record from service_details. Exact rows depend on your database data.
GO

-- QUERY 162 OF 500
-- Display the first 10 records from service_details
SELECT TOP (10) * FROM dbo.service_details;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from service_details. Exact rows depend on your database data.
GO

-- QUERY 163 OF 500
-- Count records in service_details
SELECT COUNT(*) AS total_records FROM dbo.service_details;
-- OUTPUT: A result grid showing the calculated value for: count records in service_details. The actual value depends on your database data.
GO

-- QUERY 164 OF 500
-- Display distinct values of service_detail_id in service_details
SELECT DISTINCT service_detail_id FROM dbo.service_details;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of service_detail_id in service_details. Exact rows depend on your database data.
GO

-- QUERY 165 OF 500
-- Sort service_details by its first column
SELECT * FROM dbo.service_details ORDER BY service_detail_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort service_details by its first column.
GO

-- QUERY 166 OF 500
-- Sort service_details by its first column in descending order
SELECT * FROM dbo.service_details ORDER BY service_detail_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort service_details by its first column in descending order.
GO

-- QUERY 167 OF 500
-- Find records where service_detail_id is not NULL
SELECT * FROM dbo.service_details WHERE service_detail_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where service_detail_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 168 OF 500
-- Find the maximum service_detail_id in service_details
SELECT MAX(service_detail_id) AS maximum_service_detail_id FROM dbo.service_details;
-- OUTPUT: A result grid showing the calculated value for: find the maximum service_detail_id in service_details. The actual value depends on your database data.
GO

-- QUERY 169 OF 500
-- Find the minimum service_detail_id in service_details
SELECT MIN(service_detail_id) AS minimum_service_detail_id FROM dbo.service_details;
-- OUTPUT: A result grid showing the calculated value for: find the minimum service_detail_id in service_details. The actual value depends on your database data.
GO

-- QUERY 170 OF 500
-- Calculate the average service_detail_id in service_details
SELECT AVG(CAST(service_detail_id AS DECIMAL(18,2))) AS average_service_detail_id FROM dbo.service_details;
-- OUTPUT: A result grid showing the calculated value for: calculate the average service_detail_id in service_details. The actual value depends on your database data.
GO

-- QUERY 171 OF 500
-- Calculate the total of service_detail_id in service_details
SELECT SUM(CAST(service_detail_id AS DECIMAL(18,2))) AS total_service_detail_id FROM dbo.service_details;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of service_detail_id in service_details. The actual value depends on your database data.
GO

-- QUERY 172 OF 500
-- Find records with service_detail_id greater than zero
SELECT * FROM dbo.service_details WHERE service_detail_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with service_detail_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 173 OF 500
-- Search service_details.service_description for values containing 'a'
SELECT * FROM dbo.service_details WHERE service_description LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search service_details.service_description for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 174 OF 500
-- Group service_details records by service_description
SELECT service_description, COUNT(*) AS record_count FROM dbo.service_details GROUP BY service_description;
-- OUTPUT: A result grid containing the records/columns for: group service_details records by service_description. Exact rows depend on your database data.
GO

-- QUERY 175 OF 500
-- Display key columns from service_details
SELECT service_detail_id, service_id, part_id, service_description FROM dbo.service_details;
-- OUTPUT: A result grid containing the records/columns for: display key columns from service_details. Exact rows depend on your database data.
GO

-- QUERY 176 OF 500
-- Find service_details records where warranty_period is zero or greater
SELECT * FROM dbo.service_details WHERE warranty_period >= 0;
-- OUTPUT: A result grid containing the records/columns for: find service_details records where warranty_period is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 177 OF 500
-- Display every record from accidents
SELECT * FROM dbo.accidents;
-- OUTPUT: A result grid containing the records/columns for: display every record from accidents. Exact rows depend on your database data.
GO

-- QUERY 178 OF 500
-- Display the first 10 records from accidents
SELECT TOP (10) * FROM dbo.accidents;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from accidents. Exact rows depend on your database data.
GO

-- QUERY 179 OF 500
-- Count records in accidents
SELECT COUNT(*) AS total_records FROM dbo.accidents;
-- OUTPUT: A result grid showing the calculated value for: count records in accidents. The actual value depends on your database data.
GO

-- QUERY 180 OF 500
-- Display distinct values of accident_id in accidents
SELECT DISTINCT accident_id FROM dbo.accidents;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of accident_id in accidents. Exact rows depend on your database data.
GO

-- QUERY 181 OF 500
-- Sort accidents by its first column
SELECT * FROM dbo.accidents ORDER BY accident_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort accidents by its first column.
GO

-- QUERY 182 OF 500
-- Sort accidents by its first column in descending order
SELECT * FROM dbo.accidents ORDER BY accident_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort accidents by its first column in descending order.
GO

-- QUERY 183 OF 500
-- Find records where accident_id is not NULL
SELECT * FROM dbo.accidents WHERE accident_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where accident_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 184 OF 500
-- Find the maximum accident_id in accidents
SELECT MAX(accident_id) AS maximum_accident_id FROM dbo.accidents;
-- OUTPUT: A result grid showing the calculated value for: find the maximum accident_id in accidents. The actual value depends on your database data.
GO

-- QUERY 185 OF 500
-- Find the minimum accident_id in accidents
SELECT MIN(accident_id) AS minimum_accident_id FROM dbo.accidents;
-- OUTPUT: A result grid showing the calculated value for: find the minimum accident_id in accidents. The actual value depends on your database data.
GO

-- QUERY 186 OF 500
-- Calculate the average accident_id in accidents
SELECT AVG(CAST(accident_id AS DECIMAL(18,2))) AS average_accident_id FROM dbo.accidents;
-- OUTPUT: A result grid showing the calculated value for: calculate the average accident_id in accidents. The actual value depends on your database data.
GO

-- QUERY 187 OF 500
-- Calculate the total of accident_id in accidents
SELECT SUM(CAST(accident_id AS DECIMAL(18,2))) AS total_accident_id FROM dbo.accidents;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of accident_id in accidents. The actual value depends on your database data.
GO

-- QUERY 188 OF 500
-- Find records with accident_id greater than zero
SELECT * FROM dbo.accidents WHERE accident_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with accident_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 189 OF 500
-- Sort accidents by accident_date, newest first
SELECT * FROM dbo.accidents ORDER BY accident_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort accidents by accident_date, newest first.
GO

-- QUERY 190 OF 500
-- Find records with a known accident_date
SELECT * FROM dbo.accidents WHERE accident_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known accident_date. Exact rows depend on your database data.
GO

-- QUERY 191 OF 500
-- Display key columns from accidents
SELECT accident_id, vehicle_id, owner_id, accident_date FROM dbo.accidents;
-- OUTPUT: A result grid containing the records/columns for: display key columns from accidents. Exact rows depend on your database data.
GO

-- QUERY 192 OF 500
-- Find accidents records where estimated_damage is zero or greater
SELECT * FROM dbo.accidents WHERE estimated_damage >= 0;
-- OUTPUT: A result grid containing the records/columns for: find accidents records where estimated_damage is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 193 OF 500
-- Display every record from traffic_fines
SELECT * FROM dbo.traffic_fines;
-- OUTPUT: A result grid containing the records/columns for: display every record from traffic_fines. Exact rows depend on your database data.
GO

-- QUERY 194 OF 500
-- Display the first 10 records from traffic_fines
SELECT TOP (10) * FROM dbo.traffic_fines;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from traffic_fines. Exact rows depend on your database data.
GO

-- QUERY 195 OF 500
-- Count records in traffic_fines
SELECT COUNT(*) AS total_records FROM dbo.traffic_fines;
-- OUTPUT: A result grid showing the calculated value for: count records in traffic_fines. The actual value depends on your database data.
GO

-- QUERY 196 OF 500
-- Display distinct values of fine_id in traffic_fines
SELECT DISTINCT fine_id FROM dbo.traffic_fines;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of fine_id in traffic_fines. Exact rows depend on your database data.
GO

-- QUERY 197 OF 500
-- Sort traffic_fines by its first column
SELECT * FROM dbo.traffic_fines ORDER BY fine_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort traffic_fines by its first column.
GO

-- QUERY 198 OF 500
-- Sort traffic_fines by its first column in descending order
SELECT * FROM dbo.traffic_fines ORDER BY fine_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort traffic_fines by its first column in descending order.
GO

-- QUERY 199 OF 500
-- Find records where fine_id is not NULL
SELECT * FROM dbo.traffic_fines WHERE fine_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where fine_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 200 OF 500
-- Find the maximum fine_id in traffic_fines
SELECT MAX(fine_id) AS maximum_fine_id FROM dbo.traffic_fines;
-- OUTPUT: A result grid showing the calculated value for: find the maximum fine_id in traffic_fines. The actual value depends on your database data.
GO

-- QUERY 201 OF 500
-- Find the minimum fine_id in traffic_fines
SELECT MIN(fine_id) AS minimum_fine_id FROM dbo.traffic_fines;
-- OUTPUT: A result grid showing the calculated value for: find the minimum fine_id in traffic_fines. The actual value depends on your database data.
GO

-- QUERY 202 OF 500
-- Calculate the average fine_id in traffic_fines
SELECT AVG(CAST(fine_id AS DECIMAL(18,2))) AS average_fine_id FROM dbo.traffic_fines;
-- OUTPUT: A result grid showing the calculated value for: calculate the average fine_id in traffic_fines. The actual value depends on your database data.
GO

-- QUERY 203 OF 500
-- Calculate the total of fine_id in traffic_fines
SELECT SUM(CAST(fine_id AS DECIMAL(18,2))) AS total_fine_id FROM dbo.traffic_fines;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of fine_id in traffic_fines. The actual value depends on your database data.
GO

-- QUERY 204 OF 500
-- Find records with fine_id greater than zero
SELECT * FROM dbo.traffic_fines WHERE fine_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with fine_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 205 OF 500
-- Sort traffic_fines by violation_date, newest first
SELECT * FROM dbo.traffic_fines ORDER BY violation_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort traffic_fines by violation_date, newest first.
GO

-- QUERY 206 OF 500
-- Find records with a known violation_date
SELECT * FROM dbo.traffic_fines WHERE violation_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known violation_date. Exact rows depend on your database data.
GO

-- QUERY 207 OF 500
-- Display key columns from traffic_fines
SELECT fine_id, vehicle_id, owner_id, violation_type FROM dbo.traffic_fines;
-- OUTPUT: A result grid containing the records/columns for: display key columns from traffic_fines. Exact rows depend on your database data.
GO

-- QUERY 208 OF 500
-- Find traffic_fines records where fine_amount is zero or greater
SELECT * FROM dbo.traffic_fines WHERE fine_amount >= 0;
-- OUTPUT: A result grid containing the records/columns for: find traffic_fines records where fine_amount is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 209 OF 500
-- Display every record from fuel_stations
SELECT * FROM dbo.fuel_stations;
-- OUTPUT: A result grid containing the records/columns for: display every record from fuel_stations. Exact rows depend on your database data.
GO

-- QUERY 210 OF 500
-- Display the first 10 records from fuel_stations
SELECT TOP (10) * FROM dbo.fuel_stations;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from fuel_stations. Exact rows depend on your database data.
GO

-- QUERY 211 OF 500
-- Count records in fuel_stations
SELECT COUNT(*) AS total_records FROM dbo.fuel_stations;
-- OUTPUT: A result grid showing the calculated value for: count records in fuel_stations. The actual value depends on your database data.
GO

-- QUERY 212 OF 500
-- Display distinct values of station_id in fuel_stations
SELECT DISTINCT station_id FROM dbo.fuel_stations;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of station_id in fuel_stations. Exact rows depend on your database data.
GO

-- QUERY 213 OF 500
-- Sort fuel_stations by its first column
SELECT * FROM dbo.fuel_stations ORDER BY station_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort fuel_stations by its first column.
GO

-- QUERY 214 OF 500
-- Sort fuel_stations by its first column in descending order
SELECT * FROM dbo.fuel_stations ORDER BY station_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort fuel_stations by its first column in descending order.
GO

-- QUERY 215 OF 500
-- Find records where station_id is not NULL
SELECT * FROM dbo.fuel_stations WHERE station_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where station_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 216 OF 500
-- Find the maximum station_id in fuel_stations
SELECT MAX(station_id) AS maximum_station_id FROM dbo.fuel_stations;
-- OUTPUT: A result grid showing the calculated value for: find the maximum station_id in fuel_stations. The actual value depends on your database data.
GO

-- QUERY 217 OF 500
-- Find the minimum station_id in fuel_stations
SELECT MIN(station_id) AS minimum_station_id FROM dbo.fuel_stations;
-- OUTPUT: A result grid showing the calculated value for: find the minimum station_id in fuel_stations. The actual value depends on your database data.
GO

-- QUERY 218 OF 500
-- Calculate the average station_id in fuel_stations
SELECT AVG(CAST(station_id AS DECIMAL(18,2))) AS average_station_id FROM dbo.fuel_stations;
-- OUTPUT: A result grid showing the calculated value for: calculate the average station_id in fuel_stations. The actual value depends on your database data.
GO

-- QUERY 219 OF 500
-- Calculate the total of station_id in fuel_stations
SELECT SUM(CAST(station_id AS DECIMAL(18,2))) AS total_station_id FROM dbo.fuel_stations;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of station_id in fuel_stations. The actual value depends on your database data.
GO

-- QUERY 220 OF 500
-- Find records with station_id greater than zero
SELECT * FROM dbo.fuel_stations WHERE station_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with station_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 221 OF 500
-- Search fuel_stations.station_name for values containing 'a'
SELECT * FROM dbo.fuel_stations WHERE station_name LIKE '%a%';
-- OUTPUT: A result grid containing the records/columns for: search fuel_stations.station_name for values containing 'a'. Exact rows depend on your database data.
GO

-- QUERY 222 OF 500
-- Group fuel_stations records by station_name
SELECT station_name, COUNT(*) AS record_count FROM dbo.fuel_stations GROUP BY station_name;
-- OUTPUT: A result grid containing the records/columns for: group fuel_stations records by station_name. Exact rows depend on your database data.
GO

-- QUERY 223 OF 500
-- Display key columns from fuel_stations
SELECT station_id, station_name, company_name, manager_name FROM dbo.fuel_stations;
-- OUTPUT: A result grid containing the records/columns for: display key columns from fuel_stations. Exact rows depend on your database data.
GO

-- QUERY 224 OF 500
-- Find fuel_stations records where station_id is zero or greater
SELECT * FROM dbo.fuel_stations WHERE station_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find fuel_stations records where station_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 225 OF 500
-- Display every record from fuel_records
SELECT * FROM dbo.fuel_records;
-- OUTPUT: A result grid containing the records/columns for: display every record from fuel_records. Exact rows depend on your database data.
GO

-- QUERY 226 OF 500
-- Display the first 10 records from fuel_records
SELECT TOP (10) * FROM dbo.fuel_records;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from fuel_records. Exact rows depend on your database data.
GO

-- QUERY 227 OF 500
-- Count records in fuel_records
SELECT COUNT(*) AS total_records FROM dbo.fuel_records;
-- OUTPUT: A result grid showing the calculated value for: count records in fuel_records. The actual value depends on your database data.
GO

-- QUERY 228 OF 500
-- Display distinct values of fuel_id in fuel_records
SELECT DISTINCT fuel_id FROM dbo.fuel_records;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of fuel_id in fuel_records. Exact rows depend on your database data.
GO

-- QUERY 229 OF 500
-- Sort fuel_records by its first column
SELECT * FROM dbo.fuel_records ORDER BY fuel_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort fuel_records by its first column.
GO

-- QUERY 230 OF 500
-- Sort fuel_records by its first column in descending order
SELECT * FROM dbo.fuel_records ORDER BY fuel_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort fuel_records by its first column in descending order.
GO

-- QUERY 231 OF 500
-- Find records where fuel_id is not NULL
SELECT * FROM dbo.fuel_records WHERE fuel_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where fuel_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 232 OF 500
-- Find the maximum fuel_id in fuel_records
SELECT MAX(fuel_id) AS maximum_fuel_id FROM dbo.fuel_records;
-- OUTPUT: A result grid showing the calculated value for: find the maximum fuel_id in fuel_records. The actual value depends on your database data.
GO

-- QUERY 233 OF 500
-- Find the minimum fuel_id in fuel_records
SELECT MIN(fuel_id) AS minimum_fuel_id FROM dbo.fuel_records;
-- OUTPUT: A result grid showing the calculated value for: find the minimum fuel_id in fuel_records. The actual value depends on your database data.
GO

-- QUERY 234 OF 500
-- Calculate the average fuel_id in fuel_records
SELECT AVG(CAST(fuel_id AS DECIMAL(18,2))) AS average_fuel_id FROM dbo.fuel_records;
-- OUTPUT: A result grid showing the calculated value for: calculate the average fuel_id in fuel_records. The actual value depends on your database data.
GO

-- QUERY 235 OF 500
-- Calculate the total of fuel_id in fuel_records
SELECT SUM(CAST(fuel_id AS DECIMAL(18,2))) AS total_fuel_id FROM dbo.fuel_records;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of fuel_id in fuel_records. The actual value depends on your database data.
GO

-- QUERY 236 OF 500
-- Find records with fuel_id greater than zero
SELECT * FROM dbo.fuel_records WHERE fuel_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with fuel_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 237 OF 500
-- Sort fuel_records by fuel_date, newest first
SELECT * FROM dbo.fuel_records ORDER BY fuel_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort fuel_records by fuel_date, newest first.
GO

-- QUERY 238 OF 500
-- Find records with a known fuel_date
SELECT * FROM dbo.fuel_records WHERE fuel_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known fuel_date. Exact rows depend on your database data.
GO

-- QUERY 239 OF 500
-- Display key columns from fuel_records
SELECT fuel_id, vehicle_id, owner_id, station_id FROM dbo.fuel_records;
-- OUTPUT: A result grid containing the records/columns for: display key columns from fuel_records. Exact rows depend on your database data.
GO

-- QUERY 240 OF 500
-- Find fuel_records records where odometer_reading is zero or greater
SELECT * FROM dbo.fuel_records WHERE odometer_reading >= 0;
-- OUTPUT: A result grid containing the records/columns for: find fuel_records records where odometer_reading is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 241 OF 500
-- Display every record from vehicle_parts
SELECT * FROM dbo.vehicle_parts;
-- OUTPUT: A result grid containing the records/columns for: display every record from vehicle_parts. Exact rows depend on your database data.
GO

-- QUERY 242 OF 500
-- Display the first 10 records from vehicle_parts
SELECT TOP (10) * FROM dbo.vehicle_parts;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from vehicle_parts. Exact rows depend on your database data.
GO

-- QUERY 243 OF 500
-- Count records in vehicle_parts
SELECT COUNT(*) AS total_records FROM dbo.vehicle_parts;
-- OUTPUT: A result grid showing the calculated value for: count records in vehicle_parts. The actual value depends on your database data.
GO

-- QUERY 244 OF 500
-- Display distinct values of vehicle_part_id in vehicle_parts
SELECT DISTINCT vehicle_part_id FROM dbo.vehicle_parts;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of vehicle_part_id in vehicle_parts. Exact rows depend on your database data.
GO

-- QUERY 245 OF 500
-- Sort vehicle_parts by its first column
SELECT * FROM dbo.vehicle_parts ORDER BY vehicle_part_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_parts by its first column.
GO

-- QUERY 246 OF 500
-- Sort vehicle_parts by its first column in descending order
SELECT * FROM dbo.vehicle_parts ORDER BY vehicle_part_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_parts by its first column in descending order.
GO

-- QUERY 247 OF 500
-- Find records where vehicle_part_id is not NULL
SELECT * FROM dbo.vehicle_parts WHERE vehicle_part_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where vehicle_part_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 248 OF 500
-- Find the maximum vehicle_part_id in vehicle_parts
SELECT MAX(vehicle_part_id) AS maximum_vehicle_part_id FROM dbo.vehicle_parts;
-- OUTPUT: A result grid showing the calculated value for: find the maximum vehicle_part_id in vehicle_parts. The actual value depends on your database data.
GO

-- QUERY 249 OF 500
-- Find the minimum vehicle_part_id in vehicle_parts
SELECT MIN(vehicle_part_id) AS minimum_vehicle_part_id FROM dbo.vehicle_parts;
-- OUTPUT: A result grid showing the calculated value for: find the minimum vehicle_part_id in vehicle_parts. The actual value depends on your database data.
GO

-- QUERY 250 OF 500
-- Calculate the average vehicle_part_id in vehicle_parts
SELECT AVG(CAST(vehicle_part_id AS DECIMAL(18,2))) AS average_vehicle_part_id FROM dbo.vehicle_parts;
-- OUTPUT: A result grid showing the calculated value for: calculate the average vehicle_part_id in vehicle_parts. The actual value depends on your database data.
GO

-- QUERY 251 OF 500
-- Calculate the total of vehicle_part_id in vehicle_parts
SELECT SUM(CAST(vehicle_part_id AS DECIMAL(18,2))) AS total_vehicle_part_id FROM dbo.vehicle_parts;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of vehicle_part_id in vehicle_parts. The actual value depends on your database data.
GO

-- QUERY 252 OF 500
-- Find records with vehicle_part_id greater than zero
SELECT * FROM dbo.vehicle_parts WHERE vehicle_part_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with vehicle_part_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 253 OF 500
-- Sort vehicle_parts by installation_date, newest first
SELECT * FROM dbo.vehicle_parts ORDER BY installation_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_parts by installation_date, newest first.
GO

-- QUERY 254 OF 500
-- Find records with a known installation_date
SELECT * FROM dbo.vehicle_parts WHERE installation_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known installation_date. Exact rows depend on your database data.
GO

-- QUERY 255 OF 500
-- Display key columns from vehicle_parts
SELECT vehicle_part_id, vehicle_id, part_id, installation_date FROM dbo.vehicle_parts;
-- OUTPUT: A result grid containing the records/columns for: display key columns from vehicle_parts. Exact rows depend on your database data.
GO

-- QUERY 256 OF 500
-- Find vehicle_parts records where installation_cost is zero or greater
SELECT * FROM dbo.vehicle_parts WHERE installation_cost >= 0;
-- OUTPUT: A result grid containing the records/columns for: find vehicle_parts records where installation_cost is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 257 OF 500
-- Display every record from payments
SELECT * FROM dbo.payments;
-- OUTPUT: A result grid containing the records/columns for: display every record from payments. Exact rows depend on your database data.
GO

-- QUERY 258 OF 500
-- Display the first 10 records from payments
SELECT TOP (10) * FROM dbo.payments;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from payments. Exact rows depend on your database data.
GO

-- QUERY 259 OF 500
-- Count records in payments
SELECT COUNT(*) AS total_records FROM dbo.payments;
-- OUTPUT: A result grid showing the calculated value for: count records in payments. The actual value depends on your database data.
GO

-- QUERY 260 OF 500
-- Display distinct values of payment_id in payments
SELECT DISTINCT payment_id FROM dbo.payments;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of payment_id in payments. Exact rows depend on your database data.
GO

-- QUERY 261 OF 500
-- Sort payments by its first column
SELECT * FROM dbo.payments ORDER BY payment_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort payments by its first column.
GO

-- QUERY 262 OF 500
-- Sort payments by its first column in descending order
SELECT * FROM dbo.payments ORDER BY payment_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort payments by its first column in descending order.
GO

-- QUERY 263 OF 500
-- Find records where payment_id is not NULL
SELECT * FROM dbo.payments WHERE payment_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where payment_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 264 OF 500
-- Find the maximum payment_id in payments
SELECT MAX(payment_id) AS maximum_payment_id FROM dbo.payments;
-- OUTPUT: A result grid showing the calculated value for: find the maximum payment_id in payments. The actual value depends on your database data.
GO

-- QUERY 265 OF 500
-- Find the minimum payment_id in payments
SELECT MIN(payment_id) AS minimum_payment_id FROM dbo.payments;
-- OUTPUT: A result grid showing the calculated value for: find the minimum payment_id in payments. The actual value depends on your database data.
GO

-- QUERY 266 OF 500
-- Calculate the average payment_id in payments
SELECT AVG(CAST(payment_id AS DECIMAL(18,2))) AS average_payment_id FROM dbo.payments;
-- OUTPUT: A result grid showing the calculated value for: calculate the average payment_id in payments. The actual value depends on your database data.
GO

-- QUERY 267 OF 500
-- Calculate the total of payment_id in payments
SELECT SUM(CAST(payment_id AS DECIMAL(18,2))) AS total_payment_id FROM dbo.payments;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of payment_id in payments. The actual value depends on your database data.
GO

-- QUERY 268 OF 500
-- Find records with payment_id greater than zero
SELECT * FROM dbo.payments WHERE payment_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with payment_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 269 OF 500
-- Sort payments by payment_date, newest first
SELECT * FROM dbo.payments ORDER BY payment_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort payments by payment_date, newest first.
GO

-- QUERY 270 OF 500
-- Find records with a known payment_date
SELECT * FROM dbo.payments WHERE payment_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known payment_date. Exact rows depend on your database data.
GO

-- QUERY 271 OF 500
-- Display key columns from payments
SELECT payment_id, owner_id, vehicle_id, service_id FROM dbo.payments;
-- OUTPUT: A result grid containing the records/columns for: display key columns from payments. Exact rows depend on your database data.
GO

-- QUERY 272 OF 500
-- Find payments records where amount is zero or greater
SELECT * FROM dbo.payments WHERE amount >= 0;
-- OUTPUT: A result grid containing the records/columns for: find payments records where amount is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 273 OF 500
-- Display every record from invoices
SELECT * FROM dbo.invoices;
-- OUTPUT: A result grid containing the records/columns for: display every record from invoices. Exact rows depend on your database data.
GO

-- QUERY 274 OF 500
-- Display the first 10 records from invoices
SELECT TOP (10) * FROM dbo.invoices;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from invoices. Exact rows depend on your database data.
GO

-- QUERY 275 OF 500
-- Count records in invoices
SELECT COUNT(*) AS total_records FROM dbo.invoices;
-- OUTPUT: A result grid showing the calculated value for: count records in invoices. The actual value depends on your database data.
GO

-- QUERY 276 OF 500
-- Display distinct values of invoice_id in invoices
SELECT DISTINCT invoice_id FROM dbo.invoices;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of invoice_id in invoices. Exact rows depend on your database data.
GO

-- QUERY 277 OF 500
-- Sort invoices by its first column
SELECT * FROM dbo.invoices ORDER BY invoice_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort invoices by its first column.
GO

-- QUERY 278 OF 500
-- Sort invoices by its first column in descending order
SELECT * FROM dbo.invoices ORDER BY invoice_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort invoices by its first column in descending order.
GO

-- QUERY 279 OF 500
-- Find records where invoice_id is not NULL
SELECT * FROM dbo.invoices WHERE invoice_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where invoice_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 280 OF 500
-- Find the maximum invoice_id in invoices
SELECT MAX(invoice_id) AS maximum_invoice_id FROM dbo.invoices;
-- OUTPUT: A result grid showing the calculated value for: find the maximum invoice_id in invoices. The actual value depends on your database data.
GO

-- QUERY 281 OF 500
-- Find the minimum invoice_id in invoices
SELECT MIN(invoice_id) AS minimum_invoice_id FROM dbo.invoices;
-- OUTPUT: A result grid showing the calculated value for: find the minimum invoice_id in invoices. The actual value depends on your database data.
GO

-- QUERY 282 OF 500
-- Calculate the average invoice_id in invoices
SELECT AVG(CAST(invoice_id AS DECIMAL(18,2))) AS average_invoice_id FROM dbo.invoices;
-- OUTPUT: A result grid showing the calculated value for: calculate the average invoice_id in invoices. The actual value depends on your database data.
GO

-- QUERY 283 OF 500
-- Calculate the total of invoice_id in invoices
SELECT SUM(CAST(invoice_id AS DECIMAL(18,2))) AS total_invoice_id FROM dbo.invoices;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of invoice_id in invoices. The actual value depends on your database data.
GO

-- QUERY 284 OF 500
-- Find records with invoice_id greater than zero
SELECT * FROM dbo.invoices WHERE invoice_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with invoice_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 285 OF 500
-- Sort invoices by invoice_date, newest first
SELECT * FROM dbo.invoices ORDER BY invoice_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort invoices by invoice_date, newest first.
GO

-- QUERY 286 OF 500
-- Find records with a known invoice_date
SELECT * FROM dbo.invoices WHERE invoice_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known invoice_date. Exact rows depend on your database data.
GO

-- QUERY 287 OF 500
-- Display key columns from invoices
SELECT invoice_id, owner_id, vehicle_id, service_id FROM dbo.invoices;
-- OUTPUT: A result grid containing the records/columns for: display key columns from invoices. Exact rows depend on your database data.
GO

-- QUERY 288 OF 500
-- Find invoices records where total_amount is zero or greater
SELECT * FROM dbo.invoices WHERE total_amount >= 0;
-- OUTPUT: A result grid containing the records/columns for: find invoices records where total_amount is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 289 OF 500
-- Display every record from complaints
SELECT * FROM dbo.complaints;
-- OUTPUT: A result grid containing the records/columns for: display every record from complaints. Exact rows depend on your database data.
GO

-- QUERY 290 OF 500
-- Display the first 10 records from complaints
SELECT TOP (10) * FROM dbo.complaints;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from complaints. Exact rows depend on your database data.
GO

-- QUERY 291 OF 500
-- Count records in complaints
SELECT COUNT(*) AS total_records FROM dbo.complaints;
-- OUTPUT: A result grid showing the calculated value for: count records in complaints. The actual value depends on your database data.
GO

-- QUERY 292 OF 500
-- Display distinct values of complaint_id in complaints
SELECT DISTINCT complaint_id FROM dbo.complaints;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of complaint_id in complaints. Exact rows depend on your database data.
GO

-- QUERY 293 OF 500
-- Sort complaints by its first column
SELECT * FROM dbo.complaints ORDER BY complaint_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort complaints by its first column.
GO

-- QUERY 294 OF 500
-- Sort complaints by its first column in descending order
SELECT * FROM dbo.complaints ORDER BY complaint_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort complaints by its first column in descending order.
GO

-- QUERY 295 OF 500
-- Find records where complaint_id is not NULL
SELECT * FROM dbo.complaints WHERE complaint_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where complaint_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 296 OF 500
-- Find the maximum complaint_id in complaints
SELECT MAX(complaint_id) AS maximum_complaint_id FROM dbo.complaints;
-- OUTPUT: A result grid showing the calculated value for: find the maximum complaint_id in complaints. The actual value depends on your database data.
GO

-- QUERY 297 OF 500
-- Find the minimum complaint_id in complaints
SELECT MIN(complaint_id) AS minimum_complaint_id FROM dbo.complaints;
-- OUTPUT: A result grid showing the calculated value for: find the minimum complaint_id in complaints. The actual value depends on your database data.
GO

-- QUERY 298 OF 500
-- Calculate the average complaint_id in complaints
SELECT AVG(CAST(complaint_id AS DECIMAL(18,2))) AS average_complaint_id FROM dbo.complaints;
-- OUTPUT: A result grid showing the calculated value for: calculate the average complaint_id in complaints. The actual value depends on your database data.
GO

-- QUERY 299 OF 500
-- Calculate the total of complaint_id in complaints
SELECT SUM(CAST(complaint_id AS DECIMAL(18,2))) AS total_complaint_id FROM dbo.complaints;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of complaint_id in complaints. The actual value depends on your database data.
GO

-- QUERY 300 OF 500
-- Find records with complaint_id greater than zero
SELECT * FROM dbo.complaints WHERE complaint_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with complaint_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 301 OF 500
-- Sort complaints by complaint_date, newest first
SELECT * FROM dbo.complaints ORDER BY complaint_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort complaints by complaint_date, newest first.
GO

-- QUERY 302 OF 500
-- Find records with a known complaint_date
SELECT * FROM dbo.complaints WHERE complaint_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known complaint_date. Exact rows depend on your database data.
GO

-- QUERY 303 OF 500
-- Display key columns from complaints
SELECT complaint_id, owner_id, vehicle_id, center_id FROM dbo.complaints;
-- OUTPUT: A result grid containing the records/columns for: display key columns from complaints. Exact rows depend on your database data.
GO

-- QUERY 304 OF 500
-- Find complaints records where center_id is zero or greater
SELECT * FROM dbo.complaints WHERE center_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find complaints records where center_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 305 OF 500
-- Display every record from notifications
SELECT * FROM dbo.notifications;
-- OUTPUT: A result grid containing the records/columns for: display every record from notifications. Exact rows depend on your database data.
GO

-- QUERY 306 OF 500
-- Display the first 10 records from notifications
SELECT TOP (10) * FROM dbo.notifications;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from notifications. Exact rows depend on your database data.
GO

-- QUERY 307 OF 500
-- Count records in notifications
SELECT COUNT(*) AS total_records FROM dbo.notifications;
-- OUTPUT: A result grid showing the calculated value for: count records in notifications. The actual value depends on your database data.
GO

-- QUERY 308 OF 500
-- Display distinct values of notification_id in notifications
SELECT DISTINCT notification_id FROM dbo.notifications;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of notification_id in notifications. Exact rows depend on your database data.
GO

-- QUERY 309 OF 500
-- Sort notifications by its first column
SELECT * FROM dbo.notifications ORDER BY notification_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort notifications by its first column.
GO

-- QUERY 310 OF 500
-- Sort notifications by its first column in descending order
SELECT * FROM dbo.notifications ORDER BY notification_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort notifications by its first column in descending order.
GO

-- QUERY 311 OF 500
-- Find records where notification_id is not NULL
SELECT * FROM dbo.notifications WHERE notification_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where notification_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 312 OF 500
-- Find the maximum notification_id in notifications
SELECT MAX(notification_id) AS maximum_notification_id FROM dbo.notifications;
-- OUTPUT: A result grid showing the calculated value for: find the maximum notification_id in notifications. The actual value depends on your database data.
GO

-- QUERY 313 OF 500
-- Find the minimum notification_id in notifications
SELECT MIN(notification_id) AS minimum_notification_id FROM dbo.notifications;
-- OUTPUT: A result grid showing the calculated value for: find the minimum notification_id in notifications. The actual value depends on your database data.
GO

-- QUERY 314 OF 500
-- Calculate the average notification_id in notifications
SELECT AVG(CAST(notification_id AS DECIMAL(18,2))) AS average_notification_id FROM dbo.notifications;
-- OUTPUT: A result grid showing the calculated value for: calculate the average notification_id in notifications. The actual value depends on your database data.
GO

-- QUERY 315 OF 500
-- Calculate the total of notification_id in notifications
SELECT SUM(CAST(notification_id AS DECIMAL(18,2))) AS total_notification_id FROM dbo.notifications;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of notification_id in notifications. The actual value depends on your database data.
GO

-- QUERY 316 OF 500
-- Find records with notification_id greater than zero
SELECT * FROM dbo.notifications WHERE notification_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with notification_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 317 OF 500
-- Sort notifications by created_date, newest first
SELECT * FROM dbo.notifications ORDER BY created_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort notifications by created_date, newest first.
GO

-- QUERY 318 OF 500
-- Find records with a known created_date
SELECT * FROM dbo.notifications WHERE created_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known created_date. Exact rows depend on your database data.
GO

-- QUERY 319 OF 500
-- Display key columns from notifications
SELECT notification_id, owner_id, vehicle_id, notification_type FROM dbo.notifications;
-- OUTPUT: A result grid containing the records/columns for: display key columns from notifications. Exact rows depend on your database data.
GO

-- QUERY 320 OF 500
-- Find notifications records where vehicle_id is zero or greater
SELECT * FROM dbo.notifications WHERE vehicle_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find notifications records where vehicle_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 321 OF 500
-- Display every record from drivers
SELECT * FROM dbo.drivers;
-- OUTPUT: A result grid containing the records/columns for: display every record from drivers. Exact rows depend on your database data.
GO

-- QUERY 322 OF 500
-- Display the first 10 records from drivers
SELECT TOP (10) * FROM dbo.drivers;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from drivers. Exact rows depend on your database data.
GO

-- QUERY 323 OF 500
-- Count records in drivers
SELECT COUNT(*) AS total_records FROM dbo.drivers;
-- OUTPUT: A result grid showing the calculated value for: count records in drivers. The actual value depends on your database data.
GO

-- QUERY 324 OF 500
-- Display distinct values of driver_id in drivers
SELECT DISTINCT driver_id FROM dbo.drivers;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of driver_id in drivers. Exact rows depend on your database data.
GO

-- QUERY 325 OF 500
-- Sort drivers by its first column
SELECT * FROM dbo.drivers ORDER BY driver_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort drivers by its first column.
GO

-- QUERY 326 OF 500
-- Sort drivers by its first column in descending order
SELECT * FROM dbo.drivers ORDER BY driver_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort drivers by its first column in descending order.
GO

-- QUERY 327 OF 500
-- Find records where driver_id is not NULL
SELECT * FROM dbo.drivers WHERE driver_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where driver_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 328 OF 500
-- Find the maximum driver_id in drivers
SELECT MAX(driver_id) AS maximum_driver_id FROM dbo.drivers;
-- OUTPUT: A result grid showing the calculated value for: find the maximum driver_id in drivers. The actual value depends on your database data.
GO

-- QUERY 329 OF 500
-- Find the minimum driver_id in drivers
SELECT MIN(driver_id) AS minimum_driver_id FROM dbo.drivers;
-- OUTPUT: A result grid showing the calculated value for: find the minimum driver_id in drivers. The actual value depends on your database data.
GO

-- QUERY 330 OF 500
-- Calculate the average driver_id in drivers
SELECT AVG(CAST(driver_id AS DECIMAL(18,2))) AS average_driver_id FROM dbo.drivers;
-- OUTPUT: A result grid showing the calculated value for: calculate the average driver_id in drivers. The actual value depends on your database data.
GO

-- QUERY 331 OF 500
-- Calculate the total of driver_id in drivers
SELECT SUM(CAST(driver_id AS DECIMAL(18,2))) AS total_driver_id FROM dbo.drivers;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of driver_id in drivers. The actual value depends on your database data.
GO

-- QUERY 332 OF 500
-- Find records with driver_id greater than zero
SELECT * FROM dbo.drivers WHERE driver_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with driver_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 333 OF 500
-- Sort drivers by date_of_birth, newest first
SELECT * FROM dbo.drivers ORDER BY date_of_birth DESC;
-- OUTPUT: Matching records displayed in the requested order: sort drivers by date_of_birth, newest first.
GO

-- QUERY 334 OF 500
-- Find records with a known date_of_birth
SELECT * FROM dbo.drivers WHERE date_of_birth IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known date_of_birth. Exact rows depend on your database data.
GO

-- QUERY 335 OF 500
-- Display key columns from drivers
SELECT driver_id, owner_id, driver_name, date_of_birth FROM dbo.drivers;
-- OUTPUT: A result grid containing the records/columns for: display key columns from drivers. Exact rows depend on your database data.
GO

-- QUERY 336 OF 500
-- Find drivers records where owner_id is zero or greater
SELECT * FROM dbo.drivers WHERE owner_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find drivers records where owner_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 337 OF 500
-- Display every record from driver_licenses
SELECT * FROM dbo.driver_licenses;
-- OUTPUT: A result grid containing the records/columns for: display every record from driver_licenses. Exact rows depend on your database data.
GO

-- QUERY 338 OF 500
-- Display the first 10 records from driver_licenses
SELECT TOP (10) * FROM dbo.driver_licenses;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from driver_licenses. Exact rows depend on your database data.
GO

-- QUERY 339 OF 500
-- Count records in driver_licenses
SELECT COUNT(*) AS total_records FROM dbo.driver_licenses;
-- OUTPUT: A result grid showing the calculated value for: count records in driver_licenses. The actual value depends on your database data.
GO

-- QUERY 340 OF 500
-- Display distinct values of license_id in driver_licenses
SELECT DISTINCT license_id FROM dbo.driver_licenses;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of license_id in driver_licenses. Exact rows depend on your database data.
GO

-- QUERY 341 OF 500
-- Sort driver_licenses by its first column
SELECT * FROM dbo.driver_licenses ORDER BY license_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort driver_licenses by its first column.
GO

-- QUERY 342 OF 500
-- Sort driver_licenses by its first column in descending order
SELECT * FROM dbo.driver_licenses ORDER BY license_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort driver_licenses by its first column in descending order.
GO

-- QUERY 343 OF 500
-- Find records where license_id is not NULL
SELECT * FROM dbo.driver_licenses WHERE license_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where license_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 344 OF 500
-- Find the maximum license_id in driver_licenses
SELECT MAX(license_id) AS maximum_license_id FROM dbo.driver_licenses;
-- OUTPUT: A result grid showing the calculated value for: find the maximum license_id in driver_licenses. The actual value depends on your database data.
GO

-- QUERY 345 OF 500
-- Find the minimum license_id in driver_licenses
SELECT MIN(license_id) AS minimum_license_id FROM dbo.driver_licenses;
-- OUTPUT: A result grid showing the calculated value for: find the minimum license_id in driver_licenses. The actual value depends on your database data.
GO

-- QUERY 346 OF 500
-- Calculate the average license_id in driver_licenses
SELECT AVG(CAST(license_id AS DECIMAL(18,2))) AS average_license_id FROM dbo.driver_licenses;
-- OUTPUT: A result grid showing the calculated value for: calculate the average license_id in driver_licenses. The actual value depends on your database data.
GO

-- QUERY 347 OF 500
-- Calculate the total of license_id in driver_licenses
SELECT SUM(CAST(license_id AS DECIMAL(18,2))) AS total_license_id FROM dbo.driver_licenses;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of license_id in driver_licenses. The actual value depends on your database data.
GO

-- QUERY 348 OF 500
-- Find records with license_id greater than zero
SELECT * FROM dbo.driver_licenses WHERE license_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with license_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 349 OF 500
-- Sort driver_licenses by issue_date, newest first
SELECT * FROM dbo.driver_licenses ORDER BY issue_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort driver_licenses by issue_date, newest first.
GO

-- QUERY 350 OF 500
-- Find records with a known issue_date
SELECT * FROM dbo.driver_licenses WHERE issue_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known issue_date. Exact rows depend on your database data.
GO

-- QUERY 351 OF 500
-- Display key columns from driver_licenses
SELECT license_id, driver_id, license_number, license_type FROM dbo.driver_licenses;
-- OUTPUT: A result grid containing the records/columns for: display key columns from driver_licenses. Exact rows depend on your database data.
GO

-- QUERY 352 OF 500
-- Find driver_licenses records where driver_id is zero or greater
SELECT * FROM dbo.driver_licenses WHERE driver_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find driver_licenses records where driver_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 353 OF 500
-- Display every record from vehicle_registration
SELECT * FROM dbo.vehicle_registration;
-- OUTPUT: A result grid containing the records/columns for: display every record from vehicle_registration. Exact rows depend on your database data.
GO

-- QUERY 354 OF 500
-- Display the first 10 records from vehicle_registration
SELECT TOP (10) * FROM dbo.vehicle_registration;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from vehicle_registration. Exact rows depend on your database data.
GO

-- QUERY 355 OF 500
-- Count records in vehicle_registration
SELECT COUNT(*) AS total_records FROM dbo.vehicle_registration;
-- OUTPUT: A result grid showing the calculated value for: count records in vehicle_registration. The actual value depends on your database data.
GO

-- QUERY 356 OF 500
-- Display distinct values of registration_id in vehicle_registration
SELECT DISTINCT registration_id FROM dbo.vehicle_registration;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of registration_id in vehicle_registration. Exact rows depend on your database data.
GO

-- QUERY 357 OF 500
-- Sort vehicle_registration by its first column
SELECT * FROM dbo.vehicle_registration ORDER BY registration_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_registration by its first column.
GO

-- QUERY 358 OF 500
-- Sort vehicle_registration by its first column in descending order
SELECT * FROM dbo.vehicle_registration ORDER BY registration_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_registration by its first column in descending order.
GO

-- QUERY 359 OF 500
-- Find records where registration_id is not NULL
SELECT * FROM dbo.vehicle_registration WHERE registration_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where registration_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 360 OF 500
-- Find the maximum registration_id in vehicle_registration
SELECT MAX(registration_id) AS maximum_registration_id FROM dbo.vehicle_registration;
-- OUTPUT: A result grid showing the calculated value for: find the maximum registration_id in vehicle_registration. The actual value depends on your database data.
GO

-- QUERY 361 OF 500
-- Find the minimum registration_id in vehicle_registration
SELECT MIN(registration_id) AS minimum_registration_id FROM dbo.vehicle_registration;
-- OUTPUT: A result grid showing the calculated value for: find the minimum registration_id in vehicle_registration. The actual value depends on your database data.
GO

-- QUERY 362 OF 500
-- Calculate the average registration_id in vehicle_registration
SELECT AVG(CAST(registration_id AS DECIMAL(18,2))) AS average_registration_id FROM dbo.vehicle_registration;
-- OUTPUT: A result grid showing the calculated value for: calculate the average registration_id in vehicle_registration. The actual value depends on your database data.
GO

-- QUERY 363 OF 500
-- Calculate the total of registration_id in vehicle_registration
SELECT SUM(CAST(registration_id AS DECIMAL(18,2))) AS total_registration_id FROM dbo.vehicle_registration;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of registration_id in vehicle_registration. The actual value depends on your database data.
GO

-- QUERY 364 OF 500
-- Find records with registration_id greater than zero
SELECT * FROM dbo.vehicle_registration WHERE registration_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with registration_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 365 OF 500
-- Sort vehicle_registration by registration_date, newest first
SELECT * FROM dbo.vehicle_registration ORDER BY registration_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort vehicle_registration by registration_date, newest first.
GO

-- QUERY 366 OF 500
-- Find records with a known registration_date
SELECT * FROM dbo.vehicle_registration WHERE registration_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known registration_date. Exact rows depend on your database data.
GO

-- QUERY 367 OF 500
-- Display key columns from vehicle_registration
SELECT registration_id, vehicle_id, owner_id, registration_number FROM dbo.vehicle_registration;
-- OUTPUT: A result grid containing the records/columns for: display key columns from vehicle_registration. Exact rows depend on your database data.
GO

-- QUERY 368 OF 500
-- Find vehicle_registration records where owner_id is zero or greater
SELECT * FROM dbo.vehicle_registration WHERE owner_id >= 0;
-- OUTPUT: A result grid containing the records/columns for: find vehicle_registration records where owner_id is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 369 OF 500
-- Display every record from emission_tests
SELECT * FROM dbo.emission_tests;
-- OUTPUT: A result grid containing the records/columns for: display every record from emission_tests. Exact rows depend on your database data.
GO

-- QUERY 370 OF 500
-- Display the first 10 records from emission_tests
SELECT TOP (10) * FROM dbo.emission_tests;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from emission_tests. Exact rows depend on your database data.
GO

-- QUERY 371 OF 500
-- Count records in emission_tests
SELECT COUNT(*) AS total_records FROM dbo.emission_tests;
-- OUTPUT: A result grid showing the calculated value for: count records in emission_tests. The actual value depends on your database data.
GO

-- QUERY 372 OF 500
-- Display distinct values of test_id in emission_tests
SELECT DISTINCT test_id FROM dbo.emission_tests;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of test_id in emission_tests. Exact rows depend on your database data.
GO

-- QUERY 373 OF 500
-- Sort emission_tests by its first column
SELECT * FROM dbo.emission_tests ORDER BY test_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort emission_tests by its first column.
GO

-- QUERY 374 OF 500
-- Sort emission_tests by its first column in descending order
SELECT * FROM dbo.emission_tests ORDER BY test_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort emission_tests by its first column in descending order.
GO

-- QUERY 375 OF 500
-- Find records where test_id is not NULL
SELECT * FROM dbo.emission_tests WHERE test_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where test_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 376 OF 500
-- Find the maximum test_id in emission_tests
SELECT MAX(test_id) AS maximum_test_id FROM dbo.emission_tests;
-- OUTPUT: A result grid showing the calculated value for: find the maximum test_id in emission_tests. The actual value depends on your database data.
GO

-- QUERY 377 OF 500
-- Find the minimum test_id in emission_tests
SELECT MIN(test_id) AS minimum_test_id FROM dbo.emission_tests;
-- OUTPUT: A result grid showing the calculated value for: find the minimum test_id in emission_tests. The actual value depends on your database data.
GO

-- QUERY 378 OF 500
-- Calculate the average test_id in emission_tests
SELECT AVG(CAST(test_id AS DECIMAL(18,2))) AS average_test_id FROM dbo.emission_tests;
-- OUTPUT: A result grid showing the calculated value for: calculate the average test_id in emission_tests. The actual value depends on your database data.
GO

-- QUERY 379 OF 500
-- Calculate the total of test_id in emission_tests
SELECT SUM(CAST(test_id AS DECIMAL(18,2))) AS total_test_id FROM dbo.emission_tests;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of test_id in emission_tests. The actual value depends on your database data.
GO

-- QUERY 380 OF 500
-- Find records with test_id greater than zero
SELECT * FROM dbo.emission_tests WHERE test_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with test_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 381 OF 500
-- Sort emission_tests by test_date, newest first
SELECT * FROM dbo.emission_tests ORDER BY test_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort emission_tests by test_date, newest first.
GO

-- QUERY 382 OF 500
-- Find records with a known test_date
SELECT * FROM dbo.emission_tests WHERE test_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known test_date. Exact rows depend on your database data.
GO

-- QUERY 383 OF 500
-- Display key columns from emission_tests
SELECT test_id, vehicle_id, test_center, test_date FROM dbo.emission_tests;
-- OUTPUT: A result grid containing the records/columns for: display key columns from emission_tests. Exact rows depend on your database data.
GO

-- QUERY 384 OF 500
-- Find emission_tests records where carbon_level is zero or greater
SELECT * FROM dbo.emission_tests WHERE carbon_level >= 0;
-- OUTPUT: A result grid containing the records/columns for: find emission_tests records where carbon_level is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 385 OF 500
-- Display every record from feedback
SELECT * FROM dbo.feedback;
-- OUTPUT: A result grid containing the records/columns for: display every record from feedback. Exact rows depend on your database data.
GO

-- QUERY 386 OF 500
-- Display the first 10 records from feedback
SELECT TOP (10) * FROM dbo.feedback;
-- OUTPUT: A result grid containing the records/columns for: display the first 10 records from feedback. Exact rows depend on your database data.
GO

-- QUERY 387 OF 500
-- Count records in feedback
SELECT COUNT(*) AS total_records FROM dbo.feedback;
-- OUTPUT: A result grid showing the calculated value for: count records in feedback. The actual value depends on your database data.
GO

-- QUERY 388 OF 500
-- Display distinct values of feedback_id in feedback
SELECT DISTINCT feedback_id FROM dbo.feedback;
-- OUTPUT: A result grid containing the records/columns for: display distinct values of feedback_id in feedback. Exact rows depend on your database data.
GO

-- QUERY 389 OF 500
-- Sort feedback by its first column
SELECT * FROM dbo.feedback ORDER BY feedback_id ASC;
-- OUTPUT: Matching records displayed in the requested order: sort feedback by its first column.
GO

-- QUERY 390 OF 500
-- Sort feedback by its first column in descending order
SELECT * FROM dbo.feedback ORDER BY feedback_id DESC;
-- OUTPUT: Matching records displayed in the requested order: sort feedback by its first column in descending order.
GO

-- QUERY 391 OF 500
-- Find records where feedback_id is not NULL
SELECT * FROM dbo.feedback WHERE feedback_id IS NOT NULL;
-- OUTPUT: Rows matching this NULL-check condition: find records where feedback_id is not NULL. If no rows match, the result grid is empty.
GO

-- QUERY 392 OF 500
-- Find the maximum feedback_id in feedback
SELECT MAX(feedback_id) AS maximum_feedback_id FROM dbo.feedback;
-- OUTPUT: A result grid showing the calculated value for: find the maximum feedback_id in feedback. The actual value depends on your database data.
GO

-- QUERY 393 OF 500
-- Find the minimum feedback_id in feedback
SELECT MIN(feedback_id) AS minimum_feedback_id FROM dbo.feedback;
-- OUTPUT: A result grid showing the calculated value for: find the minimum feedback_id in feedback. The actual value depends on your database data.
GO

-- QUERY 394 OF 500
-- Calculate the average feedback_id in feedback
SELECT AVG(CAST(feedback_id AS DECIMAL(18,2))) AS average_feedback_id FROM dbo.feedback;
-- OUTPUT: A result grid showing the calculated value for: calculate the average feedback_id in feedback. The actual value depends on your database data.
GO

-- QUERY 395 OF 500
-- Calculate the total of feedback_id in feedback
SELECT SUM(CAST(feedback_id AS DECIMAL(18,2))) AS total_feedback_id FROM dbo.feedback;
-- OUTPUT: A result grid showing the calculated value for: calculate the total of feedback_id in feedback. The actual value depends on your database data.
GO

-- QUERY 396 OF 500
-- Find records with feedback_id greater than zero
SELECT * FROM dbo.feedback WHERE feedback_id > 0;
-- OUTPUT: A result grid containing the records/columns for: find records with feedback_id greater than zero. Exact rows depend on your database data.
GO

-- QUERY 397 OF 500
-- Sort feedback by feedback_date, newest first
SELECT * FROM dbo.feedback ORDER BY feedback_date DESC;
-- OUTPUT: Matching records displayed in the requested order: sort feedback by feedback_date, newest first.
GO

-- QUERY 398 OF 500
-- Find records with a known feedback_date
SELECT * FROM dbo.feedback WHERE feedback_date IS NOT NULL;
-- OUTPUT: A result grid containing the records/columns for: find records with a known feedback_date. Exact rows depend on your database data.
GO

-- QUERY 399 OF 500
-- Display key columns from feedback
SELECT feedback_id, owner_id, vehicle_id, service_id FROM dbo.feedback;
-- OUTPUT: A result grid containing the records/columns for: display key columns from feedback. Exact rows depend on your database data.
GO

-- QUERY 400 OF 500
-- Find feedback records where rating is zero or greater
SELECT * FROM dbo.feedback WHERE rating >= 0;
-- OUTPUT: A result grid containing the records/columns for: find feedback records where rating is zero or greater. Exact rows depend on your database data.
GO

-- QUERY 401 OF 500
-- Check NULL values in owners.owner_id
SELECT * FROM dbo.owners WHERE owner_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.owner_id. If no rows match, the result grid is empty.
GO

-- QUERY 402 OF 500
-- Check NULL values in owners.first_name
SELECT * FROM dbo.owners WHERE first_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.first_name. If no rows match, the result grid is empty.
GO

-- QUERY 403 OF 500
-- Check NULL values in owners.last_name
SELECT * FROM dbo.owners WHERE last_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.last_name. If no rows match, the result grid is empty.
GO

-- QUERY 404 OF 500
-- Check NULL values in owners.date_of_birth
SELECT * FROM dbo.owners WHERE date_of_birth IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.date_of_birth. If no rows match, the result grid is empty.
GO

-- QUERY 405 OF 500
-- Check NULL values in owners.gender
SELECT * FROM dbo.owners WHERE gender IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.gender. If no rows match, the result grid is empty.
GO

-- QUERY 406 OF 500
-- Check NULL values in owners.phone
SELECT * FROM dbo.owners WHERE phone IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.phone. If no rows match, the result grid is empty.
GO

-- QUERY 407 OF 500
-- Check NULL values in owners.email
SELECT * FROM dbo.owners WHERE email IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.email. If no rows match, the result grid is empty.
GO

-- QUERY 408 OF 500
-- Check NULL values in owners.address
SELECT * FROM dbo.owners WHERE address IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.address. If no rows match, the result grid is empty.
GO

-- QUERY 409 OF 500
-- Check NULL values in owners.city
SELECT * FROM dbo.owners WHERE city IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.city. If no rows match, the result grid is empty.
GO

-- QUERY 410 OF 500
-- Check NULL values in owners.registration_date
SELECT * FROM dbo.owners WHERE registration_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in owners.registration_date. If no rows match, the result grid is empty.
GO

-- QUERY 411 OF 500
-- Check NULL values in vehicles.vehicle_id
SELECT * FROM dbo.vehicles WHERE vehicle_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.vehicle_id. If no rows match, the result grid is empty.
GO

-- QUERY 412 OF 500
-- Check NULL values in vehicles.owner_id
SELECT * FROM dbo.vehicles WHERE owner_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.owner_id. If no rows match, the result grid is empty.
GO

-- QUERY 413 OF 500
-- Check NULL values in vehicles.registration_number
SELECT * FROM dbo.vehicles WHERE registration_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.registration_number. If no rows match, the result grid is empty.
GO

-- QUERY 414 OF 500
-- Check NULL values in vehicles.chassis_number
SELECT * FROM dbo.vehicles WHERE chassis_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.chassis_number. If no rows match, the result grid is empty.
GO

-- QUERY 415 OF 500
-- Check NULL values in vehicles.engine_number
SELECT * FROM dbo.vehicles WHERE engine_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.engine_number. If no rows match, the result grid is empty.
GO

-- QUERY 416 OF 500
-- Check NULL values in vehicles.vehicle_type
SELECT * FROM dbo.vehicles WHERE vehicle_type IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.vehicle_type. If no rows match, the result grid is empty.
GO

-- QUERY 417 OF 500
-- Check NULL values in vehicles.manufacturer
SELECT * FROM dbo.vehicles WHERE manufacturer IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.manufacturer. If no rows match, the result grid is empty.
GO

-- QUERY 418 OF 500
-- Check NULL values in vehicles.model
SELECT * FROM dbo.vehicles WHERE model IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.model. If no rows match, the result grid is empty.
GO

-- QUERY 419 OF 500
-- Check NULL values in vehicles.manufacturing_year
SELECT * FROM dbo.vehicles WHERE manufacturing_year IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.manufacturing_year. If no rows match, the result grid is empty.
GO

-- QUERY 420 OF 500
-- Check NULL values in vehicles.color
SELECT * FROM dbo.vehicles WHERE color IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in vehicles.color. If no rows match, the result grid is empty.
GO

-- QUERY 421 OF 500
-- Check NULL values in service_centers.center_id
SELECT * FROM dbo.service_centers WHERE center_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.center_id. If no rows match, the result grid is empty.
GO

-- QUERY 422 OF 500
-- Check NULL values in service_centers.center_name
SELECT * FROM dbo.service_centers WHERE center_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.center_name. If no rows match, the result grid is empty.
GO

-- QUERY 423 OF 500
-- Check NULL values in service_centers.manager_name
SELECT * FROM dbo.service_centers WHERE manager_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.manager_name. If no rows match, the result grid is empty.
GO

-- QUERY 424 OF 500
-- Check NULL values in service_centers.phone
SELECT * FROM dbo.service_centers WHERE phone IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.phone. If no rows match, the result grid is empty.
GO

-- QUERY 425 OF 500
-- Check NULL values in service_centers.email
SELECT * FROM dbo.service_centers WHERE email IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.email. If no rows match, the result grid is empty.
GO

-- QUERY 426 OF 500
-- Check NULL values in service_centers.address
SELECT * FROM dbo.service_centers WHERE address IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.address. If no rows match, the result grid is empty.
GO

-- QUERY 427 OF 500
-- Check NULL values in service_centers.city
SELECT * FROM dbo.service_centers WHERE city IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.city. If no rows match, the result grid is empty.
GO

-- QUERY 428 OF 500
-- Check NULL values in service_centers.state
SELECT * FROM dbo.service_centers WHERE state IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.state. If no rows match, the result grid is empty.
GO

-- QUERY 429 OF 500
-- Check NULL values in service_centers.opening_time
SELECT * FROM dbo.service_centers WHERE opening_time IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.opening_time. If no rows match, the result grid is empty.
GO

-- QUERY 430 OF 500
-- Check NULL values in service_centers.closing_time
SELECT * FROM dbo.service_centers WHERE closing_time IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_centers.closing_time. If no rows match, the result grid is empty.
GO

-- QUERY 431 OF 500
-- Check NULL values in parts.part_id
SELECT * FROM dbo.parts WHERE part_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.part_id. If no rows match, the result grid is empty.
GO

-- QUERY 432 OF 500
-- Check NULL values in parts.part_name
SELECT * FROM dbo.parts WHERE part_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.part_name. If no rows match, the result grid is empty.
GO

-- QUERY 433 OF 500
-- Check NULL values in parts.part_number
SELECT * FROM dbo.parts WHERE part_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.part_number. If no rows match, the result grid is empty.
GO

-- QUERY 434 OF 500
-- Check NULL values in parts.category
SELECT * FROM dbo.parts WHERE category IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.category. If no rows match, the result grid is empty.
GO

-- QUERY 435 OF 500
-- Check NULL values in parts.manufacturer
SELECT * FROM dbo.parts WHERE manufacturer IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.manufacturer. If no rows match, the result grid is empty.
GO

-- QUERY 436 OF 500
-- Check NULL values in parts.unit_price
SELECT * FROM dbo.parts WHERE unit_price IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.unit_price. If no rows match, the result grid is empty.
GO

-- QUERY 437 OF 500
-- Check NULL values in parts.quantity_available
SELECT * FROM dbo.parts WHERE quantity_available IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.quantity_available. If no rows match, the result grid is empty.
GO

-- QUERY 438 OF 500
-- Check NULL values in parts.reorder_level
SELECT * FROM dbo.parts WHERE reorder_level IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.reorder_level. If no rows match, the result grid is empty.
GO

-- QUERY 439 OF 500
-- Check NULL values in parts.warranty_period
SELECT * FROM dbo.parts WHERE warranty_period IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.warranty_period. If no rows match, the result grid is empty.
GO

-- QUERY 440 OF 500
-- Check NULL values in parts.part_status
SELECT * FROM dbo.parts WHERE part_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in parts.part_status. If no rows match, the result grid is empty.
GO

-- QUERY 441 OF 500
-- Check NULL values in part_suppliers.supplier_id
SELECT * FROM dbo.part_suppliers WHERE supplier_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.supplier_id. If no rows match, the result grid is empty.
GO

-- QUERY 442 OF 500
-- Check NULL values in part_suppliers.supplier_name
SELECT * FROM dbo.part_suppliers WHERE supplier_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.supplier_name. If no rows match, the result grid is empty.
GO

-- QUERY 443 OF 500
-- Check NULL values in part_suppliers.contact_person
SELECT * FROM dbo.part_suppliers WHERE contact_person IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.contact_person. If no rows match, the result grid is empty.
GO

-- QUERY 444 OF 500
-- Check NULL values in part_suppliers.phone
SELECT * FROM dbo.part_suppliers WHERE phone IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.phone. If no rows match, the result grid is empty.
GO

-- QUERY 445 OF 500
-- Check NULL values in part_suppliers.email
SELECT * FROM dbo.part_suppliers WHERE email IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.email. If no rows match, the result grid is empty.
GO

-- QUERY 446 OF 500
-- Check NULL values in part_suppliers.address
SELECT * FROM dbo.part_suppliers WHERE address IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.address. If no rows match, the result grid is empty.
GO

-- QUERY 447 OF 500
-- Check NULL values in part_suppliers.city
SELECT * FROM dbo.part_suppliers WHERE city IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.city. If no rows match, the result grid is empty.
GO

-- QUERY 448 OF 500
-- Check NULL values in part_suppliers.state
SELECT * FROM dbo.part_suppliers WHERE state IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.state. If no rows match, the result grid is empty.
GO

-- QUERY 449 OF 500
-- Check NULL values in part_suppliers.supplied_parts
SELECT * FROM dbo.part_suppliers WHERE supplied_parts IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.supplied_parts. If no rows match, the result grid is empty.
GO

-- QUERY 450 OF 500
-- Check NULL values in part_suppliers.supplier_status
SELECT * FROM dbo.part_suppliers WHERE supplier_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in part_suppliers.supplier_status. If no rows match, the result grid is empty.
GO

-- QUERY 451 OF 500
-- Check NULL values in mechanics.mechanic_id
SELECT * FROM dbo.mechanics WHERE mechanic_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.mechanic_id. If no rows match, the result grid is empty.
GO

-- QUERY 452 OF 500
-- Check NULL values in mechanics.center_id
SELECT * FROM dbo.mechanics WHERE center_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.center_id. If no rows match, the result grid is empty.
GO

-- QUERY 453 OF 500
-- Check NULL values in mechanics.mechanic_name
SELECT * FROM dbo.mechanics WHERE mechanic_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.mechanic_name. If no rows match, the result grid is empty.
GO

-- QUERY 454 OF 500
-- Check NULL values in mechanics.specialization
SELECT * FROM dbo.mechanics WHERE specialization IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.specialization. If no rows match, the result grid is empty.
GO

-- QUERY 455 OF 500
-- Check NULL values in mechanics.phone
SELECT * FROM dbo.mechanics WHERE phone IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.phone. If no rows match, the result grid is empty.
GO

-- QUERY 456 OF 500
-- Check NULL values in mechanics.email
SELECT * FROM dbo.mechanics WHERE email IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.email. If no rows match, the result grid is empty.
GO

-- QUERY 457 OF 500
-- Check NULL values in mechanics.joining_date
SELECT * FROM dbo.mechanics WHERE joining_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.joining_date. If no rows match, the result grid is empty.
GO

-- QUERY 458 OF 500
-- Check NULL values in mechanics.experience_years
SELECT * FROM dbo.mechanics WHERE experience_years IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.experience_years. If no rows match, the result grid is empty.
GO

-- QUERY 459 OF 500
-- Check NULL values in mechanics.salary
SELECT * FROM dbo.mechanics WHERE salary IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.salary. If no rows match, the result grid is empty.
GO

-- QUERY 460 OF 500
-- Check NULL values in mechanics.mechanic_status
SELECT * FROM dbo.mechanics WHERE mechanic_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in mechanics.mechanic_status. If no rows match, the result grid is empty.
GO

-- QUERY 461 OF 500
-- Check NULL values in ownership_history.history_id
SELECT * FROM dbo.ownership_history WHERE history_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.history_id. If no rows match, the result grid is empty.
GO

-- QUERY 462 OF 500
-- Check NULL values in ownership_history.vehicle_id
SELECT * FROM dbo.ownership_history WHERE vehicle_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.vehicle_id. If no rows match, the result grid is empty.
GO

-- QUERY 463 OF 500
-- Check NULL values in ownership_history.owner_id
SELECT * FROM dbo.ownership_history WHERE owner_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.owner_id. If no rows match, the result grid is empty.
GO

-- QUERY 464 OF 500
-- Check NULL values in ownership_history.previous_owner_name
SELECT * FROM dbo.ownership_history WHERE previous_owner_name IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.previous_owner_name. If no rows match, the result grid is empty.
GO

-- QUERY 465 OF 500
-- Check NULL values in ownership_history.transfer_date
SELECT * FROM dbo.ownership_history WHERE transfer_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.transfer_date. If no rows match, the result grid is empty.
GO

-- QUERY 466 OF 500
-- Check NULL values in ownership_history.transfer_reason
SELECT * FROM dbo.ownership_history WHERE transfer_reason IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.transfer_reason. If no rows match, the result grid is empty.
GO

-- QUERY 467 OF 500
-- Check NULL values in ownership_history.registration_state
SELECT * FROM dbo.ownership_history WHERE registration_state IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.registration_state. If no rows match, the result grid is empty.
GO

-- QUERY 468 OF 500
-- Check NULL values in ownership_history.transfer_fee
SELECT * FROM dbo.ownership_history WHERE transfer_fee IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.transfer_fee. If no rows match, the result grid is empty.
GO

-- QUERY 469 OF 500
-- Check NULL values in ownership_history.transfer_status
SELECT * FROM dbo.ownership_history WHERE transfer_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.transfer_status. If no rows match, the result grid is empty.
GO

-- QUERY 470 OF 500
-- Check NULL values in ownership_history.remarks
SELECT * FROM dbo.ownership_history WHERE remarks IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in ownership_history.remarks. If no rows match, the result grid is empty.
GO

-- QUERY 471 OF 500
-- Check NULL values in documents.document_id
SELECT * FROM dbo.documents WHERE document_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.document_id. If no rows match, the result grid is empty.
GO

-- QUERY 472 OF 500
-- Check NULL values in documents.vehicle_id
SELECT * FROM dbo.documents WHERE vehicle_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.vehicle_id. If no rows match, the result grid is empty.
GO

-- QUERY 473 OF 500
-- Check NULL values in documents.owner_id
SELECT * FROM dbo.documents WHERE owner_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.owner_id. If no rows match, the result grid is empty.
GO

-- QUERY 474 OF 500
-- Check NULL values in documents.document_type
SELECT * FROM dbo.documents WHERE document_type IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.document_type. If no rows match, the result grid is empty.
GO

-- QUERY 475 OF 500
-- Check NULL values in documents.document_number
SELECT * FROM dbo.documents WHERE document_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.document_number. If no rows match, the result grid is empty.
GO

-- QUERY 476 OF 500
-- Check NULL values in documents.issue_date
SELECT * FROM dbo.documents WHERE issue_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.issue_date. If no rows match, the result grid is empty.
GO

-- QUERY 477 OF 500
-- Check NULL values in documents.expiry_date
SELECT * FROM dbo.documents WHERE expiry_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.expiry_date. If no rows match, the result grid is empty.
GO

-- QUERY 478 OF 500
-- Check NULL values in documents.issuing_authority
SELECT * FROM dbo.documents WHERE issuing_authority IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.issuing_authority. If no rows match, the result grid is empty.
GO

-- QUERY 479 OF 500
-- Check NULL values in documents.document_status
SELECT * FROM dbo.documents WHERE document_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.document_status. If no rows match, the result grid is empty.
GO

-- QUERY 480 OF 500
-- Check NULL values in documents.document_file
SELECT * FROM dbo.documents WHERE document_file IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in documents.document_file. If no rows match, the result grid is empty.
GO

-- QUERY 481 OF 500
-- Check NULL values in insurance.insurance_id
SELECT * FROM dbo.insurance WHERE insurance_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.insurance_id. If no rows match, the result grid is empty.
GO

-- QUERY 482 OF 500
-- Check NULL values in insurance.vehicle_id
SELECT * FROM dbo.insurance WHERE vehicle_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.vehicle_id. If no rows match, the result grid is empty.
GO

-- QUERY 483 OF 500
-- Check NULL values in insurance.owner_id
SELECT * FROM dbo.insurance WHERE owner_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.owner_id. If no rows match, the result grid is empty.
GO

-- QUERY 484 OF 500
-- Check NULL values in insurance.policy_number
SELECT * FROM dbo.insurance WHERE policy_number IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.policy_number. If no rows match, the result grid is empty.
GO

-- QUERY 485 OF 500
-- Check NULL values in insurance.insurance_company
SELECT * FROM dbo.insurance WHERE insurance_company IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.insurance_company. If no rows match, the result grid is empty.
GO

-- QUERY 486 OF 500
-- Check NULL values in insurance.insurance_type
SELECT * FROM dbo.insurance WHERE insurance_type IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.insurance_type. If no rows match, the result grid is empty.
GO

-- QUERY 487 OF 500
-- Check NULL values in insurance.start_date
SELECT * FROM dbo.insurance WHERE start_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.start_date. If no rows match, the result grid is empty.
GO

-- QUERY 488 OF 500
-- Check NULL values in insurance.expiry_date
SELECT * FROM dbo.insurance WHERE expiry_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.expiry_date. If no rows match, the result grid is empty.
GO

-- QUERY 489 OF 500
-- Check NULL values in insurance.premium_amount
SELECT * FROM dbo.insurance WHERE premium_amount IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.premium_amount. If no rows match, the result grid is empty.
GO

-- QUERY 490 OF 500
-- Check NULL values in insurance.insurance_status
SELECT * FROM dbo.insurance WHERE insurance_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in insurance.insurance_status. If no rows match, the result grid is empty.
GO

-- QUERY 491 OF 500
-- Check NULL values in service_history.service_id
SELECT * FROM dbo.service_history WHERE service_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.service_id. If no rows match, the result grid is empty.
GO

-- QUERY 492 OF 500
-- Check NULL values in service_history.vehicle_id
SELECT * FROM dbo.service_history WHERE vehicle_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.vehicle_id. If no rows match, the result grid is empty.
GO

-- QUERY 493 OF 500
-- Check NULL values in service_history.center_id
SELECT * FROM dbo.service_history WHERE center_id IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.center_id. If no rows match, the result grid is empty.
GO

-- QUERY 494 OF 500
-- Check NULL values in service_history.service_date
SELECT * FROM dbo.service_history WHERE service_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.service_date. If no rows match, the result grid is empty.
GO

-- QUERY 495 OF 500
-- Check NULL values in service_history.service_type
SELECT * FROM dbo.service_history WHERE service_type IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.service_type. If no rows match, the result grid is empty.
GO

-- QUERY 496 OF 500
-- Check NULL values in service_history.odometer_reading
SELECT * FROM dbo.service_history WHERE odometer_reading IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.odometer_reading. If no rows match, the result grid is empty.
GO

-- QUERY 497 OF 500
-- Check NULL values in service_history.service_cost
SELECT * FROM dbo.service_history WHERE service_cost IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.service_cost. If no rows match, the result grid is empty.
GO

-- QUERY 498 OF 500
-- Check NULL values in service_history.next_service_date
SELECT * FROM dbo.service_history WHERE next_service_date IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.next_service_date. If no rows match, the result grid is empty.
GO

-- QUERY 499 OF 500
-- Check NULL values in service_history.service_status
SELECT * FROM dbo.service_history WHERE service_status IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.service_status. If no rows match, the result grid is empty.
GO

-- QUERY 500 OF 500
-- Check NULL values in service_history.remarks
SELECT * FROM dbo.service_history WHERE remarks IS NULL;
-- OUTPUT: Rows matching this NULL-check condition: check NULL values in service_history.remarks. If no rows match, the result grid is empty.
GO

