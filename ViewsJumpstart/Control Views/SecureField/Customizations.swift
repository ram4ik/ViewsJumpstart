//
//  Customizations.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct Customizations: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Use a ZStack to put a RoundedRectangle behind a SecureField with a plain textFiledStyle")
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.purple)
                TextField("User Name", text: $userName)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }.frame(height: 40)
            .padding(.horizontal)
            
            Text("Or overlay the SecureField on top of another view or shape.")
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.purple)
                .overlay(
                    SecureField("Password", text: $password)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                )
                .frame(height: 40)
                .padding(.horizontal)
            
        }
    }
}

struct Customizations_Previews: PreviewProvider {
    static var previews: some View {
        Customizations()
    }
}
