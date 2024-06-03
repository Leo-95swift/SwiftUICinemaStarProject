// Movie.swift
// Copyright © RoadMap. All rights reserved.

import UIKit

/// Модель фильма
struct Movie {
    /// URL изображения постера фильма
    let imageUrl: String?
    /// Название фильма
    let movieName: String?
    /// Рейтинг фильма
    let rating: Double?
    /// Уникальный идентификатор фильма
    let id: Int
    /// Изображение постера фильма, может быть nil
    var image: UIImage?

    init(dto: MovieDTO) {
        imageUrl = dto.poster.url
        movieName = dto.name
        rating = dto.rating?.kp
        id = dto.id
    }
}
