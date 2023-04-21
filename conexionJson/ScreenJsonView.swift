//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 21/04/23.
//

import SwiftUI

struct ScreenJsonView: View {
    @ObservedObject var login = PostViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ScreenJsonView_Previews: PreviewProvider {
    static var previews: some View {
        ScreenJsonView()
    }
}
