import SwiftUI

struct ContentView: View {
    let dice = Dice.allCases
    let columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: 0), count: 3)
    let buttonWidth: CGFloat = 115
    let buttonHeight: CGFloat = 50
    let buttonPadding: CGFloat = 2
    let buttonBGColor: Color = .blue
    let buttonCornerRadius: CGFloat = 8
    
    @State private var resultMessage = ""

    var body: some View {
        VStack {
            DungeonDiceTitleView()
            
            Text(resultMessage)
                .font(.largeTitle)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(height: 150)
            
            Spacer()
            
            VStack(spacing: 0) {
                LazyVGrid(columns: columns, spacing: 1) {
                    ForEach(dice.dropLast(dice.count % 3), id: \.self) { dice in
                        DiceButtonView(
                            dice: dice,
                            resultMessage: $resultMessage,
                            buttonWidth: buttonWidth,
                            buttonHeight: buttonHeight,
                            padding: buttonPadding,
                            backgroundColor: buttonBGColor,
                            cornerRadius: buttonCornerRadius
                        )
                    } // ForEach
                } // LazyVGrid
                
                HStack {
                    Spacer()
                    ForEach(dice.suffix(dice.count % 3), id: \.self) { dice in
                        DiceButtonView(
                            dice: dice,
                            resultMessage: $resultMessage,
                            buttonWidth: buttonWidth,
                            buttonHeight: buttonHeight,
                            padding: buttonPadding,
                            backgroundColor: buttonBGColor,
                            cornerRadius: buttonCornerRadius
                        )
                    } // ForEach
                    Spacer()
                } // HStack
                .padding(.horizontal)
            } // VStack

        } // VStack - top level
        .padding()
    } // Body
} // ContentView Struct 

#Preview {
    ContentView()
}


