*** Settings ***
Documentation   Feature: Login Page
Resource  ../Resources/Common.robot
Resource  ../Resources/PageObject/LoginPage.robot
Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Login without password
    [Tags]    SmokeTest
    Given User goes to Login Page
    When User types "lucassantos32@gmail.com" in email
    And User clicks on Enter
    Then System should show an alert "Insert a password"

