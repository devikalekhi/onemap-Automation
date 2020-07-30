*** Settings ***
Documentation  This is some basic info about whole suit
Resource    ../Resources/OnemapApp.robot
Resource    ../Resources/Common.robot
Test Setup  Begin Web test
Test Teardown    End Web Test


*** Test Cases ***


Launch OpenMap URL and verify page elements.
    [Documentation]  Test case 1 : Navigate to Application and Verify the landing page.


    OnemapApp.Navigate to Application
    onemapapp.verify carousel controls
    OnemapApp.Close the carousel
    OnemapApp.Verify all the page elements


Verify search feature.
    [Documentation]  Test case 2 : Verify 'Search & Explore' feature using Search by Pincode| Search by Address.

    OnemapApp.Navigate to Application
    OnemapApp.Close the carousel
    OnemapApp.Verify Search functionality with Address
    OnemapApp.Verify Search functionality with Pincode


Verify Nearby services
    [Documentation]  Test case 3 : Verify the Nearest options for the Address/pincode searched.

    OnemapApp.Navigate to Application
    OnemapApp.Close the carousel
    OnemapApp.Verify Search functionality with Address
    OnemapApp.Verify Nearest services


Verify user able to search the route from source to destination
    [Documentation]  Test case 4 : Verify that user is able to search the route by providing source and destination.

    OnemapApp.Navigate to Application
    OnemapApp.Close the carousel
    OnemapApp.Verify Search functionality with Address
    OnemapApp.Verify Route

