# Robotframework-seleniumlibrary-
Robot Framework
Robot Framework is an open source test automation framework for acceptance testing and acceptance test-driven development. It follows different test case styles − keyword-driven, behaviour-driven and data-driven for writing test cases. Robot Framework provides support for external libraries, tools which are open source and can be used for automation. The most popular library used is Selenium Library used for web development & UI testing.
Test cases are written using keyword style in a tabular format. You can use any text editor or Robot Integrated Development Environment (RIDE) for writing test cases.
Robot framework works fine on all the Operating Systems available. The framework is built on Python and runs on Jython (JVM) and IronPython (.NET).
Robot Framework Features
In this section, we will look at the different features offered by Robot.
Tabular format for test cases
Robot framework comes with a simple tabular format where the test cases are written using keywords. It is easy for a new developer to understand and write test cases.
Keywords
Robot framework comes with built-in keywords available with robot framework, keywords available from the libraries like Selenium Library (open browser, close browser, maximize browser, etc.). We can also create user-defined keywords, which are a combination of other user-defined keywords or built-in or library keywords. We can also pass arguments to those keywords, which make the user-defined keywords like functions that can be reused.
Variables
Robot framework supports variables – scalar, list and dict. Variables in robot framework are easy to use and are of great help while writing complex test cases.
Libraries
Robot framework has support for a lot of external libraries like SeleniumLibrary, Database Library, FTP Library and http library. SeleniumLibrary is mostly used as it helps to interact with the browsers and helps with web application and UI testing. Robot framework also has its own built-in libraries for strings, date, numbers etc.
Resources
Robot framework also allows the import of robot files with keywords externally to be used with test cases. Resources are very easy to use and are of great help when we need to use some keywords already written for other test projects.
Data driven test cases
Robot framework supports keyword driven style test cases and data driven style. Data driven works with high-level keywords used as a template to the test suite and the test cases are used to share data with the high-level keyword defined in the template. It makes the work very easy for testing UI with different inputs.
Test Case Tagging
Robot framework allows to tag test-cases so that we can either run the tags test-cases or skip the tagged testcases. Tagging helps when we want to run only a group of test cases or skip them.
Reports and Logs
Robot framework provides all the details of the test suite, test case execution in the form of reports and logs. All the execution details of the test case are available in the log file. The details like whether the test case has failed or passed, time taken for execution, steps followed to run the test case are provided.
RIDE
This editor available with Robot framework helps in writing and running test cases. The editor is very easy to install and use. RIDE makes life easy for writing test cases by providing framework specific code completion, syntax highlighting, etc. Creation of project, test suite, test case, keywords, variables, importing library, executing, tagging the test case is easily done in the editor. Robot framework also provides plugins for eclipse, sublime, Textmate, Pycharm that has support for robot test cases.
Robot Framework Advantages
Robot framework is open source, so anyone who wants to try out can easily do so.
It is very easy to install and helps in creating and executing test cases. Any new comer can easily understand and does not need any high level knowledge of testing to get started with robot framework.
It supports keyword-driven, behavior-driven and data-driven style of writing test cases.
It is a good support for external libraries. Most used is Selenium Library, which is easy to install and use in robot frameworks.
Robot Framework Limitations
Robot lacks support for if-else, nested loops, which are required when the code gets complex.
Conclusion
Robot Framework is an open source test automation framework for acceptance testing and acceptance test-driven development. The test cases in Robot Framework are based on keywords written in tabular format, which makes it clear and readable, and conveys the right information about the intention of the test case. For example, to open a browser, the keyword used is “Open Browser”.
Robot Framework - Environment Setup

Robot framework is built using python. In this chapter, we will learn how to set up Robot Framework. To work with Robot Framework, we need to install the following −
Install Python
Install the Intellibot Plugin in PyCharm for Robot framework
Install Robot Framework
Install Selenium 
Install Robotframework
Install drivers( chrome drivers, edge etc)
Install Python
To install python, go to python official site − https://www.python.org/downloads/ and download the latest version or the prior version of python as per your operating system (Windows, Linux/Unix, Mac, and OS X) you are going to use.
Here is the screenshot of the python download site −

The latest version available as per release dates are as follows −

Before you download python, it is recommended you check your system if python is already present by running the following command in the command line −
Windows Installation
python --version


If we get the version of python as output then, we have python installed in our system. Otherwise, you will get a display as shown above.
Here, we will download python version 2.7 as it is compatible to the windows 8 we are using right now. Once downloaded, install python on your system by double-clicking on .exe python download. Follow the installation steps to install Python on your system. Once installed, to make python available globally, we need to add the path to environment variables in windows as follows −
Setting path for Windows
Right-click on My Computer icon and select properties. Click on Advanced System setting and the following screen will be displayed.

Click on Environment Variables button highlighted above and it will show you the screen as follows −

Select the Variable Path and click the Edit button.

Get the path where python is installed and add the same to Variable value at the end as shown above.
Once this is done, you can check if python is installed from any path or directory as shown below −



Install Robot Framework
We will now use pip – python package manager to install the robot framework and the command for it is as follows −
Command
pip install robotframework



