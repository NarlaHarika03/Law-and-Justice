from flask import Flask, render_template, request, redirect
import gemini
import lawyer

app = Flask(__name__)

problem = ''
law = []

@app.route('/')
def info():
    return render_template('login.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    user_name = request.form['username']
    password = request.form['password']
    email = request.form['email']
    contact = request.form['contact']
    print(user_name, password, email, contact)
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