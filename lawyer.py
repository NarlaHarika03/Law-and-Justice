import gemini 
import google.generativeai as genai
import lawyer2
import input1


genai.configure(api_key = "AIzaSyDY-P9ow5xwXSYVAosPKmZLA5VA40JTC0k")

model = genai.GenerativeModel('gemini-pro')
def get_text1(law):
    text = '''
    mention the category of the lawyer in just one line compulsory no description only category
    '''

    text1 = '''
    mention the specifications of that lawyer in just one line compulsory
    '''
    global lawyer
    lawyer = []
    spec = []
    ex = []
    for i in law:
        if i == '' or i == 'Law Attorney' or i == 'Attorney':
            continue
        response = model.generate_content(( i + text),stream = True)
        for chunk in response:
            output = chunk.text 
            output = output.strip("-")
            output = output.strip("\n-")
            output = output.strip("**")
            l = list(output.split("**"))
            for i in l:
                ex.append(i.strip("**"))
            lawyer.extend(ex)
    lawyer = list(set(lawyer))
    input1.get_text4(lawyer)
    print('lawyer = ')
    print(lawyer)
def fun():    
    return lawyer
# print(lawyer)
      
