*** Settings ***
Library     Selenium2Library


Resource   ../Resources/Resources.robot

Documentation     This Log in scenario will test the log in page when the user didn't input email and password upon log in in the website

*** Test Cases ***

Open Website
    Open Website  ${Website}  ${Browser_Chrome}  #${Browser_Firefox}  ${Browser_IE}

    Log In without email and password  ${LogIn_btn}
    Validation  ${Validation1}