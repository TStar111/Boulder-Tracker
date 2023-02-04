//
//  ContentView.swift
//  Shared
//
//  Created by Charles Pun on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
