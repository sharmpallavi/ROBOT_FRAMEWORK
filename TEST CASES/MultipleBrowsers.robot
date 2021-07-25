*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
Go to
Go back
Get Location
    Open Browser  ${var1}  Chrome
    Sleep  1s
    ${loc}=  get location
    log to console  ${loc}

    go to   https://www.google.com/
    Sleep  1s
    ${loc}=  get location
    log to console  ${loc}

    go back
    Sleep  1s
    ${loc}=  get location
    log to console  ${loc}

    Close browser


