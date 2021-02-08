*** Settings ***
Library     Selenium2Library


Resource   ../Resources/Resources.robot

Documentation     This Log in scenario will test the log in page when the user input invalid email

*** Test Cases ***

Open Website
    Open Website  ${Website}  ${Browser_Chrome}  #${Browser_Firefox}  ${Browser_IE}

    Log In  ${Login_txtUsername}  ${Invalid_Email}  ${Login_txtPassword}  ${Sample_Password}  ${LogIn_btn}
    Validation  ${Validation2}