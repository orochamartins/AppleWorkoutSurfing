//
//  ContentView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SurfWorkoutDetailView()) {
                VStack {
                    Image(systemName: "figure.surfing")
                        .imageScale(.large)
                    Text("Surfing")
                        .foregroundColor(.white)
                }
                .padding()
            }
            // Create Tabview
        }
        .accentColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
