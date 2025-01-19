---- Hospital information management system(HIMS)-------

USE MASTER

go


use hims

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'hims')
BEGIN
    DROP DATABASE hims;
END;

CREATE DATABASE hims;


-- Create Patient table
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    address TEXT,
    phone VARCHAR(20),
    insurance_info TEXT
);

-- Create Appointment table
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- Create Billing table
CREATE TABLE Billing (
    billing_id INT PRIMARY KEY,
    patient_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    billing_date DATE NOT NULL,
    payment_status VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- Create Inventory table
CREATE TABLE Inventory (
    inventory_id INT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    expiration_date DATE
);

-- Create Doctor table
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    schedule TEXT
);


select * from  Patient;

select * from Appointment;

select * from Billing;

select * from Inventory ;

select * from Doctor;


INSERT INTO Patient (patient_id, first_name, last_name, dob, gender, address, phone, insurance_info)
VALUES 
    (101, 'sharath', 'kumar', '2011-08-16', 'male', 'mangalore', '9880856', 'yes'),
    (102, 'kumar', 'sharath', '2013-09-15', 'male', 'mangalore', '896858', 'no'),
    (103, 'shrvya', 'poojary', '2008-02-25', 'female', 'goa', '125828', 'yes');


select * from Patient;


INSERT INTO Patient (patient_id, first_name, last_name, dob, gender, address, phone, insurance_info)
VALUES 
(104, 'james', 'shetty', '2015-08-16', 'male', 'mangalore', '9880856', 'yes'),
(105, 'jim', 'snake', '2019-09-15', 'male', 'mangalore', '896858', 'no'),
(106, 'bob', 'poojary', '1996-02-25', 'other', 'goa', '125828', 'yes'),
(107,'varun','mt','2007-02-04','male','uk','125369','no'),
(001, 'Anil', 'Kumar', '1990-02-15', 'Male', '1234 Elm St, Bengaluru, Karnataka', '9876543210', 'Insurance Co A, Policy #12345'),
(002, 'Priya', 'Sharma', '1985-07-10', 'Female', '5678 Maple Ave, Mangaluru, Karnataka', '9123456780', 'Insurance Co B, Policy #67890'),
(003, 'Rahul', 'Singh', '2000-05-22', 'Male', '9101 Pine Blvd, Mysuru, Karnataka', '9912345678', 'Insurance Co C, Policy #11223'),
(004, 'Sneha', 'Verma', '1992-11-11', 'Female', '2319 Willow St, Mysuru, Karnataka', '9812345670', 'Insurance Co D, Policy #33456'),
(005, 'Rakesh', 'Patel', '1988-06-18', 'Male', '4815 Birch Ave, Bengaluru, Karnataka', '9923456789', 'Insurance Co E, Policy #78901'),
(006, 'Aarti', 'Mehta', '1995-09-03', 'Female', '7861 Cedar Blvd, Mangaluru, Karnataka', '9845671234', 'Insurance Co F, Policy #45678'),
(007, 'Vikram', 'Reddy', '1983-04-25', 'Male', '9984 Oak St, Bengaluru, Karnataka', '9823456781', 'Insurance Co G, Policy #12356'),
(008, 'Divya', 'Nair', '1996-01-20', 'Female', '1357 Pine Ave, Mysuru, Karnataka', '9876543212', 'Insurance Co H, Policy #67823'),
(009, 'Manoj', 'Desai', '1991-12-05', 'Male', '5713 Maple Blvd, Mangaluru, Karnataka', '9123456782', 'Insurance Co I, Policy #78912'),
(010, 'Kavya', 'Bhat', '1989-08-14', 'Female', '4126 Elm St, Bengaluru, Karnataka', '9912345673', 'Insurance Co J, Policy #89034'),
(011, 'Sanjay', 'Naik', '1994-03-08', 'Male', '6298 Birch Ave, Mysuru, Karnataka', '9823456784', 'Insurance Co K, Policy #56781'),
(012, 'Meera', 'Shah', '1987-07-22', 'Female', '1782 Cedar Blvd, Mangaluru, Karnataka', '9845671236', 'Insurance Co L, Policy #34567'),
(013, 'Amit', 'Joshi', '1982-05-10', 'Male', '8345 Oak St, Bengaluru, Karnataka', '9923456787', 'Insurance Co M, Policy #78924'),
(014, 'Rekha', 'Kulkarni', '1993-11-17', 'Female', '2469 Pine Ave, Mysuru, Karnataka', '9876543218', 'Insurance Co N, Policy #45689'),
(015, 'Rohit', 'Mishra', '1998-04-01', 'Male', '3851 Maple Blvd, Mangaluru, Karnataka', '9123456789', 'Insurance Co O, Policy #12367'),
(016, 'Pooja', 'Rao', '1986-12-31', 'Female', '5924 Elm St, Bengaluru, Karnataka', '9912345670', 'Insurance Co P, Policy #67834'),
(017, 'Arjun', 'Iyengar', '1997-09-06', 'Male', '7307 Birch Ave, Mysuru, Karnataka', '9823456785', 'Insurance Co Q, Policy #78935'),
(018, 'Nisha', 'Patil', '1984-02-19', 'Female', '1820 Cedar Blvd, Mangaluru, Karnataka', '9845671237', 'Insurance Co R, Policy #45690'),
(019, 'Vishal', 'Yadav', '1990-10-27', 'Male', '4102 Oak St, Bengaluru, Karnataka', '9923456786', 'Insurance Co S, Policy #89045'),
(020, 'Geeta', 'Menon', '1991-05-29', 'Female', '7393 Pine Ave, Mysuru, Karnataka', '9876543215', 'Insurance Co T, Policy #56792'),
(021, 'Harish', 'Nambiar', '1985-06-14', 'Male', '8157 Maple Blvd, Mangaluru, Karnataka', '9123456781', 'Insurance Co U, Policy #34578'),
(022, 'Lata', 'Shetty', '1995-03-25', 'Female', '1638 Elm St, Bengaluru, Karnataka', '9912345674', 'Insurance Co V, Policy #78946'),
(023, 'Karan', 'Pai', '1989-01-12', 'Male', '3582 Birch Ave, Mysuru, Karnataka', '9823456788', 'Insurance Co W, Policy #45691'),
(024, 'Neha', 'Prasad', '1994-10-04', 'Female', '4957 Cedar Blvd, Mangaluru, Karnataka', '9845671230', 'Insurance Co X, Policy #12378'),
(025, 'Ajay', 'Bhatt', '1987-11-09', 'Male', '7416 Oak St, Bengaluru, Karnataka', '9923456783', 'Insurance Co Y, Policy #67856');

