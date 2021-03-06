#  Copyright (c) 16-11-2020 Muhammad Valodia
from AppiumLibrary import AppiumLibrary
from robot.libraries.BuiltIn import BuiltIn
from decimal import *
from appium import webdriver
import time
import robot
from datetime import *
from docutils.parsers import null

class Utils(AppiumLibrary):
    """
    Tal custom function library
    """

    def get_driver_instance(self):
        return self._current_application()
    
    def check_mobile_number(self, phoneNumber, code):
        """
        Checks if the mobile number has a zero before appending the country code
        
        When you do the following:
        | ${phone}= | 082123456 | 27 |
        
        You will get the following:
        [2782123456]
        """
        first = phoneNumber[0]
        if first == '0':
            return code + phoneNumber[1:]
        else:
            return code + phoneNumber
        
    def set_checkbox(self, locator, checkedStatus):
        """
        Check the passed in checkbox in the settings menu by index.
        Passing in:
        | //*[@resource-id='checkbox'] | true |
        | //*[@name='checkbox'] | true |
        Will check the checkbox if it is unchecked. Passing false will uncheck the checkbox
        """      
                
        item = self._element_find(locator, True, True)
        if self._get_platform() == 'ios':
            val = item.get_attribute("value")
            self._info("Checkbox value is '%s'." % val)
            if val == 0 and checkedStatus == 'true':
                self._info("Clicking checkbox")
                item.click()
            elif val == 1 and checkedStatus == 'false':
                self._info("Clicking checkbox")
                item.click()
            else:
                self._info("iOS Checkbox already set to '%s'." % checkedStatus)
        elif self._get_platform() == 'android':
            val = item.get_attribute("checked")
            self._info("Checkbox value is '%s'." % val)
            if val == 'false' and checkedStatus == 'true':
                self._info("Clicking checkbox")
                item.click()
            elif val == 'true' and checkedStatus == 'false':
                self._info("Clicking checkbox")
                item.click()
            else:
                self._info("Android Checkbox already set to '%s'." % checkedStatus)
        
    def get_checkbox_status(self, locator):
        """
        Gets the checkbox status and returns the value.
        Passing in:
        
        | //*[@resource-id='checkbox'] |
        | //*[@name='checkbox'] |
        """  
        item = self._element_find(locator, True, True)
        if self._get_platform() == 'ios':
            val = item.get_attribute("value")
            self._info("iOS Checkbox value is '%s'." % val)
            if val == 1:
                var = 'true'
            else:
                var = 'false'
        elif self._get_platform() == 'android':
            val = item.get_attribute("checked")
            var = val
            self._info("Android Checkbox value is '%s'." % val)
        return var
    
    def between(self,locator,number):
        item = self._current_application().find_element_by_id(locator)
        
    def element_attribute_should_not_match(self, locator, attr_name, match_pattern, regexp=False):
        """Verify that an attribute of an element does not match the expected criteria.

        The element is identified by _locator_. See `introduction` for details
        about locating elements. If more than one element matches, the first element is selected.

        The _attr_name_ is the name of the attribute within the selected element.

        The _match_pattern_ is used for the matching, if the match_pattern is
        - boolean or 'True'/'true'/'False'/'false' String then a boolean match is applied
        - any other string is cause a string match

        The _regexp_ defines whether the string match is done using regular expressions (i.e. BuiltIn Library's
        [http://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Should%20Match%20Regexp|Should
        Match Regexp] or string pattern match (i.e. BuiltIn Library's
        [http://robotframework.org/robotframework/latest/libraries/BuiltIn.html#Should%20Match|Should
        Match])


        Examples:

        | Element Attribute Should Not Match | xpath = //*[contains(@text,'foo')] | text | *foobar |
        | Element Attribute Should Not Match | xpath = //*[contains(@text,'foo')] | text | f.*ar | regexp = True |
        | Element Attribute Should Not Match | xpath = //*[contains(@text,'foo')] | enabled | True |

        | 1. is a string pattern match i.e. the 'text' attribute should end with the string 'foobar'
        | 2. is a regular expression match i.e. the regexp 'f.*ar' should be within the 'text' attribute
        | 3. is a boolead match i.e. the 'enabled' attribute should be True

        """
        elements = self._element_find(locator, True, True)
        if len(elements) > 1:
            self._info("CAUTION: '%s' matched %s elements - using the first element only" % (locator, len(elements)))

        attr_value = elements[0].get_attribute(attr_name)

        # ignore regexp argument if matching boolean
        if isinstance(match_pattern, bool) or match_pattern.lower() == 'true' or match_pattern.lower() == 'false':
            if isinstance(match_pattern, bool):
                match_b = match_pattern
            else:
                match_b = ast.literal_eval(match_pattern.title())

            if isinstance(attr_value, bool):
                attr_b = attr_value
            else:
                attr_b = ast.literal_eval(attr_value.title())

            self._bi.should_not_be_equal(match_b, attr_b)

        elif regexp:
            self._bi.should_not_match_regexp(attr_value,match_pattern,
                                        msg="Element '%s' attribute '%s' should have been '%s' "
                                        "but it was '%s'." % (locator, attr_name, match_pattern, attr_value),
                                        values=False)
        else:
            self._bi.should_not_match(attr_value,match_pattern,
                                        msg="Element '%s' attribute '%s' should have been '%s' "
                                        "but it was '%s'." % (locator, attr_name, match_pattern, attr_value),
                                        values=False)
        #if expected != elements[0].get_attribute(attr_name):
        #    raise AssertionError("Element '%s' attribute '%s' should have been '%s' "
        #                         "but it was '%s'." % (locator, attr_name, expected, element.get_attribute(attr_name)))
        self._info("Element '%s' attribute '%s' is not '%s' " % (locator, attr_name, match_pattern))

    """
    def get_matching_xpath_count(self, xpath):
        Returns number of elements matching `xpath`

        One should not use the xpath= prefix for 'xpath'. XPath is assumed.

        Correct:
        | ${count} = | Get Matching Xpath Count | //div[@id='sales-pop']
        Incorrect:
        | ${count}  = | Get Matching Xpath Count | xpath=//div[@id='sales-pop']

        If you wish to assert the number of matching elements, use
        `Xpath Should Match X Times`.
    
        count = len(self._element_find("xpath=" + xpath, False, False))
        return str(count)
    """    
    def wait_until_element_enabled(self, locator, timeout=None, error=None):
        """Waits until element specified with `locator` is enabled on current page.

        Fails if `timeout` expires before the element is enabled. See
        `introduction` for more information about `timeout` and its
        default value.

        `error` can be used to override the default error message.

        See also `Wait Until Page Contains`,
        `Wait Until Page Does Not Contain`
        `Wait Until Page Does Not Contain Element`
        and BuiltIn keyword `Wait Until Keyword Succeeds`.
        """
        def check_enabled():
            enabled = self._element_find(locator, True, True).is_enabled()
            if enabled:
                return
            else:
                return error or "Element '%s' was not enabled in %s" % (locator, self._format_timeout(timeout))

        self._wait_until_no_error(timeout, check_enabled)
    
    def wait_until_element_disabled(self, locator, timeout=None, error=None):
        """Waits until element specified with `locator` is disabled on current page.

        Fails if `timeout` expires before the element is disabled. See
        `introduction` for more information about `timeout` and its
        default value.

        `error` can be used to override the default error message.

        See also `Wait Until Page Contains`,
        `Wait Until Page Does Not Contain`
        `Wait Until Page Does Not Contain Element`
        and BuiltIn keyword `Wait Until Keyword Succeeds`.
        """
        def check_enabled():
            enabled = self._element_find(locator, True, True).is_enabled()
            if not enabled:
                return
            else:
                return error or "Element '%s' was not disabled in %s" % (locator, self._format_timeout(timeout))

        self._wait_until_no_error(timeout, check_enabled)
        
    def convert_decimal(self, value,point):
        """Converts a given number to decimal with specified points 
        
        NOTE: values will be rounded
        
        Examples:
        | ${decimal}= | Convert Decimal | 1.995 | 2 | #Result is 2.00 |
        """
        i=int(point)
        TWOPLACES = Decimal(10) ** -i
        return Decimal(value).quantize(TWOPLACES)
        
    def click_keypad(self, text, platform):
        """Clicks on buttons matching text provided in sequence 
            
        Example:
        | Click Keypad | 2000 |
        """
        for c in text:
            if self._get_platform() == 'ios':
                locator = "xpath=//UIAButton[@name='" + c + "']"
            else:
                locator = "xpath=//*[@text='" + c + "']"
            ele = self._element_find(locator, True, True)
            self._info("Clicking '%s'." % ele)
            ele.click()
            
    def get_window_handles(self):
        """Returns a list of browser sessions accessible 
            
        Example:
        | ${handles}= | Get Window Handles |
        
         See also `Switch To Window`
        """
        mydriver = self.get_driver_instance()
        return mydriver.window_handles
    
    def switch_to_window(self, handle):
        """Switches to a given browser window handle 
            
        Example:
        | Switch To Window | CDwindow-9A17DC43-ED39-BF06-66B1-8C70FB70DF74 |
        
         See also `Switch To Window`
        """
        mydriver = self.get_driver_instance()
        mydriver.switch_to_window(handle)

    def switch_to_window_index(self, index):
        handles = self.get_window_handles()
        self.switch_to_window(handles[int(index)])
        
    def get_current_day_of_week(self,addDay=0):
        """Returns current day of week as integer (as per Tal api)
        
        1 = Monday
        7 = Sundays
            
        Example:
        
        Returns current day of week
        | ${dow}= | Get Current Day Of Week |
        
        
        Returns day of week in 2 days
        | ${dow}= | Get Current Day Of Week | 2 |
        
        
        
         See also `Switch To Window`
        """
        today = datetime.utcnow()
        addDay = int(addDay)
        modifiedDate = today + timedelta(days=addDay)
        self._info("Modified date is '%s'" % modifiedDate)
        return modifiedDate.weekday() + 1

    def scroll_to(self, locator):
        """Scrolls to a given element 
            
        Example:
        | Scroll To | id=Hello |
        | Scroll To | xpath=//*[@text='Hello'] |
        """
        element = self._element_find(locator, True, True)
        mydriver = self.get_driver_instance()
        self._info("Scrolling to Element '%s'" % locator)
        mydriver.execute_script('mobile: scroll', {"element": element, "toVisible": True})
    
    def element_should_not_be_visible(self, locator):
        """Checks that a given element is NOT visible 
            
        Example:
        | Element Should Not Be Visible | id=Hello |
        """
        if self._check_visibility(locator):
            raise AssertionError("Element '%s' is visible ." % locator)
        else:
            self._info("Element '%s' is not visible ." % locator)
    
    def element_should_be_visible(self, locator):
        """Checks that a given element is visible 
            
        Example:
        | Element Should Be Visible | id=Hello |
        """
        if not self._check_visibility(locator):
            raise AssertionError("Element '%s' is not visible ." % locator)
        else:
            self._info("Element '%s' is visible ." % locator)            
    
    def accept_alert(self,alertText):
        mydriver = self.get_driver_instance()
        self._info("Accepting alert with text '%s'" % alertText)
        mydriver.execute_script('mobile: alert', {'action': 'accept', 'buttonLabel': alertText});
    
    def _check_visibility(self, locator):
            visible = self._is_visible(locator)
            if visible:
                return True
            else:
                return False
            
    def set_implicitly_wait(self,timeout):
        mydriver = self.get_driver_instance()
        self._info("Setting implicit wait timeout")
        self._current_application().implicitly_wait(timeout)
    
    def text_should_not_be_visible(self, text, exact_match=False, loglevel='INFO'):
        """Verifies that element identified with text is not visible.

        """
    def text_should_not_be_visible(self, text, exact_match=False, loglevel='INFO'):
        """Verifies that element identified with text is not visible.

        """
        if self._get_platform() == 'ios':
            if exact_match:
                _xpath = u'//*[@value="{}" or @label="{}"]'.format(text, text)
            else:
                _xpath = u'//*[contains(@label,"{}") or contains(@value, "{}")]'.format(text, text)
        elif self._get_platform() == 'android':
            if exact_match:
                _xpath = u'//*[@{}="{}"]'.format('text', text)
            else:
                _xpath = u'//*[contains(@{},"{}")]'.format('text', text)
        
        if self._is_element_present(_xpath):
            self.log_source(loglevel)
            raise AssertionError("Text '%s' should not be visible "
                                 "but was" % text)
        else:
            self._info("Text '%s' not visible" % text)
    
    def remove_char_from_string(self,text,index):
        """Removes character from string at index
        """
        ListS = list(text)
        ListS.pop(int(index))
        returnString = "".join(ListS)
        return returnString