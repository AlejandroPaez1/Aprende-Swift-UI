//
//  secondView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct secondView: View {
    
    @State private var numero = 0
    @State private var show = true
    @State var equipoA = 0
    @State var equipoB = 0
     
    
    class Persona{
        //parametros
        var nombre : String = ""
        var edad: Int = 0
        //constructor
        init(nombre: String, edad: Int) {
            self.nombre = nombre
            self.edad = edad
        }
        
        //metodos y funciones
        func hola() -> String{
            return "hola desde la clase personas"
        }
    }
    
    @State var persona = Persona(nombre: "pablo", edad: 23)
    

    
    var body: some View {
        VStack{
            Text(" el nombre es \(persona.nombre)")
            Text(" la funcione es \(persona.hola())")
                .padding()
            Text("boton explicando el state")
            Button {
                show.toggle()
                if show{
                    numero -= 1
                }else{
                    numero += 1
                }
            } label: {
                if show{
                    Image(systemName: "heart")
                        .foregroundColor(Color.red)
                        .font(.largeTitle)
                }else{
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color.red)
                        .font(.largeTitle)
                    
                }
                Text(String(numero))
                    .bold()
                
            }
        Divider()
            pantallaView(equipoA: equipoA, equipoB: equipoB, numero: numero)
            
            
        }
        
    }
    
    
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        secondView()
    }
}
