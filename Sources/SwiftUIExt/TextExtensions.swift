//
// Created by Frank Jia on 2020-06-03.
// Copyright (c) 2020 Frank Jia. All rights reserved.
//

import SwiftUI

@available(iOS 13.0, *)
public extension Text {
    func singleLine() -> some View {
        self.lineLimit(1)
    }
    func multiline() -> some View {
        self.lineLimit(nil)
    }
}
