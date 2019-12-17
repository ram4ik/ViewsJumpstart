//
//  LineSpacing.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct LineSpacing: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Text").font(.largeTitle)
            Text("Line Spacing").font(.title).foregroundColor(.gray)
            Text("You can use lne spacing to add more space between lines of text. This text has no line spacing applied.")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Text("SwiftUI offers a line Spacing modifier for situations where you want to increase the space between the lines of text on the screen.")
                .font(.title)
            
            Text("With Line Spacing of 16:")
                .font(.title)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(Color.white)
            
            Text("SwiftUI offers a line Spacing modifier for situations where you want to increase the space between the lines of the text on the screen.")
                .lineSpacing(16.0)
                .font(.title)
        }
    }
}

struct LineSpacing_Previews: PreviewProvider {
    static var previews: some View {
        LineSpacing()
    }
}
