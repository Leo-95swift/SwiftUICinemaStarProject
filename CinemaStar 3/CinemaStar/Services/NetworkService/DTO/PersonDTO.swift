// PersonDTO.swift
// Copyright © RoadMap. All rights reserved.

import Foundation

/// Актеры
struct PersonDTO: Codable {
    /// Имя актера
    let name: String?
    /// Ссылка на изображение актера
    let photo: String?
}
