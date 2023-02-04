//
//  TimeLocation.swift
//  BoulderingApp (iOS)
//
//  Created by Ricky Gao on 2/4/23.
//

import Foundation
import SwiftUI

struct TimeLocation: View {
//    var information : Session
//    var date = information.time
//    var location = information.location
    
        
    var body: some View {
        VStack {
            Text("Time Placeholder") // Will use session time
            Text("Location Placeholder") // Will use location from session
            
        }
    }
}

struct TimeLocation_Previews: PreviewProvider {
    static var previews: some View {
        TimeLocation(currentSession)
    }
}
