//
//  TextComponent.swift
//
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

struct TextComponent: Component {
    
    var id: String = UUID().uuidString
    var childs: [Component] = []
    var view: AnyView = AnyView(EmptyView())
    var modifiers: [(AnyView) -> (any View)] = []
    var text: String
    
    mutating func build() {
        var newView = Text(text).anyView
        self.view = applyModifier(newView, modifiers)
    }
}
