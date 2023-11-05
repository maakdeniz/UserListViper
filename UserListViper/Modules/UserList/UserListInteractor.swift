//
//  UserListInteractor.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

class UserListInteractor: UserListInteractorInputProtocol {
   
    weak var presenter: UserListInteractorOutputProtocol?
    var users: [User] = []
    
    func fetchUsers() {
        APIService.shared.getUsers { [weak self] (users, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            self?.users = users ?? []
            self?.presenter?.didRetrieveUsers(users ?? [])
        }
    }
    
    func retrieveUser(at index: Int) {
        print("\(index)")
        guard index >= 0 && index < users.count else {
            return
        }
        let user = users[index]
        presenter?.didRetrieveUser(user)
    }
    
}
