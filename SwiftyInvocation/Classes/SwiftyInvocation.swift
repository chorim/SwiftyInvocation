//
//  SwiftyInvocation.swift
//  SwiftyInvocation
//
//  Created by Piotr Tobolski on 12.03.2017.
//
//

import ObjectiveC
#if canImport(SwiftyInvocationObjC)
@_exported import SwiftyInvocationObjC
#endif

enum SwiftyInvocationError: Error {
    case noMethod
}

/// Function for getting implementation from obj-c object.
///
/// Example of usage:
///
///     let selector = Selector(("privateObjectAtIndex:"))
///     typealias Type = @convention(c) (AnyObject, Selector, Int) -> Unmanaged<AnyObject>
///     let implementation = swift_getImplementation(object: object, selector: selector, implType: Type.self)
///     let result = implementation(object, selector, argument).takeUnretainedValue()
///     // If result is scalar:
///     // let resultAsInt = unsafeBitCast(result, to: Int.self)
///
/// - Parameters:
///   - object: The object of which you want to retrieve the implementation.
///   - selector: The selector of which you want to retrieve the implementation.
///   - implType: The implementation type in @convention (c)
/// - Returns: The implementation
public func swift_getImplementation<T>(object: AnyObject, selector: Selector, implType: T.Type) throws -> T {
    guard let method = class_getInstanceMethod(type(of: object), selector) else {
        throw SwiftyInvocationError.noMethod
    }
    let implementation = method_getImplementation(method)
    return unsafeBitCast(implementation, to: T.self)
}
