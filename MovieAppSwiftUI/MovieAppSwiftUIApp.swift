//
//  MovieAppSwiftUIApp.swift
//  MovieAppSwiftUI
//
//  Created by Sshanshiashvili on 2/23/24.
//

import SwiftUI
import Presentation

@main
struct MovieAppSwiftUIApp: App {
    @State private var navigation: NavigationCoordinator = DependencyContainer.navigationCoordinator
    @State private var viewModel: MovieListViewModel = MovieListViewModel(
        movieUsecase: DependencyContainer.movieUsecase,
        navigation: DependencyContainer.navigationCoordinator
    )
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $navigation.path) {
                Presentation.initialView()
                    .environment(viewModel)
            }
        }
    }
}
