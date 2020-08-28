-----------------------------------------------------------------------
-- Select doctor names and the prescriptions that they wrote 		 --
-- during the last month (for example, since 2019-10-10)			 --
-----------------------------------------------------------------------

SELECT doctor.firstname,doctor.lastname,medicine.name
FROM prescription 
	JOIN doctor ON prescription.doctor_id=doctor.doctor_id
	JOIN medicine ON prescription.medicine_id=medicine.medicine_id
WHERE presc_date >= "2019-10-10"