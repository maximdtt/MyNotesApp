//
//  NotesListViewModel.swift
//  NotesApp
//
//  Created by Maksims Šalajevs on 28/07/2024.
//

import Foundation

protocol NotesListViewModelProtocol {
    var section: [TableViewSection] { get }
}

final class NotesListViewModel: NotesListViewModelProtocol {
    private(set) var section: [TableViewSection] = []
    
    init() {
        getNotes()
        setMocks()
    }
    
    private func  getNotes() {
        
    }
    
    private func setMocks() {
        let section = TableViewSection(title: "24. March 2024", items: [
            Note(title: "First", description: "First note description", date: Date(), imageURL: nil, image: nil),
            Note(title: "First", description: "First note description", date: Date(), imageURL: nil, image: nil)
        ])
        self.section = [section]
    }
}
 
