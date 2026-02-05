//
//  DestinationService.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import Foundation

class DestinationService {
    
    private init() {}
    
    static let shared = DestinationService()
    
    func getDestinations(completion: @escaping([Destination]?, String?) -> Void) {
        
        let endpoint = "https://travelapi-1071627934947.us-central1.run.app/api/destinations"
        
        guard let url = URL(string: endpoint) else {
            completion(nil, "Invalid URL")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(nil, error.localizedDescription)
                return
            }
            
            guard let data = data else {
                completion(nil, "No data received")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(nil, "Invalid response")
                return
            }
            
            do {
                let wrapper = try JSONDecoder().decode(DestinationsWrapper.self, from: data)
                completion(wrapper.destinations, nil)
            } catch let error {
                completion(nil, error.localizedDescription)
            }
            
        }
        
        task.resume()
        
        
    }
}
