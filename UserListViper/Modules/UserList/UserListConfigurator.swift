//
//  UserListConfigurator.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

class UserListConfigurator {
    static func configureModule() -> UserListView {
        let view = UserListView()
        let presenter = UserListPresenter()
        let interactor = UserListInteractor()
        let router = UserListRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter 
        
        return view
    }
}
