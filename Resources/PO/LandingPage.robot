*** Settings ***
Documentation  This is to automate onemap website
Library  SeleniumLibrary



*** Keywords ***
Page Elements
    page should contain element    id:search-text
    page should contain element    id:EDisplay_M
    page should contain element    id:EssDisplay
    page should contain element    id:SQDisplay
    page should contain element    id:PHPCDisplay
    page should contain element    id:widgetbar
Click MenuWidget
    click element    id:widgetbar
Verify Menuwidget
    page should contain  Menu
    sleep    3s
