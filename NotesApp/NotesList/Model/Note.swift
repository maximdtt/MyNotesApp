//
//  Note.swift
//  NotesApp
//
//  Created by Maksims Šalajevs on 28/07/2024.
//

import Foundation

struct Note: TableViewItemProtocol {
    
    let title: String
    let description: String
    let date: Date
    let imageURL: String?
    let image: Data?
    
}
