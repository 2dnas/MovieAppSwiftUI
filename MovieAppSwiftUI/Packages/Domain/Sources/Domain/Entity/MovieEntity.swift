//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Foundation

public struct MovieEntity {
    public let id: UUID
    public let title: String
    public let year: String
    public let genre: String
    public let description: String
    
    public init(id: UUID, title: String, year: String, genre: String, description: String) {
        self.id = id
        self.title = title
        self.year = year
        self.genre = genre
        self.description = description
    }
}
