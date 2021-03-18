*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${URL}         https://br.linkedin.com
${BSUser}
${AccessKey}
${RemoteUrl}   http://${BSUser}:${AccessKey}@hub.browserstack.com/wd/hub
${BROWSER}     Chrome
${OS}           Windows
${OS_VERSION}   10
${BROWSER_VERSION}   60.0

*** Keywords ***
Begin Web Test
    Open Browser   url=${URL}   browser=${BROWSER}   remote_url=${RemoteURL}   desired_capabilities=browser:${BROWSER},browser_version:${BROWSER_VERSION},os:${OS},os_version:${OS_VERSION}
    Maximize Browser Window

End Web Test
    Close Browser