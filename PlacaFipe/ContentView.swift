import SwiftUI

struct ContentView: View {
    @State var isShowing = false
    @State var placa = ""
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
                }
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 110, height: 55)
                            .foregroundColor(.secondary)
                        Button("Buscar"){isShowing.toggle()}
                            .sheet(isPresented: $isShowing, content:{ Resultado()     .presentationDetents([.fraction(0.65)])
                                .presentationDragIndicator(.visible)})
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 110, height: 55)
                            .foregroundColor(.secondary)
                        Button("Histórico"){isShowing.toggle()}
                            .sheet(isPresented: $isShowing, content:{ Resultado()     .presentationDetents([.fraction(0.65)])
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
