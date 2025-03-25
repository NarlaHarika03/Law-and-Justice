import google.generativeai as genai

from IPython.display import display
from IPython.display import Markdown
import re
import lawyer
import legalll 
import recom
from flask import Flask, render_template, request
from dotenv import load_dotenv
load_dotenv()

import os
api_key1 = os.environ.get("API_KEY")

#to get the key for the gemini ai
genai.configure(api_key = api_key1)

#this command is to get the model of gemini ai
model = genai.GenerativeModel('gemini-1.5-pro')

text = ''
def get_text(problem):
    global text 
    text = problem
    print("text = ", text)

    text1 = '''
        Behave as a legal advisor
        from the mentioned lawyers mention the appropriate categories of lawyers more than one for sure, each in one line as points numbered 1,2 etc this person should approach.
        family lawyer, civil litigation lawyer, criminal lawyer, Real estate lawyer, Trail Lawyer, Bankruptcy Lawyer, Estate Planning Lawyer,
        Probate Lawyer, Tax Lawyer, Immigration Lawyer, Intellectual Property Lawyer, Corporate Lawyer, Property Lawyer, Contract Lawyer
        Provide heading as legal categories of lawyers dont give any description only names.
        '''
    response = model.generate_content((text.strip() + text1), stream = True)

    outputl= []
    lawyers = []
    legal = []
    other = []
    l1 = []
    lawyers_names=[]
    for chunk in response:
        output = chunk.text
        print(output)
    
    # Use findall on the output string instead of the list
        lawyers_names.extend(re.findall(r'\d+\.\s*(.*?)(?:\n|$)', output))

    print(lawyers_names)

    print('\n\nLawyers')
    print(lawyers)
    print('\n\nLegal Aid')
    print(legal)
    print('\n\nRecommendations')
    print(other) 
    lawyer.get_text1(lawyers_names)
    # legalll.get_text2(legal)
    # recom.get_text3(other)


# def send_lawyers():
#     return lawyers

# def send_legal():
#     return legal

# def send_recom():
#     return other

# if __name__ == '__main__':
#     app.run(debug=True)


        
        