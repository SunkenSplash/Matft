//
//  File.swift
//  
//
//  Created by AM19A0 on 2023/02/06.
//

import Foundation
import CoreML

public protocol MfDataBasable {}

extension MfData: MfDataBasable{}

@available(macOS 10.13, *)
@available(iOS 14.0, *)
@available(tvOS 14.0, *)
extension MLMultiArray: MfDataBasable{}
