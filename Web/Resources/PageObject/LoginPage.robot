*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${USERNAME}                  lucassantos32@gmail.com
${LOCATOR_PASSWORD}          id=session_password
${ALERT_MESSAGE}             Insira sua senha.
${DELAY}                     5s
${LOCATOR_EMAIL}             id=session_key

*** Keywords ***
Given User goes to Login Page
    Wait Until Page Contains Element   ${LOCATOR_PASSWORD}   timeout=10
User types "${User}" in email
    Input Text   ${LOCATOR_EMAIL}    ${User}
User clicks on Enter
    Click Button   class=sign-in-form__submit-button
System should show an alert "Insert a password"
    Element Text Should Be   class=alert-content   ${ALERT_MESSAGE}