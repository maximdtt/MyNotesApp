//
//  TableViewSection.swift
//  NotesApp
//
//  Created by Maksims Šalajevs on 28/07/2024.
//

import Foundation

protocol TableViewItemProtocol {}

struct TableViewSection {
    var title: String?
    var items: [TableViewItemProtocol]
}
