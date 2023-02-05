//
//  SessionList.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct SessionList: View {
    @Binding var sesh: [Session]
    
    @State private var cursession = Session.sampleData[0]
    
    func newSession() {
        cursession = Session(duration: 0, month: 0, day: 0, year: 0, location: "Nowhere",projects: [])
        sesh.append(cursession)
    }
    var body: some View {
        ZStack {
            VStack {
                Rectangle()
                    .fill(.orange)
                    .frame(height: 300)
                    .ignoresSafeArea(edges: .top)
                
                List {
                    ForEach(sesh) { sesh in
                        NavigationLink(destination: ProjectView(sesh: sesh)) {
                            SessionCardView(sesh: sesh)
                        }
                    }
                }
                .offset(y:-150)
            }
            Button(action: {newSession()}) {
                NavigationLink(destination: AddSessionView(sesh: $cursession)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                            .fill(Color.white)
                            .frame(width: 150, height: 50)
                            .shadow(radius: 3)
                        Text("New Session")
                            .foregroundColor(.black)
                    }
                }
            }
            .offset(y:-225)
        }
        
    }
}

struct SessionList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SessionList(sesh: .constant(Session.sampleData))
        }
    }
}
