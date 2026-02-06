import requests
import webbrowser
import urllib

# Set up the OAuth2 parameters
client_id = 'YOUR client_id'
client_secret = 'YOUR client_secret'
redirect_uri = 'YOUR redirect_url that has been configured for the client_id'
authorization_base_url = 'https://wam.roche.com/as/authorization.oauth2'
token_url = 'https://wam.roche.com/as/token.oauth2'

# Step 1: Redirect the user to the authorization URL
params = {
    'client_id': client_id,
    'redirect_uri': redirect_uri,
    'response_type': 'code',
    'scope': 'openid',
}
authorization_url = authorization_base_url + '?' + urllib.parse.urlencode(params)
webbrowser.open(authorization_url)

# Step 2: Get the authorization code from the callback
authorization_response = input('Enter the full callback URL: ')       #The callback URL is displayed in the browser and looks like <your redirect_uri>?code=....
parsed_response = urllib.parse.urlparse(authorization_response)
authorization_code = urllib.parse.parse_qs(parsed_response.query)['code'][0]

# Step 3: Exchange the authorization code for an access token
data = {
    'grant_type': 'authorization_code',
    'code': authorization_code,
    'redirect_uri': redirect_uri,
    'client_id': client_id,
    'client_secret': client_secret,
}
response = requests.post(token_url, data=data)
access_token = response.json()['access_token']
print('Access token: ' + access_token)

# Step 4: Use the access token to make requests to the API
headers = {'Authorization': 'Bearer {access_token}'}
api_url = 'https://example.com/api/endpoint'
response = requests.get(api_url, headers=headers)
