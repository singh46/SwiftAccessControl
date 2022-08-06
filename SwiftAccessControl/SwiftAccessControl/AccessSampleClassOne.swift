//
//  AccessSampleClassOne.swift
//  SwiftAccessControl
//
//  Created by Vikash Singh on 06/08/22.
//

import Foundation

// MARK: - Base class
class AccessSampleClassOne {
    fileprivate var filePrivateName = "Vk"
    private var privateName = "private (Vk)"
    public var publicName = "public (Vk)"
    open var openName = "open (Vk)"
    internal var internalName = "internal (Vk)"
    var defaultName = "default (Vk)"
        
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

// MARK: - Extension
extension AccessSampleClassOne {
    func printName(){
        print("filePrivateName : \(filePrivateName)")
        print("privateName : \(privateName)")
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        print("internalName : \(internalName)")
        print("defaultName : \(defaultName)")
    }
}

// MARK: - Subclass
class AccessSampleClassOneSubclass: AccessSampleClassOne {
    func printNameAgain() {
        print("filePrivateName : \(filePrivateName)")
        // print("privateName : \(privateName)") // ERROR (inaccessible due to 'private' protection level)
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        print("internalName : \(internalName)")
        print("defaultName : \(defaultName)")
    }
}

// MARK: - Another class in same file
class AccessSampleClassOneNewClassInSameFile {
    let objA = AccessSampleClassOne()
    
    func printName() {
        print("filePrivateName : \(objA.filePrivateName)")
        // print("privateName : \(objA.privateName)") // ERROR (inaccessible due to 'private' protection level)
        print("publicName : \(objA.publicName)")
        print("openName : \(objA.openName)")
        print("internalName : \(objA.internalName)")
        print("defaultName : \(objA.defaultName)")
    }
    
    func printNameUsingFunc() {
        
        print(objA.getFilePrivateName())
        // objA.getPrivateName() // Error (inaccessible due to 'private' protection level)
        print(objA.getPublicName())
        print(objA.getOpenName())
        print(objA.getInternalName())
        print(objA.getDefaultName())
    }
}
