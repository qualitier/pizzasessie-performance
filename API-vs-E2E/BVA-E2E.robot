*** Settings ***
Library  SeleniumLibrary
Test Setup  Open browser  ${HOMEPAGE}  ${BROWSER}
Test Template  Correct score for input Template
Documentation  Ensure robotframework and seleniumlibrary are installed
...            `robot BVA-E2E.robot`
...            execution time 58.31 seconds

*** Variables ***
${HOMEPAGE}  http://localhost:3000
${BROWSER}  Chrome
${about_page}  //*[@data-testid='about-link']
${value_input}  //*[@data-testid='user-score-input']
${submit_button}  //*[@data-testid='submit-user-score']
${result}  //*[@data-testid='result-score']


*** Keywords ***
Go to about page
    Click Element    ${about_page}  

Insert value
    [Arguments]  ${value}
    Input Text  ${value_input}  ${value}
    Click Button    ${submit_button}

Validate response message  
    [Arguments]  ${actual_message}  ${expected_message}
    Should Be Equal As Strings    ${actual_message}    ${expected_message}

Correct score for input Template
    [Arguments]  ${input}  ${expected_message}
    Go to about page
    Insert Value  ${input}
    ${result_message}=  Get Text  ${result}
    Validate response message  ${result_message}  ${expected_message}

*** Test Cases ***        input       expected_message
Result invalid score 1    -1          invalid score
Result A 1                0           A
Result A 2                9           A
Result B 1                10          B
Result B 2                19          B
Result C 1                20          C
Result C 2                29          C
Result D 1                30          D
Result D 2                39          D
Result E 1                40          E
Result E 2                49          E
Result invalid score 2    50          invalid score