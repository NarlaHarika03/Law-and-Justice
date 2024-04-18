import gemini 
import google.generativeai as genai
from dotenv import load_dotenv
load_dotenv()

import os
api_key1 = os.environ.get("API_KEY")

genai.configure(api_key = api_key1)

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