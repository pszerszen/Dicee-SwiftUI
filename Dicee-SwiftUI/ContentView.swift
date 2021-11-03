//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Piotr Szerszeń on 11/10/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = Int.random(in: 1...6)
    @State var rightDiceNumber = Int.random(in: 1...6)
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: leftDiceNumber)
                    DiceView(number: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
                .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

