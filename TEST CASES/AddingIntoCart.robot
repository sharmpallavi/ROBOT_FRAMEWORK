*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Volda
    Open Browser  https://www.amazon.in/  Chrome
    Sleep  1s
    input text  xpath://*[@id="twotabsearchtextbox"]  phones
    Click button    xpath://*[@id="nav-search-submit-button"]
    sleep  5s
    Click element   xpath://span[contains(text(), "OnePlus Nord 5G (Blue Marble, 12GB RAM, 256GB Storage)")]
    sleep   3s

