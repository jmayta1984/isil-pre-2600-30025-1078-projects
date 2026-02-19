//
//  Task.swift
//  ToDo
//
//  Created by Jorge Mayta on 11/02/26.
//

import Foundation

struct Task: Identifiable, Hashable {
    let id: UUID
    let name: String
}
