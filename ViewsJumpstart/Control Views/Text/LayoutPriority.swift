//
//  LayoutPriority.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct LayoutPriority: View {
    var body: some View {
        VStack {
            Text("Text")
                .font(.largeTitle)
            Text("Layout Priority")
                .font(.title)
                .foregroundColor(.gray)
            Text("Layout priority controls which view will get truncated last. The higher the priority, the lat it is in line to get truncated.")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .layoutPriority(1) // Highest priority to get the space it needs
            
            Text("This text gets truncated first because it has no priority.")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.pink)
            
            Text("The text view above got truncated because its layout priority is zero (the default). This text view has a priority of 1. The text view on top has a priority of 2.")
                .font(.title)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .layoutPriority(1) // Next highest priority
        }
    }
}

struct LayoutPriority_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority()
    }
}
