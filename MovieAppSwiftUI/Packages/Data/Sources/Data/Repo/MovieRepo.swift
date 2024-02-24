//
//  File.swift
//  
//
//  Created by Sshanshiashvili on 2/23/24.
//

import Domain

public struct DefaultMovieRepo: MovieRepo {
    public init() {}
    
    public func fetch() async throws -> [MovieEntity] {
        try await Task.sleep(nanoseconds: 1_000_000_000)
        return mockDataFactory()
    }
}

extension DefaultMovieRepo {
    private func mockDataFactory() -> [MovieEntity] {
        return [
            .init(
                id: .init(),
                title: "Breaking Bad",
                year: "2008-2013",
                genre: "Crime, Drama, Thriller",
                description: "A high school chemistry teacher turned methamphetamine manufacturing drug dealer."
            ),
            .init(
                id: .init(),
                title: "Se7en",
                year: "1995",
                genre: "Crime, Drama, Mystery",
                description: "Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives."
            ),
            .init(
                id: .init(),
                title: "Interstellar",
                year: "2014",
                genre: "Adventure, Drama, Sci-Fi",
                description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival."
            ),
            .init(
                id: .init(),
                title: "Inception",
                year: "2010",
                genre: "Action, Adventure, Sci-Fi",
                description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a CEO."
            ),
            .init(
                id: .init(),
                title: "Source Code",
                year: "2011",
                genre: "Action, Drama, Mystery",
                description: "A soldier wakes up in someone else's body and discovers he's part of an experimental government program to find the bomber of a commuter train within 8 minutes."
            ),
            .init(
                id: .init(),
                title: "The Prestige",
                year: "2006",
                genre: "Drama, Mystery, Sci-Fi",
                description: "After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other."
            ),
            .init(
                id: .init(),
                title: "Memento",
                year: "2000",
                genre: "Mystery, Thriller",
                description: "A man with short-term memory loss attempts to track down his wife's murderer."
            ),
            .init(
                id: .init(),
                title: "The Dark Knight",
                year: "2008",
                genre: "Action, Crime, Drama",
                description: "When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. The Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice."
            ),
            .init(
                id: .init(),
                title: "Tenet",
                year: "2020",
                genre: "Action, Sci-Fi, Thriller",
                description: "Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time."
            )
        ]
    }

}
