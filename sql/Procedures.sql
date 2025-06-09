-- Procedure to get all appointments for a doctor
CREATE PROCEDURE getAppointmentsForDoctor(IN doc_id INT)
BEGIN
    SELECT 
        A.appointment_id,
        A.date,
        A.start_time,
        A.end_time,
        A.note,
        P.fname AS patient_fname,
        P.lname AS patient_lname,
        P.patient_id,
        A.employee_id
    FROM Appointment A
    JOIN Patient P ON A.patient_id = P.patient_id
    JOIN Employee E ON A.employee_id = E.employee_id
    WHERE A.employee_id = doc_id
    ORDER BY A.date, A.start_time;
END$$