//
//  BeTrue.swift
//  Sleipnir
//
//  Created by Artur Termenji on 6/23/14.
//  Copyright (c) 2014 railsware. All rights reserved.
//

import Foundation

class BeTrue<T>: BaseMatcher<T> {
    
    init(expected: T) {
        super.init(expected: expected)
    }
    
    override func match(actual: T) -> Bool {
        return actual as Bool
    }
    
    override func failureMessage() -> String {
        return "FAIL TO BE TRUE"
    }
}

func beTrue() -> BeTrue<Bool> {
    return BeTrue(expected: true)
}

