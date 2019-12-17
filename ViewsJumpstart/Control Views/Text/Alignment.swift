//
//  Alignment.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Alignment: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Multiline Text Allignment").foregroundColor(.gray)
            Text("By default, text will be centered within the screen. But when it wraps to multiple lines, it will be leading aligned be default. Uze multilineTextAlignment modifier to change this!")
            Text(".multilineTextAlignment(.center)")
                .frame(maxWidth: .infinity)
            .padding()
                .foregroundColor(.white)
                .background(Color.green)
            
            Text("Have I told you how awesome I think you are?")
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text(".multilineTextAlignment(.trailing)")
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .allowsTightening(true) // prevent truncation
            
            Text("You are SUPER aweso for improving you skills by using this book!")
                .multilineTextAlignment(.trailing)
                .padding(.horizontal)
        }.font(.title) // Apply this text style to all text views
    }
}

struct Alignment_Previews: PreviewProvider {
    static var previews: some View {
        Alignment()
    }
}
