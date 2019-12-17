//
//  Weight&TextStyleCombined.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Weight_TextStyleCombined: View {
    var body: some View {
        return VStack(spacing: 40) {
            Text("Text")
                .font(.largeTitle)
            Text("Weight & Text Styles")
                .font(.title)
                .foregroundColor(.gray)
            HStack {
                Image("FontWeight")
                Image(systemName: "plus")
                Image("Font")
            }
            Text("These weights can be combined with Text Styles.")
            Text("Ultralight - Title")
                .fontWeight(.ultraLight)
                .font(.title)
            Text("Thin - Body")
                .fontWeight(.thin)
                .font(.body)
            Text("Light - Large Title")
                .fontWeight(.light)
                .font(.largeTitle)
            Text("Bold - Callout")
                .fontWeight(.bold)
                .font(.callout)
            Text("Black - Title")
                .fontWeight(.black)
                .font(.title)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct Weight_TextStyleCombined_Previews: PreviewProvider {
    static var previews: some View {
        Weight_TextStyleCombined()
    }
}
