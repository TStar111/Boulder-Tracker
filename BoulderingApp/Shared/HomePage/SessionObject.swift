//
//  SessionObject.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import Foundation

struct Session: Identifiable {
    let id: UUID
    var duration: Int
    var month: Int
    var day: Int
    var year: Int
    var location: String
    
    init(id: UUID = UUID(), duration: Int, month: Int, day: Int, year: Int, location: String) {
        self.id = id
        self.duration = duration
        self.month = month
        self.day = day
        self.year = year
        self.location = location
    }
}

extension Session {
    static let sampleData: [Session] =
    [Session(duration: 0, month: 0, day: 0, year: 0, location: "Nowhere")]
}
