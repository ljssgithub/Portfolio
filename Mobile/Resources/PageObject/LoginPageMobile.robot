*** Settings ***
Library    AppiumLibrary
Library    SeleniumLibrary


*** Variables ***
${LOGIN}               id=com.twitter.android:id/primary_action
${EMAIL}               //android.widget.EditText[@content-desc="Username"]
${PASSWORD}            //android.widget.EditText[@content-desc="Password"]
${Button_LOGIN}        //android.view.ViewGroup[@content-desc="Log In"]
${LOCATOR_MESSAGE}     /hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.TextView
${ALERT_MESSAGE}       Can't Find Account


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
    Element Text Should Be   ${LOCATOR_MESSAGE}   ${ALERT_MESSAGE}