//
//  FirstScreen.swift
//  HW1
//
//  Created by Елена Червоткина on 09.12.2021.
//

import SwiftUI

struct FirstScreen: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @Binding var selectionTab: Int
    
    var body: some View {
        VStack(alignment: .center, spacing: 50) {
            Button("Open first item in second tab"){
                self.selectionTab = 1
                listViewModel.isFirstItemShowed = true
            }
            .foregroundColor(Color.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(8)
            
            UIKitView(text: "UIKit")
                .frame(width: 100, height: 100, alignment: .center)
                .cornerRadius(50)
        }
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen(selectionTab: .constant(0))
    }
}
