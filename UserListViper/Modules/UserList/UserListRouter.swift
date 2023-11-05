//
//  UserListRouter.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import UIKit

class UserListRouter: UserListRouterProtocol {
    func navigateToUserDetail(from view: UserListViewProtocol?, with user: User) {
        let userDetailView = UserDetailConfigurator.configureModule(with: user)
        if let sourceView = view as? UIViewController {
            guard let navigationController = sourceView.navigationController else {
                print("Navigation controller is nil")
                return
            }
            navigationController.pushViewController(userDetailView, animated: true)
        }
    }
    
}
