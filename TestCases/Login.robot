*** Settings ***
library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Login
    Open browser  https://demo.nopcommerce.com/  Chrome
    Maximize browser window
    set selenium speed  1s
    Click element  xpath://ul/li/a[text()="Log in"]
    input text  xpath://input[@id="Email"]  pallavisharma1905@gmail.com
    input text  xpath://input[@id="Password"]  Pall@1234
    click button  xpath://button[@class="button-1 login-button"]


*** Keywords ***