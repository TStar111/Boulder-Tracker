//
//  SessionStore.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import Foundation
import SwiftUI

class SessionStore: ObservableObject {
    @Published var sessions: [Session] = []
    
    private static func fileURL() throws -> URL {
        try FileManager.default.url(for: .documentDirectory,
                                               in: .userDomainMask,
                                               appropriateFor: nil,
                                               create: false)
        .appendingPathComponent("sessions.data")
    }
    
    static func load(completion: @escaping (Result<[Session], Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let fileURL = try fileURL()
                guard let file = try? FileHandle(forReadingFrom: fileURL) else {
                    DispatchQueue.main.async {
                                        completion(.success([]))
                                    }
                    return
                }
                let loadSessions = try JSONDecoder().decode([Session].self, from: file.availableData)
                DispatchQueue.main.async {
                    completion(.success(loadSessions))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }
    
    static func save(sessions: [Session], completion: @escaping (Result<Int, Error>)->Void) {
        DispatchQueue.global(qos: .background).async {
            do {
                let data = try JSONEncoder().encode(sessions)
                let outfile = try fileURL()
                try data.write(to: outfile)
                DispatchQueue.main.async {
                    completion(.success(sessions.count))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
    }

}
