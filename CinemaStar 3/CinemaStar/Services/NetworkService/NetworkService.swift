// NetworkService.swift
// Copyright © RoadMap. All rights reserved.

import Combine
import UIKit

/// Протокол для взаимодействия с нетворк сервисом
protocol NetworkServiceProtocol {
    func fetchMovies() -> AnyPublisher<MoviesDTO, Error>
    func fetchImage(from url: URL) -> AnyPublisher<UIImage?, Error>
    func fetchMovie(by id: Int) -> AnyPublisher<MovieDTO, Error>
}

/// Нетворк сервис
class NetworkService: NetworkServiceProtocol {
    func fetchMovies() -> AnyPublisher<MoviesDTO, Error> {
        guard let url = URL(string: S.NetworkService.moviesURL) else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }

        var request = URLRequest(url: url)
        request.setValue(KeychainService.shared.token, forHTTPHeaderField: S.NetworkService.httpHeader)

        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: MoviesDTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

    func fetchMovie(by id: Int) -> AnyPublisher<MovieDTO, Error> {
        guard let url = URL(string: "\(S.NetworkService.movieDetailURL)" + "\(id)") else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }

        var request = URLRequest(url: url)
        request.setValue(KeychainService.shared.token, forHTTPHeaderField: S.NetworkService.httpHeader)

        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: MovieDTO.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }

    func fetchImage(from url: URL) -> AnyPublisher<UIImage?, Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map { UIImage(data: $0.data) }
            .mapError { $0 as Error }
            .eraseToAnyPublisher()
    }
}
