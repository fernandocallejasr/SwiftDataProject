//
//  SwiftDataProjectApp.swift
//  SwiftDataProject
//
//  Created by Fernando Callejas on 04/08/24.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataProjectApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: User.self)
    }
}
