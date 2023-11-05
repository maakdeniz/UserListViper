//
//  UserDetailPresenter.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

class UserDetailPresenter: UserDetailPresenterProtocol {
    weak var view: UserDetailViewProtocol?
    var router: UserDetailRouterProtocol?
    var user: User?
    
}
