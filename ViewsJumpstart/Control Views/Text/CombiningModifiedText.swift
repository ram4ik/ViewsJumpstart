//
//  CombiningModifiedText.swift
//  ViewsJumpstart
//
//  Created by ramil on 17.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct CombiningModifiedText: View {
    var body: some View {
        VStack {
            Group {
                Text("You can ")
                    + Text("format").bold()
                    + Text(" different parts of your text by using the plus (+) symbol.")
            }
            Group {
                Text("Here is another ")
                    + Text("example").foregroundColor(.red).underline()
                    + Text(" of how you might accomplish this.")
                    + Text("Notice").foregroundColor(.purple).bold()
                    + Text(" the use of the Group view to add padding and line limit to all the text ")
                    + Text("as a whole.").bold().italic()
            }
            .font(.title)
            .padding(.horizontal)
            .layoutPriority(1)
            
            Group {
                Text("You can also ").font(.title).fontWeight(.light)
                    + Text("combine")
                    + Text(" different font weights ").fontWeight(.black)
                    + Text("and different text styles!")
            }.padding(.horizontal)
        }
    }
}

struct CombiningModifiedText_Previews: PreviewProvider {
    static var previews: some View {
        CombiningModifiedText()
    }
}
