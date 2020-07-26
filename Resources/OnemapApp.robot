*** Settings ***
Documentation  This is to automate onemap website
Resource    ../Resources/PO/Carousel.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Search.robot
*** Variables ***


*** Keywords ***

Navigate to Application
    Carousel.Load
    Carousel.Verify Page Loaded

Verify Carousel Controls

    carousel.check carousel controls

Close the Carousel
    Carousel.Close the Carousel
Verify all the page elements
    LandingPage.Page Elements
    LandingPage.Click MenuWidget
    LandingPage.Verify Menuwidget

Verify Search functionality
    Search.Search with Pincode
    Search.Verify Search result
    Search.Verify Search result on map

