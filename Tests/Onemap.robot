*** Settings ***
Documentation  This is some basic info about whole suit
Resource    ../Resources/OnemapApp.robot
Resource    ../Resources/Common.robot



*** Test Cases ***
#Launch OpenMap URL and verify page elements.
#    [Documentation]  Test case 1

#
#    Common.Begin Web test
#    OnemapApp.Navigate to Application
#    onemapapp.verify carousel controls
#    OnemapApp.Close the carousel
#    OnemapApp.Verify all the page elements
#    Common.End Web Test

Verify search feature.
    [Documentation]  Test case 2
    Common.Begin Web test
    OnemapApp.Navigate to Application
    OnemapApp.Close the carousel
    OnemapApp.Verify Search functionality with Address
    OnemapApp.Verify Search functionality with Pincode
    Common.End Web Test

#Verify Nearby services
#    [Documentation]  Test case 3
#    Common.Begin Web test
#    OnemapApp.Navigate to Application
#    OnemapApp.Close the carousel
#    OnemapApp.Verify Search functionality with Address
#    OnemapApp.Verify Nearest services
#    Common.End Web Test

