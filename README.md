![Kitura Builder for iOS](https://raw.githubusercontent.com/IBM-Swift/Kitura-Builder-iOS/master/Documentation/KituraIOS.jpg)

# Tests for Kitura on iOS
This project builds Kitura project on iOS, to enable Kitura testing on iOS.

![macOS](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![Apache 2](https://img.shields.io/badge/license-Apache2-blue.svg?style=flat)
&nbsp;[![Slack Status](http://swift-at-ibm-slack.mybluemix.net/badge.svg)](http://swift-at-ibm-slack.mybluemix.net/)

# Prerequisites
1. Enable Server-Side Swift with Kitura - see http://www.kitura.io/en/starter/settingup.html
2. Install Xcode Command Line Tools by running `xcode-select --install` command in the terminal
3. Run `make Builder/Makefile` - it will fetch the `Builder` submodule (and also the `ServerSide` submodule)
4. Create an iOS static library for `curl` package. Download curl zipped source from https://curl.haxx.se/download/, unzip it and run `Builder/buildCurlStaticLibrary.sh <path to the unzipped curl source directory>`. For example, if you unzip curl in the current directory, in `curl-7.43.0` directory, run `Builder/buildCurlStaticLibrary.sh curl-7.43.0`.

**We tested working with curl 7.43.0 version.**

# Build the project in Xcode
1. Type `make` in the terminal - it will fetch the required submodules and fix `ServerSide/Kitura.xcodeproj`
2. Open `ServerSide/Kitura.xcodeproj`
3. Change the environment of Kitura target to be an iOS Simulator (Kitura tests do not run on iOS devices, a limitation from Apple)
4. Switch to Tests Navigator and run the tests

# Run tests in the command Line
Run `make test`

