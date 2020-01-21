from flask import Flask, redirect, url_for, request, render_template, Markup
from sqlalchemy import create_engine

app = Flask(__name__)


engine = create_engine("mysql://root:vaggelis@localhost/fine_living?host=localhost?port=3306")
conn = engine.connect()


@app.route('/', methods=['GET'])
def root():
	return redirect(url_for('home'))

@app.route('/home', methods=['GET'])
def home():
	return render_template('home.html')

@app.route('/home/<user_id>', methods=['GET', 'POST'])
def home_user(user_id):
	if request.method == 'GET':
		# General #
		account = conn.execute('SELECT * FROM user WHERE user_id = %s',user_id).fetchone()
		data =conn.execute("SELECT sleep_quality, date FROM history WHERE user_id=%s", user_id).fetchall()
		sleep = [None]*len(data)
		date = [None]*len(data)
		for i in range(len(data)):
			sleep[i]=data[i].sleep_quality
			date[i]=data[i].date

		blooddate="/"
		pressure="/"
		glucose="/"
		oxygen="/"
		blooddevice= "/"
		hrv = "/"
		bpm = "/"
		heartdevice = "/"
		heartdate = "/"
		blood = conn.execute("SELECT * FROM blood_metrics WHERE user_id=%s", user_id).fetchall()
		if blood:
			blooddate=blood[0].date
			pressure=blood[0].blood_pressure
			glucose=blood[0].glucose
			oxygen=blood[0].oxygen
			device = conn.execute("SELECT name FROM device WHERE device_id=%s", blood[0].device_id).fetchone()
			blooddevice=device.name

		heart = conn.execute("SELECT * FROM heart_metrics WHERE user_id=%s", user_id).fetchone()
		if heart:
			hrv= heart.hrv
			bpm=heart.bpm
			heartdate = heart.date
			device = conn.execute("SELECT name FROM device WHERE device_id=%s", heart.device_id).fetchone()
			heartdevice = device.name

		return render_template('home_user.html', firstname=account.firstname, lastname=account.lastname, user_id=account.user_id, title='Sleep Quality', max=5, labels=date, values=sleep, blooddate=blooddate, pressure=pressure, oxygen=oxygen,glucose=glucose,blooddevice=blooddevice,hrv=hrv,heartdate=heartdate,bpm=bpm,heartdevice=heartdevice)
	else:
		return redirect(url_for('heart', user_id))

@app.route('/login_page', methods=['GET'])
def login_page():
	return render_template('login.html')

@app.route('/login', methods=['POST', 'GET'])
def login():
	msg=''
	if request.method == 'POST' and 'uname' in request.form and 'psw' in request.form:
		username = request.form['uname']
		password = request.form['psw']
		account = conn.execute('SELECT user_id FROM user WHERE username = %s AND password =%s',username,password).fetchone()
		print(account)
		if account:
			return redirect(url_for('home_user', user_id=account.user_id))
		else:
			msg = 'Incorrect username/password!'
			print(msg)
			return redirect(url_for('login_page'))


if __name__ == '__main__':
   	app.run(debug = True)
