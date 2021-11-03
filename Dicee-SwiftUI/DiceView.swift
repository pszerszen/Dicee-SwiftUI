//
//  DiceView.swift
//  Dicee-SwiftUI
//
//  Created by Piotr Szerszeń on 11/10/2021.
//

import SwiftUI

struct DiceView: View {
    
    let n: Int
    
    init(number n: Int) {
        self.n = n
    }
    
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ForEach(1...6, id: \.self) { i in
                DiceView(number: i)
                    .previewLayout(.sizeThatFits)
            }
        }
    }
}
