//
//  SessionList.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct SessionList: View {
    let sesh: [Session]
    
    var body: some View {
        List {
            ForEach(sesh) { sesh in
                SessionCardView(sesh: sesh)
            }
        }
    }
}

struct SessionList_Previews: PreviewProvider {
    static var previews: some View {
        SessionList(sesh: Session.sampleData)
    }
}
