*** Settings ***
library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Capture element screenshot
Capture page screenshot
    Open Browser  https://play.google.com/store  chrome
    Sleep  1s
    #Capture element screenshot  xpath://*[@id="gbq1"]/div/a/img  D:/ROBOT_FRAMEWORK/logo.png
    #Capture page screenshot  D:/ROBOT_FRAMEWORK/logo1.png

    Capture element screenshot  xpath://*[@id="gbq1"]/div/a/img  logo.png
    Capture page screenshot  logo1.png

    Close browser


