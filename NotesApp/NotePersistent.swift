//
//  NotePersistent.swift
//  NotesApp
//
//  Created by Maksims Šalajevs on 02/08/2024.
//

import CoreData
import Foundation

final class NotePersistent {
    private static let context = AppDelegate.persistentContainer.viewContext
    
    static func save(_ note: Note) {
        
        
    }
    
    static func delete(_ note: Note) {
        
        
    }
    
    static func fetchAll() -> [Note] {
        return []
    }
}
