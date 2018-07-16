//
//  Repository.swift
//  GistComments
//
//  Created by Jeferson Nazario on 11/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

import RealmSwift

class Repository<T> : IRepository {
    let realm = try! Realm()
    
    func add(_ item: T) {
        try! realm.write {
            realm.add(item as! Object)
        }
    }
    
    func update(_ item: T) {
        try! realm.write {
            realm.add(item as! Object, update: true)
        }
    }
    
    func getAll() -> [T] {
        let items = realm.objects(T.self as! Object.Type)
        return items.map({ (item) -> T in
            return item as! T
        })
    }
    
    func getItem(byProperty: String, andValue: String) -> T {
        let items = realm.objects(T.self as! Object.Type).filter("\(byProperty) = '\(andValue)'")
        return items.map({ (item) -> T in
            return item as! T
        }).first!
    }
    
    func delete(_ item: T) {
        try! realm.write {
            realm.delete(item as! Object)
        }
    }
}
