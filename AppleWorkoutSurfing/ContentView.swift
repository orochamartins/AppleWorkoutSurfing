//
//  ContentView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    enum Tab {
        case summary, fitness, sharing
    }
    
    @State private var selectedTab: Tab = .summary
    
    var body: some View {
        TabView(selection: $selectedTab) {
            SummaryView()
                .tabItem {
                    Label("Summary", systemImage: "trophy.fill")
                }
                .tag(Tab.summary)
            
            FitnessPlusView()
                .tabItem {
                    Label("Fitness+", systemImage: "figure.run.circle.fill")
                }
                .tag(Tab.fitness)
            
            SharingView()
                .tabItem {
                    Label("Sharing", systemImage: "person.2.fill")
                }
                .tag(Tab.sharing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
