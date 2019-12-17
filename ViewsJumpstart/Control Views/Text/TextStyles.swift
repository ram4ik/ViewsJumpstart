//
//  TextStyles.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct TextStyles: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Text Styles")
                .font(.title)
                .foregroundColor(.gray)
            Image("Font")
            Text("You can add a TextStyle to the Text view by calling .font(Font.<TExt Style>)")
            Text("Available Text Styles")
                .font(.title)
                .foregroundColor(.gray)
            Group {
                Divider()
                Text("Font.largeTitle").font(.largeTitle)
                Text("Font.title").font(.title)
                Text("Font.headline").font(.headline)
                Text("Font.subheadline").font(.subheadline)
                Text("Font.body").font(.body)
                Text("Font.callout").font(.callout)
                Text("Font.caption").font(.caption)
                Text("Font.footnote").font(.footnote)
            }
        }
    }
}

struct TextStyles_Previews: PreviewProvider {
    static var previews: some View {
        TextStyles()
    }
}
