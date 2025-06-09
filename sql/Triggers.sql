-- Valid appointment time on insert
CREATE TRIGGER validApptTime
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    IF NEW.employee_id IS NOT NULL AND NEW.patient_id IS NOT NULL THEN
        IF EXISTS (
            SELECT 1
            FROM Appointment a
            WHERE (a.employee_id = NEW.employee_id OR a.patient_id = NEW.patient_id)
              AND a.date = NEW.date
              AND (
                    (NEW.start_time < a.end_time AND NEW.start_time >= a.start_time) OR
                    (NEW.end_time > a.start_time AND NEW.end_time <= a.end_time) OR
                    (NEW.start_time <= a.start_time AND NEW.end_time >= a.end_time)
                  )
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Appointment time overlaps with existing appointment.';
        END IF;
    END IF;
END

-- Valid appointment time on update
CREATE TRIGGER validApptTimeOnUpdate
BEFORE UPDATE ON Appointment
FOR EACH ROW
BEGIN
    IF NEW.employee_id IS NOT NULL AND NEW.patient_id IS NOT NULL THEN
        IF EXISTS (
            SELECT 1
            FROM Appointment a
            WHERE (a.employee_id = NEW.employee_id OR a.patient_id = NEW.patient_id)
              AND a.date = NEW.date
              -- check that appointment times do not overlap for the same patient or same doctor
              AND (
                    (NEW.start_time < a.end_time AND NEW.start_time >= a.start_time) OR
                    (NEW.end_time > a.start_time AND NEW.end_time <= a.end_time) OR
                    (NEW.start_time <= a.start_time AND NEW.end_time >= a.end_time)
                  )
        ) THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Appointment time overlaps with existing appointment.';
        END IF;
    END IF;
END

-- Check patient's total balance
CREATE TRIGGER checkPatientBalance
BEFORE DELETE ON Patient
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM BillingStatement
        WHERE patient_id = OLD.patient_id
        GROUP BY patient_id
        HAVING SUM(amount_due) > 0
    ) THEN
        -- do not allow patient's with outstanding balances to be deleted
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Patient has an outstanding balance remaining.';
    END IF;
END

