//
//  DependencyContainer.swift
//  MovieAppSwiftUI
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Domain
import Data
import Presentation

enum DependencyContainer {
    static let navigationCoordinator: NavigationCoordinator = NavigationCoordinator()
    static let movieRepo: MovieRepo = DefaultMovieRepo()
    static let movieUsecase: MovieUsecase = DefaultMovieUsecase(repo: movieRepo)
}
