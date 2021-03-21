*** Settings ***
Documentation   Feature: Login Mobile
Resource  ../Resources/Common.robot
Resource  ../Resources/PageObject/LoginPageMobile.robot
Suite Setup    Set Library Search Order    SeleniumLibrary
Test Setup      Begin Mobile Test
Test Teardown   End Mobile Test

*** Test Cases ***
Login not authorized
    [Tags]    SmokeTest
    Given User types "Lucas" in email
    When User types "123" in password
    And User clicks on Login
    Then System should show an alert "Error"
    
    
    
