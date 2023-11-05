//
//  UserDetailConfigurator.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

class UserDetailConfigurator {
    static func configureModule(with user: User) -> UserDetailView {
        let view = UserDetailView()
        let presenter = UserDetailPresenter()
        let router = UserDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.user = user
        
        return view
    }
}
