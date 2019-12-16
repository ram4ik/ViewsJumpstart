//
//  CustomizationLayers.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CustomizationLayers: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 20) {
            Text("SecureField")
                .font(.largeTitle)
            Text("Customization Layer")
                .font(.title)
                .foregroundColor(.gray)
            Text("You can also add a background to SecureField. It's all the same idea adjust the layers.")
            SecureField("Password", text: $password)
                .foregroundColor(Color.white)
                .frame(height: 40)
                .padding(.horizontal)
                .background(
                    Capsule()
                        .foregroundColor(.purple)
                )
                .padding()
                
            Text("The highlighted layer in that image is the actual text field layer of the view.")
                .font(.title)
                .padding(.horizontal)
        }
    }
}

struct CustomizationLayers_Previews: PreviewProvider {
    static var previews: some View {
        CustomizationLayers()
    }
}
