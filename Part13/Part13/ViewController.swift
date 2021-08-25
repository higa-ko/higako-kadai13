//
//  ViewController.swift
//  Part13
//
//  Created by 葡萄酒 on 2021/08/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let items = ["りんご", "みかん", "バナナ", "パイナップル"]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckCell", for: indexPath)

        cell.textLabel?.text = items[indexPath.row]

        if indexPath.row % 2 == 0 {
            cell.imageView?.tintColor = .white
        } else {
            cell.imageView?.tintColor = .orange
        }

        return cell
    }
}
