*** Settings ***
library  SeleniumLibrary
Resource   ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${siteurl}  https://www.amazon.in/
${email}  7597734375
${Password}  9460033029a@
${Search}  Phones


*** Test Cases ***
LoginTest
    OpenMyBrowser   ${siteurl}  ${Browser}
    sleep   3s
    ClickSigninPage
    sleep   1s
    log to console  ${email}
    EnterMobile    ${email}
    sleep   1s
    Clickbtn
    sleep   1s
    log to console  ${Password}
    EnterPassword   ${Password}
    sleep   1s
    Clicksignin
    sleep   10s
    SearchItem  ${Search}
    sleep   1s
    Clicksearchbutton
    sleep   1s
    OpenLink
    sleep   10s
    AddToCart
    sleep   3s
    closemybrowser


