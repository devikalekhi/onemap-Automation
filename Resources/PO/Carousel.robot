*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.onemap.sg/main/v2/

*** Keywords ***
Load
    GO TO    ${URL}
    sleep    3s

Verify Page Loaded
    wait until page contains    OneMap
    title should be    OneMap
Check Carousel Controls
     page should contain element    id:wrapper_carousel
     page should contain element    xpath://*[@id="carousel-example-generic"]/a[2]/span
     page should contain element    xpath://*[@id="carousel-example-generic"]/a[1]/span
     click element    xpath://*[@id="carousel-example-generic"]/a[2]/span
     click element    xpath://*[@id="carousel-example-generic"]/a[1]/span
Close the Carousel
    page should contain element    id:my-text
    click element    id:my-text
     Sleep    3s