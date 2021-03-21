*** Settings ***
Library    RequestsLibrary

*** Variables ***
${URL} =  http://www.facebook.com


*** Test Cases ***
API status code should be 200
    Create Session    facebook             http://www.facebook.com
     ${response}=   GET On Session     facebook             /           expected_status=200
     log to console     ${response}
     Status Should Be  200  ${response}