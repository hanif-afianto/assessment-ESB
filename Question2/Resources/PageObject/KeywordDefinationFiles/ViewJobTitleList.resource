*** Settings ***
Library  SeleniumLibrary
Variables  ../Locator/Locators.py

*** Keywords ***
Navigate to Job Title Form
    Click Element  ${ADD_BUTTON}

Fill In Job Title Form
    Input Text  ${JOB_TITLE}  "HANIF TEST"
    Click Button  ${SAVE_BUTTON}