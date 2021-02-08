*** Settings ***




*** Variables ***
${Login_txtUsername}    xpath=//*[@id="tab-login"]/form/div[1]/input    #Username Field on Login Page
${Login_txtPassword}    name=password    #Password Field on Login Page
${RecAcc_Email}  xpath=//*[@id="tab-recovery-ask"]/form/div/input


${Validation1}  xpath=//*[@id="tab-login"]/form/div[1]/span
${Validation2}  xpath=//*[@id="tab-login"]/form/div[1]/span
${Validation3}  xpath=//*[@id="tab-login"]/form/div[2]/span
${Validation4}  xpath=//*[@id="tab-recovery-ask"]/form/div/span
