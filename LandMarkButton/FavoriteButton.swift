//
//  FavoriteButton.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/16/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool // we are binding the view of the interface with the isSet construct.
    // ->Button(toggle isSet -> in such a way so that it keeps tract of the elements that we put in the favorite list
    // OR connecting the elements ahat we are using with isSet construct,
    
    var body: some View {
        Button {
            isSet.toggle()
// with the isSet we can use the button functions
// In this case we are using the toggle function
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
            
            //isSet? is like if and else statement- if it is true make it yellow, otherwise gray
            .labelStyle(.iconOnly)
            .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
