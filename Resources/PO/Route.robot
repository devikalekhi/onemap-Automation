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
    sleep    3s
    click image    xpath://*[@id="map"]/div[1]/div[4]/img[2]
    element should contain    class:destination   ${Route}    None    True

Verify transit options

    click element    xpath://*[@id="journeyForm"]/div[1]/div/div[6]/div/label
    click element    xpath://*[@id="journeyForm"]/div[1]/div/div[5]/div/label
    click element    xpath://*[@id="journeyForm"]/div[1]/div/div[3]/div/label
    click element    xpath://*[@id="journeyForm"]/div[1]/div/div[2]/div/label
    click element    xpath://*[@id="journeyForm"]/div[1]/div/div[1]/div/label
