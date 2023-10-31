//
//  Item.swift
//  cards_manager
//
//  Created by 邵松 on 2023/10/31.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
