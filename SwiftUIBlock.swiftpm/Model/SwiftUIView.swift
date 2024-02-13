//
//  SwiftUIView.swift
//  
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

struct SwiftUIView: View {

    var Vstacks: VStackComponent = VStackComponent()
    
    init() {
        var temp = TextComponent(text: "asdasdas")
        var tempw = TextComponent(text: "asdasdas")
        temp.addModifier { view in
            view.foregroundStyle(.red)
        }
        temp.addModifier { view in
            view.font(.system(size: 200))
        }
        temp.build()
        tempw.build()
        
        Vstacks.addChild(temp)
        Vstacks.addChild(tempw)
        Vstacks.build()
    }
    
    
    var body: some View {
        Vstacks.view
    }
}

#Preview {
    SwiftUIView()
}