Once the installation is done, you can check the version of robot framework installed as shown below −
Command
robot --version



Install robotframework-seleniumlibrary






Install drivers:
If i want to run my robot framework we also need web drivers so install web drivers and put your drivers in C:\Users\shivam.sharma\AppData\Local\Programs\Python\Python39\Scripts this location .

Install The Intellibot Plugin
Once you have installed the PyCharm IDE, you need to install the Intellibot plugin for Robot framework. Go to File -> Settings -> Plugins -> Search for Intellibot in the plugins marketplace -> Install the plugin -> Restart the IDE.


Should You Use Robot Framework or Selenium WebDriver, or Both?
Many developers & testers have the confusion whether they should use Robot framework or Selenium WebDriver in itself would suffice. There is a huge difference between both of them – Robot is a test framework that makes use of test libraries (standard & external) to execute tests, whereas Selenium is only a WebDriver/library that requires the support of test automation runners in order to perform test execution.
Robot framework can be used to perform different types of automated tests, whether these tests are about UI testing or API level testing. The SeleniumLibrary module which was described above enables Selenium framework support in Robot.
The SeleniumLibrary interfaces with the Selenium WebDriver, which in turn executes the commands on the respective browser under test. The interaction between the SeleniumLibrary and Selenium WebDriver is abstracted from the developer of the test script.
So yes, you need both Selenium WebDriver and the Robot framework.
Run Your First Robot Framework Script With Selenium And Python
Test cases using the Robot framework are created using Keywords. As a part of the SeleniumLibrary, a number of Keywords can be used for Test Suite implementation. Before using the Keywords, you need to first import the SeleniumLibrary in the Robot script (in the *** Settings *** section), this can be done using Library SeleniumLibrary or Library Selenium2Library.
Here are some of the most prominently used Keywords from the SeleniumLibrary.

However, the choice of keywords would depend on your test suite or test case. You can have a look at all the Keywords supported by SeleniumLibrary in the official documentation of SeleniumLibrary Keywords.
This is the first .robot file for running tests using a robot framework.
*** Settings ***
Library     SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
 
*** Test Cases ***
LoginTest
   open browser  ${url}  ${browser}
   click link  xpath://a[@class='ico-login']
   input text  id:Email  xyz@gmail.com
   input text  id:Password  password1234
   click element  xpath://button[contains(text(),'Log in')]
   close browser
 
*** Keywords ***
 
 

=================================
Radio Button and Checkbox
=================================
Test Checkbox:
Test-1
Step 1: Go to https://rahulshettyacademy.com/AutomationPractice/
Step 2: Validate selected and unselected checkboxes
Step 3: Select/Unselect Checkboxes
Step 4: Again Validate selected and unselected checkboxes
Test_Checkbox.robot script:
 
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
 
 
 
 
 
 
 
*** Test Cases ***
TestCheckBox
   open browser    ${url}  ${browser}
   # Select checkbox
   click element   xpath://div[@id='checkbox-example']/fieldset/label[1]/input
   # we can also use directly 'Select Checkbox  locator' robot keyword for this
   Select Checkbox  xpath://div[@id='checkbox-example']/fieldset/label[2]/input
   # we can also select check box using 'Select Checkbox  name_value'
   Select Checkbox  checkBoxOption3    # Here checkBoxOption3 is the value of name attribute
   sleep  2
   # Unselecting checkbox
   Unselect Checkbox   checkBoxOption3
   sleep  3
   close browser
Test Radio:
Test-2
Step 1: Go to https://rahulshettyacademy.com/AutomationPractice/
Step 2: Check Radio buttons are not selected
Step 3: Select the radio1 Radio button and validate
Step 4: Select the ‘Female’ Radio button and validate
TestRedio.robot script
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
TestRedioButton
   open browser    ${url}  ${browser}
   # Select radio button
   click element   xpath://div[@id='radio-btn-example']/fieldset/label[1]/input
   # we can also use directly 'Select Radio Button  name_atribute  value_atribute' robot keyword for this
   Select Radio Button  radioButton    radio2
   sleep   5
   close browser

Test Dropdown and List box
=================================
Drop down:

Test-1
Step 1: Go to https://rahulshettyacademy.com/AutomationPractice/
Step 2: Select ‘Option 1’ from the drop-down and validate
Step 3;: Select ‘Option 2’ from the drop-down and validate
Step 4: Select ‘Option 3’ From the drop down.

TestDropdown.robot script:

*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
TesTDropDown
   open browser    ${url}  ${browser}
   maximize browser window
   # Select dropdown item by it's label
   Select From List By Label   dropdown-class-example  Option1
   sleep   2
   # Select drop down using it's index
   Select From List By Index   dropdown-class-example  2   #Here 2 is index number of dropdown element
   sleep   2
   # Select dropdown item using it's value attribute
   Select From List By Value   dropdown-class-example  option3
   sleep   2
   close browser
*** Keywords ***

List Box:

*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://qavalidation.com/demo/
*** Test Cases ***
TestListBox
   open browser    ${url}  ${browser}
   maximize browser window
   Select From List By Index   tools   1
   sleep   2
   Select From List By Value   tools   white
   sleep   2
   Select From List By Value   tools   jmeter
   sleep   3
   close browser
