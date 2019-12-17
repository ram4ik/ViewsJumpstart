//
//  ToggleIntroduction.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ToggleIntroduction: View {
    @State private var isToggle = true
    var body: some View {
        VStack {
            Text("The Toggle fills the width of its parent view.")
            Toggle("Night Mode", isOn: $isToggle).padding()
            Text("Combine images with text")
            Toggle(isOn: $isToggle) {
                Text("Night Mode")
                Image(systemName: "moon")
            }.padding()
            Text("Or you can have nothing")
            VStack {
                Text("Turn Alarm On?").foregroundColor(.white)
                Toggle("Turn this alarm on", isOn: $isToggle).labelsHidden()
            }
            .padding()
            .background(Color.pink)
            .cornerRadius(20)
            .shadow(color: .gray, radius: 10)
        }
    }
}

struct ToggleIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        ToggleIntroduction()
    }
}
