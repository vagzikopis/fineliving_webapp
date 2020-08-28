---------------------------------------------------------------------------
-- This script creates users and grants them with appropriate privileges --
---------------------------------------------------------------------------

CREATE USER 'sadmin'@'localhost' IDENTIFIED BY 'superpass';
GRANT ALL PRIVILEGES ON fine_living.* TO 'sadmin'@'localhost';

CREATE USER 'user'@'localhost' IDENTIFIED BY 'upassword';
CREATE USER 'user'@'%' IDENTIFIED BY 'upassword';
GRANT SELECT ON fine_living.* TO 'user'@'localhost';
GRANT SELECT ON fine_living.* TO 'user'@'%';

CREATE USER 'doctor'@'localhost' IDENTIFIED BY 'dpassword';
CREATE USER 'doctor'@'%' IDENTIFIED BY 'dpassword';
GRANT SELECT ON fine_living.* TO 'doctor'@'localhost';
GRANT SELECT ON fine_living.* TO 'doctor'@'%';
GRANT INSERT, UPDATE ON fine_living.prescription TO 'doctor'@'localhost';
GRANT INSERT, UPDATE ON fine_living.prescription TO 'doctor'@'%';

CREATE USER 'device'@'localhost';
CREATE USER 'device'@'%';
GRANT INSERT ON fine_living.heart_metrics TO 'device'@'localhost';
GRANT INSERT ON fine_living.heart_metrics TO 'device'@'%';
GRANT INSERT ON fine_living.blood_metrics TO 'device'@'localhost';
GRANT INSERT ON fine_living.blood_metrics TO 'device'@'%';
GRANT INSERT ON fine_living.general_metrics TO 'device'@'localhost';
GRANT INSERT ON fine_living.general_metrics TO 'device'@'%';