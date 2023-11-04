//
//  HeartChartData.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 03/11/2023.
//

import Foundation

struct HeartChartData: Identifiable {
    let id = UUID()
    let date: Date
    let maxBPM: Int
    let minBPM: Int
    var avgBPM: Int {
        return (maxBPM + minBPM) / 2
    }
    
    static let bpmData: [HeartChartData] = [
        HeartChartData(date: Date.from(hour: 7, minute: 43, second: 20), maxBPM: 70, minBPM: 70),
        HeartChartData(date: Date.from(hour: 7, minute: 44, second: 20), maxBPM: 71, minBPM: 71),
        HeartChartData(date: Date.from(hour: 7, minute: 45, second: 20), maxBPM: 67, minBPM: 66),
        HeartChartData(date: Date.from(hour: 7, minute: 46, second: 20), maxBPM: 74, minBPM: 70),
        HeartChartData(date: Date.from(hour: 7, minute: 47, second: 20), maxBPM: 74, minBPM: 70),
        HeartChartData(date: Date.from(hour: 7, minute: 48, second: 20), maxBPM: 75, minBPM: 71),
        HeartChartData(date: Date.from(hour: 7, minute: 49, second: 20), maxBPM: 76, minBPM: 71),
        HeartChartData(date: Date.from(hour: 7, minute: 50, second: 20), maxBPM: 76, minBPM: 72),
        HeartChartData(date: Date.from(hour: 7, minute: 51, second: 20), maxBPM: 76, minBPM: 72),
        HeartChartData(date: Date.from(hour: 7, minute: 52, second: 20), maxBPM: 76, minBPM: 72),
        HeartChartData(date: Date.from(hour: 7, minute: 53, second: 20), maxBPM: 77, minBPM: 75),
        HeartChartData(date: Date.from(hour: 7, minute: 54, second: 20), maxBPM: 78, minBPM: 75),
        HeartChartData(date: Date.from(hour: 7, minute: 55, second: 20), maxBPM: 77, minBPM: 76),
        HeartChartData(date: Date.from(hour: 7, minute: 56, second: 20), maxBPM: 78, minBPM: 76),
        HeartChartData(date: Date.from(hour: 7, minute: 57, second: 20), maxBPM: 78, minBPM: 76),
        HeartChartData(date: Date.from(hour: 7, minute: 58, second: 20), maxBPM: 79, minBPM: 75),
        HeartChartData(date: Date.from(hour: 7, minute: 59, second: 20), maxBPM: 79, minBPM: 74),
        HeartChartData(date: Date.from(hour: 8, minute: 0, second: 20), maxBPM: 79, minBPM: 74),
        HeartChartData(date: Date.from(hour: 8, minute: 1, second: 20), maxBPM: 80, minBPM: 77),
        HeartChartData(date: Date.from(hour: 8, minute: 2, second: 20), maxBPM: 80, minBPM: 76),
        HeartChartData(date: Date.from(hour: 8, minute: 3, second: 20), maxBPM: 81, minBPM: 78),
        HeartChartData(date: Date.from(hour: 8, minute: 4, second: 20), maxBPM: 82, minBPM: 77),
        HeartChartData(date: Date.from(hour: 8, minute: 5, second: 20), maxBPM: 95, minBPM: 80),
        HeartChartData(date: Date.from(hour: 8, minute: 6, second: 20), maxBPM: 94, minBPM: 83),
        HeartChartData(date: Date.from(hour: 8, minute: 7, second: 20), maxBPM: 94, minBPM: 85),
        HeartChartData(date: Date.from(hour: 8, minute: 8, second: 20), maxBPM: 92, minBPM: 85),
        HeartChartData(date: Date.from(hour: 8, minute: 9, second: 20), maxBPM: 100, minBPM: 86),
        HeartChartData(date: Date.from(hour: 8, minute: 10, second: 20), maxBPM: 98, minBPM: 89),
        HeartChartData(date: Date.from(hour: 8, minute: 11, second: 20), maxBPM: 90, minBPM: 85),
        HeartChartData(date: Date.from(hour: 8, minute: 12, second: 20), maxBPM: 91, minBPM: 86),
        HeartChartData(date: Date.from(hour: 8, minute: 13, second: 20), maxBPM: 90, minBPM: 87),
        HeartChartData(date: Date.from(hour: 8, minute: 14, second: 20), maxBPM: 88, minBPM: 85),
        HeartChartData(date: Date.from(hour: 8, minute: 15, second: 20), maxBPM: 91, minBPM: 86),
        HeartChartData(date: Date.from(hour: 8, minute: 16, second: 20), maxBPM: 97, minBPM: 90),
        HeartChartData(date: Date.from(hour: 8, minute: 17, second: 20), maxBPM: 95, minBPM: 89),
        HeartChartData(date: Date.from(hour: 8, minute: 18, second: 20), maxBPM: 92, minBPM: 89),
        HeartChartData(date: Date.from(hour: 8, minute: 19, second: 20), maxBPM: 92, minBPM: 89),
        HeartChartData(date: Date.from(hour: 8, minute: 20, second: 20), maxBPM: 89, minBPM: 86),
        HeartChartData(date: Date.from(hour: 8, minute: 21, second: 20), maxBPM: 91, minBPM: 86),
        HeartChartData(date: Date.from(hour: 8, minute: 22, second: 20), maxBPM: 100, minBPM: 82),
        HeartChartData(date: Date.from(hour: 8, minute: 23, second: 20), maxBPM: 86, minBPM: 80),
        HeartChartData(date: Date.from(hour: 8, minute: 24, second: 20), maxBPM: 87, minBPM: 80),
        HeartChartData(date: Date.from(hour: 8, minute: 25, second: 20), maxBPM: 85, minBPM: 79),
        HeartChartData(date: Date.from(hour: 8, minute: 26, second: 20), maxBPM: 89, minBPM: 83),
        HeartChartData(date: Date.from(hour: 8, minute: 27, second: 20), maxBPM: 91, minBPM: 87),
        HeartChartData(date: Date.from(hour: 8, minute: 28, second: 20), maxBPM: 99, minBPM: 88),
        HeartChartData(date: Date.from(hour: 8, minute: 29, second: 20), maxBPM: 100, minBPM: 89),
        HeartChartData(date: Date.from(hour: 8, minute: 30, second: 20), maxBPM: 85, minBPM: 75),
        HeartChartData(date: Date.from(hour: 8, minute: 31, second: 20), maxBPM: 80, minBPM: 74),
        HeartChartData(date: Date.from(hour: 8, minute: 32, second: 20), maxBPM: 83, minBPM: 76),
        HeartChartData(date: Date.from(hour: 8, minute: 33, second: 20), maxBPM: 87, minBPM: 78),
        HeartChartData(date: Date.from(hour: 8, minute: 34, second: 20), maxBPM: 83, minBPM: 78),
        HeartChartData(date: Date.from(hour: 8, minute: 35, second: 20), maxBPM: 84, minBPM: 82),
        HeartChartData(date: Date.from(hour: 8, minute: 36, second: 20), maxBPM: 91, minBPM: 84),
        HeartChartData(date: Date.from(hour: 8, minute: 37, second: 20), maxBPM: 94, minBPM: 88),
        HeartChartData(date: Date.from(hour: 8, minute: 38, second: 20), maxBPM: 98, minBPM: 74),
        HeartChartData(date: Date.from(hour: 8, minute: 39, second: 20), maxBPM: 80, minBPM: 70),
        HeartChartData(date: Date.from(hour: 8, minute: 40, second: 20), maxBPM: 82, minBPM: 76),
        HeartChartData(date: Date.from(hour: 8, minute: 41, second: 20), maxBPM: 84, minBPM: 75),
        HeartChartData(date: Date.from(hour: 8, minute: 42, second: 20), maxBPM: 79, minBPM: 74),
        HeartChartData(date: Date.from(hour: 8, minute: 43, second: 20), maxBPM: 79, minBPM: 76),
        HeartChartData(date: Date.from(hour: 8, minute: 44, second: 20), maxBPM: 80, minBPM: 75),
        HeartChartData(date: Date.from(hour: 8, minute: 45, second: 20), maxBPM: 78, minBPM: 75),
        HeartChartData(date: Date.from(hour: 8, minute: 46, second: 20), maxBPM: 87, minBPM: 73),
        HeartChartData(date: Date.from(hour: 8, minute: 47, second: 20), maxBPM: 89, minBPM: 78),
        HeartChartData(date: Date.from(hour: 8, minute: 48, second: 20), maxBPM: 87, minBPM: 78),
        HeartChartData(date: Date.from(hour: 8, minute: 49, second: 20), maxBPM: 87, minBPM: 80),
        HeartChartData(date: Date.from(hour: 8, minute: 50, second: 20), maxBPM: 90, minBPM: 80),
        HeartChartData(date: Date.from(hour: 8, minute: 51, second: 20), maxBPM: 88, minBPM: 81),
        HeartChartData(date: Date.from(hour: 8, minute: 52, second: 20), maxBPM: 88, minBPM: 72),
        HeartChartData(date: Date.from(hour: 8, minute: 53, second: 20), maxBPM: 79, minBPM: 70),
        HeartChartData(date: Date.from(hour: 8, minute: 54, second: 20), maxBPM: 75, minBPM: 70),
        HeartChartData(date: Date.from(hour: 8, minute: 55, second: 20), maxBPM: 75, minBPM: 72),
        HeartChartData(date: Date.from(hour: 8, minute: 56, second: 20), maxBPM: 75, minBPM: 72),
        HeartChartData(date: Date.from(hour: 8, minute: 57, second: 20), maxBPM: 78, minBPM: 73),
        HeartChartData(date: Date.from(hour: 8, minute: 58, second: 20), maxBPM: 80, minBPM: 75),
        HeartChartData(date: Date.from(hour: 8, minute: 59, second: 20), maxBPM: 77, minBPM: 76),
        HeartChartData(date: Date.from(hour: 9, minute: 0, second: 20), maxBPM: 79, minBPM: 75),
        HeartChartData(date: Date.from(hour: 9, minute: 1, second: 20), maxBPM: 77, minBPM: 71),
        HeartChartData(date: Date.from(hour: 9, minute: 2, second: 20), maxBPM: 68, minBPM: 66),
        HeartChartData(date: Date.from(hour: 9, minute: 3, second: 20), maxBPM: 68, minBPM: 67),
        HeartChartData(date: Date.from(hour: 9, minute: 4, second: 20), maxBPM: 70, minBPM: 68),
        HeartChartData(date: Date.from(hour: 9, minute: 5, second: 20), maxBPM: 71, minBPM: 68),
        HeartChartData(date: Date.from(hour: 9, minute: 6, second: 20), maxBPM: 75, minBPM: 67),
        HeartChartData(date: Date.from(hour: 9, minute: 7, second: 20), maxBPM: 80, minBPM: 70),
        HeartChartData(date: Date.from(hour: 9, minute: 8, second: 20), maxBPM: 88, minBPM: 81),
        HeartChartData(date: Date.from(hour: 9, minute: 9, second: 20), maxBPM: 88, minBPM: 72),
        HeartChartData(date: Date.from(hour: 9, minute: 10, second: 20), maxBPM: 79, minBPM: 70),
        HeartChartData(date: Date.from(hour: 9, minute: 11, second: 20), maxBPM: 75, minBPM: 70),
        HeartChartData(date: Date.from(hour: 9, minute: 12, second: 20), maxBPM: 75, minBPM: 72),
        HeartChartData(date: Date.from(hour: 9, minute: 13, second: 20), maxBPM: 70, minBPM: 68),
        HeartChartData(date: Date.from(hour: 9, minute: 14, second: 26), maxBPM: 68, minBPM: 68)
    ]
    
    static let lowestBPM: Int = {
        bpmData.min { a, b in
            a.minBPM < b.minBPM
        }?.minBPM ?? 0
    }()

    static let highestBPM: Int = {
        bpmData.max { a, b in
            a.maxBPM < b.maxBPM
        }?.maxBPM ?? 0
    }()
}

extension Date {
    static func from(year: Int = 2023, month: Int = 11, day: Int = 3, hour: Int, minute: Int, second: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day, hour: hour, minute: minute, second: second)
        return Calendar.current.date(from: components)!
    }
}
