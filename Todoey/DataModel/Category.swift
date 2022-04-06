//
//  Category.swift
//  Todoey
//
//  Created by Micah Burnside on 3/31/22.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    // Property name of inverse relationship
    let items = List<Item>()
}
