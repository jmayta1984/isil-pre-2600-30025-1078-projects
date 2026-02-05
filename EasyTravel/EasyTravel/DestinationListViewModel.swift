//
//  DestinationListViewModel.swift
//  EasyTravel
//
//  Created by Jorge Mayta on 4/02/26.
//

import Combine
import Foundation

class DestinationListViewModel: ObservableObject {
    
    @Published private(set) var destinations: [Destination] = []
    private let service = DestinationService.shared
    
    func getAllDestinations() {
        
        service.getDestinations { destinations, message in
            if let destinations = destinations {
                DispatchQueue.main.async {
                    self.destinations = destinations
                }
            }
        }
    }
}