-------------------------- provide information about paient--------------------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO Doctor (doctor_id, first_name, last_name, specialization, schedule) VALUES
(101, 'Sanjay', 'Patel', 'Cardiology', 'Mon-Fri: 9am-5pm'),
(102, 'Reema', 'Sharma', 'Dermatology', 'Tue-Thu: 10am-4pm'),
(103, 'Vikram', 'Rao', 'Neurology', 'Mon-Wed: 8am-2pm'),
(104, 'Nandini', 'Iyer', 'Pediatrics', 'Mon-Fri: 10am-6pm'),
(105, 'Rakesh', 'Deshmukh', 'Orthopedics', 'Wed-Fri: 11am-7pm'),
(106, 'Asha', 'Kumar', 'Gynecology', 'Mon-Thu: 9am-3pm'),
(107, 'Sunil', 'Naik', 'Oncology', 'Tue-Fri: 9am-5pm'),
(108, 'Meera', 'Menon', 'Endocrinology', 'Mon-Wed: 10am-4pm'),
(109, 'Rajesh', 'Bhat', 'Urology', 'Mon-Fri: 9am-5pm'),
(110, 'Divya', 'Verma', 'Psychiatry', 'Tue-Fri: 11am-6pm');

select * from Doctor;
-----------------------------------------------------------------------------doctor-----------------------------------------------------------------------------------------------------------------------


 
INSERT INTO Inventory (inventory_id, item_name, quantity, expiration_date) VALUES
(1, 'Bandages', 50, '2025-12-31'),
(2, 'Antibiotic Ointment', 30, '2025-11-30'),
(3, 'Syringes', 100, '2026-01-15'),
(4, 'Gauze Pads', 75, '2026-02-28'),
(5, 'Gloves', 200, '2025-12-15'),
(6, 'Thermometers', 25, '2026-03-20'),
(7, 'Stethoscopes', 15, '2026-04-10'),
(8, 'Blood Pressure Cuffs', 20, '2025-11-10'),
(9, 'Surgical Masks', 150, '2025-12-05'),
(10, 'Hand Sanitizer', 80, '2026-05-30'),
(11, 'Cotton Balls', 60, '2026-06-15'),
(12, 'Alcohol Wipes', 40, '2026-07-25'),
(13, 'Scalpels', 35, '2026-08-05'),
(14, 'IV Bags', 45, '2025-10-31'),
(15, 'Sterile Water', 70, '2026-09-10'),
(16, 'Adhesive Tape', 55, '2026-10-20'),
(17, 'Disposable Gowns', 90, '2025-09-30'),
(18, 'Face Shields', 110, '2026-11-15'),
(19, 'Oxygen Masks', 50, '2026-12-01'),
(20, 'Defibrillator Pads', 10, '2025-08-20'),
(21, 'Nebulizers', 12, '2026-01-01'),
(22, 'Inhalers', 25, '2026-02-15'),
(23, 'Crutches', 8, '2026-03-05'),
(24, 'Wheelchairs', 5, '2026-04-25'),
(25, 'Splints', 30, '2026-05-10');



