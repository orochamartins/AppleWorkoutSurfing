//
//  MapSectionView.swift
//  AppleWorkoutSurfing
//
//  Created by Renato Martins on 30/10/2023.
//

import SwiftUI
import MapKit

struct MapSectionView: View {
    
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 41.312507, longitude: -8.742000), span: MKCoordinateSpan(latitudeDelta: 0.0028, longitudeDelta: 0.0028))
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline) {
                Text("Map")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Text("Show More")
                    .foregroundColor(.accentColor)
                    .font(.title3)
            }
            
            VStack {
                ZStack {
                    Map(coordinateRegion: $mapRegion)
                        .allowsHitTesting(false)
                        .onAppear {
                            MKMapView.appearance().mapType = .satellite
                        }
                    
                }
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(20)
            .background(Color("CardBackground"))
            .clipShape(RoundedRectangle(cornerRadius: 12))
        }
    }
}

struct MapSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MapSectionView()
            .preferredColorScheme(.dark)
    }
}
