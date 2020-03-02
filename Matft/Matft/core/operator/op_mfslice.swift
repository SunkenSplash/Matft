//
//  mfslice_op.swift
//  Matft
//
//  Created by Junnosuke Kado on 2020/03/01.
//  Copyright © 2020 jkado. All rights reserved.
//

import Foundation

prefix operator ~<  //a[:2]
public prefix func ~<(to: Int) -> MfSlice{
    return MfSlice(to: to)
}
prefix operator ~<=  //a[:2+1]
public prefix func ~<=(to: Int) -> MfSlice{
    return MfSlice(to: to + 1)
}

postfix operator ~< //a[2:]
public postfix func ~<(start: Int) -> MfSlice{
    return MfSlice(start: start)
}

prefix operator ~~ //a[::2]
public prefix func ~~(by: Int) -> MfSlice{
    return MfSlice(by: by)
}

precedencegroup MfSlicePrecedence{
    higherThan: MfBySlicePrecedence
}
infix operator ~<: MfSlicePrecedence //a[1:3]
public func ~< (start: Int, to: Int) -> MfSlice {
    return MfSlice(start: start, to: to)
}
infix operator ~<=: MfSlicePrecedence //a[1:3+1]
public func ~<=(start: Int, through: Int) -> MfSlice{
    return MfSlice(start: start, to: through + 1)
}

precedencegroup MfBySlicePrecedence{}
infix operator ~~ : MfBySlicePrecedence  //a[1:9:2]
public func ~~ (mfslice: MfSlice, by: Int) -> MfSlice{
    return MfSlice(start: mfslice.start, to: mfslice.to, by: by)
}