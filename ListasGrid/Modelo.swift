//
//  File.swift
//  
//
//  Created by ADMIN UNACH on 18/04/23.
//

import Foundation

//es darle un registro los registros que tenemos como modelo
struct Modelo: Identifiable{
    let id = UUID()//identifica
    let emoji : String
    let nombre : String
    let descripcion: String
}

let lista: [Modelo] = [
    Modelo (
    emoji: "🥑",
    nombre: "Aguacate",
    descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
    
    Modelo (
    emoji: "🐬",
    nombre: "delfin",
    descripcion: "Delfin delfin"),

    Modelo (
    emoji: "🐶",
    nombre: "perro",
    descripcion: "PERRO perrro de cuatro patas lorem lorem"),
    
    Modelo (
    emoji: "🧩",
    nombre: "pieza de rompecabeza",
    descripcion: "Rompecabezas lorem lorem lorem"),
    
    Modelo (
    emoji: "🥑",
    nombre: "Aguacate",
    descripcion: "El aguacate es un fruto exótico carnoso que se obtiene del árbol tropical del mismo nombre. En algunas partes de América del Sur se conoce como Palta.."),
    
    Modelo (
    emoji: "🐬",
    nombre: "delfin",
    descripcion: "Delfin delfin"),

    Modelo (
    emoji: "🐶",
    nombre: "perro",
    descripcion: "PERRO perrro de cuatro patas lorem lorem"),
    
    Modelo (
    emoji: "🧩",
    nombre: "pieza de rompecabeza",
    descripcion: "Rompecabezas lorem lorem lorem ")
]

