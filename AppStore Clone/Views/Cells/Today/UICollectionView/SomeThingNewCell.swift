//
//  SomeThingNewCell.swift
//  AppStore Clone
//
//  Created by Yi-Cheng,Lin on 2018/5/29.
//  Copyright © 2018年 Benson Lin. All rights reserved.
//

import UIKit

class SomeThingNewCell: BaseRoundedCardCell, NibReusable {
    @IBOutlet private weak var uiTableViewSomeThingNewList: UITableView!
    
    @IBOutlet private weak var uiViewBackGround: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        uiTableViewSomeThingNewList.register(cellType: SomeThingNewTableCell.self)
        
        uiViewBackGround.layer.cornerRadius = 14.0
        uiTableViewSomeThingNewList.dataSource = self
        uiTableViewSomeThingNewList.delegate = self
    }
}

extension SomeThingNewCell: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(for: indexPath) as SomeThingNewTableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}
