*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary



*** Variables ***
${Pincode}    689674

*** Keywords ***

Search with Pincode
        input text    id:search-text    ${Pincode}
        click element  id:search-text
        Sleep    3s
        click element  id:searchResult0

Verify Search result
        page should contain element    xpath://*[@id="postal_code"]
        #get element attribute    xpath://*[@id="postal_code"]/text()    text
        #element should contain    xpath://*[@id="postal_code"]    ${Pincode}
Verify Search result on map
        page should contain element    id:start_marker
        element should contain    id:start_marker    ${Pincode}
