CREATE DATABASE GYM_MANAGEMENT;

USE GYM_MANAGEMENT;

CREATE TABLE Member(
member_id INT PRIMARY KEY,
member_phone_no VARCHAR(50) NULL,
member_email VARCHAR(50) NULL,
member_date_joined DATE NULL,
address VARCHAR(100) NULL,
member_type VARCHAR(15) NULL
);

CREATE TABLE Admin(
admin_id INT PRIMARY KEY,
phone_no VARCHAR(50) NULL,
email VARCHAR(25) NULL,
name VARCHAR(20) NULL
);

CREATE TABLE Membership(
membership_id INT PRIMARY KEY,
membership_type VARCHAR(10) NULL,
membership_fee INT NULL,
membership_till DATE NULL,
member_id INT NULL,
class_id INT NULL
);

CREATE TABLE Payment(
payment_id INT PRIMARY KEY,
payment_amount INT NULL,
payment_mode VARCHAR(20) NULL,
member_id INT NULL,
membership_id INT NULL
);

CREATE TABLE Workers(
worker_id INT PRIMARY KEY,
phone_no VARCHAR(50) NULL,
worker_type VARCHAR(20) NULL
);

CREATE TABLE Promotional_Activities(
promotional_id INT PRIMARY KEY,
offer_id INT NULL,
offer_type VARCHAR(20) NULL,
files_uploaded VARCHAR(60) NULL
);

CREATE TABLE Equipment(
equipment_id INT PRIMARY KEY,
equipment_type VARCHAR(20) NULL,
maintainance_date DATE NULL,
class_id INT
);

CREATE TABLE Class(
class_id INT PRIMARY KEY,
class_name VARCHAR(50) NULL,
trainer_id INT NULL
);

CREATE TABLE Workout_Plans(
workout_id INT PRIMARY KEY,
class_id INT NULL,
trainer_id INT NULL
);

CREATE TABLE Trainer(
trainer_id INT PRIMARY KEY,
trainer_name VARCHAR(50) NULL,
trainer_specialization VARCHAR(50) NULL,
trainer_phone_no VARCHAR(50) NULL,
trainer_email VARCHAR(50) NULL
);

CREATE TABLE Feedback(
feedback_id INT PRIMARY KEY,
member_id INT,
membership_id INT,
comment VARCHAR(50) NULL
);

INSERT INTO Member VALUES 
(1, '9123456780', 'ravi@gmail.com', '2021-01-01', '123 Main St, Andheri West, Mumbai', 'Basic'),
(2, '9234567891', 'sneha@yahoo.com', '2021-02-15', '456 Elm St, Powai, Mumbai', 'Premium'),
(3, '9345678902', 'neha@gmail.com', '2022-03-20', '789 Oak St, Bandra East, Mumbai', 'Standard'),
(4, '9456789013', 'rahul@yahoo.com', '2022-04-10', '321 Pine St, Malad West, Mumbai', 'Basic'),
(5, '9567890124', 'priya@gmail.com', '2023-05-05', '654 Maple St, Goregaon East, Mumbai', 'Premium'),
(6, '9678901235', 'amit@yahoo.com', '2023-06-12', '987 Cedar St, Kandivali West, Mumbai', 'Standard'),
(7, '9789012346', 'anu@gmail.com', '2024-07-17', '159 Walnut St, Borivali East, Mumbai', 'Basic'),
(8, '9890123457', 'vivek@yahoo.com', '2024-08-22', '357 Birch St, Andheri East, Mumbai', 'Premium'),
(9, '9901234568', 'divya@gmail.com', '2021-09-30', '753 Spruce St, Bandra West, Mumbai', 'Standard'),
(10, '9912345679', 'rohan@yahoo.com', '2022-10-05', '852 Oak St, Versova, Mumbai', 'Basic'),
(11, '9923456780', 'suresh@gmail.com', '2023-11-11', '963 Pine St, Juhu, Mumbai', 'Premium'),
(12, '9934567891', 'meena@yahoo.com', '2023-12-12', '246 Maple St, Santacruz East, Mumbai', 'Standard'),
(13, '9945678902', 'anil@gmail.com', '2024-01-01', '753 Cedar St, Colaba, Mumbai', 'Basic'),
(14, '9956789013', 'kavya@yahoo.com', '2024-02-14', '159 Birch St, Andheri West, Mumbai', 'Premium'),
(15, '9967890124', 'tanvi@gmail.com', '2021-03-18', '357 Elm St, Goregaon West, Mumbai', 'Standard');

INSERT INTO Admin VALUES
(1, '9876543210', 'admin1@example.com', 'Rahul Sharma'),
(2, '8765432109', 'admin2@example.com', 'Priya Patel'),
(3, '7654321098', 'admin3@example.com', 'Amit Singh');

