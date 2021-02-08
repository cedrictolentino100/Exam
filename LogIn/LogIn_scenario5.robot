*** Settings ***
Library     Selenium2Library


Resource   ../Resources/Resources.robot

Documentation     This Log in scenario will test the log in page when the user input invalid email in lost password page

*** Test Cases ***

Open Website
    Open Website  ${Website}  ${Browser_Chrome}  #${Browser_Firefox}  ${Browser_IE}

    Navigate to Lost Password page  ${LostPassword_btn}
    sleep  2
    click element  xpath=/html/body/div/div[2]/div
    click element  ${RecAcc_Email}
    sleep  2
    input text  ${RecAcc_Email}  ${Invalid_Email}
    #Recover access using invalid email  ${RecAcc_Email}  ${Invalid_Email}
    Validation  ${Validation4}