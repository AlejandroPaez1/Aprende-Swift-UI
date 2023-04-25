//
//  ListView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 24/04/23.
//

import Foundation
import SwiftUI

struct ListaItems: Identifiable{
    let id = UUID()
    let titulo: String
    let detalle: String
    let destination : AnyView
}

let listCurso: [ListaItems] = [
    ListaItems(titulo: "Modulo constructor",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(secondView())),
     
     ListaItems(titulo: "Modulo alerta, Design compacto o regular",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(alarmaView())),
     
     ListaItems(titulo: "llamar, mensaje,  ventana modal",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(llamadaymensajeView())),
     
     ListaItems(titulo: "ejemplo tabView",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(TabViewMain())),
     
     ListaItems(titulo: "Ejemplo de lista grid",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(listasGrid())),
     
     ListaItems(titulo: "Ejemplo de lista",
                detalle: "En este modulo aprenderas a usar el binding",
                destination: AnyView(ListaView())),
    
    
    

    ]
