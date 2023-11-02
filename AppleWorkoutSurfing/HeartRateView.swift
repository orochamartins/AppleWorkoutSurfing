//
//  HeartRateView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 02/11/2023.
//

import SwiftUI
import Charts

struct HeartRateView: View {
    
    @State var data = HeartRateData.lastWeek
    
    @State private var barWidth = 10.0
    @State private var chartColor: Color = .red
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline) {
                Text("Heart Rate")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("Show More")
                    .foregroundColor(.accentColor)
                    .font(.title3)
            }
            
            VStack {
                Chart(data, id: \.weekday) { dataPoint in
                    Plot {
                        BarMark(
                            x: .value("Day", dataPoint.weekday, unit: .day),
                            yStart: .value("BPM Min", dataPoint.dailyMin),
                            yEnd: .value("BPM Max", dataPoint.dailyMax),
                            width: .fixed(barWidth)
                        )
                        .clipShape(Capsule())
                        .foregroundStyle(chartColor)
                    }
                }
                .chartXAxis {
                    AxisMarks(values: .stride(by: ChartStrideBy.day.time)) { _ in
                        AxisTick()
                        AxisGridLine()
                        AxisValueLabel(format: .dateTime.weekday(.abbreviated))
                    }
                }
                .chartYAxis(.automatic)
                .chartXAxis(.automatic)
                .frame(height: Constants.detailChartHeight)
            }
            .padding(20)
            .background(Color("CardBackground"))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

struct HeartRateView_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateView()
            .preferredColorScheme(.dark)
    }
}
