//
//  DisplayMode.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct DisplayMode: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3backgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    Text("NavigationView")
                        .font(.largeTitle)
                    Text("Display Mode")
                        .foregroundColor(.gray)
                    
                    Text("When you create a navigation bar title, you can specify if you want ot large or small (inline) or just automatic.")
                        .frame(maxWidth: .infinity)
                        .background(Color("Theme3foregroundColor"))
                        .foregroundColor(Color("There3backgroundColor"))
                        .layoutPriority(1)
                    
                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
            }
            // Use .inline for the smaller new bar
            .navigationBarTitle(Text("Navigation Views"), displayMode: .inline)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct DisplayMode_Previews: PreviewProvider {
    static var previews: some View {
        DisplayMode()
    }
}
