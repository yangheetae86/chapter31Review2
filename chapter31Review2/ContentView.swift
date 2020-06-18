//
//  ContentView.swift
//  chapter31Review2
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //    let tap = TapGesture()
    //        .onEnded { (_) in
    //            print("외웠다")
    //    }
    
    var body: some View {
        //바디 밖이 아닌 안에서 상수를 선언했을 때, 리턴 값이 무엇인지 정해주어야 한다.
        let tap = TapGesture()
            .onEnded { (_) in
                print("외웠다")
        }
        
        return Image(systemName: "person.fill")
            .foregroundColor(.green)
            .font(.largeTitle)
            .gesture(tap)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
