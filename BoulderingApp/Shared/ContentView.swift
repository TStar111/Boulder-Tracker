//
//  ContentView.swift
//  Shared
//
//  Created by Charles Pun on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sesh = Session.sampleData
    var body: some View {
        TabView {
            NavigationView {
                SessionList(sesh: $sesh)
            }
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
