//
//  Date+Extension.swift
//  Feature
//
//  Created by 새미 on 7/15/24.
//

import Foundation

extension Date {
  static let calendarDayDateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "MMMM yyyy dd"
    return formatter
  }()
  
  var formattedCalendarDayDate: String {
    return Date.calendarDayDateFormatter.string(from: self)
  }
}
