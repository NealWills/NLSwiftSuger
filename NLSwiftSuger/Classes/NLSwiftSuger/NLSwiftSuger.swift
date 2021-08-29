//
//  NLSwiftSuger.swift
//  NLSwiftSuger
//
//  Created by Neal Wills on 2021/8/29.
//

import Foundation
import UIKit

public struct NLReacitve<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
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
    }
    
    public var nl: NLReacitve<Self> {
        get { NLReacitve(self) }
        
        set {}
    }
}

extension NSObject: NLSwiftSugerCompatible {}

extension UIView: NLSwiftSugerCompatible {}
