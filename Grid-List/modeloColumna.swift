//
//  File.swift
//  
//
//  Created by ADMIN UNACH on 19/04/23.
//

import Foundation
import Combine
import SwiftUI

class modeloColuma: ObservableObject {
    @Published var gridItem = [GridItem()]

    func columnas(num: Int){
        gridItem = Array(repeating: .init(.flexible()), count: num)
        UserDefaults.standard.set(num, forKey: "numero")
    }
    init() {
        if let num = UserDefaults.standard.object(forKey: "numero")as? Int{
            gridItem = Array(repeating: .init(.flexible()), count: num)

        }else{
            gridItem = Array(repeating: .init(.flexible()), count: 1)

        }
    }
}
