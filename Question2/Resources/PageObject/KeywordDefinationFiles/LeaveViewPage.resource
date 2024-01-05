*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py

*** Keywords ***
Click Entitlements Menu
    Click Element  ${ENTITLEMENTS_MENU}

Click Add Entitlements Menu
    Click Element  ${ADD_ENTITLEMENTS_MENU}

Navigate to addLeaveEntitlement Page
    Click Entitlements Menu
    Click Add Entitlements Menu
    Sleep  5 s