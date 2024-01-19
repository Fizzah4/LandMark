//
//  LandMarkRow.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/14/23.
//

import SwiftUI

struct LandMarkRow: View {
    var landmark: LandMark
    
    var body: some View {
        HStack{
            landmark.image.resizable().frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite 
            {
                Image(systemName: "star.fill")
                
            .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandMarkRow(landmark: landmarks[0])
}

#Preview {
    let landmarks = ModelData().landmarks
    return LandMarkRow(landmark: landmarks[1])
}
