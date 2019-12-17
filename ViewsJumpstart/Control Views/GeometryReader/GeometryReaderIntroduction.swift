//
//  GeometryReaderIntroduction.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct GeometryReaderIntroduction: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GEometryReader")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("GEomtryReader is a container view that pushes out to fill up all availbale space. You can use it to help with positioning items within it.")
                .font(.title)
                .padding()
                .layoutPriority(1)
            
            GeometryReader {_ in
                Text("Views center automatically inside the GeometryReader")
                    .font(.title)
            }
            .foregroundColor(.white)
            .background(Color.pink)
        }
    }
}

struct GeometryReaderIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderIntroduction()
    }
}
