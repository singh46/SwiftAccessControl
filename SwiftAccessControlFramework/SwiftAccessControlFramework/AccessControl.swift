//
//  AccessControl.swift
//  SwiftAccessControlFramework
//
//  Created by Vikash Singh on 05/08/22.
//

import Foundation

public class PublicAccessControl {
    
    fileprivate var filePrivateName = "Vk"
    private var privateName = "private (Vk)"
    public var publicName = "public (Vk)"
    open var openName = "open (Vk)"
    internal var internalName = "internal (Vk)"
    var defaultName = "default (Vk)"
    
    public init() {}
    
    
    fileprivate func getFilePrivateName() -> String {
        return filePrivateName
    }
    
    private func getPrivateName() -> String {
        return privateName
    }
    
    public func getPublicName() -> String {
        return publicName
    }
    
    open func getOpenName() -> String {
        return openName
    }
    
    internal func getInternalName() -> String {
        return internalName
    }
    
    func getDefaultName() -> String {
        return defaultName
    }
}


internal class InternalAccessControl { }
class DefaultAccessControl { }

open class OpenAccessControl {
    
   // open init() {} //ERROR (Only classes and overridable class members can be declared 'open'; use 'public')
    public init() {}

    fileprivate var filePrivateName = "Vk"
    private var privateName = "private (Vk)"
    public var publicName = "public (Vk)"
    open var openName = "open (Vk)"
    internal var internalName = "internal (Vk)"
    var defaultName = "default (Vk)"
}

