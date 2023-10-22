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
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
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
