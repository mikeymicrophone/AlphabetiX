//
//  DayWhat.swift
//  AlphabetiX App
//
//  Created by Michael Schwab on 1/6/22.
//

import Foundation

class DayWhat {
    func establishOrigin() -> Date {
        var origin = DateComponents()
        origin.year = 2020
        origin.month = 1
        origin.day = 1
        origin.timeZone = TimeZone(abbreviation: "EST")
        let calendar = Calendar.current
        return calendar.date(from: origin)!
    }
    
    func daysSinceOrigin() -> Int {
        let interval = Calendar.current.dateComponents([.day], from: establishOrigin(), to: Date())
        return interval.day!
    }
    
    func letterOfDay() -> String {
        let dayIndex = daysSinceOrigin() % 26
        let letterList = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let dayRange = letterList.index(letterList.startIndex, offsetBy: dayIndex - 1)
        return String(letterList[dayRange])
    }
}
