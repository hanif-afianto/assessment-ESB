*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py

*** Keywords ***
Click User Image
    Click Element  ${USER_IMAGE}

Click Logout
    Click Element  ${LOGOUT_BUTTON}

Navigate to viewLeaveList Page
    Click Element  ${LEAVE_MENU}
    Sleep  3 s

Navigate to ViewSystemUsersPage Page
    Click Element  ${ADMIN_MENU}
    Sleep  3 s

Navigate to My Info Page
    Click Element  ${MY_INFO_MENU}
    Sleep  3 s

Logout Account
    Click User Image
    Click Logout