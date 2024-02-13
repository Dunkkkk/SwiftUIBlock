//
//  RectangleComponent.swift
//
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

struct RectangleComponent: Component {
    
    var id: String = UUID().uuidString
    var childs: [Component] = []
    var view: AnyView = AnyView(EmptyView())
    var modifiers: [(AnyView) -> (any View)] = []
    
    mutating func build() {
        let newView = Rectangle().anyView
        self.view = applyModifier(newView, modifiers)
    }
}
