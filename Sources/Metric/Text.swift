//
//  SizeClass.swift
//  NativeTTS
//
//  Created by Kay, Jordan (He/Him/His) on 4/18/25.
//

public import SwiftUI

public enum Line {}

// MARK: -
public extension Line {
    struct Spacing: Sendable {
        fileprivate let value: Int
    }
}

// MARK: -
extension Line.Spacing: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
public extension View {
    func lineSpacing(_ lineSpacing: Line.Spacing) -> some View {
        self.lineSpacing(CGFloat(lineSpacing.value))
    }
}
