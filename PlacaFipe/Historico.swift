//
//  Historico.swift
//  PlacaFipe
//
//  Created by Ricieri Faviero on 17/01/23.
//

import SwiftUI

struct Historico: View {
    var body: some View {
        ScrollView{
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 10)
                    .foregroundColor(.purple)
                    .opacity(0)
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350, height: 140)
                        .foregroundColor(.purple)
                    ZStack {
                        VStack(spacing: 10){
                            Text("IZX - 1I11")
                                .font(.title)
                            VStack(alignment:.leading){
                                HStack{
                                    HStack{
                                        Text("Marca:")
                                        Text("Volkswagen")
                                    }
                                    HStack{
                                        Text("Modelo:")
                                        Text("Golf")
                                    }
                                }
                            }
                            Text("R$200.000,00")
                                .font(.title2)
                        Text("18/01/2023")
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                        }.scaledToFit()
                    }
                }
            }
        }
    }
}

struct Historico_Previews: PreviewProvider {
    static var previews: some View {
        Historico()
    }
}
