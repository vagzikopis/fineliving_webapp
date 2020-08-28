--------------------------------------------------
--  Select the blood metrics from patients of   --
--  doctor with doctor_id = 20                  --
--------------------------------------------------

SELECT user.firstname,user.lastname,blood_pressure,glucose,date,time
FROM doctor_supervises_user
	JOIN user ON doctor_supervises_user.user_id = user.user_id
    JOIN blood_metrics ON user.user_id=blood_metrics.user_id
WHERE doctor_supervises_user.doctor_id = 20;