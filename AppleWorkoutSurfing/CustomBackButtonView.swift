//
//  CustomBackButtonView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 19/10/2023.
//

import SwiftUI

struct CustomBackButtonView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button(action: {
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack(spacing: 4) {
                Image(systemName: "chevron.backward")
                    .fontWeight(.semibold)
                Text("Workouts")
            }
        }
    }
}

struct CustomBackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackButtonView()
    }
}
