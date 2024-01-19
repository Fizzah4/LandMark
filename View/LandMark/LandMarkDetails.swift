//
//  LandMarkDetails.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/14/23.
//

// this file is refering to the details of the user interface that we have coded earlier
//MapView -> where the mao will be on the interface
//position of the circle on the interface
import SwiftUI

struct LandMarkDetails: View {
    @Environment(ModelData.self) var modelData
    
    var landmark:LandMark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {
            $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            
            Circle(image:landmark.image)
            
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name).font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About\(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    return LandMarkDetails(landmark: modelData.landmarks[0])
        .environment(modelData)
}
