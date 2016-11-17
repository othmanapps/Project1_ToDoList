//
//  ToDoList.swift
//  ToDoListDraftOne
//
//  Created by Othman AlOthman on 11/15/16.
//  Copyright © 2016 Othman Alothman. All rights reserved.
//

import Foundation

class ToDoList {
    
    
    var name: String
    var items = [ToDoItem]()
    
    init(name: String) {
        self.name = name
        
    }
}


