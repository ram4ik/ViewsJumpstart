//
//  Weights.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Weights: View {
    var body: some View {
        VStack {
            Text("Text")
                .font(.largeTitle)
            Text("Font Weights")
                .font(.title)
                .foregroundColor(.gray)
            Image("FontWeight")
            Text("You can apply a variety of font wweightd to the Text views.")
            .padding()
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .foregroundColor(.white)
                .font(.title)
            .layoutPriority(2)
            Group { // Too many views (> 10) in one container}
                Text("Ultralight")
                    .fontWeight(.ultraLight)
                Text("Thin")
                    .fontWeight(.thin)
                Text("Light")
                    .fontWeight(.light)
                Text("Regular")
                    .fontWeight(.regular)
                Text("Medium")
                    .fontWeight(.medium)
                Text("Semibold")
                    .fontWeight(.semibold)
                Text("Bold")
                    .fontWeight(.bold)
                Text("Heavy")
                    .fontWeight(.heavy)
                Text("Black")
                    .fontWeight(.black)
            }.font(.title)
        }
    }
}

struct Weights_Previews: PreviewProvider {
    static var previews: some View {
        Weights()
    }
}
