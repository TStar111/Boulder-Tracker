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
            Circle()
                .fill(.green)
                .frame(width: 100, height: 100)
                .overlay(Text("+").font(.system(size: 36)).foregroundColor(Color.white))
            
        }
        
    }
}

struct EntryView_Previews: PreviewProvider {
    static var previews: some View {
        EntryView()
    }
}
