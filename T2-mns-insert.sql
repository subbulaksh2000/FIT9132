--*****PLEASE ENTER YOUR DETAILS BELOW*****
--T2-mns-insert.sql

--Student ID:34069178
--Student Name:Subbulakshmi Natarajan
--Unit Code:FIT9132
--Applied Class No: 03

/* Comments for your marker:



*/

--------------------------------------
--INSERT INTO emergency_contact
INSERT INTO emergency_contact (
    ec_id,
    ec_fname,
    ec_lname,
    ec_phone
) VALUES (
    1001,
    'Ram',
    'Mohan',
    7657800090
);

INSERT INTO emergency_contact VALUES (
    6789,
    'Jameson',
    'Grayon',
    0969852390
);

INSERT INTO emergency_contact VALUES (
    8907,
    'Aravind',
    'Writer',
    065767890
);

INSERT INTO emergency_contact VALUES (
    8902,
    'Avery',
    'Yatora',
    0876905490
);

INSERT INTO emergency_contact VALUES (
    7890,
    'Faraha',
    'Khan',
    0678905643
);

INSERT INTO emergency_contact VALUES (
    9875,
    'Shifield',
    'Jameson',
    0456121450
);
--------------------------------------

--------------------------------------
--INSERT INTO patient
--------------------------------------
INSERT INTO patient (
    patient_no,
    patient_fname,
    patient_lname,
    patient_street,
    patient_city,
    patient_state,
    patient_postcode,
    patient_dob,
    patient_contactmobile,
    patient_contactemail,
    ec_id
) VALUES (
    3456,
    'Aravind',
    'Balaji',
    'BLACKBURN',
    'Melbourne',
    'VIC',
    3168,
    TO_DATE('07/Oct/1997', 'DD/MON/YYYY'),
    0987653876,
    'aravind@hotmail.com',
    6789
);

INSERT INTO patient VALUES (
    3457,
    'Araditta',
    'Bala',
    'Oakleigh',
    'Melbourne',
    'VIC',
    3478,
    TO_DATE('10/Aug/1984', 'DD/MON/YYYY'),
    0456121231,
    'arad.bala@gmail.com',
    8907
);

INSERT INTO patient VALUES (
    3458,
    'Adwaita',
    'Eminen',
    'Pakenham',
    'Sydney',
    'ACT',
    3784,
    TO_DATE('11/Dec/1983', 'DD/MON/YYYY'),
    0478152461,
    'aws.e@hotmail.com',
    8902
);

INSERT INTO patient VALUES (
    3459,
    'Grayson',
    'Hawthrone',
    'Brisbane Road',
    'Queensland',
    'QLD',
    2145,
    TO_DATE('23/MAR/1963', 'DD/MON/YYYY'),
    04234178921,
    'gray.h@yahoo.com',
    7890
);

INSERT INTO patient VALUES (
    3460,
    'Jason',
    'Chan',
    'Australia Road',
    'Sydney',
    'ACT',
    4562,
    TO_DATE('10/Aug/1978', 'DD/MON/YYYY'),
    0447561237,
    'jason.c@gmail.com',
    9875
);

INSERT INTO patient VALUES (
    3461,
    'Priyanka',
    'Ganapathy',
    'Airport West Road',
    'Melbourne',
    'VIC',
    3145,
    TO_DATE('24/Apr/1978', 'DD/MON/YYYY'),
    0845133140,
    'priya.g@gmail.com',
    7890
);

INSERT INTO patient VALUES (
    3462,
    'Sherin',
    'Rodes',
    'St.Klida',
    'Tasmania',
    'TAS',
    4562,
    TO_DATE('10/Aug/2010', 'DD/MON/YYYY'),
    0447561237,
    'Sherin.R@gmail.com',
    9875
);

INSERT INTO patient VALUES (
    3463,
    'Maayura',
    'Rodes',
    'St.Klida',
    'Tasmania',
    'TAS',
    4562,
    TO_DATE('21/Aug/2000', 'DD/MON/YYYY'),
    0447561237,
    'Maayura.R@gmail.com',
    9875
);

INSERT INTO patient VALUES (
    3464,
    'Irene',
    'Franco',
    'Brisbane road',
    'Brisbane',
    'NT',
    3145,
    TO_DATE('10/JUN/2000', 'DD/MON/YYYY'),
    0478945611,
    'irene.c@gmail.com',
    9875
);

