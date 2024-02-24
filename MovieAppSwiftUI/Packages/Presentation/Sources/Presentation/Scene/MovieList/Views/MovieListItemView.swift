//
//  SwiftUIView.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import SwiftUI

struct MovieListItemView: View {
    private let title: String
    private let year: String
    
    init(title: String, year: String) {
        self.title = title
        self.year = year
    }
    
    var body: some View {
        HStack {
            VStack(spacing: 8) {
                Text(title)
                    
                    .bold()
                Text("Year: \(year)")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    MovieListItemView(
        title: "Breaking bad",
        year: "1992"
    )
}
