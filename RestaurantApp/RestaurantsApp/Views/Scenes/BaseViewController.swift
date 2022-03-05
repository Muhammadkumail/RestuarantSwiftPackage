//
//  ViewController.swift
//  RestaurantsApp
//
//  Created by Kumail kashefi on 04/03/2022.
//

import UIKit

public class BaseViewController: UIViewController{
    
    let button  = Button.sharedInstance.getButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews()  {
        self.view.backgroundColor = .white
        setupButton()
    }
    
    @objc func start() {
        Navigator.sharedInstance.navigateToRestaurantList(self)
    }
    
}

extension BaseViewController {
    
    func setupButton() {
        button.setTitle("Get List", for: .normal)
        button.backgroundColor = .lightGray
        button.setTitleColor(.black, for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        button.addTarget(self, action: #selector(start), for: .touchUpInside)
        view.addSubview(button)
    }
    
}

