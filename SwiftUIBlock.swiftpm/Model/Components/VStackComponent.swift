//
//  VStackComponent.swift
//
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

struct VStackComponent: Component {
    
    var id: String = UUID().uuidString
    var childs: [Component] = []
    var view: AnyView = AnyView(EmptyView())
    var modifiers: [(AnyView) -> (any View)] = []
    
    mutating func addChild(_ component: Component) {
        childs.append(component)
    }
    
    mutating func build() {
        let newView = VStack {
            ForEach(childs, id: \.id) { child in
                child.view
            }
        }.anyView
        self.view = applyModifier(newView, modifiers)
    }
}
