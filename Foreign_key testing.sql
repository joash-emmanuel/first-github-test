CREATE TABLE Patients (
    Patient_number INT PRIMARY KEY,
    Patient_name VARCHAR (20),
    Doctor_id INT,
    Drug_batch_number INT,
    Doctors_plaza Varchar (20),
    Doctors_diagnosis VARCHAR (20)
);

CREATE TABLE Doctors (
    Doctor_KPMD_id INT PRIMARY KEY,
    Doctors_name VARCHAR  (20),
    Patient_number INT
);

CREATE TABLE Drugs(
    Serial_number INT PRIMARY KEY,
    Drug_name VARCHAR (20),
    Quantity INT,
    Date_issued Datetime,
    Patient_number INT,
    FOREIGN KEY (Patient_number) REFERENCES Patients (Patient_number)
);

CREATE TABLE Surgery (
    Surgery_booking_id INT PRIMARY KEY,
    Patient_name VARCHAR (20),
    Surgery_room VARCHAR (20),
    Doctor_KPMD_id int,
    FOREIGN KEY (Doctor_KPMD_id) REFERENCES Doctors(Doctor_KPMD_id)
);

CREATE TABLE Lab_results(
    Ticket_number INT PRIMARY KEY NOT NULL,
    Patient_number INT,
    Insurance_number INT,
    FOREIGN KEY (Patient_number) REFERENCES Patients (Patient_number)
    );
    
    