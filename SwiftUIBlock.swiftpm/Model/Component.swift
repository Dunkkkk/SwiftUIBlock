//
//  Component.swift
//
//
//  Created by changgyo seo on 2/13/24.
//

import SwiftUI

protocol Component {
    
    var id: String { get set }
    var childs: [Component] { get set }
    var view: AnyView { get set }
    var modifiers: [(AnyView)->(any View)] { get set } 
    
    mutating func build()
    mutating func addModifier(_ modifier: @escaping (AnyView) -> AnyView)
}

extension Component {
    
    func applyModifier(_ view: AnyView, _ modifiers: [(AnyView)->(any View)]) -> AnyView {
        var copyView = view
        modifiers.forEach { function in
            copyView = function(copyView).anyView
        }
       return copyView
    }
    
    mutating func addModifier(_ modifier: @escaping (AnyView) -> some View) {
        modifiers.append(modifier)
    }
    
    mutating func defaultSetting() {
        self.id = UUID().uuidString
        self.view = AnyView(EmptyView())
    }
}
