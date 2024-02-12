*** Settings ***
Library  Selenium2Library
Test Setup  Open Browser  ${BROWSER}
Test Teardown  Close Browser

#TEST THIS !!!

*** Variables ***
${HOMEPAGE}  http://192.168.1.88/3000
${BROWSER}  Chrome
${about_page}  //*[@data-testid='about-link']
${value_input}  //*[@data-testid='user-score-input']
${submit_button}  //*[@data-testid='submit-user-score']
${result}  //*[@data-testid='result-score']


*** Keywords ***
Open the browser
    Open browser  ${HOMEPAGE}  ${BROWSER}


Go to the about page
    Click Element    locator  

Insert value
    [Arguments]  ${value}
    Input Text  ${value_input}  ${value}
    Click Button    ${submit_button}

Vallidate response message  ${message}
    Should Be Equal As Strings    first    second


*** Test Cases ***
Ensure correct score for Input
    [Template]     Result of ${user_value} should be ${score_message}
    -1    "invalid score"
    0     "A"
    9     "A"
    10    "B"
    19    "B"
    20    "C"
    29    "C"
    30    "D"
    39    "D"
    40    "E"
    49    "E"
    50    "invalid score"