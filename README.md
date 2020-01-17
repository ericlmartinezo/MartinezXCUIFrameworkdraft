# MartinezXCUIFrameworkdraft
Xcode XCUITest framework for iOS projects

# Add XCUITest to a project:
1. Create test Target "MartinezXCUITest". Select Ui Testing Bundle
2. Create a Scheme "MartinezXCUITest". From the Target dropdown choose the XCUITest target.
3. Create folder structure using XCUITestArchitecture in this repo


# Run Test from Terminal

xcodebuild -workspace UIautomationSample.xcworkspace test -scheme SampleUiTest -destination 'platform=iOS Simulator,name=iPhone 11 Pro Max,OS=13.3' -resultBundlePath TestResults

# Generate HTML report

xchtmlreport -r TestResults

# Open report

open TestResults

Done!# MartinezXCUIFrameworkdraft
Xcode XCUITest framework for iOS projects

# Add XCUITest to a project:
1. Create test Target "MartinezXCUITest". Select Ui Testing Bundle
2. Create a Scheme "MartinezXCUITest". From the Target dropdown choose the XCUITest target.
3. Create folder structure using XCUITestArchitecture in this repo

Done!
