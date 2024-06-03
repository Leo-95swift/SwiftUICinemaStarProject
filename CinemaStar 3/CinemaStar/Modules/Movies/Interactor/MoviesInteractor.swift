// MoviesInteractor.swift
// Copyright © RoadMap. All rights reserved.

import Combine
import SwiftData
import SwiftUI

/// Протокол для взаимодействия с интерактором
protocol MoviesInteractorProtocol {
    // для загрузки фильмов
    func fetchMovies()
}

/// Интерактор экрана с фильмами
final class MoviesInteractor: MoviesInteractorProtocol {
    // MARK: - Public Properties

    var presenter: (any MoviesPresenterProtocol)?
    var networkService: NetworkServiceProtocol?

    // MARK: - Private Properties

    private var cancellablesSet: Set<AnyCancellable> = []

    // MARK: - Public Methodes

    func fetchMovies() {
        networkService?.fetchMovies()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case let .failure(error):
                    print("Failed to fetch users: \(error.localizedDescription)")
                }
            }, receiveValue: { [unowned self] moviesDTO in
                var movies = moviesDTO.docs.map { Movie(dto: $0) }

                let group = DispatchGroup()

                for (index, movie) in movies.enumerated() {
                    if let url = URL(string: movie.imageUrl ?? "") {
                        group.enter()
                        networkService?.fetchImage(from: url)
                            .receive(on: DispatchQueue.main)
                            .sink(receiveCompletion: { _ in
                                group.leave()
                            }, receiveValue: { image in
                                movies[index].image = image
                            })
                            .store(in: &cancellablesSet)
                    }
                }
                group.notify(queue: .main) {
                    self.presenter?.didFetchMovies(movies)
                }
            })
            .store(in: &cancellablesSet)
    }
}
