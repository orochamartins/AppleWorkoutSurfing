//
//  WavesCaughtGridView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 26/10/2023.
//

import SwiftUI

struct WavesCaughtGridView: View {
    
    let columns = [
        GridItem(.fixed(25)),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
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
                LazyVGrid(columns: columns, alignment: .leading) {
                    Text("0")
                        .foregroundColor(.clear)
                    Text("Duration")
                    Text("Distance")
                    Text("Top Speed")
                }
                .foregroundColor(.secondary)
                .font(.footnote)
                
                WavesCaughtItemView(waveNumber: "1", waveSeconds: "14sec", waveDistance: "104m", waveSpeed: "28km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "2", waveSeconds: "8sec", waveDistance: "87m", waveSpeed: "23km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "3", waveSeconds: "15sec", waveDistance: "101m", waveSpeed: "25km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "4", waveSeconds: "4sec", waveDistance: "32m", waveSpeed: "42km/h", isLast: false)
                
                WavesCaughtItemView(waveNumber: "5", waveSeconds: "15sec", waveDistance: "101m", waveSpeed: "25km/h", isLast: true)
            }
            .padding([.horizontal, .bottom])
            .padding(.top, 10)
            .background(Color("CardBackground"))
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
