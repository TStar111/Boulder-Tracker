//
//  ProgressView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        VStack {
            Image("Progress Icon")
            Text("Progress")
                .foregroundColor(.gray)
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
