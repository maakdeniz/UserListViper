//
//  UserListView.swift
//  UserListViper
//
//  Created by Mehmet Akdeniz on 5.11.2023.
//

import UIKit

class UserListView: UIViewController, UserListViewProtocol {
   
    var presenter: UserListPresenterProtocol?
    var users: [User] = []
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UserCell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        presenter?.viewDidLoad()
    }
    func showUsers(_ users: [User]) {
        self.users = users
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }
    func setupTableView() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        //tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension UserListView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Çalışıyor")
        presenter?.didSelectUser(at: indexPath.row)
    }
    
    
}
