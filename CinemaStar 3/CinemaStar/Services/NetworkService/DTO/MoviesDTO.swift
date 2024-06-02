// MoviesDTO.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

// MARK: - Movies

/// Массив фильмов
struct MoviesDTO: Codable {
    let docs: [MovieDTO]
}
