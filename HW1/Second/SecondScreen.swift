//
//  SecondScreen.swift
//  HW1
//
//  Created by Елена Червоткина on 09.12.2021.
//

import SwiftUI

struct SecondScreen: View {
    
    var body: some View {
        NavigationView(){
            ListView()
                .navigationBarTitle("Second Screen")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListView: View{
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            NavigationLink(destination: ListItemScreen(item: "First item"), isActive: $listViewModel.isFirstItemShowed) {
                Text("First item")
            }
            NavigationLink(destination: ListItemScreen(item: "Second item")) {
                Text("Second item")
            }
            NavigationLink(destination: ListItemScreen(item: "Third item")) {
                Text("Third item")
            }
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
