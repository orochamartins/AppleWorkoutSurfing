//
//  ContentView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showChild = false
    @State private var selectedTab = 0
    @State private var tappedTwice = false
    
    var handler: Binding<Int> { Binding(
        get: { self.selectedTab },
        set: {
            if $0 == self.selectedTab {
                tappedTwice = true
            }
            self.selectedTab = $0
        }
    )}
    
    var body: some View {
        TabView(selection: handler) {
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
        .onChange(of: tappedTwice) { tapped in
            guard tapped else { return }
            showChild.toggle()
            tappedTwice = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
