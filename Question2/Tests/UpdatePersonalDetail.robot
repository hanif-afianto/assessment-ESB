*** Settings ***
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/LogInPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.resource
Variables  ../Resources/PageObject/Locator/Locators.py
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Update Personal Detail
    [Tags]  Login and Logout
    LandingPage.Navigate to
    LogInPage.Login to Account  ${UserName}  ${Password}
    HomePage.Navigate to My Info Page
    Input Text  ${FIRST_NAME}  "HANIF TEST"
    Click Button  ${SAVE_PERSONAL_DETAIL_BUTTON}