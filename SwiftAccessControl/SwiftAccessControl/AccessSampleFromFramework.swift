//
//  AccessSampleFromFramework.swift
//  SwiftAccessControl
//
//  Created by Vikash Singh on 06/08/22.
//

import Foundation
import SwiftAccessControlFramework

// MARK: - Access In Other Object
class AccessSampleFromFramework {
    
    // let internalAccess = InternalAccessControl() // ERROR (Cannot find type 'InternalAccessControl' in scope)
    // let defaultAccess = DefaultAccessControl() // ERROR (Cannot find type 'DefaultAccessControl' in scope)
    let publicAccess = PublicAccessControl()
    let openAccess = OpenAccessControl()
    
    func printName() {
        print("publicName : \(openAccess.publicName)")
        print("openName : \(openAccess.openName)")
        // print("internalName : \(openAccess.internalName)") //ERROR (inaccessible due to 'internal' protection level)
        // print("defaultName : \(openAccess.defaultName)") //ERROR (inaccessible due to 'internal' protection level)
    }
    
    func printNameUsingFunc() {
        print("publicName : \(publicAccess.getPublicName())")
        print("openName : \(publicAccess.getOpenName())")
        //   print("internalName : \(publicAccess.getInternalName())") //ERROR (inaccessible due to 'internal' protection level)
        //   print("defaultName : \(publicAccess.getDefaultName)") //ERROR (inaccessible due to 'internal' protection level)
    }
}

// MARK: - Extension
//extension InternalAccessControl { } // ERROR (Cannot find type 'InternalAccessControl' in scope)
//extension DefaultAccessControl { } // ERROR (Cannot find type 'DefaultAccessControl' in scope)

extension PublicAccessControl {
    
    func printNameInExtension() {
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        //  print("internalName : \(internalName)") //ERROR (inaccessible due to 'internal' protection level)
        //  print("defaultName : \(defaultName)") //ERROR (inaccessible due to 'internal' protection level)
    }
}

extension OpenAccessControl {
    
    func printNameInExtension() {
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        //  print("internalName : \(internalName)") //ERROR (inaccessible due to 'internal' protection level)
        //  print("defaultName : \(defaultName)") //ERROR (inaccessible due to 'internal' protection level)
    }
}


// MARK: - Subclass
//class AccessControlInternalSubClass: InternalAccessControl {} // ERROR (Cannot find type 'InternalAccessControl' in scope)
//class AccessControlDefaultSubClass: DefaultAccessControl {} // ERROR (Cannot find type 'DefaultAccessControl' in scope)
//class AccessControlSubClass: PublicAccessControl {} // ERROR (Cannot inherit from non-open class 'AccessControl' outside of its defining module)

class AccessControlOpenSubClass: OpenAccessControl {
    
    func printNameInSubClass() {
        print("publicName : \(publicName)")
        print("openName : \(openName)")
        //print("internalName : \(internalName)") //ERROR (inaccessible due to 'internal' protection level)
        //print("defaultName : \(defaultName)") //ERROR (inaccessible due to 'internal' protection level)
    }
} 
