//
//  SummaryStats.swift
//  BoulderingApp (iOS)
//
//  Created by Ricky Gao on 2/4/23.
//

import SwiftUI

struct SummaryStats: View {
    var body: some View {
        //var information : Session
        
        VStack(alignment: .leading, spacing: 10.0) {
            Text(String(format:"Number of projects attempted: %d", 2))// Replace 2 with actual info
            Text(String(format:"Number of projects sent: %d", 2)) // Replace 2 with actual info
            Text(String(format:"Average grade: %d", 2)) // Replace 2 with actual info
            Text(String(format:"Climbing duration: %d", 2)) // Replace 2 with actual info
            Text(String(format:"Session theme: %@", "some")) // Replace 2 with actual info
        }
        .font(.system(size: 18))
        .padding()
    }
}
struct SummaryStats_Previews: PreviewProvider {
    static var previews: some View {
        SummaryStats() // Needs session statistics
    }
}
