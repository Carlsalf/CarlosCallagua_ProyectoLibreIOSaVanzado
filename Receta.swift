//
//  Receta.swift
//  RecetasSaludables
//
//  Created by Carlos Alfredo Call on 25/11/25.
//

import Foundation

struct Receta {
    let id: Int
    let nombre: String
    let categoria: String
    let dificultad: String
    let tiempoMinutos: Int
    let calorias: Int
    let imagenNombre: String
    let ingredientes: [String]
    let pasos: [String]
    var esFavorita: Bool
}

class RecetaStore {
    static let recetas: [Receta] = [
        Receta(
            id: 1,
            nombre: "Ensalada de quinoa",
            categoria: "Almuerzo",
            dificultad: "Fácil",
            tiempoMinutos: 20,
            calorias: 350,
            imagenNombre: "ensalada_quinoa",
            ingredientes: [
                "1 taza de quinoa",
                "Tomates cherry",
                "Pepino",
                "Aceite de oliva",
                "Limón"
            ],
            pasos: [
                "Cocer la quinoa 12 minutos.",
                "Picar las verduras.",
                "Mezclar y aliñar."
            ],
            esFavorita: false
        ),
        Receta(
            id: 2,
            nombre: "Avena con frutas",
            categoria: "Desayuno",
            dificultad: "Fácil",
            tiempoMinutos: 10,
            calorias: 280,
            imagenNombre: "avena_frutas",
            ingredientes: [
                "Avena",
                "Leche o bebida vegetal",
                "Plátano",
                "Fresas"
            ],
            pasos: [
                "Calentar la leche.",
                "Mezclar con la avena.",
                "Agregar fruta encima."
            ],
            esFavorita: false
        ),
        Receta(
            id: 3,
            nombre: "Batido verde detox",
            categoria: "Bebidas",
            dificultad: "Fácil",
            tiempoMinutos: 5,
            calorias: 150,
            imagenNombre: "batido_verde",
            ingredientes: [
                "Espinaca",
                "Manzana verde",
                "Jengibre",
                "Agua"
            ],
            pasos: [
                "Lavar los ingredientes.",
                "Licuar todo junto.",
                "Servir frío."
            ],
            esFavorita: false
        ),
        Receta(
            id: 4,
            nombre: "Pollo al limón",
            categoria: "Cena",
            dificultad: "Media",
            tiempoMinutos: 25,
            calorias: 420,
            imagenNombre: "pollo_limon",
            ingredientes: [
                "Pechuga de pollo",
                "Limón",
                "Ajo",
                "Aceite de oliva"
            ],
            pasos: [
                "Marinar el pollo.",
                "Cocinar a la plancha.",
                "Agregar limón al final."
            ],
            esFavorita: false
        )
    ]
}
