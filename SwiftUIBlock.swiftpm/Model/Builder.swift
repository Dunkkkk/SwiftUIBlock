//
//  Builder.swift
//
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

class Builder {
    
    init(component: Component) {
        self.component = component
    }
    
    private var component: Component = BackGroundComponent()
    
    func build() -> some View {
        Text("ss")
    }
    
    func reload() {
        var stack: [Component] = []
        stack.append(component)
        
        while !stack.isEmpty {
            
        }
    }
    
    func addChild(_ component: Component) {
        
    }
}

extension Builder {
    struct BackGroundComponent: Component {
        var id: String = UUID().uuidString
        var childs: [Component] = []
        var view: AnyView = EmptyView().anyView
        var modifiers: [(AnyView) -> (any View)] = []
        
        mutating func build() {
            self.view = EmptyView().anyView
        }
    }
}
