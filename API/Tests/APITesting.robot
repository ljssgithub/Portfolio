*** Settings ***
Library    RequestsLibrary

*** Variables ***
${URL} =  http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1


*** Test Cases ***
API status code should be 200
    Create Session    blackjack             http://deckofcardsapi.com/api/deck/new/shuffle/?deck_count=1
     ${response}=   GET On Session     blackjack             /           expected_status=200
     log to console     ${response}
     Status Should Be  200  ${response}