*** Keywords ***
=================================
  Wait /Speed/ Timeout/ Implicit wait 
=================================
Sleep
Selenium Speed
Selenium Timeout
Implicit wait
=================================
1. Sleep:
------------------------------------------------
The SLEEP function delays the execution of a message flow instance for a defined period of time, and returns a Boolean value to indicate whether the sleep completed without interruption.


Example of using sleep in robot framework:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
TestSpeed
   open browser    ${url}  ${browser}
   maximize browser window
   sleep   3
   select radio button  Gender  M
   input text  name:FirstName  Shivam
   input text  name:LastName   Sharma
   input text  name:Email  shivamsharmamdh@gmail.com
   input text  name:Password   Shivam@0105
   input text  name:ConfirmPassword   Shivam@0105

=================================
2. Selenium Speed:
------------------------------------------------

we will understand how to set Selenium Timeout and Speed in Robot Framework. We will understand keywords available in Robot Selenium library to Selenium execution speed and timeouts.
Some of the keywords that I will explain in this tutorial are:
* Get Selenium Timeout – Gets the timeout that is used by various keywords
* Set Selenium Timeout – Sets the timeout that is used by various keywords
* Get Selenium Speed – Gets the delay that is waited after each Selenium command
* Set Selenium Speed – Sets the delay that is waited after each Selenium command
 
 
a) Set Selenium Speed:
Arguments
value<timedelta>
Documentation
Sets the delay that is waited after each Selenium command.
The value can be given as a number that is considered to be seconds or as a human-readable string like 1 second. The previous value is returned and can be used to restore the original value later if needed.
See the Selenium Speed section above for more information.
Example:
Set Selenium Speed
0.5 seconds

 
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
TestSpeed
   open browser    ${url}  ${browser}
   maximize browser window
   # set selenium speed is take a specify time for each and every statement
   set selenium speed  2 seconds
   select radio button  Gender  M
   input text  name:FirstName  Shivam
   input text  name:LastName   Sharma
   input text  name:Email  shivamsharmamdh@gmail.com
   input text  name:Password   Shivam@0105
   input text  name:ConfirmPassword   Shivam@0105

b) Get Selenium Speed
Documentation
Gets the delay that is waited after each Selenium command.
The value is returned as a human-readable string like 1 second.
Example:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
TestSpeed
   ${speed}=   get selenium speed
   log to console  ${speed} #Delay time 0 sec
   open browser    ${url}  ${browser}
   maximize browser window
   # set selenium speed is take a specify time for each and every statement
   set selenium speed  1 seconds
   select radio button  Gender  M
   input text  name:FirstName  Shivam
   input text  name:LastName   Sharma
   input text  name:Email  shivamsharmamdh@gmail.com
   input text  name:Password   Shivam@0105
   input text  name:ConfirmPassword   Shivam@0105
   ${speed}=   get selenium speed
   log to console  ${speed} #delay time 1 sec
   close browser

=================================
Selenium timeout:
=================================
Set Selenium Timeout
Arguments
value<timedelta>
Documentation
Sets the timeout that is used by various keywords.
The value can be given as a number that is considered to be seconds or as a human-readable string like 1 second. The previous value is returned and can be used to restore the original value later if needed.
See the Timeout section above for more information.
Example:

${orig timeout} =
Set Selenium Timeout
15 seconds


Open page that loads slowly




Set Selenium Timeout
${orig timeout}



Example:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
Timeout Test
   open browser    ${url}  ${browser}
   maximize browser window
   set selenium timeout    10 seconds
   wait until page contains    Registeration
   select radio button  Gender  M
   input text  name:FirstName  Shivam
   input text  name:LastName   Sharma
   input text  name:Email  shivamsharmamdh@gmail.com
   input text  name:Password   Shivam@0105
   input text  name:ConfirmPassword   Shivam@0105
   close browser
=================================
Set Selenium Implicit Wait
Arguments
Value	<timedelta>
Documentation
Sets the implicit wait value used by Selenium.
The value can be given as a number that is considered to be seconds or as a human-readable string like 1 second. The previous value is returned and can be used to restore the original value later if needed.
This keyword sets the implicit wait for all opened browsers. Use Set Browser Implicit Wait to set it only to the current browser.
See the Implicit wait section above for more information.
 
Example:
 
${orig wait} =
Set Selenium Implicit Wait
10 seconds

 
Perform AJAX call that is slow






Set Selenium Implicit Wait
${orig wait}



*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demowebshop.tricentis.com/register
*** Test Cases ***
Implicit wait test
   open browser    ${url}  ${browser}
   maximize browser window
   ${implicittime}=    get selenium implicit wait
   log to console  ${implicittime}
   set selenium implicit wait  10 seconds
 
   ${implicittime}=    get selenium implicit wait
   log to console  ${implicittime}
   select radio button  Gender  M
   input text  name:FirstName1  Shivam
   input text  name:LastName   Sharma
   input text  name:Email  shivamsharmamdh@gmail.com
   input text  name:Password   Shivam@0105
   input text  name:ConfirmPassword   Shivam@0105
   close browser
