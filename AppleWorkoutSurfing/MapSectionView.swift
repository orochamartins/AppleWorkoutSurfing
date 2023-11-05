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
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
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
            
            VStack(spacing: 20) {
                ZStack {
                    Map(coordinateRegion: $mapRegion)
                        .allowsHitTesting(false)
                        .onAppear {
                            MKMapView.appearance().mapType = .satellite
                        }
                    Image("waveCount")
                        .resizable()
                        .scaledToFit()
                    
                }
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                
                LazyVGrid(columns: columns, alignment: .leading) {
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Temperature")
                            .font(.title3)
                        HStack(spacing: 12){
                            Image(systemName: "cloud.fill")
                                .font(.title3)
                            Text("19º")
                                .font(.system(size: 31))
                        }
                        Text("Humidity: 74%")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.secondary)
                    }
                    
                    VStack(alignment: .leading, spacing: 6) {
                        Text("Wind")
                            .font(.title3)
                        HStack(spacing: 12){
                            Image(systemName: "wind")
                                .font(.title3)
                            HStack(alignment: .top) {
                                Text("22")
                                    .font(.system(size: 31))
                                Text("km/h")
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                    .foregroundColor(.secondary)
                            }
                        }
                        Text("Direction: NE")
                            .font(.headline)
                            .fontWeight(.regular)
                            .foregroundColor(.secondary)
                    }
                }
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
