//
//  ContentView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showChild = false
    @State private var selectedTab = 0 {
        didSet {
            if oldValue == selectedTab && selectedTab == 0 {
                showChild.toggle()
            }
        }
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            SummaryView(showChild: $showChild)
                .tabItem {
                    Label("Summary", systemImage: "trophy.fill")
                }
                .tag(0)
            
            FitnessPlusView()
                .tabItem {
                    Label("Fitness+", systemImage: "figure.run.circle.fill")
                }
                .tag(1)
            
            SharingView()
                .tabItem {
                    Label("Sharing", systemImage: "person.2.fill")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
