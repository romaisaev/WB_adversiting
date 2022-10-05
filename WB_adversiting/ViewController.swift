//
//  ViewController.swift
//  WB_adversiting
//
//  Created by Рома Исаев on 02.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Category_button_ui: UIButton!
    
    func callAPI(){
        guard let url = URL(string: "https://suppliers-stats.wildberries.ru/api/v1/supplier/sales?dateFrom=2022-09-04&flag=1&key=MWMzOWZhNDgtNTNiMS00ZDQ3LWFmMjMtNTFkYWUxNTBlZDNh") else{
            return
        }


        let task = URLSession.shared.dataTask(with: url){
            data, response, error in
            
            if let data = data, let string = String(data: data, encoding: .utf8){
                print(string)
            }
        }

        task.resume()
    }

    
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
        self.callAPI()
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

