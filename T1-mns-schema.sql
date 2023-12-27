--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T1-mns-schema.sql

--Student ID:34069178
--Student Name:Subbulakshmi Natarajan
--Unit Code:FIT9132
--Applied Class No: 03

/* Comments for your marker:


*/

-- Task 1 Add Create table statements for the white TABLES below
-- Ensure all column comments, and constraints (other than FK's)
-- are included. FK constraints are to be added at the end of this script

-- TABLE: APPOINTMENT
-- Create table for appointment as per task a

CREATE TABLE appointment (
    appt_no           NUMERIC(7) NOT NULL,
    appt_datetime     DATE NOT NULL,
    appt_roomno       NUMERIC(2) NOT NULL,
    appt_length       CHAR(1) NOT NULL,
    patient_no        NUMERIC(4) NOT NULL,
    provider_code     CHAR(6) NOT NULL,
    nurse_no          NUMERIC(3) NOT NULL,
    appt_prior_apptno NUMERIC(7)
);

-- Alter table appointment ( primary key, unique)
-- Foreign key constraints are given in the all missing FK Constraints section

ALTER TABLE appointment ADD CONSTRAINT appointment_pk PRIMARY KEY ( appt_no );

ALTER TABLE appointment
    ADD CONSTRAINT appointment_uq UNIQUE ( appt_datetime,
                                           appt_roomno,
                                           patient_no,
                                           provider_code,
                                           appt_prior_apptno );

ALTER TABLE appointment
    ADD CONSTRAINT apptlength_chk CHECK ( appt_length IN ( 'S', 'T', 'L' ) );

-- TABLE: EMERGENCY_CONTACT
--Create table for emergency contact 

CREATE TABLE emergency_contact (
    ec_id    NUMERIC(4) NOT NULL,
    ec_fname VARCHAR(30),
    ec_lname VARCHAR(30),
    ec_phone CHAR(10) NOT NULL
);

-- Alter table emergency_contact ( primary key, unique)
-- Foreign key constraints are given in the all missing FK Constraints section

ALTER TABLE emergency_contact ADD CONSTRAINT emergency_contact_uq UNIQUE ( ec_phone );

ALTER TABLE emergency_contact ADD CONSTRAINT emergency_contact_pk PRIMARY KEY ( ec_id );

-- TABLE: PATIENT
-- Create table patient 

CREATE TABLE patient (
    patient_no            NUMERIC(4) NOT NULL,
    patient_fname         VARCHAR(30),
    patient_lname         VARCHAR(30),
    patient_street        VARCHAR(50) NOT NULL,
    patient_city          VARCHAR(20) NOT NULL,
    patient_state         VARCHAR(3) NOT NULL,
    patient_postcode      CHAR(4) NOT NULL,
    patient_dob           DATE NOT NULL,
    patient_contactmobile CHAR(10) NOT NULL,
    patient_contactemail  VARCHAR(25) NOT NULL,
    ec_id                 NUMERIC(4) NOT NULL
);

-- Alter table patient ( primary key, unique)
-- Foreign key constraints are given in the all missing FK Constraints section

ALTER TABLE patient ADD CONSTRAINT patient_pk PRIMARY KEY ( patient_no );

ALTER TABLE patient
    ADD CONSTRAINT patient_state_check CHECK ( patient_state IN ( 'NT', 'QLD', 'NSW', 'ACT', 'VIC',
                                                                  'TAS', 'SA', 'WA' ) );

-- Add all missing FK Constraints below here

ALTER TABLE appointment
    ADD CONSTRAINT training_appointment_services FOREIGN KEY ( patient_no )
        REFERENCES patient ( patient_no );

ALTER TABLE appointment
    ADD CONSTRAINT provide_appointment_code FOREIGN KEY ( provider_code )
        REFERENCES provider ( provider_code );

ALTER TABLE appointment
    ADD CONSTRAINT nurse_appointment_services FOREIGN KEY ( nurse_no )
        REFERENCES nurse ( nurse_no );

ALTER TABLE appointment
    ADD CONSTRAINT appt_prior_apptno_fk FOREIGN KEY ( appt_prior_apptno )
        REFERENCES appointment ( appt_no );

ALTER TABLE patient
    ADD CONSTRAINT patient_fk FOREIGN KEY ( ec_id )
        REFERENCES emergency_contact ( ec_id );
        
Commit;