=================================
Close Browser
Documentation
Closes the current browser. 
And if we have to open more than one browser in a single test and want to use a closed browser for closing all open browser windows, we can't close all browsers with the help of close browser. In this case it will close only the last open browser.
 
 
 
 
Example:
*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url1}  https://demowebshop.tricentis.com/register
${url2}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Close Browser Test
   Open Browser    ${url1}  ${browser}
   Maximize Browser Window
 
   Open Browser    ${url2}  ${browser}
   Maximize Browser Window
   # using close browser it will close only last one browser
   Close Browser
=================================
Close All Browsers
 
Documentation
Closes all open browsers and resets the browser cache.
After this keyword, new indexes returned from Open Browser keyword are reset to 1.
This keyword should be used in test or suite teardown to make sure all browsers are closed.
Example:
*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url1}  https://demowebshop.tricentis.com/register
${url2}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Close all Browser Test
   Open Browser    ${url1}  ${browser}
   Maximize Browser Window
 
   Open Browser    ${url2}  ${browser}
   Maximize Browser Window
   Close All Browsers
====================================
Handle Alert
Arguments
action=	ACCEPT	<str>
timeout=	None		<timedelta><None>
Documentation
Handles the current alert and returns its message.
By default, the alert is accepted, but this can be controlled with the action argument that supports the following case-insensitive values:
ACCEPT: Accept the alert i.e. press Ok. Default.
DISMISS: Dismiss the alert i.e. press Cancel.
LEAVE: Leave the alert open.
The timeout argument specifies how long to wait for the alert to appear. If it is not given, the global default timeout is used instead.
Examples:
Handle Alert
 
 
# Accept alert.
Handle Alert
action=DISMISS
 
# Dismiss alert.
Handle Alert
timeout=10 s
 
# Use custom timeout and accept alert.
Handle Alert
DISMISS
1 min
# Use custom timeout and dismiss alert.
${message} =
Handle Alert
 
# Accept alert and get its message.
${message} =
Handle Alert
LEAVE
# Leave alert open and get its message.

New in SeleniumLibrary 3.0.
Example program:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Test Alert
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Click Element    xpath://button[contains(text(),'Click Me')]
   Sleep    5
   Handle Alert    accept
   Close Browser
 

====================================
Select Frame
Arguments
Locator	<WebElement><str>
Documentation
Sets frame identified by locator as the current frame.
See the Locating elements section for details about the locator syntax.
Works both with frames and iframes. Use Unselect Frame to cancel the frame selection and return to the main frame.
Example:
Select Frame
top-frame
# Select frame with id or name 'top-frame'
Click Link
example
# Click link 'example' in the selected frame
Unselect Frame
 
# Back to main frame.
Select Frame
//iframe[@name='xxx']
# Select frame using xpath

*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
*** Test Cases ***
Test Frame
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Select Frame    packageListFrame  # we can specify id,name,xpath etc.
   Click Link    org.openqa.selenium
   Unselect Frame
   Sleep    2
   Select Frame    packageFrame
   Click Link    Alert
   Unselect Frame
   Sleep    2
   Select Frame    classFrame
   Click Link    Help
   Sleep    2
   Close Browser
====================================
Handle tabbed and windows:
Switch Window
Arguments
Locator	=MAIN	<list><str>
Timeout	=None	<str><None>
Browser	=CURRENT	<str>
Documentation
Switches to browser window matching locator.
If the window is found, all subsequent commands use the selected window, until this keyword is used again. If the window is not found, this keyword fails. The previous windows handle is returned and can be used to switch back to it later.
Notice that alerts should be handled with Handle Alert or other alert related keywords.
The locator can be specified using different strategies somewhat similarly as when locating elements on pages.
By default, the locator is matched against the window handle, name, title, and URL. Matching is done in that order and the first matching window is selected.
The locator can specify an explicit strategy by using the format strategy:value (recommended) or strategy=value. Supported strategies are name, title, and url. These matches windows using their name, title, or URL, respectively. Additionally, default can be used to explicitly use the default strategy explained above.
If the locator is NEW (case-insensitive), the latest opened window is selected. It is an error if this is the same as the current window.
If the locator is MAIN (default, case-insensitive), the main window is selected.
If the locator is CURRENT (case-insensitive), nothing is done. This effectively just returns the current window handle.
If the locator is not a string, it is expected to be a list of window handles to exclude. Such a list of excluded windows can be got from Get Window Handles before doing an action that opens a new window.
The timeout is used to specify how long keyword will poll to select the new window. The timeout is new in SeleniumLibrary 3.2.
Example:
Click Link
popup1
 
# Open new window
Switch Window
example
 
# Select window using default strategy
Title Should Be
Pop-up 1
 
 
Click Button
popup2
 
# Open another window
${handle} =
Switch Window
NEW
# Select latest opened window
Title Should Be
Pop-up 2
 
 
Switch Window
${handle}
 
# Select window using handle
Title Should Be
Pop-up 1
 
 
Switch Window
MAIN
 
