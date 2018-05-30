//
//  GamesViewController+Additions.swift
//  AppStore Clone
//
//  Created by instance on 2018/5/30.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

extension GamesViewController {
    /// MARK - Configuration
    
    internal func configure(tableView: UITableView) {
        tableView.register(cellType: LimitedTimeTableCell.self)
        tableView.register(cellType: GamesSectionHeaderTableViewCell.self)
        tableView.dataSource = self
        tableView.delegate = self
    }
}


extension GamesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            return tableView.dequeueReusableCell(for: indexPath) as GamesSectionHeaderTableViewCell
        case 1:
            return tableView.dequeueReusableCell(for: indexPath) as LimitedTimeTableCell
        default:
            return tableView.dequeueReusableCell(for: indexPath) as LimitedTimeTableCell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return GamesSectionHeaderTableViewCell.ViewHeight
        case 1:
            return GamesSliderCollectionViewCell.RowHeight
        default:
            return 80
        }
    }
}
