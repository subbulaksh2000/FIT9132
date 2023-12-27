--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T4-mns-alter.sql

--Student ID:34069178
--Student Name:Subbulakshmi Natarajan
--Unit Code:FIT9132
--Applied Class No: 03

/* Comments for your marker:



*/

--4(a)

ALTER TABLE patient ADD total_appointments NUMERIC(3);

UPDATE patient p
SET
    p.total_appointments = (
        SELECT
            COUNT(a.appt_no)
        FROM
            appointment a
        WHERE
            a.patient_no = p.patient_no
    );

-- Describe the table 
DESC PATIENT;


--4(b)

--create a new table to store new emergency person contact details

DROP TABLE emergency_contact_table_2 CASCADE CONSTRAINTS;

CREATE TABLE emergency_contact_table_2 (
    emergency_contact_2_id     NUMERIC(4) NOT NULL,
    emergency_contact_2_fname  VARCHAR(30),
    eemergency_contact_2_lname VARCHAR(30),
    emergency_contact_2_phone_number  CHAR(10) NOT NULL
);

ALTER TABLE emergency_contact_table_2 ADD (
    CONSTRAINT emergency_contact_2_primary_key PRIMARY KEY ( emergency_contact_2_id )
);
 
--add constraint 

ALTER TABLE emergency_contact_table_2 ADD CONSTRAINT emergency_contact_2_uq UNIQUE ( emergency_contact_2_phone_number );  

-- alter the patient table to trace back to this table as well    

ALTER TABLE patient ADD (
    emergency_contact_2_id NUMERIC(4)
);

ALTER TABLE patient
    ADD CONSTRAINT patient_emegency_contact_2_fk FOREIGN KEY ( emergency_contact_2_id )
        REFERENCES emergency_contact_table_2 ( emergency_contact_2_id );

-- Describe the table 
desc patient;  

--4(c)

-- After normalization,I have created the three table as per sample logs in the assignment 
-- Create the table trainer_nurse

DROP TABLE trainer_nurse CASCADE CONSTRAINTS;

CREATE TABLE trainer_nurse (
    trainer_no    NUMERIC(3) NOT NULL,
    trainer_fname VARCHAR(30),
    trainer_lname VARCHAR(30)
);

ALTER TABLE trainer_nurse ADD CONSTRAINT trainer_nurse_new_pk PRIMARY KEY ( trainer_no );

-- Describe the table 
desc trainer_nurse;


--create a training_nurse_new

DROP TABLE trainer_nurse_new CASCADE CONSTRAINTS;

CREATE TABLE training_nurse_new (
    trainer_no     NUMERIC(3) NOT NULL,
    nurse_no             NUMERIC(3) NOT NULL,
    start_datetime       DATE,
    end_datetime         DATE,
    training_description VARCHAR(100)
);

-- Constraints 

ALTER TABLE training_nurse_new
    ADD CONSTRAINT training_nurse_fk FOREIGN KEY ( nurse_no )
        REFERENCES nurse ( nurse_no );

        
ALTER TABLE training_nurse_new
    ADD CONSTRAINT trainer_nurse_fk FOREIGN KEY ( trainer_no )
        REFERENCES trainer_nurse ( trainer_no );
-- Describe the table 

DESC training_nurse_new;

Commit;