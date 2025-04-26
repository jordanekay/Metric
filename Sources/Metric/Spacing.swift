//
//  SizeClass.swift
//  NativeTTS
//
//  Created by Kay, Jordan (He/Him/His) on 4/18/25.
//

public import SwiftUI

public enum Spacing {}

// MARK: -
public extension Spacing {
    struct Vertical: Sendable {
        let value: Int
    }
}

// MARK: -
extension Spacing.Vertical: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
public extension VStack {
    init(spacing: Spacing.Vertical, @ViewBuilder content: () -> Content)  {
        self.init(spacing: CGFloat(spacing.value), content: content)
    }
}
