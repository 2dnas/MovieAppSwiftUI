//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Foundation
import Domain

@Observable
public final class MovieListViewModel {
    var movieList: [MovieListItem] = []
    
    // MARK: - Usecases
    private var movieUsecase: MovieUsecase
    private var navigation: MovieListCoordinator
    
    public init(movieUsecase: MovieUsecase, navigation: NavigationCoordinator) {
        self.movieUsecase = movieUsecase
        self.navigation = navigation
    }
    
    func onAppear() {
        fetchMovies()
    }
    
    func fetchMovies() {
        Task {
            do {
                let entity = try await movieUsecase.fetch()
                handle(movies: entity)
            } catch {
                // here should be error handling if network service call fails
            }
        }
    }
    
    private func handle(movies: [MovieEntity]) {
        movieList = movies.map {
            .init(
                title: $0.title,
                year: $0.year,
                genre: $0.genre,
                description: $0.description
            )
        }
    }
}


// MARK: - Navigation
extension MovieListViewModel {
    func navigateToDetails(with movie: MovieListViewModel.MovieListItem) {
        navigation.navigateToDetails(with: movie)
    }
}

extension MovieListViewModel {
    struct MovieListItem: Identifiable {
        let id = UUID()
        let title: String
        let year: String
        let genre: String
        let description: String
    }
}
