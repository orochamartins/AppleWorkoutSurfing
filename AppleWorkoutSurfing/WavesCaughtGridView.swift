//
//  WavesCaughtGridView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 26/10/2023.
//

import SwiftUI

struct WavesCaughtGridView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline) {
                Text("Waves Caught")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("Show More")
                    .foregroundColor(.accentColor)
                    .font(.title3)
            }
            
            
            VStack {
                WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: true)
            }
            .padding()
            .background(.thinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

struct WavesCaughtGridView_Previews: PreviewProvider {
    static var previews: some View {
        WavesCaughtGridView()
            .preferredColorScheme(.dark)
    }
}