# Select the main window
Title Should Be
Main
 
 
${excludes} =
Get Window Handles
 
# Get list of current windows
Click Link
popup3
 
# Open one more window
Switch Window
${excludes}
 
# Select window using excludes
Title Should Be
Pop-up 3
 
 

The browser argument allows with index_or_alias to implicitly switch to a specific browser when switching to a window. See Switch Browser
If the browser is CURRENT (case-insensitive), no other browser is selected.
NOTE:
The strategy:value syntax is only supported by SeleniumLibrary 3.0 and newer.
Prior to SeleniumLibrary 3.0 matching windows by name, title and URL was case-insensitive.
Earlier versions supported aliases None, null and the empty string for selecting the main window, and alias self for selecting the current window. Support for these aliases was removed in SeleniumLibrary 3.2.
Example Program:
*** Settings ***
Library  SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html
*** Test Cases ***
Test Tabbed window
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Click Button    xpath://div[@id='Tabbed']/a/button
   Sleep    6
   Switch Window   Frames & windows
   Sleep    3
   Close Browser
====================================
 
 
Switch Browser
Arguments
Index_or_alias		<str>
Documentation
Switches between active browsers using index_or_alias.
Indices are returned by the Open Browser keyword and aliases can be given to it explicitly. Indices start from 1.
Example:
Open Browser
http://google.com
ff


Location Should Be
http://google.com




Open Browser
http://yahoo.com
ie
alias=second
Location Should Be
http://yahoo.com




Switch Browser
1
# index


Page Should Contain
I'm feeling lucky




Switch Browser
second
# alias


Page Should Contain
More Yahoo!




Close All Browsers







Above example expects that there was no other open browsers when opening the first one because it used index 1 when switching to it later. If you are not sure about that, you can store the index into a variable as below.
 
 
${index} =
Open Browser
http://google.com
# Do something ...




Switch Browser
${index}



Example program:
*** Settings ***
Library    SeleniumLibrary
 
*** Variables ***
${browser}  chrome
${url1}  https://demowebshop.tricentis.com/register
${url2}  https://rahulshettyacademy.com/AutomationPractice/
*** Test Cases ***
Switch to multiple browsers
   Open Browser    ${url1}  ${browser}
   Maximize Browser Window
   Sleep    2
   Open Browser    ${url2}  ${browser}
   Maximize Browser Window
   Switch Browser    1
   ${title1}=   Get Title
   Log To Console    ${title1}
   Switch Browser    2
   ${title2}=   Get Title
   Log To Console    ${title2}
   Close All Browsers
====================================
Browser related Keywords
====================================
Get Location
Returns the current browser window URL.
Example:
*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Navigate Location
   Open Browser    https://www.google.com/     chrome
   ${location}=    Get Location
   Log To Console    ${location}
====================================
 
Get Locations
Arguments
browser=	CURRENT	<str>
Documentation
Returns and logs URLs of all windows of the selected browser.
Browser Scope:
The browser argument specifies the browser that shall return its windows information.
browser can be index_or_alias like in Switch Browser.
If the browser is CURRENT (default, case-insensitive) the currently active browser is selected.
If the browser is ALL (case-insensitive) the window information of all windows of all opened browsers are returned.
Example Program:
*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.automationtesting.in/Windows.html
*** Test Cases ***
Test Tabbed window
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Click Button    xpath://div[@id='Tabbed']/a/button
   Sleep    6
   Switch Window   Frames & windows
   Sleep    3
   ${loc}=  Get Locations
   Log To Console    ${loc}
   #Print .['https://demo.automationtesting.in/Windows.html','https://www.selenium.dev/'] to console log

   Close Browser
====================================
Go Back
Documentation
Simulates the user clicking the back button on their browser.
====================================
Go To
Arguments
url
Documentation
Navigates the current browser window to the provided url.

Example program for go back and go to:
*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Navigate Location
   Open Browser    https://www.google.com/     chrome
   ${location}=    Get Location
   Log To Console    ${location}
   Sleep    3
  
   # it will open a new url
   Go To    https://rahulshettyacademy.com/
   ${loc}=    Get Location
   Log To Console    ${loc}
   Sleep    3
  
   # it will again back to previous browser window
   Go Back
   ${loc1}=    Get Location
   Log To Console    ${loc1}
   Sleep    3
   Close Browser
====================================
How Can I set or Change an HTML Attribute value using Robot Framework:

We can simply change or set any attribute value using javascript executor in robot framework:

