//
//  HomeViewModel.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var products: [Product] = []
    
    private let productService = ProductService.shared
    
    func getAllProducts() {
        productService.getProducts { products, error in
            
            if let products = products {
                DispatchQueue.main.async {
                    self.products = products
                }
            }
        }
    }
    
}
