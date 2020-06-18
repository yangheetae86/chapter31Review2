//
//  SwiftUIView4.swift
//  chapter31Review2
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct SwiftUIView4: View {
    
    @GestureState private var offset: CGSize = .zero
    
    var body: some View {
        
        let drag = DragGesture()
            .updating($offset) { dragValue, state, transition in
                state = dragValue.translation
        }
        
        return Image(systemName: "star.fill")
            .font(.largeTitle)
            .offset()
            .gesture(drag)
    }
}

struct SwiftUIView4_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView4()
    }
}