Execute Javascript
Arguments
* code<WebElement><str>
Documentation
Executes the given JavaScript code with possible arguments.
code may be divided into multiple cells in the test data and code may contain multiple lines of code and arguments. In that case, the JavaScript code parts are concatenated together without adding spaces and optional arguments are separated from code.
If code is a path to an existing file, the JavaScript to execute will be read from that file. Forward slashes work as a path separator on all operating systems.
The JavaScript executes in the context of the currently selected frame or window as the body of an anonymous function. Use window to refer to the window of your application and document to refer to the document object of the current frame or window, e.g. document.getElementById('example').
This keyword returns whatever the executed JavaScript code returns. Return values are converted to the appropriate Python types.
Starting from SeleniumLibrary 3.2 it is possible to provide JavaScript arguments as part of code argument. The JavaScript code and arguments must be separated with JAVASCRIPT and ARGUMENTS markers and must be used exactly with this format. If the Javascript code is first, then the JAVASCRIPT marker is optional. The order of JAVASCRIPT and ARGUMENTS markers can be swapped, but if ARGUMENTS is the first marker, then JAVASCRIPT marker is mandatory. It is only allowed to use JAVASCRIPT and ARGUMENTS markers only one time in the code argument.
Examples:
Execute JavaScript
window.myFunc('arg1', 'arg2')






Execute JavaScript
${CURDIR}/js_to_execute.js






Execute JavaScript
alert(arguments[0]);
ARGUMENTS
123


Execute JavaScript
ARGUMENTS
123
JAVASCRIPT
alert(arguments[0]);


Example:
*** Settings ***
Library     SeleniumLibrary
Library    XML
*** Variables ***
${browser}  chrome
${url}  https://app.keka.com/Account/KekaLogin?returnUrl=%2F
*** Test Cases ***
Capture Screenshot
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # In this bellow executer find the element which id is subdomainname
   # and set or change its value attribute value and assign new value which is msys
   Execute JavaScript          document.getElementById('subdomainname').value = "msys";
   Sleep    5
   Close Browser

Befor Set the attribute value:

After execution of program:

====================================

Capture element and page screenshot

=================================
Capture Element Screenshot
Arguments
locator<WebElement><None><str>filename
=selenium-element-screenshot-{index}.png
<str>
Documentation
Captures a screenshot from the element identified by locator and embeds it into log file.
See Capture Page Screenshot for details about filename argument. See the Locating elements section for details about the locator syntax.
An absolute path to the created element screenshot is returned.
Support for capturing the screenshot from an element has limited support among browser vendors. Please check the browser vendor driver documentation does the browser support capturing a screenshot from an element.
New in SeleniumLibrary 3.3. Support for EMBED is new in SeleniumLibrary 4.2.
Examples:
Capture Element Screenshot
id:image_id


Capture Element Screenshot
id:image_id
${OUTPUTDIR}/id_image_id-1.png
Capture Element Screenshot
id:image_id
EMBED

 
Example Program:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://app.keka.com/Account/KekaLogin?returnUrl=%2F
*** Test Cases ***
Capture element screenshot test
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Execute JavaScript          document.getElementById('subdomainname').value = "msys";
   Capture Element Screenshot    id:subdomainname
   Input Text    id:email    xyz@gmail.com
   Capture Element Screenshot    id:email
   Input Text    id:password    Password123
   Capture Element Screenshot    id:password
   Sleep    5

   Close Browser
====================================
Capture Page Screenshot
Arguments
Filename	=	selenium-screenshot-{index}.png	<str>
Documentation
Takes a screenshot of the current page and embeds it into a log file.
filename argument specifies the name of the file to write the screenshot into. The directory where screenshots are saved can be set when importing the library or by using the Set Screenshot Directory keyword. If the directory is not configured, screenshots are saved to the same directory where Robot Framework's log file is written.
If filename equals to EMBED (case insensitive), then screenshot is embedded as Base64 image to the log.html. In this case file is not created in the filesystem.
Starting from SeleniumLibrary 1.8, if filename contains marker {index}, it will be automatically replaced with an unique running index, preventing files to be overwritten. Indices start from 1, and how they are represented can be customized using Python's format string syntax.
An absolute path to the created screenshot file is returned or if filename equals to EMBED, word EMBED is returned.
Support for EMBED is new in SeleniumLibrary 4.2
Examples:
Capture Page Screenshot


File Should Exist
${OUTPUTDIR}/selenium-screenshot-1.png
${path} =
Capture Page Screenshot
File Should Exist
${OUTPUTDIR}/selenium-screenshot-2.png
File Should Exist
${path}
Capture Page Screenshot
custom_name.png
File Should Exist
${OUTPUTDIR}/custom_name.png
Capture Page Screenshot
custom_with_index_{index}.png
File Should Exist
${OUTPUTDIR}/custom_with_index_1.png
Capture Page Screenshot
formatted_index_{index:03}.png
File Should Exist
${OUTPUTDIR}/formatted_index_001.png
Capture Page Screenshot
EMBED
File Should Not Exist
EMBED

Example:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://app.keka.com/Account/KekaLogin?returnUrl=%2F
*** Test Cases ***
Capture page screenshot test
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Execute JavaScript          document.getElementById('subdomainname').value = "msys";
   Input Text    id:email   xyz@gmail.com
   Input Text    id:password    Password123
   Sleep    5
   Capture Page Screenshot
   Close Browser
=================================
Mouse Action in Robot
=================================
 
Right Click Action:
Open Context Menu
Arguments
Locator	<WebElement><str>
Documentation
Opens the context menu on the element identified by locator.
Example program:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/simple_context_menu.html
*** Test Cases ***
Right click Action
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # Open Context Menu will be perform right click action on the page or page element
   Open Context Menu    xpath://span[contains(text(),'right click me')]
   Sleep    3
   Close Browser
