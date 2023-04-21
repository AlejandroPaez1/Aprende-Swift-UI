//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct ListaView: View {
    var body: some View {
        NavigationView{
            List(lista){ item in
                NavigationLink(
                    destination: VistaDetalle(items: item)){
                        HStack{
                            emoji(emoji: item)
                            Text(item.nombre)
                        }

                    }
        }.navigationTitle("lista")
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

//modularizar el codigo para hacerle el diseño por aparte
struct emoji: View{
    let emoji: Modelo
    var body: some View{
        ZStack{
            Text(emoji.emoji)
                .shadow(radius: 4)
                .font(.title)
                .frame(width: 65, height: 65)
                .overlay(Circle().stroke(Color.purple,lineWidth: 3))
        }
    }
}

struct VistaDetalle: View{
    let items: Modelo
    var body: some View{
        VStack(alignment: .leading,spacing: 3, content: {
            HStack{
                emoji(emoji: items)
                Text(items.nombre)
                    .font(.largeTitle)
                Spacer()
            }
            
            Text(items.descripcion)
                .padding(.top)
            Spacer()
            
        }).padding()
            .navigationTitle("emojis")
    }
}

struct ListaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaView()
    }
}
