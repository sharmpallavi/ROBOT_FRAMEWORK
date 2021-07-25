*** Settings ***
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/
${browser}=  chrome

*** Test Cases ***
SeleniumSpeed
    open browser    ${var1}  ${browser}
    Maximize browser window
    ${timeout}=   get selenium timeout
    log to console  ${timeout}
    set selenium timeout    10s
    wait until page contains    Best Sellers
    Click link  xpath://*[@id="nav-link-accountList"]
    input text  xpath://*[@id="ap_email"]  7597734375
    click button  xpath://*[@id="continue"]
    input text  xpath://input[@Class="a-input-text a-span12 auth-autofocus auth-required-field"]  9460033029a@
    click button    xpath://*[@id="signInSubmit"]

*** Keywords ***



