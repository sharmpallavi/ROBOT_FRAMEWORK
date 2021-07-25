*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
ForLoop
    #FOR   ${i}    IN RANGE    1   10
    #log to console    ${i}
    #END

    #FOR     ${i}    IN  1 2 3 4 5 6 7 8
    #log to console  ${i}
    #END

    #FOR     ${i}    IN  1  2  3  4  5  6  7  8
    #log to console  ${i}
    #END

    #@{items}    create list     1   2   3   4   5
    #FOR     ${i}    IN  @{items}
    #log to console  ${i}
    #END

    #FOR     ${i}     IN  Pallavi  Abhishek  Ritika  Ankit
    #log to console  ${i}
    #END

    #@{namelist}     create list     Pallavi  Abhishek  Ritika  Ankit
    #FOR     ${i}    IN      @{namelist}
    #log to console  ${i}
    #END

    @{list}     create list     1   2   3   4   5
    FOR     ${i}    IN      @{list}
    log to console  ${i}
    Exit for loop if    ${i}==3
    END





