// MovieDTO.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Фильм
struct MovieDTO: Codable {
    /// Имя фильма
    let name: String
    /// ID фильма
    let id: Int
    /// ДТО-модель с ссылкой на картинку постера
    let poster: PosterDTO
    /// ДТО-модель с рейтингом фильма
    let rating: RatingDTO?
    /// Описание фильма
    let description: String?
    /// Год выпуска
    let year: Int?
    /// Страны
    let countries: [CountriesDTO]?
    /// Тип контента
    let type: String?
    /// Актеры
    let persons: [PersonDTO]?
    /// Языки
    let spokenLanguages: [SpokenLanguagesDTO]?
    /// Похожие фильмы
    let similarMovies: [MovieDTO]?
}
