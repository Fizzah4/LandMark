//
//  ContentView.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/7/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View{
        LandMarkList()
        
        VStack {
            MapView() // refer to your map file
                .frame(height: 300)
            
            CircleImage() //refer to the circle file
            
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack{
                    Text("Joshua Tree National Rock")
                    
                    Spacer()
                    Text("California")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
              
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
                
            }
            .padding()
            
            Spacer()
        }
    }
}
#Preview {
    ContentView()
}
