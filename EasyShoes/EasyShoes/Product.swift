//
//  Product.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let images: [String]
}
