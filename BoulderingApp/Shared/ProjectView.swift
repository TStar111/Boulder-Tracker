//
//  ProjectView.swift
//  BoulderingApp (iOS)
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct ProjectView: View {
    
    let sesh: Session
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView(sesh: Session.sampleData[0])
    }
}
