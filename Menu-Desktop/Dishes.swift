//
//  Dishes.swift
//  Menu-Desktop
//
//  Created by Ola on 07/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Foundation

public struct Dish : Codable{
    
    let name : String
    let category : String
    let preparationTime : String
    
    init(name: String, category: String, preparationTime: String) {
        self.name = name
        self.category = category
        self.preparationTime = preparationTime
    }
    
}

struct Dishes : Codable {
    
    var dishesStruct : [Dish]
    enum CodingKeys : String, CodingKey {
        case dishesStruct = "dishes"
    }
}
