import requests

url = "https://www.directfreight.com/api/profiles/documents"

payload = "{\"The\":{}}"
headers = {'end-user-token': 'SOME_STRING_VALUE'}

response = requests.request("POST", url, data=payload, headers=headers)

print(response.text)