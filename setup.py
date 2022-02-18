from setuptools import setup, find_packages

setup(
    name='TalLibrary',
    version='1.1.0',
    description="Shopfront Apps Library",
    install_requires=['wheel', 'yaml', 'robotframework','ply',
                      'robotframework-appiumlibrary', 'robotframework-databaselibrary',
                      'Appium-Python-Client', 'webdrivermanager',
                      'robotframework-selenium2library', 'RESTinstance', 
                      'robotframework-jsonlibrary'],
    packages=find_packages()
)
