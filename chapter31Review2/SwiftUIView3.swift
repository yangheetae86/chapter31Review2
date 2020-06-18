//
//  SwiftUIView3.swift
//  chapter31Review2
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct SwiftUIView3: View {
    @State private var closing : CGFloat = 1.0
    
    var body: some View {
        let longPress = LongPressGesture(minimumDuration: 2, maximumDistance: 100)
            .onEnded { (_) in
                print("외웠다")
        }
        
        let closeFall = MagnificationGesture(minimumScaleDelta: 0)
            .onChanged({ value in
                self.closing = value
            })
            .onEnded { (_) in
                print("확대축소 외웠다")
        }
        
        //        return Image(systemName: "car.fill")
        //            .font(.largeTitle)
        //            .gesture(longPress)
        
        return Image(systemName: "hand.point.right.fill")
            .resizable()
            .font(.largeTitle)
            .frame(width: 100, height: 90)
            .gesture(closeFall)
            .scaleEffect(closing)
    }
}

struct SwiftUIView3_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView3()
    }
}
