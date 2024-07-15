//
//  DiceView.swift
//  DungeonDice
//
//  Created by Thomas Dobson on 7/15/24.
//

import SwiftUI

struct DiceButtonView: View {
    let dice: Dice
    @Binding var resultMessage: String
    var buttonWidth: CGFloat
    var buttonHeight: CGFloat
    var padding: CGFloat
    var backgroundColor: Color
    var cornerRadius: CGFloat
    
    var body: some View {
        Button {
            resultMessage = "You rolled a \(dice.roll()) on a \(dice)"
        } label: {
            Text("\(dice)")
                .frame(width: buttonWidth, height: buttonHeight)
                .foregroundColor(.white)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
        .padding(padding)
    }
}

#Preview {
    @Previewable var dice: Dice = .d4
    @Previewable @State var resultMessage: String = ""
    
    let initialMessage = "You rolled a \(dice.roll()) on a \(dice)"
    
    resultMessage = initialMessage
    
    return DiceButtonView(
        dice: dice,
        resultMessage: $resultMessage,
        buttonWidth: 100,
        buttonHeight: 50,
        padding: 10,
        backgroundColor: .blue,
        cornerRadius: 10
    )
}
