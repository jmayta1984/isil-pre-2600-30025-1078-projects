//
//  UserService.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import Foundation

class UserService {
    
    private init() {}
    static let shared = UserService()
    
    func register(body: UserRequest, completion: @escaping(Bool) -> Void) {
        
        let endpoint = "https://travelapi-1071627934947.us-central1.run.app/api/users/register"
        
        
        guard let url = URL(string: endpoint) else {
            completion(false)
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "POST"
        urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let bodyRequest = try JSONEncoder().encode(body)
            urlRequest.httpBody = bodyRequest
        } catch {
            completion(false)
            return
        }

        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            if error != nil {
                completion(false)
                return
            }
           
            guard let data = data else {
                completion(false)
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 201 else {
                completion(false)
                
                return
            }
            
            do {
                _ = try JSONDecoder().decode(UserResponse.self, from: data)
                completion(true)
            } catch {
                completion(false)
            }
        }
        task.resume()
        
        
    }
}
