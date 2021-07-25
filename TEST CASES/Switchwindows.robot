*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Switchwindow
    Open Browser  https://www.amazon.in/  Chrome
    Maximize browser window
    Sleep  1s
    input text  xpath://*[@id="twotabsearchtextbox"]  phones
    Click button    xpath://*[@id="nav-search-submit-button"]
    sleep  5s
    Click element   xpath://span[contains(text(), "OnePlus Nord 5G (Blue Marble, 12GB RAM, 256GB Storage)")]
    sleep   5s
    select window  https://www.amazon.in/OnePlus-Nord-Marble-256GB-Storage/dp/B0869855B8/ref=sr_1_1_sspa?dchild=1&keywords=phones&qid=1618334800&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEySThCU0JINk9EQzc1JmVuY3J5cHRlZElkPUEwODkyNDc5MVVLOVY5WjY1UDc0NyZlbmNyeXB0ZWRBZElkPUEwODEzNTUxMzdUMzhITlpaNkkyUSZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU=
    ${title1}=  get title
    log to console  ${title1}


    Close browser


