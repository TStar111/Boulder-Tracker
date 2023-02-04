//
//  BottomTabs.swift
//  BoulderingApp
//
//  Created by Charles Pun on 2/4/23.
//

import SwiftUI

struct BottomTabs: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Record", systemImage: "record.circle")
                }
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "chart.bar.xaxis")
                }
        }
    }
}

struct BottomTabs_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabs()
    }
}
