*** Settings ***
Documentation   Feature: Login Mobile
Resource  ../Resources/Common.robot
Resource  ../Resources/PageObject/LoginPage.robot
Suite Setup    Set Library Search Order    SeleniumLibrary
Test Setup      Begin Mobile Test
Test Teardown   End Mobile Test

*** Test Cases ***
Login without password
    [Tags]    SmokeTest
    Given User goes to Login Page
