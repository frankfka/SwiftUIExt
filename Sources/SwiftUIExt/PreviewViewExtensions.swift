//
// Created by Frank Jia on 2020-06-13.
//

import SwiftUI

// Wrapper for previewing light + dark mode
@available(iOS 13.0, *)
public struct ColorSchemePreview<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping ContentGenerator<Content>) {
        self.content = content
    }

    public var body: some View {
        Group {
            content()
            content()
                .environment(\.colorScheme, .dark)
        }
    }
}