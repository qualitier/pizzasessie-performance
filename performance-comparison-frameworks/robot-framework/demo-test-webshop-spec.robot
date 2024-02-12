*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Test
    Open Browser    http://localhost:3000/    firefox
    Page Should Contain Element    xpath=//img[@alt='Drill']
    Click Element    xpath=//*[@data-testid='profile-link']
    Input Text    xpath=//*[@data-testid='username-input']    admin
    Input Text    xpath=//*[@data-testid='password-input']    a
    Click Element    xpath=//*[@data-testid='login-submit']
    Page Should Contain Element    xpath=//h1[contains(text(), 'You are logged in')]
    Input Text    xpath=//*[@data-testid='user-details-address']    Laan 2
    Input Text    xpath=//*[@data-testid='user-details-postal-code']    1234AC
    Click Element    xpath=//button[@id='user-details-submit']
    Click Element    xpath=//*[@data-testid='products-link']
    Input Text    xpath=//*[@data-testid='product-name-input']    Scissors
    Input Text    xpath=//*[@data-testid='product-quantity-input']    10
    Click Element    xpath=//*[@data-testid='add-product-submit']
    Click Element    xpath=//*[@data-testid='page-button-2']
    Click Element    xpath=//*[@data-testid='about-link']
    Input Text    xpath=//*[@data-testid='user-score-input']    12
    Click Element    xpath=//*[@data-testid='submit-user-score']
    Page Should Contain Element    xpath=//*[@data-testid='result-score' and contains(text(), 'B')]
    Click Element    xpath=//*[@data-testid='home-link']
    Close Browser