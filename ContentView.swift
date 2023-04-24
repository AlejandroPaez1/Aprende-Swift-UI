import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var isLoading = true

    var body: some View {
        
     
            NavigationView{
                                // Vista principal de la aplicación
            
                ScrollView(.vertical){
                    
                    VStack(alignment: .center) {
                        
                        Image(systemName: "swift")
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                        
                        Text("Curso ios swift")
                        
                        
                        NavigationLink(destination: secondView()){
                            
                            ZStack {
                                
                                Text("Modulo de constructor")
                                    .font(.body)
                                    .foregroundColor(.white)
                                
                                
                            }.modifier(degradado())
                        }
                        
                        
                        
                        ZStack {
                            NavigationLink(destination: alarmaView()){
                                Text("Modulo alerta, Design compacto o regular")      .font(.body)
                                    .foregroundColor(.white)
                            }
                            
                        }.modifier(degradado())
                        
                        
                        
                        ZStack {
        
                            NavigationLink(destination: llamadaymensajeView()){
                                Text("llamar, mensaje, moda")
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                            
                        }.modifier(degradado())
                        
                        
                        
                        ZStack {
               
                            
                            NavigationLink(destination: TabViewMain()){
                                Text("ejemplo tabView ")
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                            
                            
                        }.modifier(degradado())
                        
                        
                        
                        ZStack {
           
                            NavigationLink(destination: listasGrid()){
                                Text("Ejemplo de lista grid")
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                            
                        }.modifier(degradado())
                        
                        
                        ZStack {
                
                            
                            NavigationLink(destination: ListaView()){
                                Text("Ejemplo de lista")
                                    .font(.body)
                                    .foregroundColor(.white)
                            }
                            
                        }.modifier(degradado())
                        
                        
                        
                        
                        
                    }
                    //.frame(maxWidth: .infinity, alignment: .leading)
//                    .frame(width: 700, height: 700)
                    .padding(18.0)
                    .navigationTitle("Aprende Swiftui")
                    .border(.black)
                }
                   
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
            

    
}


struct degradado : ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 450, height: 200)
        .background(
        LinearGradient(
            gradient: Gradient(colors: [.blue, .purple]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .blur(radius: 2)
        )
   
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
