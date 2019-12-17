//
//  CustomFonts.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CustomFonts: View {
    var body: some View {
        VStack {
            Text("Use a font that alrady exists on the system. If the font name doesn't exists, it goes back to the default font.")
            Text("This font doesn't exist")
                .font(Font.custom("No such Font", size: 26))
            Text("Existing fonts:")
            Text("Avenir Next")
                .font(Font.custom("Avenir Next", size: 26))
            Text("Gill Sans")
                .font(Font.custom("Gill Sans", size: 26))
            Text("Helvetica Neue")
                .font(Font.custom("Helvetica Neue", size: 26))
            Text("Adjust the weight:")
            Text("Avenir Next Regular")
                .font(Font.custom("Avenir Next Regular", size: 26))
            Text("Or change with the weight modifier:")
                .foregroundColor(.red)
            Text("Avenir Next Regular Weight")
                .font(Font.custom("Avenir Next", size: 26).weight(.regular))
        }
    }
}

struct CustomFonts_Previews: PreviewProvider {
    static var previews: some View {
        CustomFonts()
    }
}
