//
//  ListItemScreen.swift
//  HW1
//
//  Created by Елена Червоткина on 09.12.2021.
//

import SwiftUI

struct ListItemScreen: View {
    let item: String
    
    var body: some View {
        Text(item)
            .font(.largeTitle)
    }
}

struct ListItemScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListItemScreen(item: "Hello!")
    }
}
