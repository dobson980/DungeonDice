//
//  DungeonDiceTitleView.swift
//  DungeonDice
//
//  Created by Thomas Dobson on 7/15/24.
//

import SwiftUI

struct DungeonDiceTitleView: View {
    var body: some View {
        Text("Dungeon Dice")
            .font(Font.custom("Snell Roundhand", size: 60))
            .fontWeight(.black)
            .foregroundColor(.red)
            .minimumScaleFactor(0.5)
            .lineLimit(1)
    }
}

#Preview {
    DungeonDiceTitleView()
}
