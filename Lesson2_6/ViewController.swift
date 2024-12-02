//
//  ViewController.swift
//  Lesson2_6
//
//  Created by Ilnar on 30.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let tableData = Card.allCards

    lazy var tableView = {
        $0.dataSource = self
        $0.separatorStyle = .none
        $0.register(CardView.self, forCellReuseIdentifier: CardView.identityfier)
        return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CardView.identityfier, for: indexPath) as! CardView
        let card = tableData[indexPath.row]
        cell.setupCell(card: card)
        cell.selectionStyle = .none
        return cell
    }
}
