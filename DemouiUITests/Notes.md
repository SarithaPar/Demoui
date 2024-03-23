// xcodebuild command for CI/CD 

xcodebuild -workspace   Demoui.xcworkspace 
-scheme                 DemouiUITests 
-sdk                    iphonesimulator 
-destination            "platform=iOS Simulator,name=iPhone 13,OS=15.2" 
-testPlan               CompleteUITestplan 
-test-iterations        2
-retry-tests-on-failure 
test

Setup Retry-on-failure on XCode

//Users/sarithaparsoya/Desktop/Screenshot 2024-02-20 at 6.21.37 PM.png

XCTIssue: Swift object to represent a test failure. 
- do Test reporting
- Do investigation

