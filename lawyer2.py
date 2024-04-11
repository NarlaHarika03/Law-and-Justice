import lawyer
import legalll 
import recom

from flask import Flask, render_template, request
app = Flask(__name__)

lawyers1 = []
def get_text4(lawy):
    global lawyers1
    lawyers1 = lawy 
def send():
    return lawyers1       
@app.route('/index', methods = ['POST'])
def index():
    global lawyers1
    return render_template('index.html', lst = lawyers1)

if __name__ == '__main__':
    app.run(debug=True)
























