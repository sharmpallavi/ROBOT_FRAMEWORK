*** Settings ***
library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
AddItemToCart
    Open browser  https://demo.nopcommerce.com/  Chrome
    maximize browser window
    set selenium speed  2s
    Click element  xpath://ul/li/a[text()="Log in"]
    #scroll till specific element
    scroll element into view  xpath://button[@class="button-1 login-button"]
    click element  xpath://button[@class="button-1 register-button"]
    scroll element into view  xpath://input[@id="FirstName"]
    #radio button takes 2 arguments, here I am giving name and value
    select radio button  Gender  F
    input text  xpath://input[@id="FirstName"]  Pallavi
    input text  xpath://input[@id="LastName"]  Sharma
    scroll element into view  xpath://input[@id="Email"]
    #drop down is handled by label, input, value
    # by label
    #by index
    # by label
    select from list by label  DateOfBirthDay  19
    select from list by label  DateOfBirthMonth  May
    select from list by label  DateOfBirthYear  1994
    input text  xpath://input[@id="Email"]  pallavisharma1905@gmail.com
    scroll element into view  xpath://input[@name="Password"]
    input text  xpath://input[@name="Password"]  Pall@1234
    input text  xpath://input[@name="ConfirmPassword"]  Pall@1234
    click button  xpath://button[@name="register-button"]
    click button  xpath://a[@class="button-1 register-continue-button"]


*** Keywords ***