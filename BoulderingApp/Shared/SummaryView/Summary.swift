//
//  Summary.swift
//  BoulderingApp (iOS)
//
//  Created by Ricky Gao on 2/4/23.
//

import SwiftUI

struct Summary: View {
    var body: some View {
        VStack {
            Image("Progress Icon")
            
            TimeLocation()
            
            Divider()
            
            SummaryStats()
            
            
            Close()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.orange)
    }
}

struct Summary_Previews: PreviewProvider {
    static var previews: some View {
        Summary()
    }
}
