*** Settings ***
Library  SeleniumLibrary
Variables  ../TestData/TestData.py

*** Keywords ***
Navigate to
    Go to  ${BASE_URL}
    Sleep  5 s