//
//  Coffee.swift
//  MatchedGeometryDemoApp
//
//  Created by Tiago Henriques on 27/01/2025.
//

import Foundation

struct Coffee: Identifiable, Equatable, Hashable {
    let id: UUID
    let name: String

    init(
        id: UUID = UUID(),
        name: String
    ) {
        self.id = id
        self.name = name
    }
}

extension Coffee {
    static let sampleData: [Coffee] = [
        Coffee(name: "Espresso"),
        Coffee(name: "Cappuccino"),
        Coffee(name: "Macchiato"),
        Coffee(name: "Americano"),
        Coffee(name: "Latte"),
        Coffee(name: "Irish"),
        Coffee(name: "Lungo"),
        Coffee(name: "Mocha")
    ]
}
