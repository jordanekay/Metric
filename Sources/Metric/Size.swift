//
//  SizeClass.swift
//  NativeTTS
//
//  Created by Kay, Jordan (He/Him/His) on 4/18/25.
//

public import SwiftUI

public struct Size: Sendable {
    fileprivate let value: Int
}

// MARK: -
public extension Size {
    struct Width: Sendable {
        fileprivate let value: Int
    }

    struct Height: Sendable {
        fileprivate let value: Int
    }
}

// MARK: -
public extension Size.Width {
    init(_ size: Size) {
        value = size.value
    }
}

// MARK: -
public extension Size.Height {
    init(_ size: Size) {
        value = size.value
    }
}

// MARK: -
extension Size: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
extension Size.Width: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
extension Size.Height: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.value = value
    }
}

// MARK: -
public extension View {
    func frame(width: Size.Width, height: Size.Height) -> some View {
        self.frame(width: CGFloat(width.value), height: CGFloat(height.value))
    }
}
