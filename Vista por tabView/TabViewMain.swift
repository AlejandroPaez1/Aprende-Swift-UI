//
//  TabView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            
            ContentView().tabItem{
                Label("home",systemImage: "house.circle")
            }
            
            vista2tabView().tabItem{
                Label("vista 2",systemImage: "arrowshape.turn.up.backward.2")
            }
            alarmaView().tabItem{
                Label("vista alerta",systemImage:"exclamationmark.triangle")
            }
        }.tabViewStyle(PageTabViewStyle())
            
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMain()
    }
}
