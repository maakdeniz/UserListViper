//
//  UserDetailProtocols.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import Foundation

protocol UserDetailViewProtocol: AnyObject {
    var presenter: UserDetailPresenterProtocol? { get set }
    
}

protocol UserDetailPresenterProtocol: AnyObject {
    var view: UserDetailViewProtocol? { get set }
    var router: UserDetailRouterProtocol? { get set }
    var user: User? { get set }
    
}

protocol UserDetailRouterProtocol: AnyObject {
    
}
