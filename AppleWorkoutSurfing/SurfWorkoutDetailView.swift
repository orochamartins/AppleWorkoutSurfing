//
//  SurfWorkoutDetailView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 20/10/2023.
//

import SwiftUI

struct SurfWorkoutDetailView: View {
    
    @Binding var showChild: Bool
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        ScrollView{
            VStack(spacing: 32){
                HeaderDetailView()
                MetricsDetailsView()
                MapSectionView()
                    .padding(.top, 10)
                WavesCaughtGridView()
                HeartRateView()
                    .padding(.bottom, 16)
            }
            .padding(.top)
        }
        .padding(.horizontal)
        .navigationTitle("Thu, Oct 19")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                CustomBackButtonView()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
        .onChange(of: showChild) { _ in
            if presentationMode.wrappedValue.isPresented {
                presentationMode.wrappedValue.dismiss()
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct SurfWorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SurfWorkoutDetailView(showChild: .constant(false))
                .preferredColorScheme(.dark)
        }
    }
}
