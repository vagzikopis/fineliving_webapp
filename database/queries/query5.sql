---------------------------------------------------------
--  Select the heart metrics of user 36, for		   -- 
--	the dates that he received an emergency situation  --
--	alert								               --
---------------------------------------------------------

SELECT history.date,BPM,Stroke_Volume,BOLD
FROM history
	JOIN heart_metrics ON history.user_id = heart_metrics.user_id
					   AND history.date = heart_metrics.date
WHERE history.user_id = 36 AND warning="Emergency Situation"