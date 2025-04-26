//
//  SizeClass.swift
//  NativeTTS
//
//  Created by Kay, Jordan (He/Him/His) on 4/18/25.
//

public import SwiftUI

// MARK: -
public struct Padding: Sendable {
    let value: Int
}

// MARK: -
extension Padding: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
public extension View {
    func padding(_ padding: Padding) -> some View {
        self.padding(CGFloat(padding.value))
    }
}
