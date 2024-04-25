import gemini 
import google.generativeai as genai
import lawyer2
import input1
from dotenv import load_dotenv
load_dotenv()

import os
api_key1 = os.environ.get("API_KEY")


genai.configure(api_key = api_key1)

model = genai.GenerativeModel('gemini-pro')
def get_text1(law):
    text = '''
    mention the category of the lawyer(give in this format specification lawyer donot mention law/Attorney and give one specification only once) in just one line compulsory no description only category
    do not give all the lawyers give only those whose specification is matching with given text
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
                i = i.strip("\n-")
                ex.append(i.strip("**"))
            lawyer.extend(ex)
    lawyer = list(set(lawyer))
    input1.get_text4(lawyer)
    print('lawyer = ')
    print(lawyer)
def fun():    
    return lawyer
# print(lawyer)
      
