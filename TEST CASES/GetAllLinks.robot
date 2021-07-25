*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
GetAllLinks
    Open Browser  ${var1}  Chrome
    Sleep  1s
    ${AllLinksCount}=   get element count   xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    create list
    FOR     ${i}    IN RANGE    1   ${AllLinksCount}
    ${LinkText}=    get text  xpath:(//a)[${i}]
    log to console  ${LinkText}
    END



