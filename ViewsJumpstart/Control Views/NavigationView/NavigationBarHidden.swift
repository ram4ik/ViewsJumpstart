//
//  NavigationBarHidden.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct NavigationBarHidden: View {
    @State private var isHidden = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3backgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("NavigatonView").font(.largeTitle)
                    Text("Navigation Bar Hidden")
                        .foregroundColor(Color.gray)
                    Text("If you don't want to show a navigation bar, you can use the navigationBarHidden modifier to hide it.")
                    Toggle("Hide Nav Bar", isOn: $isHidden)
                        .padding()
                    Spacer()
                }
                .font(.title)
                .padding(.top, 70)
            }
            // For some reason, you have to have a bar title for hidden modifier to work
            .navigationBarHidden(isHidden)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct NavigationBarHidden_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarHidden()
    }
}
