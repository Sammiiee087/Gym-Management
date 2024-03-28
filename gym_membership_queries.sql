USE GYM_MANAGEMENT;

SELECT Member.*, Membership.* FROM Member JOIN Membership ON Member.member_id = Membership.member_id;

SELECT member_type, COUNT(*) AS total_members FROM Member GROUP BY member_type;

UPDATE Member SET member_email = 'ravibhai@gmail.com' WHERE member_id = 1;

SELECT * FROM Member WHERE member_date_joined BETWEEN '2020-01-25 00:00:00' AND '2022-12-25 23:59:59';

SELECT SUM(membership_fee) AS total_revenue FROM Membership;

SELECT Member.*, Membership.* FROM Member JOIN Membership ON Member.member_id = Membership.member_id WHERE Membership.membership_till >= '2023-03-11 23:59:59';

SELECT payment_mode, SUM(payment_amount) AS total_amount FROM Payment GROUP BY payment_mode;

SELECT AVG(membership_fee) AS average_fee FROM Membership;

SELECT * FROM Class c JOIN Trainer t ON c.trainer_id = t.trainer_id WHERE t.trainer_specialization = 'Cardio';

SELECT * FROM Equipment WHERE maintainance_date < '2023-06-01';

SELECT member_id, SUM(payment_amount) AS total_payments FROM Payment GROUP BY member_id;

DELETE FROM Promotional_Activities WHERE promotional_id = 112;
SELECT * FROM Promotional_Activities;

DELETE FROM Feedback WHERE feedback_id = 14;
SELECT * FROM Feedback;

UPDATE Trainer SET trainer_specialization = 'Functional Training' WHERE trainer_id = 101;

UPDATE Equipment SET maintainance_date = '2024-06-01' WHERE equipment_id = 14;

UPDATE Membership SET membership_fee = membership_fee * 1.1;

UPDATE Payment SET payment_amount = payment_amount + 500 WHERE payment_mode = 'Credit Card';

SELECT worker_type, COUNT(*) AS total_workers FROM Workers GROUP BY worker_type;

SELECT MAX(membership_fee) AS highest_fee, MIN(membership_fee) AS lowest_fee FROM Membership;

SELECT * FROM Member WHERE member_id NOT IN (SELECT DISTINCT member_id FROM Feedback);

SELECT c.class_name, COUNT(m.member_id) AS total_members FROM Class c LEFT JOIN Membership ms ON c.class_id = ms.class_id LEFT JOIN Member m ON ms.member_id = m.member_id GROUP BY c.class_name ORDER BY total_members DESC;

alter table payment add foreign key(membership_id) REFERENCES membership(membership_id);
alter table feedback add foreign key(member_id) REFERENCES member(member_id);
alter table workout_plans add foreign key(class_id) REFERENCES class(class_id);
alter table workout_plans add foreign key(trainer_id) REFERENCES trainer(trainer_id);
alter table equipment add foreign key(class_id) REFERENCES class(class_id);

DESC PAYMENT;
DESC FEEDBACK;
DESC WORKOUT_PLANS;
DESC EQUIPMENT;

ALTER TABLE Admin ADD phone_no2 VARCHAR(50), ADD phone_no3 VARCHAR(50);
SELECT * FROM ADMIN;

CREATE TABLE Admin_PhoneNumbers (
    admin_phone_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_id INT,
    phone_number VARCHAR(50),
    FOREIGN KEY (admin_id) REFERENCES Admin(admin_id)
);

INSERT INTO Admin_PhoneNumbers (admin_id, phone_number)
SELECT admin_id, phone_no2 FROM Admin WHERE phone_no2 IS NOT NULL;

INSERT INTO Admin_PhoneNumbers (admin_id, phone_number)
SELECT admin_id, phone_no3 FROM Admin WHERE phone_no3 IS NOT NULL;

INSERT INTO Admin_PhoneNumbers (admin_id, phone_number)
SELECT admin_id, phone_no FROM Admin;

ALTER TABLE Admin DROP COLUMN phone_no;

ALTER TABLE Admin DROP COLUMN phone_no2, DROP COLUMN phone_no3;

SELECT * FROM Admin_PhoneNumbers;


SELECT * FROM Admin;
ALTER TABLE Admin ADD department VARCHAR(50), ADD role VARCHAR(50);

CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

CREATE TABLE Role (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(20) NOT NULL
);

ALTER TABLE Admin 
ADD COLUMN department_id INT,
ADD COLUMN role_id INT;

ALTER TABLE Admin 
ADD CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES Department(department_id),
ADD CONSTRAINT fk_role FOREIGN KEY (role_id) REFERENCES Role(role_id);


SELECT * FROM Department;
SELECT * FROM Role;

