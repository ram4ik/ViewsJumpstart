//
//  ImportedFonts.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ImportedFonts: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            Text("Imported Fonts")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use the Font.custom() function to set imported fonts you added to your project.")
            
            Text("Hello, World!")
                .font(Font.custom("Gisbon", size: 60))
                .padding(.top)
        }
    }
}

struct ImportedFonts_Previews: PreviewProvider {
    static var previews: some View {
        ImportedFonts()
    }
}
