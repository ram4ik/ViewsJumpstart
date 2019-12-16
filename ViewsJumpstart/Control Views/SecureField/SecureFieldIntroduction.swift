//
//  SecureFieldIntroduction.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct SecureFieldIntroduction: View {
    @State private var userName = ""
    @State private var password = ""
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "star")
                .padding()
            Text("SecureField")
                .font(.largeTitle)
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            Text("SecureFields, like TextFields, need to binf to a local variable.")
            TextField("User name", text: $userName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Spacer()
        }
    }
}

struct SecureFieldIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        SecureFieldIntroduction()
    }
}
