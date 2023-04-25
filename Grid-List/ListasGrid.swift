//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct listasGrid: View {
//    let gridItem = [
//        GridItem(.adaptive(minimum: 100))
//    ]
    
//    let gridItem = [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//    ]
    
    //let gridItem: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    @ObservedObject var grid = modeloColuma()
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                //si es horizontal se pone lazyHGrid con rowns
                LazyVGrid(columns: grid.gridItem,spacing: 30) {
                    ForEach(lista){item in
                        Text(item.emoji).font(.system(size: 80))
                        
                    }
                }
            }.navigationTitle("grids")
            
                .toolbar{
                    ToolbarItem{
                        Menu("Opciones"){
                            Section{
                                Button {
                                    grid.columnas(num: 1)
                                } label: {
                                    Text("1 columna")
                                }
                                Button {
                                    grid.columnas(num: 2)

                                } label: {
                                    Text("2 columna")
                                }
                                Button {
                                    grid.columnas(num: 3)
                                    UserDefaults.standard.removeObject(forKey: "numero")

                                } label: {
                                    Text("3 columna")
                                }
                                Button {
                                    UserDefaults.standard.removeObject(forKey: "numero")

                                } label: {
                                    Text("destruir")
                                }

                            }
                        }
                    }
                }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ListasGrid_Previews: PreviewProvider {
    static var previews: some View {
        listasGrid()
    }
}
