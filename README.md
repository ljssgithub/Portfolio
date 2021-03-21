Portfolio - Automated Tests

Getting Started!
	
Prerequisites
	-To run this project you will need to have a basic environment with Python3, Robot Framework, Selenium, Appium library and a Browserstack account.
	
Installing 
	-Cloning the repository
	-You have to upload the apk from facebook in browserstack to get the bscode.
	-Go to C:\Portfolio\Mobile\Resources\Common.robot and at line 15 add after https://"username":"AccessKey" , add the bscode as well.	
	-Go to C:\Portfolio\WEB\Resources\Common.robot and at line 6 and 7 add your username, accessKey and bscode from Browsersatck.
	

How to run the tests
	-To run mobile tests go to C:\Portfolio\Mobile\Tests\LoginTestsMobile.robot open up a terminal and type: robot LoginTestsMobile.robot
	-To run web tests go to C:\Portfolio\Web\Tests\LoginTests.robot open up a terminal and type: robot LoginTests.robot
	-Go to browserstack to see a video of the test execution. In Results folder you can see a report.
	
