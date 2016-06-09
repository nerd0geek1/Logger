//
//  Logger.swift
//  Logger
//
//  Created by Kohei Tabata on 2016/06/10.
//  Copyright © 2016年 Kohei Tabata. All rights reserved.
//

import Foundation
import UIKit

final public class Logger {

    static public var shouldOutput: Bool = true

    //MARK: - public

    final public class func LOGError<T>(value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, color: .redColor())
    }

    final public class func LOGWarn<T>(value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, color: .yellowColor())
    }

    final public class func LOGInfo<T>(value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, color: .cyanColor())
    }

    final public class func LOG<T>(value: T, fileName: String = #file, line: Int = #line, methodName: String = #function) {
        LOG(value, fileName: fileName, line: line, methodName: methodName, color: .blueColor())
    }

    //MARK: - private

    private class func LOG<T>(value: T, fileName: String, line: Int, methodName: String, color: UIColor = .grayColor()) {
        if !shouldOutput {
            return
        }

        let ESCAPE: String   = "\u{001b}["
        let RESET: String    = ESCAPE + ";"
        let fileName: String = fileName.lastPathComponent.stringByDeletingPathExtension
        let string: String   = "\n\nclass:\(fileName)\nline:\(line)\nmethod:\(methodName)\n\(value)\n\n"

        var red: CGFloat   = 0
        var green: CGFloat = 0
        var blue: CGFloat  = 0
        var alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)

        let coloringParams: String = "fg\(Int(red * 255)),\(Int(green * 255)),\(Int(blue * 255));"
        let text: String = "\(ESCAPE)\(coloringParams)\(string)\(RESET)"

        print(text)
    }
}