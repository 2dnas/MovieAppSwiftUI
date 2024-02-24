//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Foundation

public protocol MovieUsecase {
    func fetch() async throws -> [MovieEntity]
}

public struct DefaultMovieUsecase: MovieUsecase {
    private var repo: MovieRepo
    
    public init(repo: MovieRepo) {
        self.repo = repo
    }
    
    public func fetch() async throws -> [MovieEntity] {
        try await repo.fetch()
    }
}
