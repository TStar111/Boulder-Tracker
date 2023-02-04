//
//  SessionCardView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct SessionCardView: View {
    let sesh: Session
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(sesh.location)
                    .font(.headline)
                Spacer()
                Text("We'll put the date here")
                    .font(.caption)
            }
            Spacer()
            Text("The picture would go here")
        }
        .padding()
        
    }
}

struct SessionCardView_Previews: PreviewProvider {
    static var sesh = Session.sampleData[0]
    static var previews: some View {
        SessionCardView(sesh: sesh)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
