//
//  GettingSize.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct GettingSize: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("GeometryReader")
                .font(.largeTitle)
            Text("Getting Size")
                .foregroundColor(.gray)
            
            Text("Use the geometry reader when you need to get the height and/or width of a spece.").padding()
            
            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("Width: \(geometry.size.width)")
                    Text("Height: \(geometry.size.height)")
                }
                .foregroundColor(.white)
            }
            .background(Color.pink)
            
            GeometryReader { geometry in
                VStack(spacing: 10) {
                    Text("Width: \(geometry.size.width)")
                    Text("Height: \(geometry.size.height)")
                }
                .foregroundColor(.white)
            }
            .background(Color.pink)
            .padding(30)
        }
        .font(.title)
    }
}

struct GettingSize_Previews: PreviewProvider {
    static var previews: some View {
        GettingSize()
    }
}
