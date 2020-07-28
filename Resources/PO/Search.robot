*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary




*** Variables ***
${Pincode}    689674
${Address}    73 choa chu kang loop

*** Keywords ***

Search with Pincode
        clear element text  id:search-text
        input text    id:search-text    ${Pincode}
        click element  id:search-text
        Sleep    3s
        click element  id:searchResult0

Verify Search result with pincode
        page should contain element    xpath://*[@id="postal_code"]
        #get element attribute    xpath://*[@id="postal_code"]/text()    text
        element should contain    xpath://*[@id="postal_code"]    ${Pincode}
        Sleep    10s
Verify Search result on map with pincode
        page should contain element    id:start_marker
        element should contain    id:start_marker    ${Pincode}
        Sleep    10s

Search with Address
        input text    id:search-text    ${Address}
        click element  id:search-text
        Sleep    3s
        click element  id:searchResult0

Verify Search result with Address
        page should contain element    xpath://*[@id="road_name"]
        element should contain    xpath://*[@id="road_name"]    ${Address}    None    True
        Sleep    5s
Verify Search result on map with Address
        page should contain element    id:start_marker
        element should contain    id:start_marker    ${Address}    None    True

