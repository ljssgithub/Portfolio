*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    requests
Library    AppiumLibrary

*** Keywords ***
Begin Mobile Test
    ${desired_capabilities}=    Create Dictionary
    Set to Dictionary    ${desired_capabilities}    os_version    9.0
    Set to Dictionary    ${desired_capabilities}    device    Google Pixel 3 XL
    Set to Dictionary    ${desired_capabilities}    app    bs://bb1f78b600e830db7b321d5bc78dbd7d3cb5d53b
    Set to Dictionary    ${desired_capabilities}    browserstack.appium_version    1.9.1
    Set to Dictionary    ${desired_capabilities}    automationName    Appium
    ${executor}=    Evaluate          str('https://@hub-cloud.browserstack.com/wd/hub')
    Create Webdriver    Remote      desired_capabilities=${desired_capabilities}    command_executor=${executor}

End Mobile Test
    Quit Application


