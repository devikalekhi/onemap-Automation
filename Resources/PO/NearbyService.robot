*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary

*** Variables ***

${MRT}
${MRTTrim}

*** Keywords ***

Nearest items

    page should contain element    xpath://*[@id="sideMenu_container"]/div[2]/div[2]
    element should contain    xpath://*[@id="close"]/div[1]    MRT STATION    None    True
    element should contain    xpath://*[@id="close"]/div[4]    Bus Stops    None    True
    element should contain    xpath://*[@id="carparks"]    Carparks    None    True
    element should contain    xpath://*[@id="dbsatm"]    DBS ATMs    None    True
    element should contain    xpath://*[@id="uobatm"]    UOB ATMs    None    True
    element should contain    xpath://*[@id="ocbcatm"]    OCBC ATMs    None    True
    scroll element into view  id:hawkercentres
    element should contain    id:hawkercentres    Hawker Centres   None    True
    scroll element into view  id:chas
    element should contain    xpath://*[@id="chas"]   Healthcare    None    True
    scroll element into view  id:communityclubs
    element should contain    xpath://*[@id="communityclubs"]    Community Centres    None    True

Nearby MRT
    scroll element into view  id:mrt_0
    ${MRT}    get text    id:mrt_0
    click element    id:mrt_0
    ${MRTTrim}  get text  xpath://*[@id="map"]/div[1]/div[6]/div/div[1]/div/div/p[1]
    #element should contain    xpath://*[@id="map"]/div[1]/div[6]/div/div[1]/div/div/p[1]  ${MRT.replace(" ","")}   none  true
    should be equal as strings  ${MRT.replace(" ","")}  ${MRTTrim.replace(" ","")}

Nearby services
    Click button    xpath://*[@id="sideMenu_container"]/div[4]/div/div[1]/div/div/input
