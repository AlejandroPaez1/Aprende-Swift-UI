//
//  tercerView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct alarmaView: View {
    @State var isPresented: Bool = false
    //valores de entorno o environmentValues
//    @Environment(\.locale)//par ver la region
//    @Environment(\.colorScheme)//colores el darkmode o light
    @Environment(\.horizontalSizeClass) var sizeClass
    
    @Environment(\.verticalSizeClass) var sizeClassV
    
    var body: some View {
        
        VStack{
            Text("seccion de alerta")
                .multilineTextAlignment(.center)
                .padding([.top, .leading, .trailing], 11.0)
            
            Button {
                isPresented = true
            } label: {
                Text("alerta")
                    .foregroundColor(.green)
                    .bold()
                
                    .alert(isPresented: $isPresented, content: {
                        Alert(title: Text("Titulo"),
                              message: Text("el error puede ser"),
                              primaryButton: Alert.Button.default(Text("Aceptar"), action: {
                            print("El user ha pulsado el botón de Aceptar")
                        }),
                              secondaryButton: .destructive(Text("Cancelar")))
                    })
            }
            
            Divider()
            
          Text("si es compacto o regular design")
            
//            if sizeClass == .compact && sizeClassV == .regular {
//                compactDesign()
//            }else{
//                regularDesign()
//            }
            Divider()

            
            
        }//vstack
    }
}





struct compactDesign: View{
    var body: some View{
        VStack{
            Text("diseño compacto")
                .font(.largeTitle)
            Text("diseño compacto")
                .font(.largeTitle)
            Text("diseño compacto")
                .font(.largeTitle)
        }.background(Color.red)

    }
}


struct regularDesign: View{
    var body: some View{
        HStack{
            Text("diseño regular")
                .font(.largeTitle)
            Text("diseño regular")
                .font(.largeTitle)
            Text("diseño regular")
                .font(.largeTitle)
        
            
        }.background(Color.green)
    }
}
struct segView_Previews: PreviewProvider {
    static var previews: some View {
        alarmaView()
    }
}
