//
//  UserDetailView.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import UIKit

class UserDetailView: UIViewController, UserDetailViewProtocol {
    var presenter: UserDetailPresenterProtocol?
    var user: User?
}
