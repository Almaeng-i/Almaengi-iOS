//
//  CalenderView.swift
//  Feature
//
//  Created by 새미 on 5/29/24.
//

import SwiftUI

struct CalenderView: View {
    
    @State private var month: Date = Date()
    @State private var clickedCurrentMonthDates: Date?
    
    init(
        month: Date = Date(),
        clickedCurrentMonthDates: Date? = nil
    ) {
        _month = State(initialValue: month)
        _clickedCurrentMonthDates = State(initialValue: clickedCurrentMonthDates)
    }
    
    var body: some View {
        VStack {
            headerView
            calendarGridView
        }
    }
    
    // MARK: - Header
    private var headerView: some View {
        VStack(spacing: 0) {
            yearMonthView
                .padding(.top, 24)
                .padding(.bottom, 12)
            HStack {
                ForEach(Self.weekdaySymbols.indices, id: \.self) { index in
                    AlmaengiText(Self.weekdaySymbols[index], textStyle: .bodyMedium, color: .g5)
                        .frame(maxWidth: .infinity)
                }
            }
        }
    }
    
    // MARK: - Year And Month
    private var yearMonthView: some View {
        HStack(spacing: 8) {
            AlmaengiText(Self.calendarHeaderDateFormatter.string(from: month), textStyle: .h2Bold, color: .g9)
            WeeklyMonthlyButton()
            Spacer()
            HStack(spacing: 12) {
                Button {
                    changeMonth(by: -1)
                } label: {
                    Image(asset: FeatureAsset.Images.Icon.leftArrow)
                }
                .disabled(!canMoveToNextMonth())
                Button {
                    changeMonth(by: 1)
                } label: {
                    Image(asset: FeatureAsset.Images.Icon.rightArrow)
                }
                .disabled(!canMoveToNextMonth())
            }
        }
    }
    
    // MARK: - Grid Calendar
    private var calendarGridView: some View {
        let daysInMonth: Int = numberOfDays(in: month)
        let firstWeekday: Int = firstWeekdayOfMonth(in: month) - 1
        let lastDayOfMonthBefore = numberOfDays(in: previousMonth())
        let numberOfRows = Int(ceil(Double(daysInMonth + firstWeekday) / 7.0))
        let visibleDaysOfNextMonth = numberOfRows * 7 - (daysInMonth + firstWeekday)
        
        func cellView(for index: Int, daysInMonth: Int, clickedCurrentMonthDates: Date?, today: Date, previousMonth: () -> Date, lastDayOfMonthBefore: Int) -> some View {
            Group {
                if index > -1 && index < daysInMonth {
                    let date = getDate(for: index)
                    let day = Calendar.current.component(.day, from: date)
                    let clicked = clickedCurrentMonthDates == date
                    let isToday = date.formattedCalendarDayDate == today.formattedCalendarDayDate
                    
                    CellView(day: day, clicked: clicked, isToday: isToday)
                } else if let prevMonthDate = Calendar.current.date(
                    byAdding: .day,
                    value: index + lastDayOfMonthBefore,
                    to: previousMonth()
                ) {
                    let day = Calendar.current.component(.day, from: prevMonthDate)
                    
                    CellView(day: day, isCurrentMonthDay: false)
                }
            }
        }

        return LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
            ForEach(-firstWeekday ..< daysInMonth + Int(visibleDaysOfNextMonth), id: \.self) { index in
                cellView(for: index, daysInMonth: daysInMonth, clickedCurrentMonthDates: clickedCurrentMonthDates, today: today, previousMonth: previousMonth, lastDayOfMonthBefore: lastDayOfMonthBefore)
                    .onTapGesture {
                        if 0 <= index && index < daysInMonth {
                            let date = getDate(for: index)
                            clickedCurrentMonthDates = date
                        }
                    }
            }
        }
    }
}

