//
//  File.swift
//  
//
//  Created by ADMIN UNACH on 21/04/23.
//

import Foundation
class PostViewModel : ObservableObject{
    @Published var autehnticated = 0
    
    init(){
        login(email: "eve.holt@reqres.in", password: "cityslicka")
    }
    
    func login(email: String,password: String){
        guard let url = URL(string: "https://reqres.in/api/login") else {return }
        let parametros = ["email":email,"password":password]
        let body = try! JSONSerialization.data(withJSONObject: parametros)
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = body
        request.setValue("aplication/json", forHTTPHeaderField: "Content-Type")
        
        URLSession.shared.dataTask(with: request){data,response,error in
            if let response = response{
                print(response)
            }
        }.resume()
    }
}
