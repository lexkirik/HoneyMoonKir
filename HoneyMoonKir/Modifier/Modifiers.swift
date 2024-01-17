//
//  TitleModifier.swift
//  HoneyMoonKir
//
//  Created by Test on 11.10.23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(Color.pink)
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
            Capsule()
                .fill(Color.pink)
            )
            .foregroundStyle(Color.white)
    }
}

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content                                    
            .foregroundStyle(Color.white)
            .font(.system(size: 128))
            .shadow(color: Color(UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)), radius: 12, x: 0, y: 0)
    }
}
