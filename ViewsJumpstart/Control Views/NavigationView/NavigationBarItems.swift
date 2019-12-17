//
//  NavigationBarItems.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct NavigationBarItems: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("NavigaionView")
                Text("Navigation Bar Items").foregroundColor(.gray)
                Text("You can add navigation bar buttons to the leading or trailing (for both) sides of a navigation bar. ")
                Text("Use the accentColor modifier on the navigation bar items to change them from the default accent color.")
                Spacer()
            }
            .font(.title)
            .padding(.top, 25)
            .navigationBarTitle(Text("Navigation Bar Items"), displayMode: .inline)
            // Add some bar items to the nav bar
            .navigationBarItems(leading:
                Button(action: {}) {
                    Image(systemName: "bell.fill")
                }.accentColor(.pink)
            // Button on the trailing side
            , trailing:
                Button("Actions", action: {})
                    .accentColor(.pink)
            )
        }
    }
}

struct NavigationBarItems_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItems()
    }
}
