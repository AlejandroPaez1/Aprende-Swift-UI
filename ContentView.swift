import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var isLoading = true
    @Environment(\.verticalSizeClass) var verticalSizeClass

    var gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
//    @State private var gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: 1)
    
 
    
    var body: some View {
        
        
        
        // Vista principal de la aplicación
    
    
        NavigationView{
            ScrollView(.vertical){
                
                VStack(alignment: .center) {
                    Image(systemName: "swift")
                        .font(.system(size: 80))
                        .foregroundColor(.accentColor)
                    
                
                
                    getLazyVGrid()
//
//                    LazyVGrid(columns: gridItem){
//                        ForEach(listCurso){item in
//                            NavigationLink(
//                                destination: item.destination){
//                                    VStack {
//                                        Text(item.titulo)
//                                            .font(.largeTitle)
//                                            .bold()
//                                            .padding()
//                                        //.padding(EdgeInsets(top: -60, leading: 0, bottom: 20, trailing: 0))
//
//                                        Text(item.detalle)
//                                            .font(.callout)
//
//                                    }.modifier(degradado())
//
//                                }
//
//                        }
//
//                    }
                    //.frame(maxWidth: .infinity, alignment: .leading)
                    //                    .frame(width: 700, height: 700)
                    //.padding(18.0)
                    .navigationTitle("Aprende Swiftui")
                    .border(.black)
                }
                
                
            }
        }.navigationViewStyle(StackNavigationViewStyle())
        
        
        
        
    }
    
}


struct degradado : ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 450, height: 200)
            .foregroundColor(.white)
    
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



func getLazyVGrid() -> some View {
    let verticalSizeClass = UIScreen.main.traitCollection.verticalSizeClass
    let columns = verticalSizeClass == .regular ? 1 : 2
    let gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: columns)

    return LazyVGrid(columns: gridItem) {
        ForEach(listCurso) { item in
            NavigationLink(
                destination: item.destination) {
                VStack {
                    Text(item.titulo)
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    //.padding(EdgeInsets(top: -60, leading: 0, bottom: 20, trailing: 0))
                    
                    Text(item.detalle)
                        .font(.callout)
                }.modifier(degradado())
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
