//
//  HeartRateData.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 02/11/2023.
//

import Foundation

func date(year: Int, month: Int, day: Int = 1, hour: Int = 0, minutes: Int = 0, seconds: Int = 0) -> Date {
    Calendar.current.date(from: DateComponents(year: year, month: month, day: day, hour: hour, minute: minutes, second: seconds)) ?? Date()
}

enum Constants {
    static let previewChartHeight: CGFloat = 100
    static let detailChartHeight: CGFloat = 150
}

enum HeartRateData {
    /// Heart Rate for the last week
    static let lastWeek = [
        (weekday: date(year: 2022, month: 7, day: 1), dailyAverage: 127, dailyMin: 95, dailyMax: 194),

        (weekday: date(year: 2022, month: 7, day: 2), dailyAverage: 131, dailyMin: 101, dailyMax: 184),

        (weekday: date(year: 2022, month: 7, day: 3), dailyAverage: 136, dailyMin: 96, dailyMax: 193),

        (weekday: date(year: 2022, month: 7, day: 4), dailyAverage: 134, dailyMin: 104, dailyMax: 202),

        (weekday: date(year: 2022, month: 7, day: 5), dailyAverage: 129, dailyMin: 90, dailyMax: 95),

        (weekday: date(year: 2022, month: 7, day: 6), dailyAverage: 136, dailyMin: 96, dailyMax: 203),

        (weekday: date(year: 2022, month: 7, day: 7), dailyAverage: 134, dailyMin: 98, dailyMax: 200)
    ]

    // MARK: - Static constants

    static let minBPM: Int = {
        Self.lastWeek.min { a, b in
            a.dailyMin < b.dailyMin
        }?.dailyMin ?? 0
    }()

    static let maxBPM: Int = {
        Self.lastWeek.max { a, b in
            a.dailyMax < b.dailyMax
        }?.dailyMax ?? 0
    }()

    static let earliestDate: Date = {
        Self.lastWeek.min { a, b in
            a.weekday < b.weekday
        }?.weekday ?? Date()
    }()

    static let latestDate: Date = {
        Self.lastWeek.max { a, b in
            a.weekday < b.weekday
        }?.weekday ?? Date()
    }()

    static let dateInterval: DateInterval = {
        DateInterval(start: earliestDate, end: latestDate)
    }()
}
