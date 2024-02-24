//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Foundation
import SwiftUI
import Domain

protocol MovieListCoordinator {
    func navigateToDetails(with movie: MovieListViewModel.MovieListItem)
}

extension NavigationCoordinator: MovieListCoordinator {
    func navigateToDetails(with movie: MovieListViewModel.MovieListItem) {
        path.append(MovieListParams(movie: movie))
    }
}

struct MovieListParams {
    fileprivate let identifier = UUID()
    let movie: MovieListViewModel.MovieListItem
    
    init(movie: MovieListViewModel.MovieListItem) {
        self.movie = movie
    }
}

extension MovieListParams: Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.identifier == rhs.identifier
    }
}

extension MovieListParams: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
}

