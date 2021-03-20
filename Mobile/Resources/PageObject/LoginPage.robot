*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary


*** Variables ***
${LOGIN_LINK}         id=com.twitter.android:id/detail_text

*** Keywords ***
User goes to Login Page
    Click Button   ${LOGIN_LINK}
