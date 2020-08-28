------------------------------------------------------
--  Select the general metrics all the devices		--
--	that track general metrics, for a specific user	--                  --
------------------------------------------------------

SELECT *
FROM device_metrictype
	JOIN general_metrics ON device_metrictype.device_id = general_metrics.device_id
WHERE metric_type = "General" AND user_id = 27