INSERT INTO Payment VALUES
(1, 5000, 'Credit Card', 1, 10001),
(2, 30000, 'Cash', 2, 10002),
(3, 12000, 'Debit Card', 3, 10003),
(4, 5000, 'UPI', 4, 10004),
(5, 30000, 'Cheque', 5, 10005),
(6, 12000, 'Debit Card', 6, 10006),
(7, 5000, 'Credit Card', 7, 10007),
(8, 30000, 'Cash', 8, 10008),
(9, 12000, 'Debit Card', 9, 10009),
(10, 5000, 'UPI', 10, 10010),
(11, 30000, 'Cheque', 11, 10011),
(12, 12000, 'Debit Card', 12, 10012),
(13, 5000, 'Credit Card', 13, 10013),
(14, 30000, 'Cash', 14, 10014),
(15, 12000, 'Debit Card', 15, 10015);

INSERT INTO Class VALUES
(1, 'Cardio Blast', 101),
(2, 'Power Yoga', 102),
(3, 'Body Sculpt', 103),
(4, 'Spin Cycle', 104),
(5, 'Zumba Fitness', 105),
(6, 'Bootcamp Burn', 106),
(7, 'Pilates Fusion', 107),
(8, 'Weight Loss Training', 108),
(9, 'Barre Fitness', 109),
(10, 'Core Conditioning', 110),
(11, 'Kickboxing Cardio', 111),
(12, 'Circuit Crush', 112),
(13, 'Dance Party Workout', 113),
(14, 'Strength & Stretch', 114),
(15, 'Aqua Aerobics', 115);

INSERT INTO Workers VALUES
(1, '9876543210', 'Cleaner'),
(2, '8765432109', 'Sweeper'),
(3, '7654321098', 'Watchman'),
(4, '6543210987', 'Maintenance Incharge'),
(5, '5432109876', 'Cleaner'),
(6, '4321098765', 'Sweeper'),
(7, '3210987654', 'Watchman'),
(8, '2109876543', 'Maintenance Incharge'),
(9, '1098765432', 'Cleaner'),
(10, '9876543210', 'Sweeper'),
(11, '8765432109', 'Watchman'),
(12, '7654321098', 'Maintenance Incharge'),
(13, '6543210987', 'Cleaner'),
(14, '5432109876', 'Sweeper'),
(15, '4321098765', 'Watchman');

INSERT INTO Membership VALUES
(10001, 'Basic', 5000, '2025-02-20', 1, 8),  
(10002, 'Premium', 30000, '2025-02-20', 2, 2),
(10003, 'Standard', 12000, '2025-02-20', 3, 14),
(10004, 'Basic', 5000, '2025-02-20', 4, 2),  
(10005, 'Premium', 30000, '2025-02-20', 5, 6), 
(10006, 'Standard', 12000, '2025-02-20', 6, 6),
(10007, 'Basic', 5000, '2025-02-20', 7, 8),    
(10008, 'Premium', 30000, '2025-02-20', 8, 5),
(10009, 'Standard', 12000, '2025-02-20', 9, 5), 
(10010, 'Basic', 5000, '2025-02-20', 10, 13),   
(10011, 'Premium', 30000, '2025-02-20', 11, 10),
(10012, 'Standard', 12000, '2025-02-20', 12, 10),
(10013, 'Basic', 5000, '2025-02-20', 13, 6),
(10014, 'Premium', 30000, '2025-02-20', 14, 5),
(10015, 'Standard', 12000, '2025-02-20', 15, 13);

INSERT INTO Promotional_Activities VALUES
(101, 1001, 'Discount', 'discount_banner1.jpg'),
(102, 1002, 'Free Trial', 'free_trial_voucher1.pdf'),
(103, 1003, 'Referral Code', 'referral_code_instructions.docx'),
(104, 1004, 'Discount', 'discount_banner2.jpg'),
(105, 1005, 'Free Trial', 'free_trial_voucher2.pdf'),
(106, 1006, 'Referral Code', 'referral_code_instructions.docx'),
(107, 1007, 'Discount', 'discount_banner3.jpg'),
(108, 1008, 'Free Trial', 'free_trial_voucher3.pdf'),
(109, 1009, 'Referral Code', 'referral_code_instructions.docx'),
(110, 1010, 'Discount', 'discount_banner4.jpg, ig_photo1.jpg, ig_video1.mp4'),
(111, 1011, 'Free Trial', 'free_trial_voucher4.pdf, ig_photo2.jpg'),
(112, 1012, 'Discount', 'discount_banner5.jpg, ig_video2.mp4'),
(113, 1013, 'Free Trial', 'free_trial_voucher5.pdf, ig_photo3.jpg, ig_video3.mp4'),
(114, 1014, 'Referral Code', 'referral_code_instructions.docx'),
(115, 1015, 'Discount', 'discount_banner6.jpg');

