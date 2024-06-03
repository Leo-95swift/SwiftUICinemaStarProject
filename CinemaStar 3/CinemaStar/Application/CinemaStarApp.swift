// CinemaStarApp.swift
// Copyright © RoadMap. All rights reserved.

import SwiftData
import SwiftUI

@main
struct CinemaStarApp: App {
    var body: some Scene {
        WindowGroup {
            let assembly = Assembly()
            assembly.buildMoviesModule()
                .modelContainer(for: [SwiftDataMovie.self, SwiftDataMovieDetail.self])
        }
    }

    init() {
        KeychainService.shared.token = S.token3
    }
}
