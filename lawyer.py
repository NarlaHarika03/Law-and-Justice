import gemini 
import google.generativeai as genai
import lawyer2
import input1
from dotenv import load_dotenv
load_dotenv()

import os
api_key1 = os.environ.get("API_KEY")


genai.configure(api_key = api_key1)

model = genai.GenerativeModel('gemini-1.5-pro')
def get_text1(law):
    global lawyer
    lawyer = []
    lawyer = [l.strip() for l in law if l.strip()]
    lawyer = list(set(lawyer))
    input1.get_text4(lawyer)
    print('lawyer = ')
    print(lawyer)
def fun():    
    return lawyer
# print(lawyer)
      
