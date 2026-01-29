//
//  HomeViewModel.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published private(set) var brands: [String] = []
    
    func getAllBrands() {
        brands = ["Nike", "Puma", "Adidas", "New Balance", "Converse", "ASICS", "Reebok"]
    }
    
    func removeBrand(at indexSet: IndexSet) {
        if let index = indexSet.first {
            brands.remove(at: index)
        }
    }
    
}
