//
//  ListDishesViewController.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 19.12.2022.
//

import UIKit

class ListDishesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var category: DishCategory!
    
    var dishes: [Dish] = [
        .init(id: "id1", name: "garri", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345),
        .init(id: "id1", name: "Indomie", description: "this is the best  I have ever tasted", image: "https://picsum.photos/200/300" , calories: 134),
        .init(id: "id1", name: "Cato", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 34)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = category.name
        registerCells()
    }
    
    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }
}

extension ListDishesViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dishes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell.setup(dish: dishes[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let controller = DishDetailViewController.instantiate()
        controller.dish = dishes[indexPath.row]
        navigationController?.pushViewController(controller, animated: true)
    }
}
