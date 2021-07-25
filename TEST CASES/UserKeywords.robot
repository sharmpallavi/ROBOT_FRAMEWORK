*** Settings ***
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss
${browser}=  chrome

*** Test Cases ***
UserKeywords
-without arguments
-with arguments
-with arguments and return value
    ${PageTitle}=   Launchbrowser  ${var1}  ${browser}
    log to console  ${PageTitle}
    Sleep  1s

*** Keywords ***
Launchbrowser
    [Arguments]  ${appurl}  ${appbrowser}
    Open Browser  ${appurl}  ${appbrowser}
    Maximize browser window
    ${title}=   get title
    [Return]  ${title}



