-- Office table
CREATE TABLE Office (
    office_name VARCHAR(100) NOT NULL PRIMARY KEY,
    street VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(20) NOT NULL,
    zip INT NOT NULL,
    phone_number VARCHAR(15) NOT NULL
);

-- Employee table
CREATE TABLE Employee (
    employee_id INT NOT NULL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Doctor table
CREATE TABLE Doctor (
    employee_id INT NOT NULL PRIMARY KEY,
    specialization VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Patient table
CREATE TABLE Patient (
    patient_id INT NOT NULL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(20),
    zip_code INT
);

-- Appointment table
CREATE TABLE Appointment (
    appointment_id INT NOT NULL PRIMARY KEY,
    employee_id INT,
    patient_id INT NOT NULL,
    date DATE NOT NULL,
    start_time INT NOT NULL,
    end_time INT,
    note VARCHAR(200),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE SET NULL ON UPDATE CASCADE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id) ON DELETE CASCADE ON UPDATE CASCADE
);

-- BillingStatement table
CREATE TABLE BillingStatement (
    billing_id INT NOT NULL PRIMARY KEY,
    appointment_id INT NOT NULL,
    employee_id INT NOT NULL,
    patient_id INT NOT NULL,
    amount_due FLOAT NOT NULL,
    billing_date DATE NOT NULL,
    due_date DATE NOT NULL,
    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE RESTRICT ON UPDATE CASCADE,
    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- DoctorWorkplace table
CREATE TABLE DoctorWorkplace (
    office_name VARCHAR(100) NOT NULL,
    employee_id INT NOT NULL,
    PRIMARY KEY (office_name, employee_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (office_name) REFERENCES Office(office_name) ON DELETE RESTRICT ON UPDATE CASCADE
);
