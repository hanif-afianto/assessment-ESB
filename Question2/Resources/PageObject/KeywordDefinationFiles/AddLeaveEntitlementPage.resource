*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py
Variables  ../TestData/TestData.py

*** Keywords ***
Fill In Entitlement Form
    [Arguments]  ${LeaveType}
    Fill Employee Name
    Sleep  5 s
    Select Employee
    Fill Leave Type  ${LeaveType}

Fill Employee Name
    ${TEXT_USERNAME}  Get Text  ${USERNAME_TEXT}
    Input Text  ${EMPLOYEE_NAME}  ${TEXT_USERNAME}

Fill Leave Type
    [Arguments]  ${LeaveType}
    Select From List By Value  ${LEAVE_TYPE}  ${LeaveType}

Select Employee
    Click Element  ${SELECT_EMPLOYEE}

Fill Entitlement
    Input Text  ${ENTITLEMENT_VALUE}  10

CLick Save Button
    Click Button  ${SAVE_BUTTON}