INSERT INTO Equipment VALUES
(20, 'Treadmill', '2023-01-15', 1),
(21, 'Elliptical Trainer', '2023-02-20', 2),
(22, 'Stationary Bike', '2023-03-25', 3),
(23, 'Dumbbells', '2023-04-10', 4),
(24, 'Barbells', '2023-05-12', 5),
(25, 'Resistance Bands', '2023-06-20', 6),
(26, 'Yoga Mats', '2023-07-05', 7),
(27, 'Jump Ropes', '2023-08-18', 8),
(28, 'Medicine Balls', '2023-09-22', 9),
(29, 'Kettlebells', '2023-10-30', 10),
(30, 'Pull-up Bar', '2023-11-12', 11),
(31, 'Bench Press', '2023-12-05', 12),
(32, 'Rowing Machine', '2024-01-20', 13),
(33, 'Cable Machine', '2024-02-08', 14),
(34, 'Stability Ball', '2024-03-15', 15);

INSERT INTO Workout_Plans VALUES
(1, 1, 101),
(2, 2, 102),
(3, 3, 103),
(4, 4, 104),
(5, 5, 105),
(6, 6, 106),
(7, 7, 107),
(8, 8, 108),
(9, 9, 109),
(10, 10, 110),
(11, 11, 111),
(12, 12, 112),
(13, 13, 113),
(14, 14, 114),
(15, 15, 115);

INSERT INTO Trainer VALUES
(101, 'Rajesh Sharma', 'Weightlifting', '7894561230', 'rajesh@gmail.com'),
(102, 'Priya Patel', 'Yoga', '8762349012', 'priya@yahoo.com'),
(103, 'Amit Singh', 'Cardio', '8657892341', 'amit@rediffmail.com'),
(104, 'Sneha Gupta', 'Pilates', '8744563120', 'sneha@gmail.com'),
(105, 'Anil Kumar', 'CrossFit', '7833452109', 'anil@yahoo.com'),
(106, 'Meera Reddy', 'Zumba', '8124567890', 'meera@rediffmail.com'),
(107, 'Vikram Desai', 'HIIT', '8245679012', 'vikram@gmail.com'),
(108, 'Shalini Jain', 'Spinning', '8136781230', 'shalini@yahoo.com'),
(109, 'Gaurav Khanna', 'Functional Training', '8967892341', 'gaurav@rediffmail.com'),
(110, 'Deepika Iyer', 'Barre', '8778903120', 'deepika@gmail.com'),
(111, 'Rahul Malhotra', 'Bootcamp', '8219012109', 'rahul@yahoo.com'),
(112, 'Pooja Verma', 'Piloxing', '8971237890', 'pooja@rediffmail.com'),
(113, 'Karthik Sharma', 'TRX', '7982349012', 'karthik@gmail.com'),
(114, 'Ananya Kapoor', 'Aqua Aerobics', '8653453120', 'ananya@yahoo.com'),
(115, 'Suresh Patel', 'Bodybuilding', '8784562109', 'suresh@rediffmail.com');

INSERT INTO Feedback (feedback_id, member_id, membership_id, comment)VALUES
(1, 1, 10001, 'Great facilities and friendly staff!'),
(2, 2, 10002, 'The classes are amazing!'),
(3, 3, 10003, 'Enjoying the gym environment.'),
(4, 4, 10004, 'Clean and well-maintained equipment.'),
(5, 5, 10005, 'Love the variety of workout options.'),
(6, 6, 10006, 'Professional trainers.'),
(7, 7, 10007, 'Appreciate the cleanliness.'),
(8, 8, 10008, 'Classes are always overcrowded.'),
(9, 9, 10009, 'Not enough equipment available during peak hours.'),
(10, 10, 10010, 'Issues with billing and membership management.'),
(11, 11, 10011, 'Facility lacks basic amenities.'),
(12, 12, 10012, 'Trainers lack expertise.'),
(13, 13, 10013, 'Poor ventilation in the gym.'),
(14, 14, 10014, 'Unsanitary conditions in the bathrooms.'),
(15, 15, 10015, 'High membership fees for the services provided.');

SELECT * FROM Member;
SELECT * FROM Admin;
SELECT * FROM Membership;
SELECT * FROM Payment;
SELECT * FROM Workers;
SELECT * FROM Promotional_Activities;
SELECT * FROM Equipment;
SELECT * FROM Class;
SELECT * FROM Workout_Plans;
SELECT * FROM Trainer;
SELECT * FROM Feedback;
