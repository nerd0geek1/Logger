//
//  String+Addition.swift
//  Logger
//
//  Created by Kohei Tabata on 2016/06/10.
//  Copyright © 2016年 Kohei Tabata. All rights reserved.
//

import Foundation

extension String {
    var lastPathComponent: String {
        return (self as NSString).lastPathComponent
    }

    var stringByDeletingPathExtension: String {
        return (self as NSString).stringByDeletingPathExtension
    }
}
