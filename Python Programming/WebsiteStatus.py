#pip install request is a library
#simplifies the tasks of getting info from url

import requests


import requests

def get_response(url: str) -> requests.Response:
    return requests.get(url)

def show_response_info(response: requests.Response) -> None:
    print('Status:', response.status_code)
    print('Ok:', response.ok)
    print('Links:', response.links)
    print('Encoding:', response.encoding)
    print('Is redirect:', response.is_redirect)
    print('Is permanent redirect:', response.is_permanent_redirect)

def main() -> None:
    website: str = 'https://www.google.com'
    response = get_response(website)
    show_response_info(response)

if __name__ == '__main__':
    main()
