//
//  ListOrdersViewController.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 20.12.2022.
//

import UIKit

class ListOrdersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        .init(id: "id", name: "Çağatay Gedik", dish: .init(id: "id1", name: "Meat", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345)),
        .init(id: "id", name: "Damla Gedik", dish: .init(id: "id1", name: "Fish", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345)),
        .init(id: "id", name: "Çağrı Gedik", dish: .init(id: "id1", name: "Chicken", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345)),
        .init(id: "id", name: "Ramazan Gedik", dish: .init(id: "id1", name: "Beans", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Orders"
        registerCells()
        
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListOrdersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(order: orders[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        navigationController?.pushViewController(controller, animated: true)
    }
}
