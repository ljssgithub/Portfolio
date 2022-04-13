Portfolio 
	
	The goal of this project is to show how to automate web, api and mobile testing using robot framework + browserstack + bdd.
	
Demo Mobile Test - BrowserStack

![bstack](https://user-images.githubusercontent.com/80653128/163276811-28a76996-f563-43c6-9019-fcec78b30f09.gif)

Getting Started!
	
Prerequisites

	To run this project you will need to have a basic environment with Python3, Robot Framework, Selenium, Appium library and a Browserstack account.
	
Installing

	Cloning the repository
	You have to upload the apk from facebook in browserstack to get the bscode.
	Go to C:\Portfolio\Mobile\Resources\Common.robot and at line 15 add after https://"username":"AccessKey" , add the bscode as well.	
	Go to C:\Portfolio\WEB\Resources\Common.robot and at line 6 and 7 add your username, accessKey and bscode from Browsersatck.
	

How to run the tests

	To run mobile tests go to C:\Portfolio\Mobile\Tests open up a terminal and type: robot LoginTestsMobile.robot
	To run web tests go to C:\Portfolio\Web\Tests open up a terminal and type: robot LoginTests.robot
	To run api tests go to C:\Portfolio\API\Tests open up a terminal and type: robot APITesting.robot
	Go to browserstack to see a video of the test execution(WEB, API). In Results folder you can see a report.
	
