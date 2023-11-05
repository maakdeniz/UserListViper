//
//  UserListProtocols.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

protocol UserListViewProtocol: AnyObject {
    var presenter: UserListPresenterProtocol? { get set }
    func showUsers(_ users: [User])
}

protocol UserListPresenterProtocol: AnyObject {
    var view: UserListViewProtocol? { get set }
    var interactor: UserListInteractorInputProtocol? { get set }
    var router: UserListRouterProtocol? { get set }
    func viewDidLoad()
    func didSelectUser(at: Int)
}

protocol UserListInteractorInputProtocol: AnyObject {
    var presenter: UserListInteractorOutputProtocol? { get set }
    var users: [User] { get set }
    func fetchUsers()
    func retrieveUser(at: Int)
}

protocol UserListInteractorOutputProtocol: AnyObject {
    func didRetrieveUsers(_ users: [User])
    func didRetrieveUser(_ user: User)
}

protocol UserListRouterProtocol: AnyObject {
    func navigateToUserDetail(from view: UserListViewProtocol?, with user: User)
}

protocol UserListEntityProtocol: AnyObject {
    // ... diğer entity methodları
}

