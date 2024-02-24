//
//  SwiftUIView.swift
//
//
//  Created by Sshanshiashvili on 2/23/24.
//

import SwiftUI
import Domain

struct MovieListView: View {
    @Environment(MovieListViewModel.self) private var viewModel
    
    var body: some View {
        movieList
            .onAppear(perform: viewModel.onAppear)
            .navigationDestination(for: MovieListParams.self) {
                MovieDetailsView(movie: $0.movie)
            }
    }
    
    
    @ViewBuilder private var movieList: some View {
        if viewModel.movieList.isEmpty {
            LoadingView()
        } else {
            movieListView
        }
    }
    
    @ViewBuilder private var movieListView: some View {
        Text("Movies")
        List {
            ForEach(viewModel.movieList) { item in
                MovieListItemView(
                    title: item.title,
                    year: item.year
                )
                .onTapGesture { viewModel.navigateToDetails(with: item) }
            }
        }
    }
}
