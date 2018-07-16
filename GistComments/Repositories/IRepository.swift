//
//  IRepository.swift
//  GistComments
//
//  Created by Jeferson Nazario on 11/07/18.
//  Copyright © 2018 jnazario.com. All rights reserved.
//

protocol IRepository {
    associatedtype T
    func add(_ item: T)
    func update(_ item: T)
    func getAll() -> [T]
    func getItem(byProperty: String, andValue: String) -> T
    func delete(_ item: T)
}
