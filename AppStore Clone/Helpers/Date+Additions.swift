//
//  Date+Additions.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 2018/5/29.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import Foundation

extension Date {
    func MonthAsString() -> String {
        let Formatter = DateFormatter()
        Formatter.setLocalizedDateFormatFromTemplate("MMM")
        return Formatter.string(from: self)
    }
    func WeekDay() -> String {
        let Formatter = DateFormatter()
        Formatter.setLocalizedDateFormatFromTemplate("EEEE")
        return Formatter.string(from: self)
    }
}
