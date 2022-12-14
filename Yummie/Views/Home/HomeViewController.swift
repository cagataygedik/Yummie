//
//  HomeViewController.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 13.12.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Dish", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 2", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 3", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 4", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 5", image: "https://picsum.photos/200/300")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()

    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
        cell.setup(category: categories[indexPath.row])
        return cell
    }
}
