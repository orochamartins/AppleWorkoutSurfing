//
//  ContentView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "trophy.fill")
                }
            FitnessPlusView()
                .tabItem {
                    Label("Fitness+", systemImage: "figure.run.circle.fill")
                }
            SharingView()
                .tabItem {
                    Label("Sharing", systemImage: "person.2.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
