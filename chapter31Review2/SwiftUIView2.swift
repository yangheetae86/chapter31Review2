//
//  SwiftUIView2.swift
//  chapter31Review2
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct SwiftUIView2: View {
    
    var body: some View {
        let tap2 = TapGesture(count: 2)
            .onEnded { (_) in
                print("외웠다")
        }
        return Image(systemName: "car")
            .font(.largeTitle)
            .gesture(tap2)
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
