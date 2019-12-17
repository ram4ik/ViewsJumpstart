//
//  BeselineOffset.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct BeselineOffset: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            Text("Baseline Offset")
                .font(.title).foregroundColor(.gray)
            Text("By default, your combined text will be on the same baseline, like this:")
            Text("100").underline()
                + Text(" SWIFTUI ").font(.largeTitle).fontWeight(.light)
                    .foregroundColor(.blue).underline()
                + Text("VIEWS").underline()
            Text("But you can offset each text view to create a cooler effect, like this:")
            Group {
                Text("100").bold()
                    + Text(" SWIFTUI ")
                        .font(Font.system(size: 60))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.blue)
                        .baselineOffset(-12) // Negative numbers go down
                    + Text("VIEWS").bold()
            }.layoutPriority(2)
        }
    }
}

struct BeselineOffset_Previews: PreviewProvider {
    static var previews: some View {
        BeselineOffset()
    }
}
