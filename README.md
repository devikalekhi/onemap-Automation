# onemap1

************************************************** Read Me ******************************************************************************************************
Important test cases have been identified based on frequently used features/services used by end user. There are multiple combinations and features which can be 
further included in the Regression suit. Considering this activity being a POC I have come up with the basic automation framework which can be leveraged further.


***Steps to install Robot Framework

1. Install Python
2. Go to Command prompt and run pip install
3. Install Robot Framework using command pip install robotframework-seleniumlibrary
4. Copy the Webdriver ( Chrome) in C:\Bin folder.
5. In advanced system setting add C:\bin in Path.
6. Go to Jetbrains.com
7. Install Pycharm and Python IDE
8. Launch Pycharm and install intellibot Plugin.

******** Git hub Code link 
Commit history can be found at Git hib Repo


********Features of Automated test cases :

1. Important test cases have been automated.
2. The test cases follow modular and POM approach.

Structure of framework is as below ::

Script -> Onemap.robot                                              

Keywords -> Common.robot  (contains test setup and teardown keywords)  & OneMapApp.robot ( Contains test case keywords)

Page Objects -> Contains all the identified elements and actions -> Carousel.robot, Search.robot, NearbyService.robot, Route.robot, Landingpage.robot

3. Elements are identified using xpath and other html tags.
4. The Framework designed has ability to Capture screenshot on failure.
5. Detailed and clean Test reports are generated at the end of test execution.( Can be verified in git hub)
6. Usage of existing libraries and custom code.
7. Automation have feature to Continue on failure ( incorporates teardown concept).
8. Test Scripts can be run from command line. go to test directory and run the command : robot -d Results tests/Onemap.robot  
9.The Code is simple and easy to understand,the Keyword based approach makes it readable.



***** Tests can be run in parallel using below steps 

1. install robotframework-pabot library using pip install robotframework-pabot
2. Divide test cases into test suites
3. Go to the directory where the test cases are saved and run below command : 

pabot --processes 3   --outputdir c:\pabot-demo\reports\    *.txt



**** Test can be Configured to run on various browsers

Prerequisite : Need to install webdrivers for all the required browsers

1. Create a batch File as below for each browser run
@echo off
cd <test script location>
call robot -d Results -v <varname>:ie tests/Onemap.robot

*********************Future Enhancements

1.Include API tests to verify the correctness of the latitude , logitude and coordinates for the address searched.
2. Make the automation more data driven by passing bulk data from excel as parameters.





