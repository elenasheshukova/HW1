//
//  ThirdScreen.swift
//  HW1
//
//  Created by Елена Червоткина on 09.12.2021.
//

import SwiftUI

struct ThirdScreen: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        Button("Open modal screen"){
            isShowingSheet.toggle()
        }
        .sheet(isPresented: $isShowingSheet) {
            ModalScreen(isShowingSheet: $isShowingSheet)
        }
        .foregroundColor(Color.white)
        .padding()
        .background(Color.blue)
        .cornerRadius(8)
    }
}

struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
