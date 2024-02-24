//
//  SwiftUIView.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie: MovieListViewModel.MovieListItem
    
    init(movie: MovieListViewModel.MovieListItem) {
        self.movie = movie
    }
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                
                // this could be movie poster
                Rectangle()
                    .foregroundColor(.gray)
                    .aspectRatio(0.7, contentMode: .fit)
                    .cornerRadius(8)
                    .shadow(radius: 5)

                Text(movie.title)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                HStack {
                    Text(movie.year)
                        .font(.subheadline)
                        .foregroundColor(.secondary)

                    Spacer()

                    Text(movie.genre)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Text(movie.description)
                    .font(.body)
                    .lineSpacing(4)
            }
            .padding()
        }
        .navigationTitle("Movie Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    MovieDetailsView(movie: .init(
        title: "Breaking bad",
        year: "2013",
        genre: "Action",
        description: "This is a description of the")
    )
}


