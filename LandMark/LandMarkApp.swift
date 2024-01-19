//
//  LandMarkApp.swift
//  LandMark
//
//  Created by Fizzah Jabeen on 11/7/23.
//

import SwiftUI

@main
struct LandMarkApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
