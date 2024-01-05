*** Settings ***
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/LogInPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.resource
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Valid users should be able to login to account and Logout
    [Tags]  Login and Logout
    LandingPage.Navigate to
    LogInPage.Login to Account  ${UserName}  ${Password}
    HomePage.Logout Account