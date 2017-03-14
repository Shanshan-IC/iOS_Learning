//
//  NotesManager.swift
//  Note
//
//  Created by 傅珊珊 on 16/2/8.
//  Copyright © 2016年 傅珊珊. All rights reserved.
//

import Foundation

var Manager:NoteManager = NoteManager()

struct Note {
    var name = "Default name"
    var description = "Default description"
}

class NoteManager:NSObject {
    var notes = [Note]()
    
    func addNote(name: String, description: String) {
        notes.append(Note(name: name, description: description))
        
    }
}
