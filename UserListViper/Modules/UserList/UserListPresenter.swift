//
//  UserListPresenter.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

class UserListPresenter: UserListPresenterProtocol {
    weak var view: UserListViewProtocol?
    var interactor: UserListInteractorInputProtocol?
    var router: UserListRouterProtocol?
    
    func viewDidLoad() {
        print("viewDidLoad Called")
        interactor?.fetchUsers()
    }
    
    func didSelectUser(at index: Int) {
        print("didSelectUser at index: \(index)")
        interactor?.retrieveUser(at: index)
    }
}

extension UserListPresenter: UserListInteractorOutputProtocol {
    func didRetrieveUsers(_ users: [User]) {
        view?.showUsers(users)
    }
    
    func didRetrieveUser(_ user: User) {
        router?.navigateToUserDetail(from: view, with: user)
    }
    
}
