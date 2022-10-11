//
//  TOUCHDOWNApp.swift
//  TOUCHDOWN
//
//  Created by Soro on 2022-10-07.
//

import SwiftUI

@main
struct TOUCHDOWNApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
