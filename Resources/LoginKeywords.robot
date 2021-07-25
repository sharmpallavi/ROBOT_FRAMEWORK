*** Settings ***
library  SeleniumLibrary
Variables  ../PageObjects/Locators.py


*** Keywords ***
OpenMyBrowser
    [Arguments]     ${siteurl}  ${Browser}
    open browser    ${siteurl}  ${Browser}
    Maximize browser window

ClickSigninPage
    Click element   ${Click_Account}

EnterMobile
    [Arguments]     ${email}
    input text      ${Number}  ${email}

Clickbtn
    Click button    ${Click_Continue}

EnterPassword
    [Arguments]      ${password}
    input text       ${Spassword}  ${password}

Clicksignin
    Click element   ${Click_signin}

SearchItem
    [Arguments]     ${Search}
    input text      ${Search_item}  ${Search}

Clicksearchbutton
    Click element   ${Click_search_button}

OpenLink
    click element   ${Open_Link}

AddToCart
    click element    ${AddItemToCart}

closemybrowser
    close All browsers


