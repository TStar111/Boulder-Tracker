//
//  EntryView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct EntryView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Create a New Project:")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            Circle()
                .fill(.orange)
                .frame(width: 100, height: 100)
                .overlay(Text("+").font(.system(size: 36)).foregroundColor(Color.white))
            Spacer()
            Button("Cancel") {
                
                NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
    
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
