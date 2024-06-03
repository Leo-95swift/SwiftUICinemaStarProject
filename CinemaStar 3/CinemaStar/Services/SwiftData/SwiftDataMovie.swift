// SwiftDataMovie.swift
// Copyright © RoadMap. All rights reserved.

import SwiftData
import UIKit

/// Модель фильма для хранения данных
@Model
final class SwiftDataMovie {
    /// URL изображения постера фильма
    let imageUrl: String
    /// Название фильма
    let movieName: String
    /// Рейтинг фильма
    let rating: Double
    /// Уникальный идентификатор фильма
    let movieID: Int
    /// Данные изображения постера фильма, могут быть nil
    var image: Data?
    /// Уникальный идентификатор модели, используется UUID
    var id = UUID()

    init(imageUrl: String, movieName: String, rating: Double, id: Int, image: Data?) {
        self.imageUrl = imageUrl
        self.movieName = movieName
        self.rating = rating
        movieID = id
        self.image = image
    }
}
