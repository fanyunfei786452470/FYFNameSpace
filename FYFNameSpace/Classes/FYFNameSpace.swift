//
//  FYFNameSpace.swift
//  FBSnapshotTestCase
//
//  Created by 范云飞 on 2022/3/18.
//

import UIKit

/// 定义泛型结构体保存当前实例
public struct FYFNameSpace<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}


/// 定义使用命名空间协议
public protocol FYFNameSpaceWrappable {
    associatedtype WrappableType
    var fyf: WrappableType { get }
    static var fyf: WrappableType.Type { get }
}

/// 为FYFNameSpaceWrappable添加默认实现
public extension FYFNameSpaceWrappable {
    var fyf: FYFNameSpace<Self> {
        get { return FYFNameSpace.init(self) }
    }
    
    static var fyf: FYFNameSpace<Self>.Type {
        get { return FYFNameSpace<Self>.self }
    }
}
