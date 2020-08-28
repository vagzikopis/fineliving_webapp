-----------------------------------------------------------------------
-- Select data from the heart metrics of user 313 at date 2019-12-05 --
-----------------------------------------------------------------------

SELECT date,time,BOLD,HRV
FROM heart_metrics
WHERE user_id=313 AND date="2019-12-15"