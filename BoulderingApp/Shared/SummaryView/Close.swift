//
//  Close.swift
//  BoulderingApp (iOS)
//
//  Created by Ricky Gao on 2/4/23.
//

import SwiftUI

struct Close: View {
    var body: some View {
        Text("CLOSE")
            .padding([.leading, .trailing], 20.0)
            .padding([.top, .bottom], 10.0)
            .background(.red)
            .font(.headline)
            .foregroundColor(.white)
            .border(.black, width: 2)
    }
}

struct Close_Previews: PreviewProvider {
    static var previews: some View {
        Close()
    }
}
