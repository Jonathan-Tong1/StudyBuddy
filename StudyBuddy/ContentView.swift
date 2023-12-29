//
//  ContentView.swift
//  StudyBuddy
//
//  Created by Jonathan on 2023-12-29.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    
    @Query var assessments: [Assessment]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(assessments) { assessment in
                    VStack(alignment: .leading) {
                        Text(assessment.name)
                            .font(.headline)
                        
                        Text(assessment.date.formatted(date: .long, time:
                                .shortened))
                        
                    }
                }
            }
            .navigationTitle("StudyBuddy")
            .toolbar {
                Button("Add Samples", action: addSamples)
            }
        }
    }
    
    func addSamples() {
        let exam1 = Assessment(name: "math135 exam")
        let exam2 = Assessment(name: "math136 exam")
        let exam3 = Assessment(name: "math138 exam")
        
        modelContext.insert(exam1)
        modelContext.insert(exam2)
        modelContext.insert(exam3)
        
    }
}

#Preview {
    ContentView()
}
