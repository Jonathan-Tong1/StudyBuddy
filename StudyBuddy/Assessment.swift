//
//  Assessment.swift
//  StudyBuddy
//
//  Created by Jonathan on 2023-12-29.
//

import Foundation
import SwiftData

@Model
class Assessment {
    var name: String
    var details: String
    var date: Date
    var priority: Int
    
    init(name: String = "", details: String = "", date: Date = .now, priority: Int = 2) {
        self.name = name
        self.details = details
        self.date = date
        self.priority = priority
    }
}
