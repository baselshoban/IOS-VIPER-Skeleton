//
//  Entity.swift
//  VIPER architecture
//
//  Created by Basel Shoban on 7/13/19.
//  Copyright © 2019 Basel Shoban. All rights reserved.
//

import Foundation

class Entity: NSObject {
    
    var id: Int
    var name: String
    var mark: Float
    
    init(id: Int, name: String, mark: Float) {
        self.id = id
        self.name = name
        self.mark = mark
    }
    
}
