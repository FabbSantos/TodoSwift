//
//  ItemModel.swift
//  TodoList
//
//  Created by Fabricio Bahiense on 10/20/23.
//

import Foundation

struct ItemModel: Identifiable, Codable { // immutable struct
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
