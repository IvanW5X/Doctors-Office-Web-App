INSERT INTO Office VALUES
('Downtown Clinic', '123 Main St', 'Portland', 'OR', 97201, '503-555-1111'),
('Eastside Medical', '456 Oak Ave', 'Portland', 'OR', 97202, '503-555-2222'),
('Westview Health', '789 Pine Rd', 'Beaverton', 'OR', 97005, '503-555-3333'),
('Northlake Center', '321 Maple Blvd', 'Gresham', 'OR', 97030, '503-555-4444'),
('Southridge Care', '654 Elm Dr', 'Tigard', 'OR', 97223, '503-555-5555'),
('Central Wellness', '987 Cedar Ln', 'Portland', 'OR', 97210, '503-555-6666'),
('Hawthorne Health', '231 Birch St', 'Portland', 'OR', 97214, '503-555-7777'),
('Riverwalk Clinic', '562 Spruce Ct', 'Milwaukie', 'OR', 97222, '503-555-8888'),
('Cascade Family', '876 Fir Pl', 'Hillsboro', 'OR', 97123, '503-555-9999'),
('Lents Medical', '159 Cherry Ter', 'Portland', 'OR', 97266, '503-555-0000');

INSERT INTO Employee VALUES
(1, 'Alice', 'Nguyen', '503-111-0001', 'alice.nguyen@clinic.com'),
(2, 'Bob', 'Smith', '503-111-0002', 'bob.smith@clinic.com'),
(3, 'Carol', 'Jones', '503-111-0003', 'carol.jones@clinic.com'),
(4, 'David', 'Lee', '503-111-0004', 'david.lee@clinic.com'),
(5, 'Eva', 'Martinez', '503-111-0005', 'eva.martinez@clinic.com'),
(6, 'Frank', 'Wright', '503-111-0006', 'frank.wright@clinic.com'),
(7, 'Grace', 'Kim', '503-111-0007', 'grace.kim@clinic.com'),
(8, 'Henry', 'Green', '503-111-0008', 'henry.green@clinic.com'),
(9, 'Ivy', 'Walker', '503-111-0009', 'ivy.walker@clinic.com'),
(10, 'Jake', 'Young', '503-111-0010', 'jake.young@clinic.com');

INSERT INTO Doctor VALUES
(1, 'Cardiology'),
(2, 'Pediatrics'),
(3, 'Dermatology'),
(4, 'Neurology'),
(5, 'Internal Medicine'),
(6, 'Orthopedics'),
(7, 'Oncology'),
(8, 'Psychiatry'),
(9, 'Endocrinology'),
(10, 'Family Medicine');

INSERT INTO Patient VALUES
(1, 'Tom', 'Clark', '503-222-1001', 'tom.clark@gmail.com', '111 Oak St', 'Portland', 'OR', 97201),
(2, 'Sara', 'Davis', '503-222-1002', 'sara.davis@gmail.com', '222 Pine St', 'Portland', 'OR', 97202),
(3, 'Liam', 'Garcia', '503-222-1003', 'liam.garcia@gmail.com', '333 Cedar St', 'Beaverton', 'OR', 97005),
(4, 'Emma', 'Wilson', '503-222-1004', 'emma.wilson@gmail.com', '444 Birch St', 'Gresham', 'OR', 97030),
(5, 'Noah', 'Martinez', '503-222-1005', 'noah.martinez@gmail.com', '555 Elm St', 'Tigard', 'OR', 97223),
(6, 'Olivia', 'Lopez', '503-222-1006', 'olivia.lopez@gmail.com', '666 Maple St', 'Portland', 'OR', 97210),
(7, 'Elijah', 'Brown', '503-222-1007', 'elijah.brown@gmail.com', '777 Spruce St', 'Milwaukie', 'OR', 97222),
(8, 'Ava', 'Taylor', '503-222-1008', 'ava.taylor@gmail.com', '888 Fir St', 'Hillsboro', 'OR', 97123),
(9, 'James', 'Anderson', '503-222-1009', 'james.anderson@gmail.com', '999 Cherry St', 'Portland', 'OR', 97266),
(10, 'Mia', 'Thomas', '503-222-1010', 'mia.thomas@gmail.com', '101 Ash St', 'Portland', 'OR', 97214);

INSERT INTO Appointment VALUES
(1, 6, 1, '2025-06-01', 900, 1000, 'Follow-up on blood pressure.'),
(2, 6, 2, '2025-06-02', 1030, 1130, 'Pediatric check-up.'),
(3, 7, 3, '2025-06-03', 800, 900, 'Skin rash consultation.'),
(4, 7, 4, '2025-06-04', 930, 1030, 'Neurology evaluation.'),
(5, 8, 5, '2025-06-05', 1300, 1400, 'Routine physical.'),
(6, 8, 6, '2025-06-06', 1430, 1530, 'Headache follow-up.'),
(7, 9, 7, '2025-06-07', 1000, 1100, 'Skin allergy check.'),
(8, 9, 8, '2025-06-08', 1200, 1300, 'Vaccination appointment.'),
(9, 10, 9, '2025-06-09', 1500, 1600, 'Cholesterol review.'),
(10, 10, 10, '2025-06-10', 1100, 1200, 'Annual exam.');

INSERT INTO BillingStatement VALUES
(1, 1, 6, 1, 200.00, '2025-06-01', '2025-06-15'),
(2, 2, 6, 2, 150.00, '2025-06-02', '2025-06-16'),
(3, 3, 7, 3, 180.00, '2025-06-03', '2025-06-17'),
(4, 4, 7, 4, 210.00, '2025-06-04', '2025-06-18'),
(5, 5, 8, 5, 160.00, '2025-06-05', '2025-06-19'),
(6, 6, 8, 6, 190.00, '2025-06-06', '2025-06-20'),
(7, 7, 9, 7, 170.00, '2025-06-07', '2025-06-21'),
(8, 8, 9, 8, 155.00, '2025-06-08', '2025-06-22'),
(9, 9, 10, 9, 220.00, '2025-06-09', '2025-06-23'),
(10, 10, 10, 10, 230.00, '2025-06-10', '2025-06-24');

INSERT INTO DoctorWorkplace VALUES
('Downtown Clinic', 1),
('Eastside Medical', 2),
('Westview Health', 3),
('Northlake Center', 4),
('Southridge Care', 5),
('Central Wellness', 6),
('Hawthorne Health', 7),
('Riverwalk Clinic', 8),
('Cascade Family', 9),
('Lents Medical', 10);
