//
//  NoSegmentSelected.swift
//  ViewsJumpstart
//
//  Created by ramil on 16.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct NoSegmentSelected: View {
    @State private var selection = 0
    var body: some View {
        VStack(spacing: 20){
            Text("Segmented Control(Picker)").font(.largeTitle)
            Text("No Segment Selected")
                .font(.title).foregroundColor(.gray)
            Text("This segmented control will have nothing selected because the default state variable does not match any of the segment tag values.")
            Text("How many meals do you eat?")
                .foregroundColor(.gray)
                .font(.title)
            
            Picker("", selection: $selection) {
                Text("One").tag(1)
                Text("Two").tag(2)
                Text("Three").tag(3)
                Text("Four").tag(4)
            }
            .pickerStyle(SegmentedPickerStyle())
            .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.red, lineWidth: selection == 0 ? 1 : 0))
            .padding()
            
            Text("The red outline will go away once a selection is made.")
        }
    }
}

struct NoSegmentSelected_Previews: PreviewProvider {
    static var previews: some View {
        NoSegmentSelected()
    }
}
