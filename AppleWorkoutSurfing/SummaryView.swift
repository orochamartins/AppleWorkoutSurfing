//
//  SummaryView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 20/10/2023.
//

import SwiftUI

struct SummaryView: View {
    
    @Binding var showChild: Bool
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SurfWorkoutDetailView(showChild: $showChild)) {
                VStack {
                    Image(systemName: "figure.surfing")
                        .imageScale(.large)
                    Text("Surfing")
                        .foregroundColor(.white)
                }
                .padding()
            }
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(showChild: .constant(false))
            .preferredColorScheme(.dark)
    }
}
