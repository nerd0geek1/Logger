//
//  Logger.swift
//  Logger
//
//  Created by Kohei Tabata on 2016/06/10.
//  Copyright © 2016年 Kohei Tabata. All rights reserved.
//

import Foundation

final public class Logger {

    static public var shouldOutput: Bool   = true
    static public var useXcodeColors: Bool = true

    //MARK: - public

    final public class func LOGError<T>(_ value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, red: 255, green: 0, blue: 0)
    }

    final public class func LOGWarn<T>(_ value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, red: 255, green: 255, blue: 0)
    }

    final public class func LOGInfo<T>(_ value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, red: 0, green: 255, blue: 255)
    }

    final public class func LOG<T>(_ value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, red: 0, green: 0, blue: 255)
    }

    //MARK: - private

    private class func LOG<T>(_ value: T, fileName: String, line: Int, methodName: String, red: Float = 0, green: Float = 0, blue: Float = 0) {
        if !shouldOutput {
            return
        }

        let ESCAPE: String   = "\u{001b}["
        let RESET: String    = ESCAPE + ";"
        let fileName: String = fileName.lastPathComponent.deletingPathExtension
        let string: String   = "\n\nclass:\(fileName)\nline:\(line)\nmethod:\(methodName)\n\(value)\n\n"

        let coloringParams: String = "fg\(Int(red)),\(Int(green)),\(Int(blue));"

        let text: String
        if useXcodeColors {
            text = "\(ESCAPE)\(coloringParams)\(string)\(RESET)"
        } else {
            text = string
        }

        print(text)
    }
}