select  * from  Inventory ;


----------------------------------------------------------------------------------- Inventory---------------------------------------------------------------------------------------------------------------------

INSERT INTO Appointment (appointment_id, patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, 101, '2025-01-01 09:00:00', 'Scheduled'),
(2, 2, 102, '2025-01-01 10:00:00', 'Completed'),
(3, 3, 103, '2025-01-01 11:00:00', 'Canceled'),
(4, 4, 104, '2025-01-01 12:00:00', 'Scheduled'),
(5, 5, 105, '2025-01-01 13:00:00', 'Rescheduled'),
(6, 6, 106, '2025-01-01 14:00:00', 'Completed'),
(7, 7, 107, '2025-01-01 15:00:00', 'Scheduled'),
(8, 8, 108, '2025-01-01 16:00:00', 'Completed'),
(9, 9, 109, '2025-01-01 17:00:00', 'Scheduled'),
(10, 10, 110, '2025-01-01 18:00:00', 'Completed'),
(11, 11, 101, '2025-01-02 09:00:00', 'Canceled'),
(12, 12, 102, '2025-01-02 10:00:00', 'Scheduled'),
(13, 13, 103, '2025-01-02 11:00:00', 'Completed'),
(14, 14, 104, '2025-01-02 12:00:00', 'Rescheduled'),
(15, 15, 105, '2025-01-02 13:00:00', 'Scheduled'),
(16, 16, 106, '2025-01-02 14:00:00', 'Completed'),
(17, 17, 107, '2025-01-02 15:00:00', 'Scheduled'),
(18, 18, 108, '2025-01-02 16:00:00', 'Completed'),
(19, 19, 109, '2025-01-02 17:00:00', 'Scheduled'),
(20, 20, 110, '2025-01-02 18:00:00', 'Completed'),
(21, 21, 101, '2025-01-03 09:00:00', 'Canceled'),
(22, 22, 102, '2025-01-03 10:00:00', 'Scheduled'),
(23, 23, 103, '2025-01-03 11:00:00', 'Completed'),
(24, 24, 104, '2025-01-03 12:00:00', 'Rescheduled'),
(25, 25, 105, '2025-01-03 13:00:00', 'Scheduled'),
(26, 1, 106, '2025-01-03 14:00:00', 'Completed'),
(27, 2, 107, '2025-01-03 15:00:00', 'Scheduled'),
(28, 3, 108, '2025-01-03 16:00:00', 'Completed'),
(29, 4, 109, '2025-01-03 17:00:00', 'Scheduled'),
(30, 5, 110, '2025-01-03 18:00:00', 'Completed'),
(31, 6, 101, '2025-01-04 09:00:00', 'Canceled'),
(32, 7, 102, '2025-01-04 10:00:00', 'Scheduled'),
(33, 8, 103, '2025-01-04 11:00:00', 'Completed'),
(34, 9, 104, '2025-01-04 12:00:00', 'Rescheduled'),
(35, 10, 105, '2025-01-04 13:00:00', 'Scheduled'),
(36, 11, 106, '2025-01-04 14:00:00', 'Completed'),
(37, 12, 107, '2025-01-04 15:00:00', 'Scheduled'),
(38, 13, 108, '2025-01-04 16:00:00', 'Completed'),
(39, 14, 109, '2025-01-04 17:00:00', 'Scheduled'),
(40, 15, 110, '2025-01-04 18:00:00', 'Completed'),
(41, 16, 101, '2025-01-05 09:00:00', 'Canceled'),
(42, 17, 102, '2025-01-05 10:00:00', 'Scheduled'),
(43, 18, 103, '2025-01-05 11:00:00', 'Completed'),
(44, 19, 104, '2025-01-05 12:00:00', 'Rescheduled'),
(45, 20, 105, '2025-01-05 13:00:00', 'Scheduled'),
(46, 21, 106, '2025-01-05 14:00:00', 'Completed'),
(47, 22, 107, '2025-01-05 15:00:00', 'Scheduled'),
(48, 23, 108, '2025-01-05 16:00:00', 'Completed'),
(49, 24, 109, '2025-01-05 17:00:00', 'Scheduled'),
(50, 25, 110, '2025-01-05 18:00:00', 'Completed'),
(51, 1, 101, '2025-01-06 09:00:00', 'Canceled'),
(52, 2, 102, '2025-01-06 10:00:00', 'Scheduled'),
(53, 3, 103, '2025-01-06 11:00:00', 'Completed'),
(54, 4, 104, '2025-01-06 12:00:00', 'Rescheduled'),
(55, 5, 105, '2025-01-06 13:00:00', 'Scheduled'),
(56, 6, 106, '2025-01-06 14:00:00', 'Completed'),
(57, 7, 107, '2025-01-06 15:00:00', 'Scheduled'),
(58, 8, 108, '2025-01-06 16:00:00', 'Completed'),
(59, 9, 109, '2025-01-06 17:00:00', 'Scheduled'),
(60, 10, 110, '2025-01-06 18:00:00', 'Completed'),
(61, 11, 101, '2025-01-07 09:00:00', 'Canceled'),
(62, 12, 102, '2025-01-07 10:00:00', 'Scheduled'),
(63, 13, 103, '2025-01-07 11:00:00', 'Completed'),
(64, 14, 104, '2025-01-07 12:00:00', 'Rescheduled'),
(65, 15, 105, '2025-01-07 13:00:00', 'Scheduled'),
(66, 16, 106, '2025-01-07 14:00:00', 'Completed'),
(67, 17, 107, '2025-01-07 15:00:00', 'Scheduled'),
(68, 18, 108, '2025-01-07 16:00:00', 'Completed'),
(69, 19, 109, '2025-01-07 17:00:00', 'Scheduled'),
(70, 20, 110, '2025-01-07 18:00:00', 'Completed'),
(71, 21, 101, '2025-01-08 09:00:00', 'Canceled'),
(72, 22, 102, '2025-01-08 10:00:00', 'Scheduled'),
(73, 23, 103, '2025-01-08 11:00:00', 'Completed'),
(74, 24, 104, '2025-01-08 12:00:00', 'Rescheduled'),
(75, 25, 105, '2025-01-08 13:00:00', 'Scheduled'),
(76, 1, 106, '2025-01-08 14:00:00', 'Completed'),
(77, 2, 107, '2025-01-08 15:00:00', 'Scheduled');

select * from Appointment;
-------------------------------------------------------------------------play_ground---------------------------------------------------------------------------------------------------------------------------------------------


----retrieve the data-----------------
select * from Doctor where last_name='Rao';


----------------update_the_Inventory-------

UPDATE Inventory
SET quantity = 60, expiration_date = '2026-01-31'
WHERE inventory_id = 1;

select * from  Inventory where  inventory_id = 1;

------------------------------------------------------------------------------------------test and work------------------------------------------------------------------------------------------------------------------------



