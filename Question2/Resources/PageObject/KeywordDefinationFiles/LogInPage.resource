*** Settings ***
Library  SeleniumLibrary
Resource  ../KeywordDefinationFiles/LandingPage.resource
Variables  ../Locator/Locators.py

*** Keywords ***
Fill In Login Credentials
    [Arguments]  ${username}  ${password}
    Fill Username  ${username}
    Fill Password  ${password}

Fill Username
    [Arguments]  ${Username}
    Input Text  ${LOGIN_USER_INPUT}  ${Username}

Fill Password
    [Arguments]  ${Password}
    Input Text  ${LOGIN_PASSWORD_INPUT}  ${Password}

Click Login
     Click Button  ${LOGIN_BUTTON}

Login to Account
    [Arguments]  ${userame}  ${password}
    Fill In Login Credentials  ${username}  ${password}
    Click Login
    Sleep  5 s