=================================
Double Click Element
Arguments
locator<WebElement><str>
Documentation
Double clicks the element identified by locator.
See the Locating elements section for details about the locator syntax.
Example Program:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/simple_context_menu.html
*** Test Cases ***
Double Click Action
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # Open Context Menu will be perform right click action on the page or page element
   Double Click Element    xpath://button[contains(text(),'Double-Click Me To See Alert')]
   Sleep    3
   Close Browser
====================================
Drag And Drop
Arguments
Locator   <WebElement><str>
Target	<WebElement><str>
Documentation
Drags the element identified by the locator into the target element.
The locator argument is the locator of the dragged element and the target is the locator of the target. See the Locating elements section for details about the locator syntax.
Example:
Drag And Drop
css:div#element
css:div.target

Example Program:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
*** Test Cases ***
Drag And Drop Action
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # It will perform Drag and Drop action on the page or page element
   Drag And Drop    css:#box3    css:#box103
   Sleep    4
   Close Browser

====================================
User Defined Keywords
====================================
1)  User define keyword without Argument:
Example:
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword without Arguments
   LaunchTheBrowser
   Input Text    name:userName    Shivam
   Input Text    name:password    Shivam@0105

*** Keywords ***
LaunchTheBrowser
   Open Browser    ${url}  ${browser}
   Maximize Browser Window

====================================
2) User Define keyword with Argument:
Example:
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword with Arguments
   LaunchTheBrowser    ${url}  ${browser}
   Input Text    name:userName    Shivam
   Input Text    name:password    Shivam@0105

*** Keywords ***
LaunchTheBrowser
   [Arguments]     ${appurl}  ${appbrowser}
   Open Browser    ${appurl}  ${appbrowser}
   Maximize Browser Window
====================================
3)	User define keyword with Argument and return value:

Example:
*** Settings ***
Library    SeleniumLibrary
Resource    Resource/resource.robot
# Here Resource/resource.robot is exactly path of resource.robot file
*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
User Defined Keyword with Arguments
   ${pagetitle}=   LaunchTheBrowser    ${url}  ${browser}
   Log To Console    ${pagetitle}
   Log    ${pagetitle}
   Input Text    name:userName    Shivam
   Input Text    name:password    Shivam@0105
   Close Browser

*** Keywords ***
LaunchTheBrowser
   [Arguments]     ${appurl}  ${appbrowser}
   Open Browser    ${appurl}  ${appbrowser}
   Maximize Browser Window
   ${title}=   Get Title
   [Return]    ${title}
============================================
JavaScript Executer
============================================
1) Scroll Down Page using pixel:
We can perform scroll down and scroll up pages using a javascript executor with the height of the page.

Example Program:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scroll Down The Page
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # Scroll down the page using pixel
   Execute Javascript  window.scrollTo(0,1500)
   Sleep    5
   Close Browser
============================================
2) Scroll Element Into View
With the help of Scroll Element Into View
Method we can scroll down the page up to up to the element locator.
Arguments
locator<WebElement><str>
Documentation
Scrolls the element identified by locator into view.
See the Locating elements section for details about the locator syntax.

Example program:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scroll Down The Page
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
 # Scroll down the page using specific element view
   Scroll Element Into View    xpath://td[contains(text(),'India')]
   Sleep    5
   Close Browser
====================================
3)	Scroll the page up to height of the page and vise versa:
We can scroll down or scroll up the page from up to bottom or bottom to up:
Example Program:
*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scroll Down The Page
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   # Scroll down the page up to bottom
   Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
   Sleep    4
    # Scroll down the page up to bottom
   Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)
   Sleep    5
   Close Browser
====================================
For Loop In Robot Framework
====================================
1) For Loop In Range:
To loop through a set of code a specified number of times, we can use the range() function,
The range() function returns a sequence of numbers, starting from 0 by default, and increments by 1 (by default), and ends at a specified number.
Example Program:
*** Test Cases ***
For Loop in Range
   FOR    ${i}    IN RANGE    1    10
       Log To Console    ${i}

   END

====================================
2)  For Loop In Iterable:
You can loop through the Iterable items by using a for loop.

Example Program:
*** Test Cases ***
For loop IN
   FOR    ${element}    IN    @{1,2,3,4,5,6,7,8}
       Log To Console    ${element}

   END
====================================

3) For Loop Using List Items:
You can loop through the list items by using a for loop

Example:
*** Test Cases ***
For loop using List Items
   @{items}    Create List  1  2  3  4  5  6  7
   # if we want to print list item in new line then we need to give 2 space b/w elements
   FOR    ${element}    IN    @{items}
       Log To Console   ${element}

   END
====================================
4) Exit For Loop If
Arguments
condition
Documentation
Stops executing the enclosing FOR loop if the condition is true.

NOTE: Robot Framework 5.0 added support for native BREAK statement and for inline IF, and that combination should be used instead of this keyword. For example, Exit For Loop If usage in the example below could be replaced with
IF    '${var}' == 'EXIT'    BREAK

