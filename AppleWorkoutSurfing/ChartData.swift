//
//  ChartData.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 03/11/2023.
//

import Foundation

struct ChartData: Identifiable {
    var id = UUID()
    var stretch: Date
    var stretchAverage: Int
    var stretchMin: Int
    var stretchMax: Int
    
    
    func generateStretchData(startDate: Date, endDate: Date, count: Int) -> [ChartData] {
        
        var start = date(hour: 7, minutes: 43, seconds: 20)
        let endDate = date(hour: 9, minutes: 14, seconds: 26)
        var chartData: [ChartData] = []
        
        for _ in 0...count {
            let randomStretchMin = Int.random(in: 0..<95)
            let randomStretchMax = Int.random(in: 95...190)
            let stretchAverage = (randomStretchMin + randomStretchMax) / 2
            let stretch = ChartData(stretch: start, stretchAverage: stretchAverage, stretchMin: randomStretchMin, stretchMax: randomStretchMax)
            
            chartData.append(stretch)
            
            let timeInterval = endDate.timeIntervalSince(start)
            let nextStartDate = start + (timeInterval / Double(count))
            start = nextStartDate
        }
        
        return chartData
    }
}
