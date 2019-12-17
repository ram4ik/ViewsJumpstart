//
//  MinMidMaxCoordinates.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct MinMidMaxCoordinates: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            Text("Min Mid Max")
                .foregroundColor(.gray)
            Text("You can also get the minimum (min), middle (mid), and maximum (max) X and Y coordinate from the geometry reader.")
                .layoutPriority(2)
            
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 20) {
                    Text("Local Coordinate Space")
                    HStack(spacing: 10) {
                        // I'm concerting to Int just so we don't have so many zeros
                        
                        Text("minX: \(Int(geometry.frame(in: .local).minX))")
                        Spacer()
                        Text("midX: \(Int(geometry.frame(in: .local).midX))")
                        Spacer()
                        Text("maxX: \(Int(geometry.frame(in: .local).maxX))")
                    }
                    Text("Global Coordinate Space")
                    HStack(spacing: 10) {
                        // I'm converting to Int just so we don't have so many zeros
                        
                        Text("minX: \(Int(geometry.frame(in: .global).minX))")
                        Spacer()
                        Text("midX: \(Int(geometry.frame(in: .global).midX))")
                        Spacer()
                        Text("maxX: \(Int(geometry.frame(in: .global).maxX))")
                    }
                }.padding()
            }
            .frame(height: 200)
            .foregroundColor(.white)
            .background(Color.pink)
            
            HStack {
                GeometryReader { geometry in
                    VStack(spacing: 10) {
                        Text("minY: \(Int(geometry.frame(in: .global).minY))")
                        Spacer()
                        Text("midY: \(Int(geometry.frame(in: .global).midY))")
                        Spacer()
                        Text("maxY: \(Int(geometry.frame(in: .global).maxY))")
                    }.padding()
                }
                .foregroundColor(.white)
                .background(Color.pink)
            }.layoutPriority(1)
        }
        .font(.title)
        .padding()
    }
}

struct MinMidMaxCoordinates_Previews: PreviewProvider {
    static var previews: some View {
        MinMidMaxCoordinates()
    }
}
