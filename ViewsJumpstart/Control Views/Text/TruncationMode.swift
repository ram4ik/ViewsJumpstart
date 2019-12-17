//
//  TruncationMode.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct TruncationMode: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Truncation Mode").font(.title).foregroundColor(.gray)
            Text("When text gets truncated, you can control where the elipsis (..) shows.")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
                .font(.title).layoutPriority(1)
            Text("Default: .truncationMode(.tail)")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
                .font(.title)
            // Text automatically defaults at end
            Text("This will be the best day of your life!")
                .padding(.horizontal)
                .lineLimit(1)
            Text(".truncationMode(.middle)")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
            Text("This will be the best day of your life!")
                .truncationMode(.middle) // truncate in middle
                .padding(.horizontal)
                .lineLimit(1)
            Text(".truncationMode(.head)")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
            Text("This will be the best day of your life!")
                .truncationMode(.head) // truncate at begging
                .padding(.horizontal)
                .lineLimit(1)
        }.font(.title)
    }
}

struct TruncationMode_Previews: PreviewProvider {
    static var previews: some View {
        TruncationMode()
    }
}
