import requests

def fetch_content(url):
    response = requests.get(url)
    if response.status_code == 200:
        return response.text
    else:
        return None

if __name__ == "__main__":
    url = "https://assetdelivery.roblox.com/v1/asset/?id=16295427447"
    content = fetch_content(url)
    if content:
        print(content)
    else:
        print("Failed to fetch content")
