# Fine Living WebApp Instructions

Unfortunately I didn't manage to host my web app to a server, so in order to explore the application you will have to execute the following commands. Ubuntu 16-18 is recommended.

## Prerequisites
  - python3
  - pip3 or pip
  - Flask : pip3 install flask
  - sqlalchemy: pip3 install sqlalchemy
  - mysqlclient: pip3 install mysqlclient

## Connect to the Database
- Start MariaDB
- source /path/fineliving_webapp/dbdumb.sql
## Modification of URL
Open db.py and replace in the URL username and password with the username and the password of MariaDB that you locally have on your computer.
## Commands
  - cd finelivingapp
  - python3 -m venv env
  - source env/bin/activate
## Open Fine Living web app
Open a browser and type: 127.0.0.5000/

## Usernames and Passwords for testing
Use the above username and password combinations in order to view different types of data stored in fineliving database.
  ( general data, heart data, blood data)

- userSiri34 1PORE4B2X
- userMichael164  2XQAXAN4V
- admin admin
