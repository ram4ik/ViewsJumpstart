//
//  NavigationViewIntroduction.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct NavigationViewIntroduction: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3backgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    Text("NavigationView")
                        .font(.largeTitle)
                    Text("Introduction")
                        .foregroundColor(.gray)
                    Text("Having a NavigationView will show nothing unless you also include a navigationBarTitle modifier.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Theme3foregroundColor"))
                        .foregroundColor(Color("Theme3backgroundColor"))
                        .layoutPriority(1)
                    
                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
            }
            // This crates a title in your nav bar
            .navigationBarTitle(Text("Navigation Views"))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct NavigationViewIntroduction_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewIntroduction()
    }
}