INSERT INTO patient VALUES (
    3465,
    'Gopika',
    'Venugopal',
    'Queensland',
    'Queensland',
    'QLD',
    5613,
    TO_DATE('20/Jan/2018', 'DD/MON/YYYY'),
    0487123569,
    'gopika.V@gmail.com',
    8902
);

INSERT INTO patient VALUES (
    3466,
    'Aiswarya',
    'Padmandam',
    'Boston Road',
    'New Sydney Wales',
    'NSW',
    4562,
    TO_DATE('29/Jan/2015', 'DD/MON/YYYY'),
    0479512346,
    'Ash.p@gmail.com',
    8907
);
--------------------------------------
--INSERT INTO appointment
--------------------------------------
INSERT INTO appointment (
    appt_no,
    appt_datetime,
    appt_roomno,
    appt_length,
    patient_no,
    provider_code,
    nurse_no,
    appt_prior_apptno
) VALUES (
    145613,
    TO_DATE('24/AUG/2023 16:00', 'DD/MON/YYYY HH24:MI'),
    10,
    'L',
    3457,
    'GEN001',
    01,
    NULL
);

INSERT INTO appointment VALUES (
    145614,
    TO_DATE('14/May/2022 9:00', 'dd/mm/yyyy hh24:mi'),
    11,
    'S',
    3459,
    'END001',
    3,
    145613
);

INSERT INTO appointment VALUES (
    145615,
    TO_DATE('23/Jun/2023 2:00', 'dd/mm/yyyy hh24:mi'),
    20,
    'T',
    3460,
    'AST001',
    11,
    145614
);

INSERT INTO appointment VALUES (
    145616,
    TO_DATE('01/Jun/2021 18:00', 'dd/mm/yyyy hh24:mi'),
    10,
    'L',
    3466,
    'END001',
    2,
    NULL
);

INSERT INTO appointment VALUES (
    145617,
    TO_DATE('24/Dec/2023 11:00', 'dd/mm/yyyy hh24:mi'),
    01,
    'L',
    3464,
    'END001',
    2,
    145616
);

INSERT INTO appointment VALUES (
    145618,
    TO_DATE('24/Dec/2023 16:00', 'dd/mm/yyyy hh24:mi'),
    20,
    'S',
    3457,
    'END001',
    2,
    145613
);

INSERT INTO appointment VALUES (
    145619,
    TO_DATE('24/Dec/2023 17:00', 'dd/mm/yyyy hh24:mi'),
    12,
    'T',
    3458,
    'AST002',
    4,
    NULL
);

INSERT INTO appointment VALUES (
    145620,
    TO_DATE('24/Dec/2023 18:00', 'dd/mm/yyyy hh24:mi'),
    09,
    'L',
    3463,
    'PED002',
    5,
    NULL
);

INSERT INTO appointment VALUES (
    145621,
    TO_DATE('17/Nov/2022 20:00', 'dd/mm/yyyy hh24:mi'),
    02,
    'S',
    3462,
    'PED001',
    1,
    NULL
);

INSERT INTO appointment VALUES (
    145622,
    TO_DATE('15/May/2023 14:00', 'dd/mm/yyyy hh24:mi'),
    09,
    'T',
    3461,
    'PRO001',
    6,
    145621
);

INSERT INTO appointment VALUES (
    145623,
    TO_DATE('24/Feb/2023 15:00', 'dd/mm/yyyy hh24:mi'),
    30,
    'L',
    3459,
    'END001',
    6,
    NULL
);

INSERT INTO appointment VALUES (
    145624,
    TO_DATE('01/Apr/2022 18:00', 'dd/mm/yyyy hh24:mi'),
    14,
    'S',
    3457,
    'PRO001',
    7,
    NULL
);

INSERT INTO appointment VALUES (
    145625,
    TO_DATE('10/Oct/2021 16:00', 'dd/mm/yyyy hh24:mi'),
    15,
    'T',
    3462,
    'GEN002',
    15,
    145614
);

INSERT INTO appointment VALUES (
    145626,
    TO_DATE('29/Jun/2023 19:00', 'dd/mm/yyyy hh24:mi'),
    16,
    'L',
    3461,
    'PRO001',
    6,
    NULL
);

INSERT INTO appointment VALUES (
    145627,
    TO_DATE('15/May/2023 14:00', 'dd/mm/yyyy hh24:mi'),
    09,
    'S',
    3463,
    'ORS001',
    8,
    NULL
);

INSERT INTO appointment VALUES (
    145628,
    TO_DATE('17/May/2023 14:00', 'dd/mm/yyyy hh24:mi'),
    08,
    'T',
    3465,
    'PRO001',
    6,
    145627
);

commit;