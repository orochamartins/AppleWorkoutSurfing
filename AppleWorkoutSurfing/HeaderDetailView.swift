//
//  HeaderDetailView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 23/10/2023.
//

import SwiftUI

struct HeaderDetailView: View {
    var body: some View {
        HStack(alignment: .top,spacing: 20) {
            ZStack {
                Circle()
                    .fill(LinearGradient(colors: [.accentColor.opacity(0.1), .accentColor.opacity(0.15)], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100)
                
                Image(systemName: "figure.surfing")
                    .font(.largeTitle)
                    .foregroundColor(.accentColor)
            }
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Surfing")
                    Text("Open Goal")
                        .foregroundColor(.accentColor)
                }
                VStack(alignment: .leading, spacing: 2) {
                    Text("7:43 AM - 9:14 AM")
                    HStack {
                        Image(systemName: "location.fill")
                            .font(.subheadline)
                        Text("Praia da Gafa")
                    }
                }
                .foregroundColor(.secondary)
            }
            .font(.title3)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .preferredColorScheme(.dark)
    }
}
