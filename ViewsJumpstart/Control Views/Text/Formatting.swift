//
//  Formatting.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Formatting: View {
    @State private var modifierActive = true
    var body: some View {
        VStack {
            Text("Bold").bold()
            Text("Italic").italic()
            Text("Strikethrough").strikethrough()
            Text("Green Strikethrough").strikethrough(modifierActive, color: .green)
            Text("Text Color (ForegroundedColor)").foregroundColor(.green)
            Text("Underline").underline()
            Text("Green Underline").underline(modifierActive, color: .green)
            Toggle("Mofifiers Active", isOn: $modifierActive).padding()
        }
    }
}

struct Formatting_Previews: PreviewProvider {
    static var previews: some View {
        Formatting()
    }
}
