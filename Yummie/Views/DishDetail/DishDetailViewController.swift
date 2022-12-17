//
//  DishDetailViewController.swift
//  Yummie
//
//  Created by Celil Çağatay Gedik on 17.12.2022.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var caloriesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func placeOrderButtonClicked(_ sender: UIButton) {
    }
    
}
