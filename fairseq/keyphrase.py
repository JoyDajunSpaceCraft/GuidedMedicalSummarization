import requests

text = "patient is also amenable to this plan. stable for discharge"


url_med = 'http://ngrok.luozm.me:8395/keyphrase/med_api/top_n_entities'
response = requests.post(url_med,data=text)
print(response.json())



