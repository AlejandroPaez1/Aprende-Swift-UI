//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct MarcadorView: View {
    //si no cambia de estado se usa binding si solo lee se usa otro metodo
    @Binding var equipoA: Int
    @Binding var equipoB: Int
    
    var body: some View {
     VStack{
         HStack{
             
             VStack{
                 Text("Equipo A marcador")
                     .font(.title2)
                 Text("\(equipoA)")
                     .font(.largeTitle)
                     .fontWeight(.bold)
                     .foregroundColor(.blue)
             }
             Spacer()
             VStack{
                 Text("Equipo B marcador")
                     .font(.title2)
                 Text("\(equipoB)")
                     .font(.largeTitle)
                     .fontWeight(.bold)
                     .foregroundColor(.blue)
             }
             
     

             
         }.padding()
         
         HStack{
             Button(action: {
                 //aqui pone la accion del mundo
                 equipoA += 1
                 
             }, label: {
                 Text("+1 Equipo A")
                     .font(.footnote)
                     .fontWeight(.semibold)
                     .multilineTextAlignment(.center)
                     .padding()
                     .background(Color.blue)
                     .foregroundColor(.white)
                     .cornerRadius(10)
                 
                 
             })
             
             Button(action: {
                 //aqui pone la accion del mundo
                 equipoB += 1
                 
             }, label: {
                 Text("+1 Equipo B")
                     .font(.footnote)
                     .fontWeight(.semibold)
                     .padding()
                     .background(Color.red)
                     .foregroundColor(.white)
                     .cornerRadius(10)
                 
             })
         }
        }
    }
}

struct MarcadorView_Previews: PreviewProvider {
    static var previews: some View {
        MarcadorView(equipoA: .constant(0), equipoB:  .constant(0))
    }
}
