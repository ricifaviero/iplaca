//
//  Resultado.swift
//  PlacaFipe
//
//  Created by Ricieri Faviero on 17/01/23.
//

import SwiftUI

struct Resultado: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.white)
                .ignoresSafeArea()

            VStack(spacing: 10){
                Text("IZX - 1I11")
                    .font(.title)
                    .bold()
                VStack(alignment: .leading, spacing: 10){
                    ResultadoData(
                        field1: "Marca",
                        field2: "Volkswagen")
                    ResultadoData(
                        field1: "Modelo",
                        field2: "Golf GTI")
                    ResultadoData(
                        field1: "Ano/Mod",
                        field2: "2018/2019")
                    ResultadoData(
                        field1: "Cor",
                        field2: "Prata")
                    ResultadoData(
                        field1: "Cilindrada/Potência",
                        field2: "1999 cc / 230 cv")
                    ResultadoData(
                        field1: "Chassi",
                        field2: "*****4000126")
                    ResultadoData(
                        field1: "Emplacamento",
                        field2: "Canoas/RS")
                }
                Text("FIPE")
                    .font(.title)
                    .bold()
                
                HStack{
                    ResultadoData(field1: "Código", field2: "005496-8")
                    ResultadoData(field1: "Mês", field2: "Janeiro/2023")
                }
                VStack(spacing: 30){
                    ResultadoData(field1: "Valor", field2: "R$200.000,00").font(.title2).bold()
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 150, height: 55)
                            .foregroundColor(.primary)
                        Button("Press to dismiss") {
                            dismiss()
                        }
                    }
                }
            }
        }
        }
    }


struct Resultado_Previews: PreviewProvider {
    static var previews: some View {
        Resultado()
    }
}
