//
//  ResultadoData.swift
//  PlacaFipe
//
//  Created by Ricieri Faviero on 17/01/23.
//

import SwiftUI

struct ResultadoData: View {
    @State var field1 = "field1"
    @State var field2 = "field2"
    
    var body: some View {
        HStack{
        Text("\(field1):")
        Text(field2)
        }
    }
}

struct ResultadoData_Previews: PreviewProvider {
    static var previews: some View {
        ResultadoData()
    }
}
