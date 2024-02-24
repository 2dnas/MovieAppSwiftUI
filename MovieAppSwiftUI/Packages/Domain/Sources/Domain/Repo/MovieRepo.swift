//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Foundation

public protocol MovieRepo {
    func fetch() async throws -> [MovieEntity]
}
