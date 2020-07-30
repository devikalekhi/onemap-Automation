*** Settings ***
Documentation  This is to automate onemap website
Resource    ../Resources/PO/Carousel.robot
Resource    ../Resources/PO/LandingPage.robot
Resource    ../Resources/PO/Search.robot
Resource    ../Resources/PO/NearbyService.robot
Resource    ../Resources/PO/Route.robot


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

Verify Search functionality with Address
    Search.Search with Address
    Search.Verify Search result with Address
    Search.Verify Search result on map with Address

Verify Search functionality with Pincode
    Search.Search with Pincode
    Search.Verify Search result with pincode
    Search.Verify Search result on map with pincode

Verify Nearest services
     nearbyservice.nearest items
     nearbyservice.nearby mrt

Verify Route
      route.add destination
      route.verify destination in map
      route.verify transit options

