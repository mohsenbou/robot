*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      chrome
${url}          https://demo.automationtesting.in/Windows.html
${url1}          www.google.com

*** Test Cases ***
NavigationTest
    Open Browser    ${url}  ${browser}
    ${location}=  Get Location
    Log To Console    ${location}
    Go To	https://robocon.io			# Second window navigates to robocon site.
    Go To	https://github.com/robotframework/			# Third windows goes to robot framework github site.
    ${location}=  Get Location
    Log To Console    ${location}

    Go Back

    Sleep    2
    Close All Browsers

NewTest
    Open Browser	https://robotframework.org	${BROWSER}	alias=BrowserA	# BrowserA with first window is opened.
    Execute Javascript	window.open()			# In BrowserA second window is opened.
    Switch Window	locator=NEW			# Switched to second window in BrowserA
    Go To	https://robocon.io			# Second window navigates to robocon site.
    Execute Javascript	window.open()			# In BrowserA third window is opened.
    ${handle}	Switch Window	locator=NEW		# Switched to third window in BrowserA
    Go To	https://github.com/robotframework/			# Third windows goes to robot framework github site.
    Open Browser	https://github.com	${BROWSER}	alias=BrowserB	# BrowserB with first windows is opened.
    ${location}	Get Location			# ${location} is: https://www.github.com
    Switch Window	${handle}	browser=BrowserA		# BrowserA second windows is selected.
    ${location}	Get Location			# ${location} = https://robocon.io/
    @{locations 1}	Get Locations			# By default, lists locations under the currectly active browser (BrowserA).
    @{locations 2}	Get Locations	browser=ALL		# By using browser=ALL argument keyword list all locations from all browsers.


*** Keywords ***
GoTo

GoForward

GoBack