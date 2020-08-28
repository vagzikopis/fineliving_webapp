--------------------------------------------------
--  Select the sleep quality metric of user 34  --
--------------------------------------------------

SELECT sleep_quality,date
FROM history
WHERE user_id=34 AND date>="2019-1-1"