//
//  Positioning.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeomtryReader").font(.largeTitle)
            Text("Positioning").font(.title).foregroundColor(.gray)
            Text("Use the geometry reader's viriable to help position child views at different locations within the geometry's view instead of it being in the center.")
                .font(.title)
                .layoutPriority(1)
                .padding()
            
            GeometryReader { geometry in
                Text("Upper Left")
                    .font(.title)
                    .position(x: geometry.size.width/5,
                              y: geometry.size.height/10)
                
                Text("Lower Right")
                    .font(.title)
                    .position(x: geometry.size.width - 90,
                              y: geometry.size.height - 40)
            }
            .background(Color.pink)
            .foregroundColor(.white)
            
            Text("Note: The position modifier uses the view's center point when setting the X ans Y parameters.")
                .font(.title)
        }
    }
}

struct Positioning_Previews: PreviewProvider {
    static var previews: some View {
        Positioning()
    }
}
