//
//  llamadaymensajeView.swift
//  aprende swift ui
//
//  Created by ADMIN UNACH on 18/04/23.
//
import SwiftUI

struct llamadaymensajeView: View {
    let numero = "9622167188"
    let mensaje = "hola mundo mensaje"
    @State private var texto = ""
    
    @State private var show = false

    
    func sendmessage(){
        let sms = "sms:\(numero)&body=\(mensaje)"
        guard let stringSms = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return  }
        
        UIApplication.shared.open(URL.init(string: stringSms)! ,options: [:],completionHandler: nil)
    }
    
    func sendCall(){
        guard let number = URL(string: "tel://\(numero)") else { return }
        UIApplication.shared.open(number)
    }
    
    var body: some View {
        VStack{
            
            TextField("ingresa ",text: $texto)
                .padding(.horizontal, 28.0)
                
            
            Button("abrir modal"){
                show.toggle()
            }.sheet(isPresented: $show){
                VentanaModalView(texto:texto)
            }
            
            HStack{
                Button {
                    sendCall()
                    
                } label: {
                    Image(systemName: "phone.fill")
                        .modifier(boton(color: .blue))
                }
                
                Button {
                    sendmessage()
                    
                } label: {
                    Image(systemName: "message.fill")
                        .modifier(boton(color: .red))
                }
                
            }.navigationTitle("llamadas")
            
                .toolbar{
                    HStack{
                        NavigationLink( destination: toolbarView(texto: texto)){
                            Image(systemName: "plus.app.fill")
                            
                        }
                        
                        NavigationLink( destination: toolbarView(texto: texto)){
                            Image(systemName: "plus.app")
                            
                        }
                        
                    }
                }
        }
    }
}

struct boton: ViewModifier{
    var color : Color
    func body(content: Content) -> some View {
        content
        .padding()
        .background(color)
        .clipShape(Circle())
        .foregroundColor(.white)
        .font(.title)
    }
}

struct llamadaymensajeView_Previews: PreviewProvider {
    static var previews: some View {
        llamadaymensajeView()
    }
}
