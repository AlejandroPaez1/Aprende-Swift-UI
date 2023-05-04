//
//  VentantaModalView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//


import SwiftUI

struct VentanaModalView: View {
    @Environment(\.presentationMode) var back
    
    var texto : String
    var texto2 = ""
    
    var body: some View {
        
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)

            VStack{
                Text ("con texto: \(texto)")
                    .font (.title)
                    .foregroundColor (.white)
                    .bold()
                Button("cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
            
        }
    }
}

struct VentanaModalView_Previews: PreviewProvider {
    static var previews: some View {
        VentanaModalView(texto: "")
    }
}
