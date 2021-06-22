#  Copyright (c) 16-11-2020 Muhammad Valodia
import requests

class ApiLib():
    """
    Tal custom function library
    """

    def get_api_request(self, req):
        response = requests.get(req)
        print(response.json())
        return response.json()
