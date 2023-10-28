//
//  MetricsDetailsView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 23/10/2023.
//

import SwiftUI

struct MetricsDetailsView: View {
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack(spacing: 14) {
            LazyVGrid(columns: columns, alignment: .leading) {
                MetricsItemView(label: "Workout Time", value: "2:04:46", metric: "", color: .yellow)
                MetricsItemView(label: "Wave Count", value: "17", metric: "", color: Color("Lavender"))
            }
            Divider()
            LazyVGrid(columns: columns, alignment: .leading) {
                MetricsItemView(label: "Distance Surfed", value: "586", metric: "M", color: Color("Turquoise"))
                MetricsItemView(label: "Distance Paddled", value: "3.6", metric: "KM", color: Color("Turquoise"))
            }
            Divider()
            LazyVGrid(columns: columns, alignment: .leading) {
                MetricsItemView(label: "Longest Wave", value: "388", metric: "M", color: Color("Turquoise"))
                MetricsItemView(label: "Top Speed", value: "40.2", metric: "KM/H", color: .brown)
            }
            Divider()
            LazyVGrid(columns: columns, alignment: .leading) {
                MetricsItemView(label: "Avg. Heart Rate", value: "91", metric: "BPM", color: .red)
                MetricsItemView(label: "Total Calories", value: "356", metric: "CAL", color: .pink)
            }
        }
    }
}

struct MetricsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsDetailsView()
            .preferredColorScheme(.dark)
            .accentColor(.accentColor)
    }
}
