--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T3-mns-dm.sql

--Student ID:34069178
--Student Name:Subbulakshmi Natarajan
--Unit Code:FIT9132
--Applied Class No: 03


/* Comments for your marker:




*/

-- 3 (a)

--Create sequence for emergency contact 
DROP SEQUENCE emergency_contact_seq;

CREATE SEQUENCE emergency_contact_seq START WITH 100 INCREMENT BY 5;

--for Patient Table
DROP SEQUENCE patient_table_seq;

CREATE SEQUENCE patient_table_seq START WITH 100 INCREMENT BY 5;

--Create sequence for appointment table
DROP SEQUENCE appointment_seq;

CREATE SEQUENCE appointment_seq START WITH 100 INCREMENT BY 5;

--3(b)

--insert statement for emergency contact values after the sequence

INSERT INTO emergency_contact VALUES (
    emergency_contact_seq.NEXTVAL,
    'Johnathan',
    'Robey',
    047890456
);

--insert statements for patient values after the sequence

INSERT INTO patient VALUES (
    patient_table_seq.NEXTVAL,
    'Lachlan',
    'Robey',
    'Wellington',
    'Melbourne',
    'VIC',
    9000,
    '18/Jan/2011',
    047890456,
    'johnath.r@yahoo.in',
    (
        SELECT
            ec_id
        FROM
            emergency_contact
        WHERE
            ec_phone = 047890456
    )
);

INSERT INTO patient VALUES (
    patient_table_seq.NEXTVAL,
    'Laura',
    'Robey',
    'Wellington',
    'Melbourne',
    'VIC',
    9000,
    '15/Jun/2001',
    047890456,
    'johnath.r@yahoo.in',
    (
        SELECT
            ec_id
        FROM
            emergency_contact
        WHERE
            ec_phone = 047890456
    )
);

--insert statements for appointment  values after the sequence

INSERT INTO appointment VALUES (
    appointment_seq.NEXTVAL,
    TO_DATE('04/Sep/2023 16:00', 'dd/mm/yyyy hh24:mi'),
    09,
    'S',
    (
        SELECT
            patient_no
        FROM
            patient
        WHERE
                patient_fname = 'Lachlan'
            AND patient_contactmobile = 047890456
    ),
    'GEN001',
    6,
    NULL
);

INSERT INTO appointment VALUES (
    appointment_seq.NEXTVAL,
    TO_DATE('04/Sep/2023 15:30', 'dd/mm/yyyy hh24:mi'),
    09,
    'S',
    (
        SELECT
            patient_no
        FROM
            patient
        WHERE
                patient_fname = 'Laura'
            AND patient_contactmobile = 047890456
    ),
    'GEN001',
    6,
    NULL
);


--3(c)

INSERT INTO appointment VALUES (
    appointment_seq.NEXTVAL,
    TO_DATE('04/Sep/2023 16:00', 'dd/mm/yyyy hh24:mi') + 10,
    01,
    'L',
    (
        SELECT
            patient_no
        FROM
            patient
        WHERE
                patient_fname = 'Lachlan'
            AND patient_contactmobile = 047890456
    ),
    'GEN001',
    14,
    (
        SELECT
            appt_no
        FROM
            appointment
        WHERE
            patient_no = 100
    )
);


--3(d)
--Update the appointment to 14 days after the actual appointment that was given to Johanthan

UPDATE appointment
SET
    appt_datetime = TO_DATE('4/Sep/2023 16:00', 'dd/mon/yyyy hh24:mi') + 14
WHERE
        appt_datetime = TO_DATE('4/Sep/2023 16:00', 'dd/mon/yyyy hh24:mi') + 10
    AND patient_no = (
        SELECT
            patient_no
        FROM
            patient
        WHERE
                patient_fname = 'Lachlan'
            AND patient_contactmobile = 047890456
    );

-- To check the updated the rows, I have added the select from the appointment 
select * from appointment;


--3(e)
-- Delete the appointment date time between from 15 september 2023 to 22 september 2023.

DELETE FROM appointment
WHERE
    appt_datetime BETWEEN TO_DATE('15/Sep/2023 00:00', 'dd/mm/yyyy hh24:mi') AND TO_DATE('22/Sep/2023 23:59', 'dd/mm/yyyy hh24:mi');
    
Commit;