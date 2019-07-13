//
//  ViewController.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var presenter: viewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .cyan
        
        presenter?.fetchData()
    }


}

extension ViewController: presenterToViewProtocol {
    
    func showData(collection data: [AnyObject]) {
        // show the data on the view
        
        for entityObject in data {
            if let entity = entityObject as? Entity {
                print("id: \(entity.id), name: \(entity.name), mark: \(entity.mark)")
            }
        }
    }
    
    func showError(error message: String) {
        // show error on the view
    }
}
