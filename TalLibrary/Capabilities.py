#  Copyright (c) 16-11-2020 Muhammad Valodia
from robot.libraries.BuiltIn import BuiltIn
from robot.api import logger
class Capabilities():

	def get_capabilities(self,newInstall=False,autoAlert=True):
		#Get platform and device info
		PLATFORM_NAME = BuiltIn().get_variable_value("${PLATFORM_NAME}")
		PLATFORM_OS_VERSION = BuiltIn().get_variable_value("${PLATFORM_VERSION}")
		USER_DEVICE_UDID = BuiltIn().get_variable_value("${UDID}")
		CHROME_VERSION = BuiltIn().get_variable_value("${CHROME_VERSION}")
		DEVICE_NAME = BuiltIn().get_variable_value("${DEVICE_NAME}")

		#Set app packages
		APP_ACTIVITY = BuiltIn().get_variable_value("${APP_ACTIVITY}")
		APP_BUNDLE_IDENTIFIER = BuiltIn().get_variable_value("${APP_PACKAGE}")

		#Set Directories
		CURDIR = BuiltIn().get_variable_value("${PATH}")
		CHROME_DIR_PATH =  CURDIR + "/" + str(CHROME_VERSION) + "/"
		
		#Set xcode signing identities
		#XCODE_SIGNING_SIG = "iPhone Developer"
		#XCODE_ORG_ID = BuiltIn().get_variable_value("${XCODE_ORG_ID}")

		COUNTRY = BuiltIn().get_variable_value("${LOCALE}")
		LANGUAGE = BuiltIn().get_variable_value("${LANG}")
		
		#Default variables
		FULL_RESET = False
		NO_RESET = False
		AUTOMATION_NAME = ""
		
		#Check if new install	
		if newInstall:
			APP_PACKAGE_URL = BuiltIn().get_variable_value("${APP_PATH}")
		else:
			APP_PACKAGE_URL = ""
			NO_RESET = True
			
		if PLATFORM_NAME == "ios":
			AUTOMATION_NAME = "XCUITest"
		else:
			AUTOMATION_NAME = "uiautomator2"
		#For a list of device capabilities see here http://appium.io/docs/en/writing-running-appium/caps/#ios-only

		NEW_COMMAND_TIMEOUT = BuiltIn().get_variable_value("${APPIUM_NEW_COMMAND_TIMEOUT}")

		IOS_CAPABILITIES = {"platformName": PLATFORM_NAME,
								"platformVersion": PLATFORM_OS_VERSION,
								"deviceName": DEVICE_NAME,
								"bundleId": APP_BUNDLE_IDENTIFIER,
								"automationName": AUTOMATION_NAME,
								"app": APP_PACKAGE_URL,
								"fullReset": FULL_RESET,
								"udid": USER_DEVICE_UDID,
								#"xcodeSigningId": XCODE_SIGNING_SIG,
								#"xcodeOrgId": XCODE_ORG_ID,
								"autoAcceptAlerts": autoAlert,
								"newCommandTimeout": NEW_COMMAND_TIMEOUT,
								"noReset": NO_RESET,
                                "includeSafariInWebviews": False,
								"printPageSourceOnFindFailure": True,
								"shouldTerminateApp":True,
								"autoWebView": True,
								"appium:safariGarbageCollect": True
								}


		ANDROID_CAPABILITIES = {"platformName": PLATFORM_NAME,
								"platformVersion": PLATFORM_OS_VERSION,
								"deviceName": DEVICE_NAME,
								"appPackage": APP_BUNDLE_IDENTIFIER,
								"automationName": AUTOMATION_NAME,
								"app": APP_PACKAGE_URL,
								"fullReset": FULL_RESET,
								"udid": USER_DEVICE_UDID,
								"newCommandTimeout": NEW_COMMAND_TIMEOUT,
								"noReset": NO_RESET,
								"appActivity": APP_ACTIVITY,
								"printPageSourceOnFindFailure": True,
								"autoGrantPermissions": True,
								"nativeWebScreenshot": True,
								"recreateChromeDriverSessions": True,
								"chromedriverExecutableDir": CHROME_DIR_PATH,
								"language": LANGUAGE,
								"locale": COUNTRY,
                                "resetKeyboard": True,
								"shouldTerminateApp":True,
								"enforceAppInstall":True
								}

		if PLATFORM_NAME == "ios":
			DEVICE_CAPABILITIES = IOS_CAPABILITIES
		else:
			DEVICE_CAPABILITIES = ANDROID_CAPABILITIES
			
		if not newInstall:
			if "app" in DEVICE_CAPABILITIES: 
				del DEVICE_CAPABILITIES["app"]
		
		return DEVICE_CAPABILITIES