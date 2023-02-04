//
//  SessionObject.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import Foundation

struct Session: Decodable, Encodable, Identifiable {
    let id: UUID
    var duration: Int
    var month: Int
    var day: Int
    var year: Int
    var location: String
    var projects: [Project]
    
    init(id: UUID = UUID(), duration: Int, month: Int, day: Int, year: Int, location: String, projects: [Project]) {
        self.id = id
        self.duration = duration
        self.month = month
        self.day = day
        self.year = year
        self.location = location
        self.projects = projects
    }
}

extension Session {
    struct Project: Decodable, Encodable, Identifiable {
        let id: UUID
        var grade: Int
        var attempts: Int
        var catagory: String
        var complete: Bool
        
        init(id: UUID = UUID(), grade: Int, attempts: Int, catagory: String, complete: Bool) {
            self.id = id
            self.grade = grade
            self.attempts = attempts
            self.catagory = catagory
            self.complete = complete
        }
    }
    
    struct Data {
        var duration: Double = 0
        var location: String = ""
        var projects: [Project] = []
    }
    
    var data: Data {
        Data(duration: Double(duration), location: location, projects: projects)
    }
    
    static let sampleData: [Session] =
    [Session(duration: 0, month: 0, day: 0, year: 0, location: "Nowhere",projects: [])]
}
