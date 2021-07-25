*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Volda
    Open Browser  https://www.amazon.in/  Chrome
    Sleep  1s
    Click link  xpath://*[@id="nav-link-accountList"]
    input text  xpath://*[@id="ap_email"]  7597734375
    click button  xpath://*[@id="continue"]
    sleep   1s
    input text  xpath://input[@Class="a-input-text a-span12 auth-autofocus auth-required-field"]  9460033029a@
    sleep   1s
    click button    xpath://*[@id="signInSubmit"]