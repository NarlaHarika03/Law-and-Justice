import gemini 
import google.generativeai as genai


genai.configure(api_key = "AIzaSyDY-P9ow5xwXSYVAosPKmZLA5VA40JTC0k")

model = genai.GenerativeModel('gemini-pro')

def get_text2(legal):
    text = '''
    mention the legal aid consultancy names neatly one in each line
    '''

    legall = []
    for i in legal:
        if i == '' or i == 'Law Attorney' or i == 'Attorney':
            continue
        response = model.generate_content(( i + text),stream = True)
        for chunk in response:
            output = chunk.text 
            output = output.strip("-")
            output = output.strip("\n-")
            output = output.strip("**")
            legall.append(output)
    legall = list(set(legall))
# print(legall)

# def legal_fun():
#     return legall