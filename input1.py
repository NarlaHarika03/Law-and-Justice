from flask import Flask, render_template, request, redirect
import gemini
import lawyer
import mysql.connector 
from mysql.connector import IntegrityError




connection = mysql.connector.connect(
    host = "localhost",
    user = "Harika",
    password = "sunrika#1903*",
    database = "lawyers"
)

cursor = connection.cursor()
app = Flask(__name__)

problem = ''
law = []

@app.route('/')
def info():
    return render_template('signup.html')

@app.route('/signup', methods=['GET', 'POST'])
def signup():
    user_name = request.form['username']
    password = request.form['password']
    email = request.form['email']
    contact = request.form['contact']
    try:
        connection = mysql.connector.connect(
        host = "localhost",
        user = "Harika",
        password = "sunrika#1903*",
        database = "lawyers"
    )
        insert_query = "INSERT INTO login_details (username, password, email, contact) VALUES (%s,%s,%s,%s)"
        cursor.execute(insert_query,(user_name, password, email, contact))

        connection.commit()
        cursor.close()
        connection.close()
        return render_template('home.html')
    except IntegrityError as e:
        return render_template('login.html')

@app.route('/login', methods = ['GET', 'POST'])
def login():
    email1 = request.form['email']
    password = request.form['password']
    connection = mysql.connector.connect(
    host = "localhost",
    user = "Harika",
    password = "sunrika#1903*",
    database = "lawyers"
    )
    cursor = connection.cursor()

    retrive_query = "select count(email) from login_details where email = %s and password = %s"
    retrive_query1 = "select count(email) from login_details where email = %s"
    retrive_query2 = "select count(password) from login_details where password = %s"

    cursor.execute(retrive_query,(email1,password))
    count = cursor.fetchall()

    cursor.execute(retrive_query1,(email1,))
    email = cursor.fetchall()

    cursor.execute(retrive_query2,(password,))
    password = cursor.fetchall()

    cursor.close()
    connection.close()

    if(len(count) == 0 and (len(email) or len(password))):
        return render_template('login.html', error = "Invalid Email Or Password")
    elif(len(email) == 0 and len(password) == 0):
        return render_template('signup.html', error = "Sign Up before you Login")
    else:
        return render_template('home.html')

def get_text4(lawyer):
    print(1111)
    global law
    law = lawyer
    #print('input = ', law)
def send():
    print('input1 = ', law)
    return law    

@app.route('/index', methods = ['GET', 'POST'])
def index():
    global problem
    problem = request.form.get('problem')
    gemini.get_text(problem)
    lawy = lawyer.fun()
    print('input1 = ', lawy)
    if request.method == 'POST':
        print(lawy)
    return render_template('index.html', lst = lawy)


if __name__ == '__main__':
    app.run(debug = True)