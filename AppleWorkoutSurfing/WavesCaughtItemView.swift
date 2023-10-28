//
//  WavesCaughtItemView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 26/10/2023.
//

import SwiftUI

struct WavesCaughtItemView: View {
    
    let waveNumber: String
    let waveSeconds: String
    let waveDistance: String
    let waveSpeed: String
    let isLast: Bool
    
    let columns = [
        GridItem(.fixed(25)),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, alignment: .leading, spacing: 28) {
                Text(waveNumber)
                    .foregroundColor(.secondary)
                Text(waveSeconds)
                    .fontWeight(.medium)
                Text(waveDistance)
                    .foregroundColor(Color("SkyBlue"))
                Text(waveSpeed)
                    .foregroundColor(Color("Turquoise"))
            }
            if !isLast {
                Divider()
            }
        }
        .font(.title3)
        .fontDesign(.rounded)
    }
}

struct WavesCaughtItemView_Previews: PreviewProvider {
    static var previews: some View {
        WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: false)
            .preferredColorScheme(.dark)
    }
}
