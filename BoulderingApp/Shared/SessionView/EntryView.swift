//
//  EntryView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        ZStack {
            Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text("Create a New Project:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                
            
            Button("New Project") {
                print("Button pressed!")
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .clipShape(Capsule())
            Spacer()
            Button("Cancel") {
                NavigationLink(destination: ContentView()) {
                        ContentView()
                        
            }
            
            
        }
                }
                Spacer()
        }
        
        }
        
    }


struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
