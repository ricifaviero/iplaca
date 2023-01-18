import SwiftUI

class PlacaModel: ObservableObject {
    var limit: Int = 7
    @Published var placa: String = "" {
        didSet {
            if placa.count > limit {
                placa = String(placa.prefix(limit))
            }
        }
    }
}
struct ContentView: View {
    @State var isShowingBuscar = false
    @State var isShowinghistorico = false
    @State var placa = ""
    @ObservedObject private var placaModel = PlacaModel()

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.purple)
                .ignoresSafeArea()
            
            VStack(spacing: 50) {
                Text("iPlaca")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .bold()
                
                ZStack(alignment: .center){
                    Image("placa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 330)
                    
                    TextField("", text: $placaModel.placa)
                        .scaledToFit()
                        .frame(width: 300)
                        .background()
                        .keyboardType(.default)
                }
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 110, height: 55)
                            .foregroundColor(.secondary)
                        Button("Buscar"){isShowingBuscar.toggle()}
                                .sheet(isPresented: $isShowingBuscar, content:{ Resultado()
                                .presentationDetents([.fraction(0.65)])
                                .presentationDragIndicator(.visible)})
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                                .frame(width: 110, height: 55)
                                .foregroundColor(.secondary)
                        Button("Histórico"){isShowinghistorico.toggle()}
                                .sheet(isPresented: $isShowinghistorico, content:{ Historico()
                                        .presentationDetents([.fraction(0.50), .large])
                                .presentationDragIndicator(.visible)})
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
