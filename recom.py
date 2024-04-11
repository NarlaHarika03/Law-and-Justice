import gemini 
import re 

def get_text3(recom):
    others = []

    for i in recom:
        if re.match('[0-9]', i):
            others.append(i) 
# print(others)     

# def other_fun():
#     return others