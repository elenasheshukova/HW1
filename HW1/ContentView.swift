//
//  ContentView.swift
//  HW1
//
//  Created by Елена Червоткина on 09.12.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selectionTab: Int = 0
    
    var body: some View {
        TabView(selection: $selectionTab) {
            FirstScreen(selectionTab: $selectionTab)
                .tabItem {
                    Label("First", systemImage: "1.circle")
                }
                .tag(0)
            SecondScreen()
                .tabItem {
                    Label("Second", systemImage: "2.circle")
                }
                .tag(1)
            ThirdScreen()
                .tabItem {
                    Label("Third", systemImage: "3.circle")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
