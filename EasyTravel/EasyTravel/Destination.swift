//
//  Destination.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

struct Destination: Decodable, Identifiable {
    let id: Int
    let title: String
    let country: String
    let city: String
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case country
        case city
        case poster = "posterPath"
    }
}

nonisolated struct DestinationsWrapper: Decodable {
    let destinations : [Destination]
    
    enum CodingKeys: String, CodingKey {
        case destinations = "results"
    }
    
}
