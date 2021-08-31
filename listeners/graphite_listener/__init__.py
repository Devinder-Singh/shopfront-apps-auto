from BaseTestFramework.configuration.request_registry import register_request
from BaseTestFramework.utilities.api_utils import APIRequest
from robot.api import logger

register_request(
    'send_metrics',
    {
        'url': 'http://tal-test-data-service.{env}/send_metrics',
        'method': 'POST',
        'post_params': [
            'metric_path',
            'metric_value',
        ],
        'response_format': 'json'
    },
)

def send_metrics(metric_path: str, metric_value: float) -> dict:
    req = APIRequest(
        'master.env',
        'send_metrics',
        {
            'metric_path': metric_path,
            'metric_value': metric_value
        },
    )
    try:
        req.send()
        result = req.get_value()
        return result
    except:
        logger.console(f"*WARN:{req.response}*")
        print(f"*WARN:{req.response.text}*")
