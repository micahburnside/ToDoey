//
//  Item.swift
//  Todoey
//
//  Created by Micah Burnside on 3/31/22.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    // specifies inverse relationship that links each item back to a parentCategory
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}

