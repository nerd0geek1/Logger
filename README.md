# Logger
[![Build Status](https://travis-ci.org/nerd0geek1/Logger.svg?branch=master)](https://travis-ci.org/nerd0geek1/Logger)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

This is Logger Component for iOS/MacOS.

## How to use
Install XcodeColors(Plug-in), import this library and write as below, and run project.
![HowToUse.png](https://github.com/nerd0geek1/logger/raw/master/images/HowToUse.png)

Then, you can confirm log with file name, line number, method name as below.
<img src="https://raw.githubusercontent.com/nerd0geek1/logger/master/images/XcodeColorsLOG.png" alt="XcodeColorsLOG">

If you don't want to install XcodeColors, you can update settings as below.
```
  Logger.useXcodeColors = false
```
And you can confirm log as below.

<img src="https://raw.githubusercontent.com/nerd0geek1/logger/master/images/PlainLOG.png" alt="PlainLOG">

If you want to stop logging, update `shouldOutput` as below.
```
  Logger.shouldOutput = false
```

## Requirements
- iOS 9.0+, OS X 10.10+
- Xcode 8.0 or above

Logger is now supporting Swift3.
If you want to use with Swift2.2, please use Swift2.2 branch.

## Installation
Logger supports multiple platform(iOS/MacOS), and supports only Carthage.

## Installation with Carthage
To integrate Logger into your Xcode project using Carthage, specify it in your Cartfile:
```
github "nerd0geek1/Logger"
```

Then, run the following command:
```
$ carthage update
```

## License
This software is Open Source under the MIT license, see LICENSE for details.
