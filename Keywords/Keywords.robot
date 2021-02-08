*** Settings ***
Library     Selenium2Library


Resource   ../Resources/Resources.robot

*** Keywords ***
Open Website
    [Arguments]  ${URL}  ${Browser}
    [Documentation]
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Validation
    [Arguments]  ${Validation1}
    Page Should Contain element  ${Validation1}


Log In
    [Arguments]  ${LogIn_TxtUserName}  ${UserName_Data}  ${LogIn_TxtPassword}  ${Password_Data}  ${LogIn_Button}
    Input text  ${LogIn_TxtUserName}  ${UserName_Data}
    Input text  ${LogIn_TxtPassword}  ${Password_Data}
    Click element  ${LogIn_Button}


Log In without email and password
     [Arguments]  ${LogIn_Button}
     Click element  ${LogIn_Button}


Log In without email
     [Arguments]  ${PasswordField}  ${Password}  ${LogIn_Button}
     input text  ${PasswordField}  ${Password}
     Click element  ${LogIn_Button}



Log In without password
     [Arguments]  ${EmailField}  ${Email}  ${LogIn_Button}
     input text  ${EmailField}  ${Email}
     Click element  ${LogIn_Button}


Navigate to Lost Password page
    [Arguments]  ${LostPassword_Btn}
    Click element  ${LostPassword_Btn}

Recover access using invalid email
    [Arguments]  ${RecAcc_Email}  ${Invalid_Email}
    input text  ${RecAcc_Email}  ${Invalid_Email}