This keyword will eventually be deprecated and removed.

A wrapper for Exit For Loop to exit a FOR loop based on the given condition. The condition is evaluated using the same semantics as with the Should Be True keyword.
Example:

FOR
${var}
IN
@{VALUES}


Exit For Loop If
'${var}' == 'EXIT'




Do Something
${var}


END







Example:
*** Test Cases ***
For loop using List Items
   @{items}    Create List  1  2  3  4  5  6  7
   # if we want to print list item in new line then we need to give 2 space b/w elements
   FOR    ${element}    IN    @{items}
       Log To Console   ${element}
   Exit For Loop If    ${element}==4

   END
====================================

 
 
 
How to Count & Extract Link Texts in Robot Framework | Selenium with Python
====================================
Get Element Count
Arguments
Locator	<WebElement><str>
Documentation
Returns the number of elements matching locator.
If you wish to assert the number of matching elements, use Page Should Contain Element with limit argument. Keyword will always return an integer.
Example:

${count} =
Get Element Count
name:div_name
Should Be True
${count} > 2




Get Text
Arguments
Locator	<WebElement> or <str>
Documentation
Returns the text value of the element identified by locator.
See the Locating elements section for details about the locator syntax.

Example Program:
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.guru99.com/test/newtours/

*** Test Cases ***
Count All Links
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   ${allLinksCount}=   Get Element Count   xpath://a
   Log To Console    ${allLinksCount}
   ${listItems}    Create List
   FOR    ${i}    IN RANGE    1    ${allLinksCount}+1
       ${linkText}=    Get Text    xpath:(//a)[${i}]
       Log To Console    ${linkText}

   END
   Close Browser

====================================

Working with HTML Table
====================================

Count number of row in table
Count the number of columns in the table.
Get Data from the table.
Validate the table.
====================================
1. Count the number of row and column and get data in the table:
Example Program:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Count All table row and column
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
   ${column}=  Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
#    ${row}= Get Element Count    xpath://table[@name='BookTable']/tbody/tr
#    ${col}= Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th
   Log To Console    ${rows}
   Log To Console    ${column}
   ${elemtext}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
   Log To Console    ${elemtext}
   Close Browser
====================================
2. Verify Row and Column element:
Table Column Should Contain
Arguments
locator<WebElement><None><str>column<int>expected<str>loglevel
=TRACE
<str>
Documentation
Verifies table column contains text expected.
The table is located using the locator argument and its column found using column. See the Locating elements section for details about the locator syntax.
Column indexes start from 1. It is possible to refer to columns from the end by using negative indexes so that -1 is the last column, -2 is the second last, and so on.
If a table contains cells that span multiple columns, those merged cells count as a single column.
See Page Should Contain Element for an explanation about the loglevel argument.


Table Row Should Contain
Arguments
Locator	<WebElement> or <None> or <str>
Row		<int>
Expected	<str>
Loglevel	=TRACE	<str>
Documentation
Verifies that table row contains text expected.
The table is located using the locator argument and its column found using column. See the Locating elements section for details about the locator syntax.
Row indexes start from 1. It is possible to refer to rows from the end by using negative indexes so that -1 is the last row, -2 is the second last, and so on.
If a table contains cells that span multiple rows, a match only occurs for the uppermost row of those merged cells.
See Page Should Contain Element for an explanation about the loglevel argument.



Example program:
 *** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Verify table row and column
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Table Column Should Contain    xpath://table[@name='BookTable']    2    Author
   Table Row Should Contain    xpath://table[@name='BookTable']    5    Master In Selenium
   Close Browser
====================================
3. Verify Cell and Header:

Table Cell Should Contain
Arguments
Locator	<WebElement> or <None> or <str>
Row		<int>
Column	<int>
Expected	<str>
loglevel=	TRACE	<str>
Documentation
Verifies table cell contains text expected.
See Get Table Cell that this keyword uses internally for an explanation about accepted arguments.
Table Header Should Contain
Arguments
locator<WebElement><None><str>expected<str>loglevel
=TRACE
<str>
Documentation
Verifies table header contains text expected.
Any <th> element anywhere in the table is considered to be part of the header.
The table is located using the locator argument. See the Locating elements section for details about the locator syntax.
See Page Should Contain Element for an explanation about the loglevel argument.

Example:
*** Settings ***
Library     SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/

*** Test Cases ***
Table Cell and header verification
   Open Browser    ${url}  ${browser}
   Maximize Browser Window
   Table Cell Should Contain    xpath://table[@name='BookTable']    5    2    Mukesh
   Table Header Should Contain    xpath://table[@name='BookTable']    BookName
   Close Browser
=================================
  Data Driven Testing In Robot Framework
=================================
What is Data-Driven Testing?
Data-Driven Testing is a test design and execution method where the test scripts read data from sources such as XLS, XML and CSV files rather than utilizing hard-coded values. This strategy allows the automation engineers to implement a single test script that can execute tests for all the test data in the table.
 
Specify test data in the script.
Read test data from excel file(.xlsx).
Read test data from CSV File(.csv).
=================================
1. Specify test data in the script:

