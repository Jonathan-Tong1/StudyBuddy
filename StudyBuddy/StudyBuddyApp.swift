//
//  StudyBuddyApp.swift
//  StudyBuddy
//
//  Created by Jonathan on 2023-12-29.
//

import SwiftData
import SwiftUI

@main
struct StudyBuddyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Assessment.self)
    }
}
