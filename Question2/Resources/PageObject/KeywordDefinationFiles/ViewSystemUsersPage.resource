*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py

*** Keywords ***
Click Job Menu
    Click Element  ${JOB_MENU}

Click Job Titles Menu
    Click Element  ${JOB_TITLES_MENU}

Navigate to viewLeaveList Page
    Click Job Menu
    Click Job Titles Menu
    Sleep  3 s