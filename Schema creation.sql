Create Database MediBeds;

Use MediBeds;

-- Create Hospitals Table
CREATE TABLE Hospitals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL
);

-- Create Beds Table
CREATE TABLE Beds (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_id INT,
    bed_type ENUM('General', 'ICU') NOT NULL,
    total_beds INT NOT NULL,
    available_beds INT DEFAULT 0,
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(id)
);

-- Create Admins Table
CREATE TABLE Admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    hospital_id INT,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(id)
);

select * from hospitals;
select * from beds;
select * from admins;

INSERT INTO admins VALUES(1,3000003,"aryaND","passkey003");