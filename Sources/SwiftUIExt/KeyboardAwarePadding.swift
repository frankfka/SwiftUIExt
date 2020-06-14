//
// Created by Frank Jia on 2020-06-13.
//

import SwiftUI
import Combine

@available(iOS 13.0, *)
struct KeyboardAwareModifier: ViewModifier {
    @State private var keyboardHeight: CGFloat = 0

    private var keyboardHeightPublisher: AnyPublisher<CGFloat, Never> {
        Publishers.Merge(
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillShowNotification)
                .compactMap { $0.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect }
                .map { $0.height },
            NotificationCenter.default
                .publisher(for: UIResponder.keyboardWillHideNotification)
                .map { _ in CGFloat(0) }
        ).eraseToAnyPublisher()
    }

    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardHeight)
            .onReceive(keyboardHeightPublisher) { self.keyboardHeight = $0 }
    }
}

@available(iOS 13.0, *)
public extension View {
    func keyboardAwarePadding() -> some View {
        ModifiedContent(content: self, modifier: KeyboardAwareModifier())
    }
}