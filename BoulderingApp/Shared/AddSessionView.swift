//
//  AddSessionView.swift
//  BoulderingApp (iOS)
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct AddSessionView: View {
    @Binding var sesh: Session
    
    @State private var data = Session.Data()
    
    var body: some View {
        Form {
            Section(header: Text("Session Info")) {
                TextField("Location", text: $data.location)
                HStack {
                    Slider(value: $data.duration, in: 5...30, step: 1) {
                        Text("Duration")
                    }
                    Spacer()
                    Text("\(Int(data.duration)) minutes")
                }
            }
        }
    }
}

struct AddSessionView_Previews: PreviewProvider {
    static var previews: some View {
        AddSessionView(sesh: .constant(Session.sampleData[0]))
    }
}
