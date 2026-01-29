//
//  ProductService.swift
//  EasyShoes
//
//  Created by Jorge Mayta on 28/01/26.
//

import Foundation

class ProductService {
    
    static let shared = ProductService()
    
    func getProducts(completion: @escaping([Product]?, String? ) -> Void ) {
        
        let endpoint = "https://api.escuelajs.co/api/v1/products"
        
        guard let url = URL(string: endpoint) else {
            completion(nil, "Error: cannot create URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { data, response, error in
            
            guard error == nil else {
                completion(nil, "Error: \(error!.localizedDescription)")
                return
            }
            
            guard let data = data else {
                completion(nil, "Error: No data found")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "Error: Invalid response from API")
                return
            }
            
            
            do {
                let products = try JSONDecoder().decode([Product].self, from: data)
                completion(products, nil)
            }
            catch(let error) {
                completion(nil, "Error: \(error.localizedDescription)")
            }
        }
        
        task.resume()
        
    }
    
}
