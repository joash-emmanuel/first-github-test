CREATE TABLE Patients (
    Patient_number INT PRIMARY KEY,
    Patient_name VARCHAR (20),
    Doctor_id INT,
    Drug_batch_number INT,
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

    