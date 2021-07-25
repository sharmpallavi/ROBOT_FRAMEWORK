*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
Scrolling
    Open Browser  ${var1}  Chrome
    Maximize browser window
    Sleep  1s
    #execute javascript  window.scrollTo(0,1500)  scroll till particular number vertically
    #scroll element into view    xpath://*[@id="search"]/div[1]/div/div[1]/div/span[3]/div[2]/div[16]/div/span/div/div/div[2]/div[1]/div/div/span/a/div/img  scroll till particular element
    execute javascript  window.scrollTo(0,document.body.scrollHeight)
    sleep   3s
    close browser



