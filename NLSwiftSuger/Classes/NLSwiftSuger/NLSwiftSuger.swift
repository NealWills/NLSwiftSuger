//
//  NLSwiftSuger.swift
//  NLSwiftSuger
//
//  Created by Neal Wills on 2021/8/29.
//

public struct NLReacitve<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
    
    @discardableResult
    public func item() -> Base {
        return self.base
    }
}

public protocol NLSwiftSugerCompatible {
    associatedtype NLSwiftSugerBase
    
    static var nl: NLReacitve<NLSwiftSugerBase>.Type { get set }
    
    var nl: NLReacitve<NLSwiftSugerBase> { get set }
    
}

extension NLSwiftSugerCompatible {
    public static var nl: NLReacitve<Self>.Type {
        get { NLReacitve<Self>.self }
        
        set { }
    }
    
    public var nl: NLReacitve<Self> {
        get { NLReacitve(self) }
        
        set { }
    }
}


import Foundation
extension NSObject: NLSwiftSugerCompatible { }
