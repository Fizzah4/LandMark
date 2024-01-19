//
//  CircleImage.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/7/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
  
    }
}
