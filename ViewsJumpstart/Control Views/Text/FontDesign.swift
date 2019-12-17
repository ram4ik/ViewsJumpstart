//
//  FontDesign.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct FontDesign: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            Text("Font Design")
                .font(.title)
                .foregroundColor(.gray)
            Text("There are 4 font design now in iOS. Use Font.system to set the font design you want.")
            Text("Default font design")
                .font(Font.system(size: 36, design: Font.Design.default))
            
            // You can remove the "Font.Design" of the enum
            Text("Here is monospaced")
                .font(Font.system(size: 36, design: .monospaced))
            
            Text("And there is rounded")
                .font(Font.system(size: 36, design: .rounded))
            
            Text("Finally, we have serif!")
                .font(Font.system(size: 36, design: .serif))
        }
    }
}

struct FontDesign_Previews: PreviewProvider {
    static var previews: some View {
        FontDesign()
    }
}
