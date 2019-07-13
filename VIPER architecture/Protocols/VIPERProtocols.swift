//
//  VIPERProtocols.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import UIKit

protocol viewToPresenterProtocol { // view should be able to call methods on presenter
    
    var viewController: presenterToViewProtocol? {get set}
    
    func fetchData()

}

protocol presenterToViewProtocol :class { // presenter should be able to call methods on views

    var presenter: viewToPresenterProtocol? {get set}
    
    func showData(collection data: Array<AnyObject>)
    
    func showError(error message: String)
}

protocol presenterToInteractorProtocol { // presenter should be able to call methods on interactor
    
    var presenter: interactorToPresenterProtocol? {get set}
    
    func fetchData()
}

protocol interactorToPresenterProtocol :class { // interactor should be able to call methods on presenter
    
    var interactor: presenterToInteractorProtocol? {get set}

    func fetchedSuccessfuly(data: [AnyObject])
    
    func fetchError(message: String)
}

protocol presenterToRouterProtocol { // presenter should be able to call methods on router
    
    func createModule() -> UIViewController
}
