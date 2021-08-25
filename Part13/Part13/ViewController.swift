//
//  ViewController.swift
//  Part13
//
//  Created by 葡萄酒 on 2021/08/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    private let fruits = ["りんご","みかん","バナナ","パイナップル"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "CheckCell", for: indexPath)
        
        cell.textLabel!.text = fruits[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.imageView?.tintColor = .white
        } else {
            cell.imageView?.tintColor = .orange
        }
        
        return cell
    }
}
