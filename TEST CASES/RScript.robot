*** Settings ***
library  SeleniumLibrary
Resource  ../TEST CASES/Samplefile.robot
Test setup  Openmybrowser
Test tardown  Closemybrowser

*** Test Cases ***
LoginTest
    ClickOnAccount
    InputEmail  ${email}
    ClickOnContinue
    InputPassword  ${password}
    ClickSignIn





