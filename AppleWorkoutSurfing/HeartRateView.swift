//
//  HeartRateView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 02/11/2023.
//

import SwiftUI
import Charts

struct HeartRateView: View {
    
    let data = HeartChartData.bpmData
    
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
                Chart {
                    ForEach(data) { stretch in
                        BarMark(
                            x: .value("Workout Time", stretch.date),
                            yStart: .value("BPM Min", stretch.minBPM),
                            yEnd: .value("BPM Max", stretch.maxBPM),
                            width: .fixed(3)
                        )
                        .clipShape(Capsule())
                        .foregroundStyle(.red)
                    }
                }
                .chartXAxis {
                    AxisMarks(values: [data[0].date, data[30].date, data[60].date]) { _ in
                        AxisGridLine(stroke: StrokeStyle(lineWidth: 0.5))
                        AxisValueLabel(format: .dateTime.hour(.defaultDigits(amPM: .omitted)).minute())
                            .foregroundStyle(.red)

                    }
                }
                .chartYAxis {
                    AxisMarks(values: [HeartChartData.lowestBPM - 5]) { _ in
                        AxisGridLine()
                    }
                }
                .chartYScale(domain: [HeartChartData.lowestBPM - 5, HeartChartData.highestBPM + 5])
                .frame(height: 80)
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
