import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var isLoading = true

    var body: some View {
        
        NavigationView{
            

                // Vista principal de la aplicación
        
    
            VStack(alignment: .leading) {
                Image(systemName: "swift")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Curso ios swift")
                

                NavigationLink(destination: secondView()){
                    Text("Modulo de constructor")
                }

                NavigationLink(destination: alarmaView()){
                    Text("Modulo alerta, Design compacto o regular")
                }
                
                NavigationLink(destination: llamadaymensajeView()){
                    Text("llamar, mensaje, moda")
                }
 
                                
                NavigationLink(destination: TabViewMain()){
                    Text("ejemplo tabView ")
                }
                
                NavigationLink(destination: listasGrid()){
                    Text("Ejemplo de lista grid")
                }
                
                NavigationLink(destination: ListaView()){
                    Text("Ejemplo de lista")
                }
                 
           
                
                
            }
            .padding(18.0)
            .navigationTitle("Aprende Swiftui")
            .border(.black)
             
               
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
