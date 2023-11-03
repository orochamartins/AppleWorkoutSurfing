//
//  HeartRateData.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 02/11/2023.
//

import Foundation

func date(year: Int = 2023, month: Int = 11, day: Int = 3, hour: Int, minutes: Int, seconds: Int) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day, hour: hour, minute: minutes, second: seconds)) ?? Date()
}

enum Constants {
    static let previewChartHeight: CGFloat = 100
    static let detailChartHeight: CGFloat = 150
}

enum HeartRateData {
    /// Heart Rate for the last week
    static let thisWorkout = [
        (stretch: date(hour: 7, minutes: 43, seconds: 20), stretchAverage: 127, stretchMin: 95, stretchMax: 194),
        
        (stretch: date(hour: 9, minutes: 14, seconds: 26), stretchAverage: 127, stretchMin: 95, stretchMax: 194)
    ]

    // MARK: - Static constants

    static let minBPM: Int = {
        Self.thisWorkout.min { a, b in
            a.stretchMin < b.stretchMin
        }?.stretchMin ?? 0
    }()

    static let maxBPM: Int = {
        Self.thisWorkout.max { a, b in
            a.stretchMax < b.stretchMax
        }?.stretchMax ?? 0
    }()

    static let earliestDate: Date = {
        Self.thisWorkout.min { a, b in
            a.stretch < b.stretch
        }?.stretch ?? Date()
    }()

    static let latestDate: Date = {
        Self.thisWorkout.max { a, b in
            a.stretch < b.stretch
        }?.stretch ?? Date()
    }()

    static let dateInterval: DateInterval = {
        DateInterval(start: earliestDate, end: latestDate)
    }()
}
