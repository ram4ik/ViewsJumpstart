//
//  SegmentedControlIntroduction.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct SegmentedControlIntroduction: View {
    @State private var dayNight = "day"
    @State private var tab = 1
    var body: some View {
        VStack(spacing: 20) {
            Text("Segmented Control (Picker)").font(.largeTitle)
            Text("Introduction")
                .font(.title).foregroundColor(.gray)
            Text("Associate the segmented control with an @State variable that will control which segment is selected. The state variable will match each segment's tag value.")
            Picker("", selection: $dayNight) {
                Text("Day").tag("day")
                Text("Night").tag("night")
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            Text("With Images:")
            
            Picker("", selection: $tab) {
                Image(systemName: "sun.min").tag(0)
                Image(systemName: "moon").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
        }
    }
}

struct SegmentedControlIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedControlIntroduction()
    }
}
