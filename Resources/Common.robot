*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.onemap.sg/main/v2/

*** Keywords ***
Begin Web test
    open browser    about:blank    ${BROWSER}
    maximize browser window
End Web Test

     CLOSE BROWSER