//
//  HomeViewController.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 13.12.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Dish", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 2", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 3", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 4", image: "https://picsum.photos/200/300"),
        .init(id: "id1", name: "Dish 5", image: "https://picsum.photos/200/300")
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "garri", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 345),
        .init(id: "id1", name: "Indomie", description: "this is the best  I have ever tasted", image: "https://picsum.photos/200/300" , calories: 134),
        .init(id: "id1", name: "Cato", description: "this is the best I have ever tasted", image: "https://picsum.photos/200/300" , calories: 34)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerCells()

    }
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        popularCollectionView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
            
        case categoryCollectionView:
            return categories.count
            
        case popularCollectionView:
            return populars.count
            
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            return cell
            
        case popularCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            return cell
            
        default:
            return UICollectionViewCell()
        }
    }
}
