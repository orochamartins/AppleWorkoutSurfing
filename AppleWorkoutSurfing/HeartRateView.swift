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
    
    private var dataAVG: Int {
        let total = data.map { $0.avgBPM }.reduce(0) { $0 + $1 }
        let length = data.count
        return total / length
    }
    
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
            
            VStack(alignment: .leading, spacing: 2) {
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
                        AxisValueLabel(format: .dateTime.hour(.defaultDigits(amPM: .omitted)).minute(), horizontalSpacing: 0)
                            .font(.body)
                            .foregroundStyle(.gray)

                    }
                    
                    AxisMarks(values: [data[91].date]) { _ in
                        AxisValueLabel(anchor: .topTrailing, horizontalSpacing: 0){
                            Text("\(HeartChartData.lowestBPM)")
                        }
                        .font(.body)
                        .foregroundStyle(.white)
                    }
                    
                    
                    AxisMarks(position: .top, values: [data[91].date]) { _ in
                        AxisValueLabel(anchor: .bottomTrailing, horizontalSpacing: 0){
                            Text("\(HeartChartData.highestBPM)")
                        }
                        .font(.body)
                        .foregroundStyle(.white)
                    }
                }
                .chartYAxis {
                    AxisMarks(values: [HeartChartData.lowestBPM - 5]) { _ in
                        AxisGridLine()
                    }
                }
                .chartYScale(domain: [HeartChartData.lowestBPM - 5, HeartChartData.highestBPM + 5])
                .frame(height: 110)
                
                Text("\(dataAVG) BPM AVG")
                    .fontDesign(.rounded)
                    .font(.body)
                    .foregroundColor(.red)
            }
            .padding(.horizontal)
            .padding(.vertical, 14)
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
