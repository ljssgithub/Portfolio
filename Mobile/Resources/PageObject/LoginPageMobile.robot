*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary


*** Variables ***
${LOGIN}               id=com.twitter.android:id/primary_action
${EMAIL}               //android.widget.EditText[@content-desc="Username"]
${PASSWORD}            //android.widget.EditText[@content-desc="Password"]
${Button_LOGIN}        //android.view.ViewGroup[@content-desc="Log In"]
${LOCATOR_MESSAGE}     id=android:id/content


*** Keywords ***
User goes to Login Page Mobile
    Click Button   ${LOGIN}

User types "${email1}" in email
    Input Text   ${EMAIL}    ${email1}

User types "${password1}" in password
    Input Text   ${PASSWORD}    ${password1}

User clicks on Login
    Click Element    ${Button_LOGIN}

Then System should show an alert "Error"
    Wait Until Element Is Visible  ${LOCATOR_MESSAGE}
    
    