*** Settings ***
Resource  ../Resources/PageObject/KeywordDefinationFiles/Common.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/LogInPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/HomePage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/LeaveViewPage.resource
Resource  ../Resources/PageObject/KeywordDefinationFiles/AddLeaveEntitlementPage.resource
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Test Cases ***
Apply Leave
    LandingPage.Navigate to
    LogInPage.Login to Account  ${UserName}  ${Password}
    HomePage.Navigate to viewLeaveList Page
    LeaveViewPage.Navigate to addLeaveEntitlement Page
    AddLeaveEntitlementPage.Fill In Entitlement Form  ${LeaveType}
    AddLeaveEntitlementPage.CLick Save Button