//
//  Interactor.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import Foundation

class Interactor: presenterToInteractorProtocol{
    
    weak var presenter: interactorToPresenterProtocol?
    
    func fetchData() {
        // fetch data and map to objects
        let entity1 = Entity(id: 1, name: "franky", mark: 98.6)
        let entity2 = Entity(id: 2, name: "maya", mark: 67.4)
        let data = [entity1, entity2]
        
        // if fetch success
        presenter?.fetchedSuccessfuly(data: data)
        // else
        presenter?.fetchError(message: "No Internet access")
    }
    
}
