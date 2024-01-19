//
//  LandMarkList.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/16/23.
//

import SwiftUI

struct LandMarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [LandMark] {
        modelData.landmarks.filter {
            landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {//split the screen into different objects. These are the constructs already in the Swift UI package
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks) {
                    landmark in NavigationLink {
                        LandMarkDetails(landmark: landmark)
                    }
                label:
                    {
                        LandMarkRow(landmark: landmark)
                    }
                }
            }
            
            .navigationTitle("LandMarks")
        }
    detail: {
        Text("Select a Landmark")
        }
    }
}

#Preview {
    LandMarkList()
}
