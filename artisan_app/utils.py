import requests
from bs4 import BeautifulSoup
import json
import re



def fb_followers_count():
    facebook_url = 'https://www.facebook.com'
    profile_url = 'artisanbakerybrasov'
    response = requests.get(f"{facebook_url}/{profile_url}")
        #print(response.status_code)
    if response.ok:
        bs_html = BeautifulSoup(response.text, "html.parser")
        regex = re.compile('^_4bl9')
        content_list = bs_html.find_all('div', attrs={'class': regex})
        content = []
        for div in content_list:
            content.append(div.get_text().split('\n')[0])
        followers_text = content[2].split()
        followers = followers_text[0]

    return followers
