//
//  TaskStruct.swift
//  thirdAssignment
//
//  Created by Gino Salvador Quispe Calixto on 2/12/22.
//

struct Task {
    let name: String
    let desc: String
    let priority: String
    let date: String
    init(name: String, desc: String, priority: String, date: String) {
        self.name = name
        self.desc = desc
        self.priority = priority
        self.date = date
    }
}
