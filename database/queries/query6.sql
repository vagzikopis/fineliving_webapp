--------------------------------------------------
--  Select the names, glucose metrics and dates --
-- 	for all diabetic patients				    --
--------------------------------------------------

SELECT firstname,lastname,date,time,glucose
FROM user
	JOIN blood_metrics ON user.user_id = blood_metrics.user_id
WHERE disease="diabetes"