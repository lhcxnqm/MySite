import json

with open('data.json','r') as f:
    data = f.read()

data = json.loads(data) #已经转换为中文

with open('data.json', 'w', encoding='utf-8') as json_file:
    json.dump(data, json_file, ensure_ascii=False)  #ensure_ascii=False 表示包含中文，否则会有编码问题
    print("write json file success!")