// MARK: - Day Cell
private struct CellView: View {
  private var day: Int
  private var clicked: Bool
  private var isToday: Bool
  private var isCurrentMonthDay: Bool
  private var textColor: Color {
    if clicked {
      return Color.white
    } else if isCurrentMonthDay {
      return Color.g8
    } else {
      return Color.g4
    }
  }
  
  fileprivate init(
    day: Int,
    clicked: Bool = false,
    isToday: Bool = false,
    isCurrentMonthDay: Bool = true
  ) {
    self.day = day
    self.clicked = clicked
    self.isToday = isToday
    self.isCurrentMonthDay = isCurrentMonthDay
  }
  
  fileprivate var body: some View {
      ZStack {
          if clicked {
              Image(asset: FeatureAsset.Images.Icon.todoPotato)
          }
          AlmaengiText(String(day), textStyle: .h3Medium, color: textColor)
              .padding(8)
      }
      .frame(height: 40)
  }
}

// MARK: - Calender Properties
private extension CalenderView {
    var today: Date {
        let now = Date()
        let components = Calendar.current.dateComponents([.year, .month, .day], from: now)
        return Calendar.current.date(from: components)!
    }
    
    static let calendarHeaderDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY.MM"
        return formatter
    }()
    
    static let weekdaySymbols: [String] = Calendar.current.shortWeekdaySymbols.map {
        switch $0 {
        case "Sun": return "일"
        case "Mon": return "월"
        case "Tue": return "화"
        case "Wed": return "수"
        case "Thu": return "목"
        case "Fri": return "금"
        case "Sat": return "토"
        default: return ""
        }
    }
}

// MARK: - Calender Method
private extension CalenderView {
  func getDate(for index: Int) -> Date {
    let calendar = Calendar.current
    guard let firstDayOfMonth = calendar.date(
      from: DateComponents(
        year: calendar.component(.year, from: month),
        month: calendar.component(.month, from: month),
        day: 1
      )
    ) else {
      return Date()
    }
    
    var dateComponents = DateComponents()
    dateComponents.day = index
    
    let timeZone = TimeZone.current
    let offset = Double(timeZone.secondsFromGMT(for: firstDayOfMonth))
    dateComponents.second = Int(offset)
    
    let date = calendar.date(byAdding: dateComponents, to: firstDayOfMonth) ?? Date()
    return date
  }
  
  func numberOfDays(in date: Date) -> Int {
    return Calendar.current.range(of: .day, in: .month, for: date)?.count ?? 0
  }
  
  func firstWeekdayOfMonth(in date: Date) -> Int {
    let components = Calendar.current.dateComponents([.year, .month], from: date)
    let firstDayOfMonth = Calendar.current.date(from: components)!
    
    return Calendar.current.component(.weekday, from: firstDayOfMonth)
  }
  
  func previousMonth() -> Date {
    let components = Calendar.current.dateComponents([.year, .month], from: month)
    let firstDayOfMonth = Calendar.current.date(from: components)!
    let previousMonth = Calendar.current.date(byAdding: .month, value: -1, to: firstDayOfMonth)!
    
    return previousMonth
  }
  
  func changeMonth(by value: Int) {
    self.month = adjustedMonth(by: value)
  }
  
  func canMoveToPreviousMonth() -> Bool {
    let currentDate = Date()
    let calendar = Calendar.current
    let targetDate = calendar.date(byAdding: .month, value: -3, to: currentDate) ?? currentDate
    
    if adjustedMonth(by: -1) < targetDate {
      return false
    }
    return true
  }
  
  func canMoveToNextMonth() -> Bool {
    let currentDate = Date()
    let calendar = Calendar.current
    let targetDate = calendar.date(byAdding: .month, value: 3, to: currentDate) ?? currentDate
    
    if adjustedMonth(by: 1) > targetDate {
      return false
    }
    return true
  }
  
  func adjustedMonth(by value: Int) -> Date {
    if let newMonth = Calendar.current.date(byAdding: .month, value: value, to: month) {
      return newMonth
    }
    return month
  }
}
