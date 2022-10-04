//
//  ViewController.swift
//  WB_adversiting
//
//  Created by Рома Исаев on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Category_button_ui: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        Category_button_ui.layer.cornerRadius = 15
        Category_button_ui.layer.borderWidth = 2
        Category_button_ui.layer.borderColor = UIColor.darkGray.cgColor
        Category_button_ui.menu  = menu
        
    }
    private lazy var menu = UIMenu(title: "UI-Menu", children: elements)
    
   
    private lazy var first = UIAction(title: "first", image: UIImage(systemName: "pencil.circle"), attributes: [], state: .off) {action in
        print ("first")
    }
    private lazy var second = UIAction(title: "second", image: UIImage(systemName: "pencil.circle"), attributes: [], state: .off) {action in
        print ("second")
    }
    private lazy var third = UIAction(title: "third", image: UIImage(systemName: "pencil.circle"), attributes: [], state: .off) {action in
        print ("third")
    }
    private lazy var fouth = UIAction(title: "fouth", image: UIImage(systemName: "pencil.circle"), attributes: [], state: .off) {action in
        print ("fouth")
    }
    private lazy var elements: [UIAction] = [first, second, third, fouth]
    
    

    @IBAction func Select_category(_ sender: UIButton) {
     
    }
}

