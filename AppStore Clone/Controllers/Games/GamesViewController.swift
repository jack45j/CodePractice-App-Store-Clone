//
//  GamesViewController.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
    @IBOutlet private weak var uiTableViewGames: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /// configure(Initialize) tableView
        configure(tableView: uiTableViewGames)
    }
}
