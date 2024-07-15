//
//  Dice.swift
//  DungeonDice
//
//  Created by Thomas Dobson on 7/14/24.
//

import Foundation

enum Dice: Int, CaseIterable {
    case d4 = 4
    case d6 = 6
    case d8 = 8
    case d10 = 10
    case d12 = 12
    case d20 = 20
    case d100 = 100
    
    func roll() -> Int {
        return Int.random(in: 1...self.rawValue)
    }
}
