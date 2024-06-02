// Movie.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Модель фильма
struct Movie {
    let imageUrl: String?
    let movieName: String?
    let rating: Double?
    let id: Int
    var image: UIImage?

    init(dto: MovieDTO) {
        imageUrl = dto.poster.url
        movieName = dto.name
        rating = dto.rating?.kp
        id = dto.id
    }
}
