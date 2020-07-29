*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary

*** Variables ***
${Route}    yew tee park


*** Keywords ***

Add destination
    click element    id:jpbtn
    page should contain element    id:search-text-dest
    sleep    3s
    input text    id:search-text-dest  ${Route}
    click element    class:dest



Verify destination in map
    #click element    xpath://*[@id="journeyForm"]/div[1]/div/div[1]/div
    sleep    5s
    #scroll element into view  xpath://*[@id="map"]/div[1]/div[4]/img[2]
    click image    xpath://*[@id="map"]/div[1]/div[4]/img[2]
    element should contain    class:destination   ${Route}    None    True
