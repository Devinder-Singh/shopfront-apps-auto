import os
from time import time
from robot.api.deco import not_keyword

from BaseTestFramework.utilities.graphite_utils import default_graphite
import logging


ROBOT_LISTENER_API_VERSION = 2

ROBOT_LIBRARY_SCOPE = 'GLOBAL'

def _get_environment():
    """This function gets the environment that the tests are running on

    Returns: The environment being used
    """
    environment_url = os.getenv('APP_ENVIRONMENT')
    environment = ""
    if environment_url == None:
        raise Exception(
            "Error: Please set APP_ENVIRONMENT environment variable"
        )
    
    if "takealot" in environment_url:
        environment = "production"
    elif 'master' in environment_url:
        environment = 'master'
    else:
        environment = 'staging'
      
    return environment

@not_keyword
def end_test(name, attrs):
    """This is a built-in Robot Listener method. This is called 
        when a test case ends. In our case we use it to send 
        metrics to graphite after every test case execution. 
        The status of the test case is appended 
        to the metric being sent.

        
            Args:
            
            name: (str) - The name of the test case

            attr: (dict) - This is the dictionary 
            containing details about tests execution
    """

    team_name = os.getenv('TEAM_NAME', 'shopfront_apps')
    environment = _get_environment()
    platform = os.getenv('PLATFORM_NAME', 'android')


    status = attrs['status']
    tags = attrs['tags']
    
    metric_path = f"{team_name}.{environment}.{platform}.{tags[0].lower()}"

    metric_path = f"{metric_path}.{status.lower()}"
    
    # format: <required-prefix>.team_name.environment.platform.test_tag.status
    logging.info(f"METRIC PATH: {metric_path}")
    
    metric = [(metric_path, 1.0, time())]

    default_graphite.build_metric(metric).send()