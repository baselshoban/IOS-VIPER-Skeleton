//
//  Presenter.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import Foundation

class Presenter: viewToPresenterProtocol {
    
    weak var viewController: presenterToViewProtocol?
    
    var interactor: presenterToInteractorProtocol?
    
    func fetchData() {
        // ask interactor to fetch data
        interactor?.fetchData()
    }
    
}
extension Presenter: interactorToPresenterProtocol {
    
    func fetchedSuccessfuly(data: [AnyObject]) {
        viewController?.showData(collection: data)
    }
    
    func fetchError(message: String) {
        viewController?.showError(error: message)
    }
    
}
