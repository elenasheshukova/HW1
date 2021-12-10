//
//  ModalScreen.swift
//  HW1
//
//  Created by Елена Червоткина on 10.12.2021.
//

import SwiftUI

struct ModalScreen: View {
    @Binding var isShowingSheet: Bool
    
    var body: some View {
        NavigationView {
            ContentModalView()
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Done"){
                            self.isShowingSheet = false
                        }
                        .foregroundColor(Color.blue)
                    }
                })
        }
    }
}

struct ContentModalView: View {
    var body: some View {
        Text("Content")
            .font(.largeTitle)
            .foregroundColor(Color.black)
    }
}

struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen(isShowingSheet: .constant(true))
    }
}
