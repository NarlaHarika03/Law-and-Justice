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
model = genai.GenerativeModel('gemini-pro')

text = ''
def get_text(problem):
    global text 
    text = problem
    print("text = ", text)

    text1 = '''
        mention the appropriate categories of lawyers more than two for sure, each in one line as points numbered 1,2 etc this person should approach and any legal aid consultancy if required as points numbered 1,2 etc.
        Provide them as legal categories of lawyers, legal aid consultancies just give the names no description for categories of lawyers
        Provide the required steps 8 to 10 minimum to be taken as points numbered 1,2 etc by the person please dont put any unneccessary stars in output. 
        '''
    response = model.generate_content((text.strip() + text1), stream = True)

    outputl= []
    lawyers = []
    legal = []
    other = []
    l = []
    l1 = []
    for chunk in response:
        output = chunk.text 
    # print(output)
        l.extend(output.split("**"))
    # print(l)    
    for i in l:
        l1.extend(i.split("\n*"))

# print(l1)    
    for i in range(len(l1)):
        if l1[i] == '' or l1[i] == '\n':
            continue
        if re.search("Categories of Lawyers", l1[i]):
            for j in range(i+1, len(l1)):
                if re.search("Legal Aid Consultancies", l1[j]):
                    break 
                l1[j].strip("\n")
                l2 = list(l1[j].split("\n"))
                lawyers.extend(l2)
        elif re.search("Legal Aid Consultancies", l1[i]):
            for j in range(i + 1, len(l1)):
                if re.search("Steps", l1[j]):
                    break 
                else:
                    l1[j].strip("\n*")
                    l1[j].strip("*\n")
                    l2 = list(l1[j].split("\n"))
                    legal.extend(l2)  
        elif re.search("Steps", l1[i]):
            for j in range(i + 1, len(l1)):
                l1[j].strip("\n*")
                l1[j].strip("*\n")
                l2 = list(l1[j].split("\n"))
                other.extend(l2)                   
    for law in lawyers:
        law = law.replace("\n*", "") 
    for leg in legal:
        leg = leg.replace("\n*", "") 
    for oth in other:
        oth = oth.replace("\n*", "")
    print('\n\nLawyers')
    print(lawyers)
    print('\n\nLegal Aid')
    print(legal)
    print('\n\nRecommendations')
    print(other) 
    lawyer.get_text1(lawyers)
    legalll.get_text2(legal)
    recom.get_text3(other)


# def send_lawyers():
#     return lawyers

# def send_legal():
#     return legal

# def send_recom():
#     return other

# if __name__ == '__main__':
#     app.run(debug=True)


        
        