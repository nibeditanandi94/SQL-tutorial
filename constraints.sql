CREATE TABLE medicines (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    medicine_name VARCHAR(20),
    doctor_name VARCHAR(20) DEFAULT 'ASSIGN PHYSICIAN',
    medicine_date DATE,
    medicine_price DECIMAL(4,2)
);

DESCRIBE medicines;

ALTER TABLE medicines ADD visit_date VARCHAR(10) NOT NULL;

INSERT INTO medicines(medicine_name, doctor_name, medicine_date, medicine_price, visit_date) VALUES('acelofenac', 'Dr. Sunil Kumar', '2024-06-24', 99.09, 'MONDAY');
INSERT INTO medicines(medicine_name, medicine_date, medicine_price, visit_date) VALUES('moov','2024-06-24', 88.02, '');
INSERT INTO medicines(medicine_name, doctor_name, medicine_date, medicine_price, visit_date) VALUES('dettol', 'Dr. Soumya Khuller', '2024-06-24', 28.01, 'TUESDAY');
INSERT INTO medicines(medicine_name, doctor_name, medicine_date, medicine_price, visit_date) VALUES('rantac', 'Dr. Phani', '2024-06-24', 23.43, 'FRIDAY');

SELECT * FROM medicines;

DROP TABLE medicines;