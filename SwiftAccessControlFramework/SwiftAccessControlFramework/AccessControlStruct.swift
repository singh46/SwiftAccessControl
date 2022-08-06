//
//  AccessControlStruct.swift
//  SwiftAccessControlFramework
//
//  Created by Vikash Singh on 06/08/22.
//

import Foundation

public struct AccessControlStruct {
    fileprivate var filePrivateName = "Vk"
    private var privateName = "private (Vk)"
    public var publicName = "public (Vk)"
    //  open var openName = "open (Vk)"  // ERROR (Only classes and overridable class members can be declared 'open'; use 'public')
    internal var internalName = "internal (Vk)"
    var defaultName = "default (Vk)"
}
