//
//  ObjectRouter.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import UIKit

class ObjectRouter: presenterToRouterProtocol {
    
    func createModule() -> UIViewController {
        let viewController: UIViewController & presenterToViewProtocol = ViewController()
        var presenter: interactorToPresenterProtocol & viewToPresenterProtocol = Presenter()
        var interactor: presenterToInteractorProtocol = Interactor()
        
        viewController.presenter = presenter
        presenter.viewController = viewController
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return viewController
    }
    
}
