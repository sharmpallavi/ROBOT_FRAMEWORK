*** Settings ***
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
Multiplebrowsers
Get title
    Open Browser    ${var1}  Chrome
    Sleep  1s

    Open Browser    https://www.google.com/  chrome
    Sleep  1s

    switch browser  1
    ${title}=  get title
    log to console  ${title}

    switch browser  2
    ${title1}=  get title
    log to console  ${title1}

    sleep   3s

    Close All browsers


