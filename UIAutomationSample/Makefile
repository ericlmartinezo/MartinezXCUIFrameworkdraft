SHELL=/bin/bash -o pipefail

WORKSPACE = UIautomationSample.xcworkspace
CONFIG = Debug
BUILD_DIR = $(shell pwd)/build
DERIVED_DATA := $(BUILD_DIR)/ci-derived-data
GEM_HOME := $(BUILD_DIR)/ci-gems
GEM_PATH := $(GEM_HOME)
XCODEBUILDCMD = /usr/bin/xcrun xcodebuild -workspace $(WORKSPACE) \
									-configuration $(CONFIG) \
									-derivedDataPath $(DERIVED_DATA)

SIMULATOR = platform=iOS Simulator,name=iPhone 11 Pro Max,OS=latest
SIMULATOR_UITEST = platform=iOS Simulator,name=iPhone 11 Pro Max,OS=latest
BUNDLER_PATH = gems/bundler-*/exe
BIN_STUBS := $(BUILD_DIR)
DEVELOPMENT_TEAM ?= '3S34VF7LA2'
XCODE_APP = 11.3

XCPRETTY = bundle exec xcpretty

# Xcode version setup
# Find the specified Xcode version and set as the DEVELOPER_DIR for use with xcrun
XCODE_VERSION ?= $(XCODE_APP)
# Best practice: run xcode-select -p, copy the output and paste it below
DEVELOPER_DIR=/Applications/Xcode_$(XCODE_APP).app/Contents/Developer/
export DEVELOPER_DIR

# Builds will only run on macos w/ Xcode
# and ensure we run tests with the specified version of Xcode.
REQUIRE_XCODE_CMD = [ "${DEVELOPER_DIR}" ] || { echo "Unable to run Xcode ${XCODE_VERSION}! Exiting..."; exit 1; }

# Default simulator model used
TEST_SIMULATOR_MODEL ?= name=iPhone 11 Pro Max,OS=latest

.PHONY : install_bundler
install_bundler:
	
	# Clear bundler cache otherwise group parameter gets saved
	# https://github.com/bundler/bundler/issues/1771
	if [ -a .bundle/config ] ; \
	then \
		rm .bundle/config ; \
	fi;

	GEM_HOME=$(GEM_HOME) gem install bundler -no-ri -no-rdoc

.PHONY : install_gems
install_gems: install_bundler
	$(GEM_HOME)/$(BUNDLER_PATH)/bundle install --path $(GEM_HOME)

# cleans files in the derive data folder
clean:
	rm -rf $(BUILD_DIR)
	-rm -f ci_ui_build
	rm -rfv $(BUILD_DIR)
	rm -rf TestResults

		# Clean the build after deleting previous build artifacts so that old state can't break the clean step (it happens)
	# This part only runs if the workspace file exists, as it's created by the setup step for cocoapods
	@if [ -a $(WORKSPACE) ]; \
		then \
		$(XCODEBUILDCMD) -scheme Develop clean; \
	fi;
# 	rm -rf Pods

# Downloads all dependencies, and submodules
setup:
	bundle update

build:
	$(XCODEBUILDCMD) -scheme 'Develop' \
	-sdk iphonesimulator

code_coverage_run: setup
	$(XCODEBUILDCMD) build test \
	-scheme Develop \
	-destination "platform=iOS Simulator,$(TEST_SIMULATOR_MODEL)" \
	-enableCodeCoverage YES

code_coverage_report:
	xcov -w UIautomationSample.xcworkspace -s Develop \
	--include_test_targets \
	-j $(DERIVED_DATA) \
	--output_directory build

smoke-test:
	$(XCODEBUILDCMD) test -scheme "SampleUiTest" \
	-sdk iphonesimulator \
	-destination '${SIMULATOR_UITEST}' \
	-only-testing:SampleUiTest/MartinezXCUIAsmokeTest | \
	$(XCPRETTY) -r junit -o build/reports/test-report.xml

test-ui:
	rm -rf TestResults
	$(XCODEBUILDCMD) test -scheme "SampleUiTest" \
	 -sdk iphonesimulator \
	 -destination '${SIMULATOR_UITEST}' \
	 -resultBundlePath TestResults

ui-test-report:
	xcrun simctl shutdown all
	xchtmlreport -r TestResults
	echo "Your Test Report test report is launching on our default browser"
	open index.html