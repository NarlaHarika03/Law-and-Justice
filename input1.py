from flask import Flask, render_template, request
import gemini

app = Flask(__name__)

problem = ''

@app.route('/', methods=['GET', 'POST'])
def info():
    global problem
    if request.method == 'POST':
        problem = request.form.get('problem')
        print(problem)
        gemini.get_text(problem)
    return render_template('home.html')

if __name__ == '__main__':
    app.run(debug=True)