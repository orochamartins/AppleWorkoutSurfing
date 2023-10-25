//
//  MetricsItemView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 25/10/2023.
//

import SwiftUI

struct MetricsItemView: View {
    
    let label: String
    let value: String
    let metric: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
                .font(.title3)
            HStack(alignment: .firstTextBaseline, spacing: 0){
                Text(value)
                    .font(.system(size: 31))
                Text(metric)
                    .font(.system(size: 25))
                    .fontWeight(.medium)
            }
            .fontDesign(.rounded)
            .foregroundColor(color)
        }
    }
}

struct MetricsItemView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsItemView(label: "Active Calories", value: "241", metric: "CAL", color: .pink)
            .preferredColorScheme(.dark)
    }
}
