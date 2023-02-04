//
//  HomeView.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            SessionList(sesh: Session.sampleData)
        }
        .offset(y: 200)
        VStack {
            Rectangle()
                .fill(.orange)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            
            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
