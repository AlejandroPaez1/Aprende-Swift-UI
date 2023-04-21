//
//  SwiftUIView.swift
//  
//
//  Created by ADMIN UNACH on 18/04/23.
//

import SwiftUI

struct pantallaView: View {
    
    @State var equipoA = 0
    @State var equipoB = 0
    
    var numero = 0
    
    var body: some View {

        VStack {
            Text("scoreboard")
                .font(.title3)
                .fontWeight(.regular)
            
            HStack{
                
                VStack{
                    MarcadorView(equipoA: $equipoA,
                                 equipoB: $equipoB)
                                        
                
                    

                        .padding()
                                        
                }
                
            }
            
        }
    }
}

struct pantallaView_Previews: PreviewProvider {
    static var previews: some View {
        pantallaView()
    }
}
