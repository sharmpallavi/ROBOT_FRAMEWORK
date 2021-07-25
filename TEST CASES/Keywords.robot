*** Settings ***
library  SeleniumLibrary
Variables  ../TEST CASES/PageElements.py

*** Keywords ***
Openmybrowser
    Open browser  ${url}  ${browser}
    sleep  2s
    Maximize browser window

ExpandAccountOption
    click element  ${ExpandAccount}

ClickOnAccount
    click element  ${ClickOnAccount}
    sleep  3s

InputEmail
    [Arguments]  ${email}
    input text  ${EnterEmail}  ${email}
    sleep  3s

ClickOnContinue
    click button  ${Continue}
    sleep  3s

InputPassword
    [Arguments]      ${password}
    input text  ${EnterPassword}  ${password}
    sleep  3s

ClickSignIn
    click button  ${SignIn}

Closemybrowser
    close browser



