//
//  AllowsTightening.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct AllowsTightening: View {
    var body: some View {
        VStack(spacing: 20) {
            Image("Allows Tightening")
            Text("You might want to tighten up some text that might be too long.")
            Text("In the example below, the green has .allowTightening(true)")
            Group {
                Text("Allows tightening to allow text to fit in one line.")
                    .foregroundColor(.red)
                    .allowsTightening(false)
                    .padding(.horizontal)
                    .lineLimit(1)
                Text("Allows tightening to allow text to fit in one line")
                    .foregroundColor(.green)
                    .allowsTightening(true)
                    .padding(.horizontal)
                    .lineLimit(1)
            }.padding(.horizontal)
        }
    }
}

struct AllowsTightening_Previews: PreviewProvider {
    static var previews: some View {
        AllowsTightening()
    }
}
