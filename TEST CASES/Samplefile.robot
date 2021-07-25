*** Settings ***
library  SeleniumLibrary
Resource  ../TEST CASES/Keywords.robot

*** Variables ***
${browser}  Chrome
${url}  https://www.amazon.com/
${email}  7597734375
${password}  9460033029a@

*** Test Cases ***
LoginTest
    Openmybrowser
    ClickOnAccount
    InputEmail  ${email}
    ClickOnContinue
    InputPassword  ${password}
    ClickSignIn
    sleep  5s
    Closemybrowser



