//
//  AccessSampleClassTwo.swift
//  SwiftAccessControl
//
//  Created by Vikash Singh on 06/08/22.
//

import Foundation

// MARK: - Subclass in another file
class AccessSampleClassTwo: AccessSampleClassOne {
    func printNameAgain() {
        //  print("filePrivateName : \(filePrivateName)") // ERROR (inaccessible due to 'fileprivate' protection level)
        //  print("privateName : \(privateName)") // ERROR (inaccessible due to 'private' protection level)
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        print("internalName : \(internalName)")
        print("defaultName : \(defaultName)")
    }
}

// MARK: - Extension in another file
extension AccessSampleClassOne {
    func printNameExtension(){
        //  print("filePrivateName : \(filePrivateName)") // ERROR (inaccessible due to 'fileprivate' protection level)
        //  print("privateName : \(privateName)") // ERROR (inaccessible due to 'private' protection level)
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        print("internalName : \(internalName)")
        print("defaultName : \(defaultName)")
    }
}

// MARK: - Another class in another file
class AccessSampleClassTwoNewClassInOtherFile {
    let objA = AccessSampleClassOne()
    func printName() {
        //  print("filePrivateName : \(objA.filePrivateName)") // ERROR (inaccessible due to 'fileprivate' protection level)
        // print("privateName : \(objA.privateName)") // ERROR (inaccessible due to 'private' protection level)
        print("publicName : \(objA.publicName)")
        print("openName : \(objA.openName)")
        print("internalName : \(objA.internalName)")
        print("defaultName : \(objA.defaultName)")
    }
}
