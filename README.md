# Fine Living WebApp Instructions

Δυστυχώς δεν καταφέραμε να ανεβάσουμε κάπου την εφαρμογή που σχεδιάσαμε οπότε για τον έλεγχο της θα χρειαστεί η εκτέλεση των παρακάτων εντολών. Σε περίπτωση που δεν καταφέρετε τα παρακάτω, στον φάκελο pages υπάρχουν εικόνες που δείχνουν τις οθόνες που υλοποιήθηκαν. Επίσης, εφόσον η ιστοσελίδα τρέχει locally στον υπολογιστή μου θα μπορούσα να έρθω κατόπιν συνενόησης να σας παρουσιάσω ότι έκανα. Το email μου είναι ezikopis@ece.auth.gr. 
## Προαπαιτούμενα
  - python3
  - pip3 or pip
  - Flask : pip3 install flask
  - sqlalchemy: pip3 install sqlalchemy
  - mysqlclient: pip3 install mysqlclient

## Σύνδεση στη βάση
Μέσα στον φάκελο finelivingapp υπάρχει το .sql αρχείο που δημιουργεί τη βάση. Γι αυτό εκτελούμε το αρχείο dbdumb.sql προκειμένου να δημιοyργηθεί η βάση.
	- Start MariaDB
	- source /path/finelivingapp/dbdumb.sql
## Προσαρμογή URL
Έπειτα ανοίγουμε τo αρχεία db.py και στο URL που βλέπουμε βάζουμε όπου username το username που έχουμε locally στον server της MariaDB και όπου password τον κωδικό.
## Εντολές
  - cd finelivingapp
  - python3 -m venv env
  - source env/bin/activate
## Σύνδεση
Ανοίγουμε έναν browser και πληκτρολογούμε: 127.0.0.5000/

## Εικονικοί χρήστες
Μπορείτε στο login να βάλετε τους παρακάτω συνδυασμούς username-password.
Κάθε χρήστης έχει διαφορετικά δεδομένα αποθηκευμένα στη βάση μας( general data, heart data, blood data)

- userSiri34 1PORE4B2X
- userMichael164  2XQAXAN4V
- admin admin
