//
//  MinimumScaleFactor.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MinimumScaleFactor: View {
    var body: some View {
        VStack {
            Text(".allowsTightening(true) is being used here!")
            Text("Sometimes you want to shink text if long")
                .allowsTightening(true)
                .font(.title)
                .lineLimit(1)
            
            Text("Allows tightening is faling here because the text is too long. In this case, you can applu a minimum scale factor and specify by how much you want to allow the text to shink.")
            Text(".minimumScaleFactor(0.5) is being used here:")
            Text("Sometimes you want to shink text if long")
                .font(.title)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Text(".minimumScaleFactor takes a fraction from 0 to 1, For example, 0.3 is 30% of the original size of the font that it can shrink. If the font size is 100, then it can shrink to 30.")
        }
    }
}

struct MinimumScaleFactor_Previews: PreviewProvider {
    static var previews: some View {
        MinimumScaleFactor()
    }
}
