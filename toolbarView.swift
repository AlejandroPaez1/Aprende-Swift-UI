//
//  toolbarView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct toolbarView: View {
    var texto: String
    
    var body: some View {
        Text("hola de la pantalla anterior \(texto)")
    }
}

struct toolbarView_Previews: PreviewProvider {
    static var previews: some View {
        toolbarView(texto: "")
    }
}
