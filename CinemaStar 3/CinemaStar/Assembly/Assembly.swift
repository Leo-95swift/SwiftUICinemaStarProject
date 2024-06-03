// Assembly.swift
// Copyright © RoadMap. All rights reserved.

import SwiftUI

/// Билдер модулей
class Assembly {
    private let networkService = NetworkService()

    func buildMoviesModule() -> some View {
        let presenter = MoviesPresenter()
        let interactor = MoviesInteractor()
        let router = MoviesRouter()
        let view = MoviesView(presenter: presenter)

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        interactor.presenter = presenter
        interactor.networkService = networkService

        return view
    }

    func buildMoviesDetailModule(id: Int) -> some View {
        let interactor = MoviesDetailInteractor()
        let presenter = MoviesDetailPresenter()
        let router = MoviesDetailRouter()
        var view = MoviesDetailView(presenter: presenter)

        view.id = id
        presenter.interactor = interactor
        presenter.router = router
        presenter.view = view
        interactor.presenter = presenter
        interactor.networkService = networkService

        return view
    }
}
