//
//  Button.swift
//  PlacaFipe
//
//  Created by Ricieri Faviero on 17/01/23.
//

import SwiftUI

struct ButtonView: View {
    @State var label = "Text"
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 110, height: 55)
                .foregroundColor(.secondary)
            Text(label)
                .foregroundColor(.blue)
        }.frame(width: 110, height: 55)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
