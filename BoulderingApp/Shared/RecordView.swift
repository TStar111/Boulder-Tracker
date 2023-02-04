//
//  RecordView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct RecordView: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100)
                Circle()
                    .fill(Color.white)
                    .frame(width: 90, height: 90)
                Circle()
                    .fill(.gray)
                    .frame(width: 60, height: 60)
            }
            Text("Record")
                .foregroundColor(Color.gray)
        }
        
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
