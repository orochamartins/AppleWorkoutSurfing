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
        LazyVGrid(columns: columns, alignment: .leading, spacing: 28) {
            MetricsItemView(label: "Workout Time", value: "2:04:46", metric: "", color: .yellow)
            MetricsItemView(label: "Wave Count", value: "17", metric: "", color: .purple)
            MetricsItemView(label: "Distance Surfed", value: "586", metric: "M", color: .cyan)
            MetricsItemView(label: "Distance Paddled", value: "3.6", metric: "KM", color: .cyan)
            MetricsItemView(label: "Longest Wave", value: "388", metric: "M", color: .cyan)
            MetricsItemView(label: "Top Speed", value: "40.2", metric: "KM/H", color: .brown)
            MetricsItemView(label: "Avg. Heart Rate", value: "91", metric: "BPM", color: .red)
            MetricsItemView(label: "Total Calories", value: "356", metric: "CAL", color: .pink)
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
