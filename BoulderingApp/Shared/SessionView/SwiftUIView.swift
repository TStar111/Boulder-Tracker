//
//  SwiftUIView.swift
//  BoulderingApp
//
//  Created by Robbi Exley on 2/4/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color(red: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, green: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/, blue: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
            VStack {
                List {
                    
                }
                Spacer()
                Circle()
                    .fill(.orange)
                    .frame(width: 100, height: 100)
                    .overlay(Text("+").font(.system(size: 36)).foregroundColor(Color.white))
                Spacer()
                Button("End") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Spacer()
            }
        }
       
       
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
