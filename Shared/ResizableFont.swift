//
//  ResizableFont.swift
//  JustSample
//
//  Created by Паша on 13.10.23.
//

import SwiftUI

extension View {
    func resizableFont(maximumFontSize: Double = 125, minimumScaleFactor: Double = 0.01) -> some View {
        self.modifier(FlexibleFontModifier(maximumFontSize: maximumFontSize, minimumScaleFactor: minimumScaleFactor))
    }
}

struct FlexibleFontModifier: ViewModifier {
    var maximumFontSize: Double
    var minimumScaleFactor : Double
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: maximumFontSize))
            .minimumScaleFactor(minimumScaleFactor)
    }
}
