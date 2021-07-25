*** Settings ***
Documentation  Using selenim2Library to test ATM Scheduler
library  SeleniumLibrary

*** Variables ***
${var1}=    https://www.amazon.in/s?k=phones&ref=nb_sb_noss

*** Test Cases ***
MouseOperations
    #Right click action/open contxt menu
    #Open Browser  ${var1}  Chrome
    #Sleep  1s
    #open context menu   xpath://*[@id="search"]div[1]/div/div[1]/div/span[3]/div[2]/div[2]/div/span/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    #sleep  3s

    #double click action
    #Open Browser    https://testautomationpractice.blogspot.com  chrome
    #Maximize Browser Window
    #sleep   1s
    #double click element    xpath://*[@id="HTML10"]/div[1]/button

    #Drag and Drop
    Open Browser    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html  chrome
    Maximize Browser Window
    sleep   1s
    drag and drop   id:box1  id:box101
    sleep   5s
    close browser



