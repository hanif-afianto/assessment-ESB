*** Settings ***
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/LogInPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/ViewSystemUsersPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/ViewJobTitleList.resource
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Add Job Title
    LandingPage.Navigate to
    LogInPage.Login to Account  ${UserName}  ${Password}
    HomePage.Navigate to ViewSystemUsersPage Page
    ViewSystemUsersPage.Navigate to viewLeaveList Page
    ViewJobTitleList.Navigate to Job Title Form
    ViewJobTitleList.Fill In Job Title Form